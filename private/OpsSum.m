function ops = OpsSum(ops1, ops2)

ops.C1      = ops1.C1 + ops2.C1;
ops.C2      = ops1.C2 + ops2.C2;
ops.f1      = ops1.f1 + ops2.f1;
ops.gradf1  = ops1.gradf1 + ops2.gradf1;
ops.f2      = ops1.f2 + ops2.f2;
ops.gradf2  = ops1.gradf2 + ops2.gradf2;
ops.g       = ops1.g + ops2.g;
ops.proxg   = ops1.proxg + ops2.proxg;
