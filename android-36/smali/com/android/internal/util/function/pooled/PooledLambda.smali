.class public interface abstract Lcom/android/internal/util/function/pooled/PooledLambda;
.super Ljava/lang/Object;
.source "PooledLambda.java"


# direct methods
.method public static blacklist __()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TR;>;"
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    return-object v0
.end method

.method public static blacklist __(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TR;>;"
        }
    .end annotation

    .line 116
    .local p0, "typeHint":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-static {}, Lcom/android/internal/util/function/pooled/PooledLambda;->__()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 857
    .local p0, "function":Lcom/android/internal/util/function/DecConsumer;, "Lcom/android/internal/util/function/DecConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 858
    :try_start_3
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 861
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 862
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "L:Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DodecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;-T",
            "L;",
            ">;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;T",
            "L;",
            ")",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 1010
    .local p0, "function":Lcom/android/internal/util/function/DodecConsumer;, "Lcom/android/internal/util/function/DodecConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;-TL;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    .local p11, "arg11":Ljava/lang/Object;, "TK;"
    .local p12, "arg12":Ljava/lang/Object;, "TL;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1011
    :try_start_3
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v4, 0xc

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 1014
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1015
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HeptConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;>;TA;TB;TC;TD;TE;TF;TG;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 650
    .local p0, "function":Lcom/android/internal/util/function/HeptConsumer;, "Lcom/android/internal/util/function/HeptConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 651
    :try_start_3
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 654
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 655
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HexConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;>;TA;TB;TC;TD;TE;TF;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 587
    .local p0, "function":Lcom/android/internal/util/function/HexConsumer;, "Lcom/android/internal/util/function/HexConsumer<-TA;-TB;-TC;-TD;-TE;-TF;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 588
    :try_start_3
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 591
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 592
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/NonaConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 786
    .local p0, "function":Lcom/android/internal/util/function/NonaConsumer;, "Lcom/android/internal/util/function/NonaConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 787
    :try_start_3
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 790
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 791
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/OctConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;>;TA;TB;TC;TD;TE;TF;TG;TH;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 717
    .local p0, "function":Lcom/android/internal/util/function/OctConsumer;, "Lcom/android/internal/util/function/OctConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 718
    :try_start_3
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 721
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 722
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;TB;TC;TD;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 467
    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_3
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 471
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 472
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuintConsumer<",
            "-TA;-TB;-TC;-TD;-TE;>;TA;TB;TC;TD;TE;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 526
    .local p0, "function":Lcom/android/internal/util/function/QuintConsumer;, "Lcom/android/internal/util/function/QuintConsumer<-TA;-TB;-TC;-TD;-TE;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    :try_start_3
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 530
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 531
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;TA;TB;TC;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 411
    .local p0, "function":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<-TA;-TB;-TC;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_3
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 415
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 416
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/UndecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/UndecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 931
    .local p0, "function":Lcom/android/internal/util/function/UndecConsumer;, "Lcom/android/internal/util/function/UndecConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    .local p11, "arg11":Ljava/lang/Object;, "TK;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 932
    :try_start_3
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v6, 0x1

    const/16 v18, 0x0

    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 935
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 936
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public static blacklist obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;TA;TB;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 357
    .local p0, "function":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_3
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 361
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 362
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public static blacklist obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "-TA;>;TA;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 209
    .local p0, "function":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TA;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_3
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 213
    .local v0, "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 214
    .end local v0    # "callback":Lcom/android/internal/util/function/pooled/PooledRunnable;
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public static blacklist obtainPredicate(Lcom/android/internal/util/function/QuadPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadPredicate<",
            "-TA;-TB;-TC;-TD;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TA;>;"
        }
    .end annotation

    .line 287
    .local p0, "function":Lcom/android/internal/util/function/QuadPredicate;, "Lcom/android/internal/util/function/QuadPredicate<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuintPredicate<",
            "-TA;-TB;-TC;-TD;-TE;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;TD;TE;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TA;>;"
        }
    .end annotation

    .line 308
    .local p0, "function":Lcom/android/internal/util/function/QuintPredicate;, "Lcom/android/internal/util/function/QuintPredicate<-TA;-TB;-TC;-TD;-TE;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriPredicate<",
            "-TA;-TB;-TC;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TA;>;"
        }
    .end annotation

    .line 267
    .local p0, "function":Lcom/android/internal/util/function/TriPredicate;, "Lcom/android/internal/util/function/TriPredicate<-TA;-TB;-TC;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiPredicate<",
            "-TA;-TB;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TA;>;"
        }
    .end annotation

    .line 248
    .local p0, "function":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TA;-TB;>;"
    .local p1, "arg1":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TA;>;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainPredicate(Ljava/util/function/BiPredicate;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiPredicate<",
            "-TA;-TB;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TB;>;"
        }
    .end annotation

    .line 326
    .local p0, "function":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TA;-TB;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;, "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<TB;>;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 816
    .local p0, "function":Lcom/android/internal/util/function/DecConsumer;, "Lcom/android/internal/util/function/DecConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "L:Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DodecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;-T",
            "L;",
            ">;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;T",
            "L;",
            ")",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 966
    .local p0, "function":Lcom/android/internal/util/function/DodecConsumer;, "Lcom/android/internal/util/function/DodecConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;-TL;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    .local p11, "arg11":Ljava/lang/Object;, "TK;"
    .local p12, "arg12":Ljava/lang/Object;, "TL;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v3, 0xc

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HeptConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;>;TA;TB;TC;TD;TE;TF;TG;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 613
    .local p0, "function":Lcom/android/internal/util/function/HeptConsumer;, "Lcom/android/internal/util/function/HeptConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HexConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;>;TA;TB;TC;TD;TE;TF;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 551
    .local p0, "function":Lcom/android/internal/util/function/HexConsumer;, "Lcom/android/internal/util/function/HexConsumer<-TA;-TB;-TC;-TD;-TE;-TF;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/NonaConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 746
    .local p0, "function":Lcom/android/internal/util/function/NonaConsumer;, "Lcom/android/internal/util/function/NonaConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/OctConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;>;TA;TB;TC;TD;TE;TF;TG;TH;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 678
    .local p0, "function":Lcom/android/internal/util/function/OctConsumer;, "Lcom/android/internal/util/function/OctConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;TB;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 434
    .local p0, "function":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<-TA;-TB;-TC;-TD;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuintConsumer<",
            "-TA;-TB;-TC;-TD;-TE;>;TA;TB;TC;TD;TE;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 491
    .local p0, "function":Lcom/android/internal/util/function/QuintConsumer;, "Lcom/android/internal/util/function/QuintConsumer<-TA;-TB;-TC;-TD;-TE;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;TA;TB;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 379
    .local p0, "function":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<-TA;-TB;-TC;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/UndecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/UndecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 889
    .local p0, "function":Lcom/android/internal/util/function/UndecConsumer;, "Lcom/android/internal/util/function/UndecConsumer<-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    .local p3, "arg3":Ljava/lang/Object;, "TC;"
    .local p4, "arg4":Ljava/lang/Object;, "TD;"
    .local p5, "arg5":Ljava/lang/Object;, "TE;"
    .local p6, "arg6":Ljava/lang/Object;, "TF;"
    .local p7, "arg7":Ljava/lang/Object;, "TG;"
    .local p8, "arg8":Ljava/lang/Object;, "TH;"
    .local p9, "arg9":Ljava/lang/Object;, "TI;"
    .local p10, "arg10":Ljava/lang/Object;, "TJ;"
    .local p11, "arg11":Ljava/lang/Object;, "TK;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v5, 0x1

    const/16 v17, 0x0

    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;TA;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 230
    .local p0, "function":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    .local p2, "arg2":Ljava/lang/Object;, "TB;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "-TA;>;TA;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    .line 179
    .local p0, "function":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TA;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TA;"
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainSupplier(D)Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
    .registers 5
    .param p0, "value"    # D

    .line 162
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 163
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    .line 164
    return-object v0
.end method

.method public static blacklist obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
    .registers 4
    .param p0, "value"    # I

    .line 138
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 139
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    int-to-long v1, p0

    iput-wide v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    .line 140
    return-object v0
.end method

.method public static blacklist obtainSupplier(J)Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
    .registers 3
    .param p0, "value"    # J

    .line 150
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 151
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    iput-wide p0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    .line 152
    return-object v0
.end method

.method public static blacklist obtainSupplier(Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    .line 126
    .local p0, "value":Ljava/lang/Object;, "TR;"
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 127
    .local v0, "r":Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    iput-object p0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    .line 128
    return-object v0
.end method


# virtual methods
.method public abstract blacklist recycle()V
.end method

.method public abstract blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
.end method
