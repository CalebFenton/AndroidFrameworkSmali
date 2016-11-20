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
    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1231
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@5
    .line 1230
    return-void
.end method


# virtual methods
.method public getPolicyMask()I
    .locals 1

    #@0
    .prologue
    .line 1241
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    return v0
.end method

.method handleViolation(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 23
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    #@0
    .prologue
    .line 1423
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
    .line 1424
    :cond_0
    const-string/jumbo v20, "StrictMode"

    #@d
    const-string/jumbo v21, "unexpected null stacktrace"

    #@10
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 1425
    return-void

    #@14
    .line 1423
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
    .line 1428
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
    .line 1430
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
    .line 1431
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
    .line 1432
    .local v18, "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    if-nez v18, :cond_5

    #@60
    .line 1433
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
    .line 1434
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
    .line 1439
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
    .line 1440
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
    .line 1442
    return-void

    #@a3
    .line 1435
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
    .line 1437
    return-void

    #@b0
    .line 1445
    .restart local v12    # "previous$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, v18

    #@b2
    move-object/from16 v1, p1

    #@b4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b7
    .line 1446
    return-void

    #@b8
    .line 1450
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
    .line 1451
    .local v4, "crashFingerprint":Ljava/lang/Integer;
    const-wide/16 v8, 0x0

    #@c2
    .line 1452
    .local v8, "lastViolationTime":J
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    #@c6
    move-object/from16 v20, v0

    #@c8
    if-eqz v20, :cond_c

    #@ca
    .line 1453
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
    .line 1454
    .local v19, "vtime":Ljava/lang/Long;
    if-eqz v19, :cond_8

    #@da
    .line 1455
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    #@dd
    move-result-wide v8

    #@de
    .line 1460
    .end local v19    # "vtime":Ljava/lang/Long;
    :cond_8
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e1
    move-result-wide v10

    #@e2
    .line 1461
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
    .line 1462
    const-wide/16 v20, 0x0

    #@f5
    cmp-long v20, v8, v20

    #@f7
    if-nez v20, :cond_d

    #@f9
    .line 1463
    const-wide v14, 0x7fffffffffffffffL

    #@fe
    .line 1465
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
    .line 1466
    const-wide/16 v20, 0x3e8

    #@10c
    cmp-long v20, v14, v20

    #@10e
    if-lez v20, :cond_9

    #@110
    .line 1467
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
    .line 1468
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
    .line 1469
    move-object/from16 v0, p1

    #@12f
    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    #@131
    move/from16 v22, v0

    #@133
    .line 1468
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@136
    move-result-object v21

    #@137
    .line 1469
    const-string/jumbo v22, " ms: "

    #@13a
    .line 1468
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v21

    #@13e
    .line 1469
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
    .line 1468
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
    .line 1479
    :cond_9
    :goto_2
    const/16 v17, 0x0

    #@157
    .line 1481
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
    .line 1482
    const-wide/16 v20, 0x7530

    #@165
    cmp-long v20, v14, v20

    #@167
    if-lez v20, :cond_a

    #@169
    .line 1483
    const/high16 v17, 0x20000

    #@16b
    .line 1486
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
    .line 1487
    const/high16 v20, 0x200000

    #@17f
    or-int v17, v17, v20

    #@181
    .line 1490
    :cond_b
    if-eqz v17, :cond_11

    #@183
    .line 1491
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
    .line 1492
    .local v16, "violationBit":I
    or-int v17, v17, v16

    #@195
    .line 1493
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    #@198
    move-result v13

    #@199
    .line 1495
    .local v13, "savedPolicyMask":I
    move-object/from16 v0, p1

    #@19b
    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@19d
    move/from16 v20, v0

    #@19f
    const/high16 v21, 0x1770000

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
    .line 1496
    .local v6, "justDropBox":Z
    :goto_3
    if-eqz v6, :cond_10

    #@1ae
    .line 1503
    move/from16 v0, v17

    #@1b0
    move-object/from16 v1, p1

    #@1b2
    invoke-static {v0, v1}, Landroid/os/StrictMode;->-wrap2(ILandroid/os/StrictMode$ViolationInfo;)V

    #@1b5
    .line 1504
    return-void

    #@1b6
    .line 1458
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
    .line 1463
    .restart local v10    # "now":J
    :cond_d
    sub-long v14, v10, v8

    #@1c7
    .restart local v14    # "timeSinceLastViolationMillis":J
    goto/16 :goto_1

    #@1c9
    .line 1471
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
    .line 1495
    .restart local v13    # "savedPolicyMask":I
    .restart local v16    # "violationBit":I
    .restart local v17    # "violationMaskSubset":I
    :cond_f
    const/4 v6, 0x0

    #@1f2
    goto :goto_3

    #@1f3
    .line 1513
    .restart local v6    # "justDropBox":Z
    :cond_10
    const/16 v20, 0x0

    #@1f5
    :try_start_0
    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->-wrap4(I)V

    #@1f8
    .line 1515
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1fb
    move-result-object v20

    #@1fc
    .line 1516
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    #@1ff
    move-result-object v21

    #@200
    .line 1515
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
    .line 1527
    invoke-static {v13}, Landroid/os/StrictMode;->-wrap4(I)V

    #@20e
    .line 1531
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
    .line 1532
    invoke-static/range {p1 .. p1}, Landroid/os/StrictMode;->-wrap3(Landroid/os/StrictMode$ViolationInfo;)V

    #@21d
    .line 1422
    :cond_12
    return-void

    #@21e
    .line 1519
    .restart local v6    # "justDropBox":Z
    .restart local v13    # "savedPolicyMask":I
    .restart local v16    # "violationBit":I
    :catch_0
    move-exception v5

    #@21f
    .line 1520
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1
    instance-of v0, v5, Landroid/os/DeadObjectException;

    #@221
    move/from16 v20, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@223
    if-eqz v20, :cond_13

    #@225
    .line 1527
    :goto_5
    invoke-static {v13}, Landroid/os/StrictMode;->-wrap4(I)V

    #@228
    goto :goto_4

    #@229
    .line 1523
    :cond_13
    :try_start_2
    const-string/jumbo v20, "StrictMode"

    #@22c
    const-string/jumbo v21, "RemoteException trying to handle StrictMode violation"

    #@22f
    move-object/from16 v0, v20

    #@231
    move-object/from16 v1, v21

    #@233
    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@236
    goto :goto_5

    #@237
    .line 1525
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v20

    #@238
    .line 1527
    invoke-static {v13}, Landroid/os/StrictMode;->-wrap4(I)V

    #@23b
    .line 1525
    throw v20
.end method

.method handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1334
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    .line 1352
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@8
    .line 1353
    iget v4, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@a
    const/high16 v5, 0x1770000

    #@c
    and-int/2addr v4, v5

    #@d
    const/high16 v5, 0x40000

    #@f
    if-ne v4, v5, :cond_1

    #@11
    .line 1354
    :cond_0
    const/4 v4, -0x1

    #@12
    iput v4, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    #@14
    .line 1355
    invoke-virtual {p0, p1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolation(Landroid/os/StrictMode$ViolationInfo;)V

    #@17
    .line 1356
    return-void

    #@18
    .line 1359
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->-get8()Ljava/lang/ThreadLocal;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/util/ArrayList;

    #@22
    .line 1360
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v4

    #@26
    const/16 v5, 0xa

    #@28
    if-lt v4, v5, :cond_2

    #@2a
    .line 1362
    return-void

    #@2b
    .line 1364
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    .line 1365
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v4

    #@32
    if-le v4, v6, :cond_3

    #@34
    .line 1369
    return-void

    #@35
    .line 1372
    :cond_3
    iget v4, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@37
    const/high16 v5, 0x100000

    #@39
    and-int/2addr v4, v5

    #@3a
    if-eqz v4, :cond_4

    #@3c
    .line 1373
    invoke-static {}, Landroid/os/StrictMode;->-get6()Landroid/util/Singleton;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Landroid/view/IWindowManager;

    #@46
    move-object v3, v4

    #@47
    .line 1374
    .local v3, "windowManager":Landroid/view/IWindowManager;
    :cond_4
    if-eqz v3, :cond_5

    #@49
    .line 1376
    const/4 v4, 0x1

    #@4a
    :try_start_0
    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    .line 1390
    :cond_5
    :goto_0
    invoke-static {}, Landroid/os/StrictMode;->-get7()Ljava/lang/ThreadLocal;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@54
    move-result-object v4

    #@55
    check-cast v4, Landroid/os/Handler;

    #@57
    new-instance v5, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;

    #@59
    invoke-direct {v5, p0, v3, v1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;-><init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V

    #@5c
    invoke-virtual {v4, v5}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    #@5f
    .line 1333
    return-void

    #@60
    .line 1377
    :catch_0
    move-exception v2

    #@61
    .local v2, "unused":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method onCustomSlowCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1259
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    and-int/lit8 v1, v1, 0x8

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1260
    return-void

    #@7
    .line 1262
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1263
    return-void

    #@e
    .line 1265
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeCustomViolation;

    #@10
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@12
    invoke-direct {v0, v1, p1}, Landroid/os/StrictMode$StrictModeCustomViolation;-><init>(ILjava/lang/String;)V

    #@15
    .line 1266
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    #@18
    .line 1267
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    #@1b
    .line 1258
    return-void
.end method

.method public onNetwork()V
    .locals 3

    #@0
    .prologue
    .line 1299
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    and-int/lit8 v1, v1, 0x4

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1300
    return-void

    #@7
    .line 1302
    :cond_0
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@9
    const/high16 v2, 0x1000000

    #@b
    and-int/2addr v1, v2

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 1303
    new-instance v1, Landroid/os/NetworkOnMainThreadException;

    #@10
    invoke-direct {v1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    #@13
    throw v1

    #@14
    .line 1305
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 1306
    return-void

    #@1b
    .line 1308
    :cond_2
    new-instance v0, Landroid/os/StrictMode$StrictModeNetworkViolation;

    #@1d
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@1f
    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeNetworkViolation;-><init>(I)V

    #@22
    .line 1309
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    #@25
    .line 1310
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    #@28
    .line 1298
    return-void
.end method

.method public onReadFromDisk()V
    .locals 2

    #@0
    .prologue
    .line 1286
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    and-int/lit8 v1, v1, 0x2

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1287
    return-void

    #@7
    .line 1289
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1290
    return-void

    #@e
    .line 1292
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskReadViolation;

    #@10
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@12
    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskReadViolation;-><init>(I)V

    #@15
    .line 1293
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    #@18
    .line 1294
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    #@1b
    .line 1285
    return-void
.end method

.method onResourceMismatch(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1272
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    and-int/lit8 v1, v1, 0x10

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1273
    return-void

    #@7
    .line 1275
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1276
    return-void

    #@e
    .line 1279
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeResourceMismatchViolation;

    #@10
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@12
    invoke-direct {v0, v1, p1}, Landroid/os/StrictMode$StrictModeResourceMismatchViolation;-><init>(ILjava/lang/Object;)V

    #@15
    .line 1280
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    #@18
    .line 1281
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    #@1b
    .line 1271
    return-void
.end method

.method public onWriteToDisk()V
    .locals 2

    #@0
    .prologue
    .line 1246
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    and-int/lit8 v1, v1, 0x1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1247
    return-void

    #@7
    .line 1249
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1250
    return-void

    #@e
    .line 1252
    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskWriteViolation;

    #@10
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@12
    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskWriteViolation;-><init>(I)V

    #@15
    .line 1253
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    #@18
    .line 1254
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    #@1b
    .line 1245
    return-void
.end method

.method public setPolicyMask(I)V
    .locals 0
    .param p1, "policyMask"    # I

    #@0
    .prologue
    .line 1314
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    #@2
    .line 1313
    return-void
.end method

.method startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V
    .locals 4
    .param p1, "e"    # Ldalvik/system/BlockGuard$BlockGuardPolicyException;

    #@0
    .prologue
    .line 1323
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    #@2
    invoke-virtual {p1}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->getPolicy()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, p1, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/Throwable;I)V

    #@9
    .line 1324
    .local v0, "info":Landroid/os/StrictMode$ViolationInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v2

    #@d
    iput-wide v2, v0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    #@f
    .line 1325
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    #@12
    .line 1322
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1236
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
