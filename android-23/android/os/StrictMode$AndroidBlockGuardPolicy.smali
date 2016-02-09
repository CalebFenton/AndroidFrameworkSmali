.class Landroid/os/StrictMode$AndroidBlockGuardPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/BlockGuard$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidBlockGuardPolicy"
.end annotation


# instance fields
.field private mLastViolationTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyMask:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "policyMask"    # I

    #@0
    .prologue
    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1201
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@5
    .line 1200
    return-void
.end method


# virtual methods
.method public getPolicyMask()I
    .locals 1

    #@0
    .prologue
    .line 1211
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    return v0
.end method

.method handleViolation(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 23
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    #@0
    .prologue
    .line 1393
    if-eqz p1, :cond_0

    #@2
    move-object/from16 v0, p1

    #@4
    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@6
    move-object/from16 v20, v0

    #@8
    if-nez v20, :cond_1

    #@a
    .line 1394
    :cond_0
    const-string/jumbo v20, "StrictMode"

    #@d
    const-string/jumbo v21, "unexpected null stacktrace"

    #@10
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 1395
    return-void

    #@14
    .line 1393
    :cond_1
    move-object/from16 v0, p1

    #@16
    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@18
    move-object/from16 v20, v0

    #@1a
    move-object/from16 v0, v20

    #@1c
    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@1e
    move-object/from16 v20, v0

    #@20
    if-eqz v20, :cond_0

    #@22
    .line 1398
    invoke-static {}, Landroid/os/StrictMode;->-get1()Z

    #@25
    move-result v20

    #@26
    if-eqz v20, :cond_2

    #@28
    const-string/jumbo v20, "StrictMode"

    #@2b
    new-instance v21, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v22, "handleViolation; policy="

    #@33
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v21

    #@37
    move-object/from16 v0, p1

    #@39
    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@3b
    move/from16 v22, v0

    #@3d
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v21

    #@41
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v21

    #@45
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 1400
    :cond_2
    move-object/from16 v0, p1

    #@4a
    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@4c
    move/from16 v20, v0

    #@4e
    const/high16 v21, 0x400000

    #@50
    and-int v20, v20, v21

    #@52
    if-eqz v20, :cond_7

    #@54
    .line 1401
    invoke-static {}, Landroid/os/StrictMode;->-get2()Ljava/lang/ThreadLocal;

    #@57
    move-result-object v20

    #@58
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5b
    move-result-object v18

    #@5c
    check-cast v18, Ljava/util/ArrayList;

    #@5e
    .line 1402
    .local v18, "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    if-nez v18, :cond_5

    #@60
    .line 1403
    new-instance v18, Ljava/util/ArrayList;

    #@62
    .end local v18    # "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    const/16 v20, 0x1

    #@64
    move-object/from16 v0, v18

    #@66
    move/from16 v1, v20

    #@68
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6b
    .line 1404
    .restart local v18    # "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    invoke-static {}, Landroid/os/StrictMode;->-get2()Ljava/lang/ThreadLocal;

    #@6e
    move-result-object v20

    #@6f
    move-object/from16 v0, v20

    #@71
    move-object/from16 v1, v18

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@76
    .line 1409
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@79
    move-result-object v12

    #@7a
    .local v12, "previous$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@7d
    move-result v20

    #@7e
    if-eqz v20, :cond_6

    #@80
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@83
    move-result-object v7

    #@84
    check-cast v7, Landroid/os/StrictMode$ViolationInfo;

    #@86
    .line 1410
    .local v7, "previous":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p1

    #@88
    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@8a
    move-object/from16 v20, v0

    #@8c
    move-object/from16 v0, v20

    #@8e
    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@90
    move-object/from16 v20, v0

    #@92
    iget-object v0, v7, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@94
    move-object/from16 v21, v0

    #@96
    move-object/from16 v0, v21

    #@98
    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@9a
    move-object/from16 v21, v0

    #@9c
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result v20

    #@a0
    if-eqz v20, :cond_4

    #@a2
    .line 1412
    return-void

    #@a3
    .line 1405
    .end local v7    # "previous":Landroid/os/StrictMode$ViolationInfo;
    .end local v12    # "previous$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@a6
    move-result v20

    #@a7
    const/16 v21, 0x5

    #@a9
    move/from16 v0, v20

    #@ab
    move/from16 v1, v21

    #@ad
    if-lt v0, v1, :cond_3

    #@af
    .line 1407
    return-void

    #@b0
    .line 1415
    .restart local v12    # "previous$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, v18

    #@b2
    move-object/from16 v1, p1

    #@b4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b7
    .line 1416
    return-void

    #@b8
    .line 1420
    .end local v12    # "previous$iterator":Ljava/util/Iterator;
    .end local v18    # "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    #@bb
    move-result v20

    #@bc
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bf
    move-result-object v4

    #@c0
    .line 1421
    .local v4, "crashFingerprint":Ljava/lang/Integer;
    const-wide/16 v8, 0x0

    #@c2
    .line 1422
    .local v8, "lastViolationTime":J
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    #@c6
    move-object/from16 v20, v0

    #@c8
    if-eqz v20, :cond_c

    #@ca
    .line 1423
    move-object/from16 v0, p0

    #@cc
    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    #@ce
    move-object/from16 v20, v0

    #@d0
    move-object/from16 v0, v20

    #@d2
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d5
    move-result-object v19

    #@d6
    check-cast v19, Ljava/lang/Long;

    #@d8
    .line 1424
    .local v19, "vtime":Ljava/lang/Long;
    if-eqz v19, :cond_8

    #@da
    .line 1425
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    #@dd
    move-result-wide v8

    #@de
    .line 1430
    .end local v19    # "vtime":Ljava/lang/Long;
    :cond_8
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e1
    move-result-wide v10

    #@e2
    .line 1431
    .local v10, "now":J
    move-object/from16 v0, p0

    #@e4
    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    #@e6
    move-object/from16 v20, v0

    #@e8
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@eb
    move-result-object v21

    #@ec
    move-object/from16 v0, v20

    #@ee
    move-object/from16 v1, v21

    #@f0
    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f3
    .line 1432
    const-wide/16 v20, 0x0

    #@f5
    cmp-long v20, v8, v20

    #@f7
    if-nez v20, :cond_d

    #@f9
    .line 1433
    const-wide v14, 0x7fffffffffffffffL

    #@fe
    .line 1435
    .local v14, "timeSinceLastViolationMillis":J
    :goto_1
    move-object/from16 v0, p1

    #@100
    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@102
    move/from16 v20, v0

    #@104
    const/high16 v21, 0x10000

    #@106
    and-int v20, v20, v21

    #@108
    if-eqz v20, :cond_9

    #@10a
    .line 1436
    const-wide/16 v20, 0x3e8

    #@10c
    cmp-long v20, v14, v20

    #@10e
    if-lez v20, :cond_9

    #@110
    .line 1437
    move-object/from16 v0, p1

    #@112
    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    #@114
    move/from16 v20, v0

    #@116
    const/16 v21, -0x1

    #@118
    move/from16 v0, v20

    #@11a
    move/from16 v1, v21

    #@11c
    if-eq v0, v1, :cond_e

    #@11e
    .line 1438
    const-string/jumbo v20, "StrictMode"

    #@121
    new-instance v21, Ljava/lang/StringBuilder;

    #@123
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@126
    const-string/jumbo v22, "StrictMode policy violation; ~duration="

    #@129
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v21

    #@12d
    .line 1439
    move-object/from16 v0, p1

    #@12f
    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    #@131
    move/from16 v22, v0

    #@133
    .line 1438
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@136
    move-result-object v21

    #@137
    .line 1439
    const-string/jumbo v22, " ms: "

    #@13a
    .line 1438
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v21

    #@13e
    .line 1439
    move-object/from16 v0, p1

    #@140
    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@142
    move-object/from16 v22, v0

    #@144
    move-object/from16 v0, v22

    #@146
    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@148
    move-object/from16 v22, v0

    #@14a
    .line 1438
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v21

    #@14e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@151
    move-result-object v21

    #@152
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@155
    .line 1449
    :cond_9
    :goto_2
    const/16 v17, 0x0

    #@157
    .line 1451
    .local v17, "violationMaskSubset":I
    move-object/from16 v0, p1

    #@159
    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@15b
    move/from16 v20, v0

    #@15d
    const/high16 v21, 0x20000

    #@15f
    and-int v20, v20, v21

    #@161
    if-eqz v20, :cond_a

    #@163
    .line 1452
    const-wide/16 v20, 0x7530

    #@165
    cmp-long v20, v14, v20

    #@167
    if-lez v20, :cond_a

    #@169
    .line 1453
    const/high16 v17, 0x20000

    #@16b
    .line 1456
    :cond_a
    move-object/from16 v0, p1

    #@16d
    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@16f
    move/from16 v20, v0

    #@171
    const/high16 v21, 0x200000

    #@173
    and-int v20, v20, v21

    #@175
    if-eqz v20, :cond_b

    #@177
    const-wide/16 v20, 0x0

    #@179
    cmp-long v20, v8, v20

    #@17b
    if-nez v20, :cond_b

    #@17d
    .line 1457
    const/high16 v20, 0x200000

    #@17f
    or-int v17, v17, v20

    #@181
    .line 1460
    :cond_b
    if-eqz v17, :cond_11

    #@183
    .line 1461
    move-object/from16 v0, p1

    #@185
    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@187
    move-object/from16 v20, v0

    #@189
    move-object/from16 v0, v20

    #@18b
    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    #@18d
    move-object/from16 v20, v0

    #@18f
    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->-wrap1(Ljava/lang/String;)I

    #@192
    move-result v16

    #@193
    .line 1462
    .local v16, "violationBit":I
    or-int v17, v17, v16

    #@195
    .line 1463
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    #@198
    move-result v13

    #@199
    .line 1465
    .local v13, "savedPolicyMask":I
    move-object/from16 v0, p1

    #@19b
    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@19d
    move/from16 v20, v0

    #@19f
    const/high16 v21, 0x7f0000

    #@1a1
    and-int v20, v20, v21

    #@1a3
    const/high16 v21, 0x200000

    #@1a5
    move/from16 v0, v20

    #@1a7
    move/from16 v1, v21

    #@1a9
    if-ne v0, v1, :cond_f

    #@1ab
    const/4 v6, 0x1

    #@1ac
    .line 1466
    .local v6, "justDropBox":Z
    :goto_3
    if-eqz v6, :cond_10

    #@1ae
    .line 1473
    move/from16 v0, v17

    #@1b0
    move-object/from16 v1, p1

    #@1b2
    invoke-static {v0, v1}, Landroid/os/StrictMode;->-wrap2(ILandroid/os/StrictMode$ViolationInfo;)V

    #@1b5
    .line 1474
    return-void

    #@1b6
    .line 1428
    .end local v6    # "justDropBox":Z
    .end local v10    # "now":J
    .end local v13    # "savedPolicyMask":I
    .end local v14    # "timeSinceLastViolationMillis":J
    .end local v16    # "violationBit":I
    .end local v17    # "violationMaskSubset":I
    :cond_c
    new-instance v20, Landroid/util/ArrayMap;

    #@1b8
    const/16 v21, 0x1

    #@1ba
    invoke-direct/range {v20 .. v21}, Landroid/util/ArrayMap;-><init>(I)V

    #@1bd
    move-object/from16 v0, v20

    #@1bf
    move-object/from16 v1, p0

    #@1c1
    iput-object v0, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    #@1c3
    goto/16 :goto_0

    #@1c5
    .line 1433
    .restart local v10    # "now":J
    :cond_d
    sub-long v14, v10, v8

    #@1c7
    .restart local v14    # "timeSinceLastViolationMillis":J
    goto/16 :goto_1

    #@1c9
    .line 1441
    :cond_e
    const-string/jumbo v20, "StrictMode"

    #@1cc
    new-instance v21, Ljava/lang/StringBuilder;

    #@1ce
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1d1
    const-string/jumbo v22, "StrictMode policy violation: "

    #@1d4
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v21

    #@1d8
    move-object/from16 v0, p1

    #@1da
    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@1dc
    move-object/from16 v22, v0

    #@1de
    move-object/from16 v0, v22

    #@1e0
    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@1e2
    move-object/from16 v22, v0

    #@1e4
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v21

    #@1e8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1eb
    move-result-object v21

    #@1ec
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1ef
    goto/16 :goto_2

    #@1f1
    .line 1465
    .restart local v13    # "savedPolicyMask":I
    .restart local v16    # "violationBit":I
    .restart local v17    # "violationMaskSubset":I
    :cond_f
    const/4 v6, 0x0

    #@1f2
    .restart local v6    # "justDropBox":Z
    goto :goto_3

    #@1f3
    .line 1483
    :cond_10
    const/16 v20, 0x0

    #@1f5
    :try_start_0
    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->-wrap4(I)V

    #@1f8
    .line 1485
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1fb
    move-result-object v20

    #@1fc
    .line 1486
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    #@1ff
    move-result-object v21

    #@200
    .line 1485
    move-object/from16 v0, v20

    #@202
    move-object/from16 v1, v21

    #@204
    move/from16 v2, v17

    #@206
    move-object/from16 v3, p1

    #@208
    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20b
    .line 1493
    invoke-static {v13}, Landroid/os/StrictMode;->-wrap4(I)V

    #@20e
    .line 1497
    .end local v6    # "justDropBox":Z
    .end local v13    # "savedPolicyMask":I
    .end local v16    # "violationBit":I
    :cond_11
    :goto_4
    move-object/from16 v0, p1

    #@210
    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@212
    move/from16 v20, v0

    #@214
    const/high16 v21, 0x40000

    #@216
    and-int v20, v20, v21

    #@218
    if-eqz v20, :cond_12

    #@21a
    .line 1498
    invoke-static/range {p1 .. p1}, Landroid/os/StrictMode;->-wrap3(Landroid/os/StrictMode$ViolationInfo;)V

    #@21d
    .line 1392
    :cond_12
    return-void

    #@21e
    .line 1489
    .restart local v6    # "justDropBox":Z
    .restart local v13    # "savedPolicyMask":I
    .restart local v16    # "violationBit":I
    :catch_0
    move-exception v5

    #@21f
    .line 1490
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v20, "StrictMode"

    #@222
    const-string/jumbo v21, "RemoteException trying to handle StrictMode violation"

    #@225
    move-object/from16 v0, v20

    #@227
    move-object/from16 v1, v21

    #@229
    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22c
    .line 1493
    invoke-static {v13}, Landroid/os/StrictMode;->-wrap4(I)V

    #@22f
    goto :goto_4

    #@230
    .line 1491
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v20

    #@231
    .line 1493
    invoke-static {v13}, Landroid/os/StrictMode;->-wrap4(I)V

    #@234
    .line 1491
    throw v20
.end method

.method handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 1304
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@4
    move-result-object v0

    #@5
    .line 1322
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@7
    .line 1323
    iget v4, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@9
    const/high16 v5, 0x7f0000

    #@b
    and-int/2addr v4, v5

    #@c
    const/high16 v5, 0x40000

    #@e
    if-ne v4, v5, :cond_1

    #@10
    .line 1324
    :cond_0
    const/4 v4, -0x1

    #@11
    iput v4, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    #@13
    .line 1325
    invoke-virtual {p0, p1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolation(Landroid/os/StrictMode$ViolationInfo;)V

    #@16
    .line 1326
    return-void

    #@17
    .line 1329
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->-get8()Ljava/lang/ThreadLocal;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/util/ArrayList;

    #@21
    .line 1330
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v4

    #@25
    const/16 v5, 0xa

    #@27
    if-lt v4, v5, :cond_2

    #@29
    .line 1332
    return-void

    #@2a
    .line 1334
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 1335
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v4

    #@31
    if-le v4, v6, :cond_3

    #@33
    .line 1339
    return-void

    #@34
    .line 1342
    :cond_3
    iget v4, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@36
    const/high16 v5, 0x100000

    #@38
    and-int/2addr v4, v5

    #@39
    if-eqz v4, :cond_5

    #@3b
    .line 1343
    invoke-static {}, Landroid/os/StrictMode;->-get6()Landroid/util/Singleton;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    #@42
    move-result-object v3

    #@43
    check-cast v3, Landroid/view/IWindowManager;

    #@45
    .line 1344
    :goto_0
    if-eqz v3, :cond_4

    #@47
    .line 1346
    const/4 v4, 0x1

    #@48
    :try_start_0
    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 1360
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->-get7()Ljava/lang/ThreadLocal;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@52
    move-result-object v4

    #@53
    check-cast v4, Landroid/os/Handler;

    #@55
    new-instance v5, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;

    #@57
    invoke-direct {v5, p0, v3, v1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;-><init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V

    #@5a
    invoke-virtual {v4, v5}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    #@5d
    .line 1303
    return-void

    #@5e
    .line 1343
    :cond_5
    const/4 v3, 0x0

    #@5f
    .local v3, "windowManager":Landroid/view/IWindowManager;
    goto :goto_0

    #@60
    .line 1347
    .end local v3    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v2

    #@61
    .local v2, "unused":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method onCustomSlowCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1229
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    and-int/lit8 v1, v1, 0x8

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1230
    return-void

    #@7
    .line 1232
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1233
    return-void

    #@e
    .line 1235
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeCustomViolation;

    #@10
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@12
    invoke-direct {v0, v1, p1}, Landroid/os/StrictMode$StrictModeCustomViolation;-><init>(ILjava/lang/String;)V

    #@15
    .line 1236
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    #@18
    .line 1237
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    #@1b
    .line 1228
    return-void
.end method

.method public onNetwork()V
    .locals 3

    #@0
    .prologue
    .line 1269
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    and-int/lit8 v1, v1, 0x4

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1270
    return-void

    #@7
    .line 1272
    :cond_0
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@9
    const/high16 v2, 0x80000

    #@b
    and-int/2addr v1, v2

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 1273
    new-instance v1, Landroid/os/NetworkOnMainThreadException;

    #@10
    invoke-direct {v1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    #@13
    throw v1

    #@14
    .line 1275
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 1276
    return-void

    #@1b
    .line 1278
    :cond_2
    new-instance v0, Landroid/os/StrictMode$StrictModeNetworkViolation;

    #@1d
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@1f
    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeNetworkViolation;-><init>(I)V

    #@22
    .line 1279
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    #@25
    .line 1280
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    #@28
    .line 1268
    return-void
.end method

.method public onReadFromDisk()V
    .locals 2

    #@0
    .prologue
    .line 1256
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    and-int/lit8 v1, v1, 0x2

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1257
    return-void

    #@7
    .line 1259
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1260
    return-void

    #@e
    .line 1262
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskReadViolation;

    #@10
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@12
    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskReadViolation;-><init>(I)V

    #@15
    .line 1263
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    #@18
    .line 1264
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    #@1b
    .line 1255
    return-void
.end method

.method onResourceMismatch(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1242
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    and-int/lit8 v1, v1, 0x10

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1243
    return-void

    #@7
    .line 1245
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1246
    return-void

    #@e
    .line 1249
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeResourceMismatchViolation;

    #@10
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@12
    invoke-direct {v0, v1, p1}, Landroid/os/StrictMode$StrictModeResourceMismatchViolation;-><init>(ILjava/lang/Object;)V

    #@15
    .line 1250
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    #@18
    .line 1251
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    #@1b
    .line 1241
    return-void
.end method

.method public onWriteToDisk()V
    .locals 2

    #@0
    .prologue
    .line 1216
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    and-int/lit8 v1, v1, 0x1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1217
    return-void

    #@7
    .line 1219
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1220
    return-void

    #@e
    .line 1222
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskWriteViolation;

    #@10
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@12
    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskWriteViolation;-><init>(I)V

    #@15
    .line 1223
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    #@18
    .line 1224
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    #@1b
    .line 1215
    return-void
.end method

.method public setPolicyMask(I)V
    .locals 0
    .param p1, "policyMask"    # I

    #@0
    .prologue
    .line 1284
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    .line 1283
    return-void
.end method

.method startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V
    .locals 4
    .param p1, "e"    # Ldalvik/system/BlockGuard$BlockGuardPolicyException;

    #@0
    .prologue
    .line 1293
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    #@2
    invoke-virtual {p1}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->getPolicy()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, p1, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/Throwable;I)V

    #@9
    .line 1294
    .local v0, "info":Landroid/os/StrictMode$ViolationInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, v0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    #@f
    .line 1295
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    #@12
    .line 1292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "AndroidBlockGuardPolicy; mPolicyMask="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
