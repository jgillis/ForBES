function [cache, ops] = CacheProxGradStep(cache, gam)

if nargin < 2
    gam = cache.gam;
end

gam0 = cache.gam;

if cache.flagGradStep == 0 || gam0 ~= gam
    [cache, ops] = CacheGradStep(cache, gam);
else
    ops = OpsInit();
end

if cache.flagProxGradStep == 0 || gam0 ~= gam
    [cache.z, cache.gz] = cache.prob.callg(cache.y, gam);
    ops.proxg = ops.proxg + 1;
    ops.g = ops.g + 1;
    cache.FPR = cache.x-cache.z;
    cache.normFPR = norm(cache.FPR);
    cache.gam = gam;
    cache.flagProxGradStep = 1;
    cache.flagFBE = 0;
    cache.flagGradFBE = 0;
end
