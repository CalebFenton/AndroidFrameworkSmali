.class Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;


# direct methods
.method public static synthetic blacklist $r8$lambda$0ltFkrX7jC2ONcBzYBjq9nWghwo(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$getCallId$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$1l5OvS-qc_hgkh74TDem6_NCvEM(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsCallSessionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$setListener$8(Landroid/telephony/ims/ImsCallSessionListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2cRO7ayfKLnipteeJzLtqvamdxE(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Lcom/android/ims/internal/IImsCallSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$consultativeTransfer$16(Lcom/android/ims/internal/IImsCallSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3pUJI7xsSpBqZ9IZF1qNL6CPBuA(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$hold$18(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4TDSGhp1cnjsmWmki9ZilsBXjPE(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$sendRtpHeaderExtensions$34(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4mDUSAqamkcFHgF44ZHd41dP_cM(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;CLandroid/os/Message;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$sendDtmf$25(CLandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5YHQmOnJfPiuawynvh8x7BMuI8s(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$reject$14(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6OKq43F940BYB25Wh95mS-gvki4(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$deflect$13(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$B6x5gkF3W59GODrCn98esE5uH-A(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$resume$19(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GHxf_JiwK8sxyWR-c3MzPAQLmYw(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$stopDtmf$27()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$H9mvUpcXYxpt_Mg-XKVlNwqia0c(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$startConference$11([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HM0kgjvWmCqSa_t2i03RpdZvjSo(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$callSessionNotifyAnbr$35(III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HNwaLNVHXc_eP7tBcToBVcz8PMU(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$sendUssd$28(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LTogaDuUXX4dz8zrZqDniWbP9fo(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$sendRttMessage$33(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NzEdCEC1XnRoZwDRJcSjbczdPyY(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$start$10(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Og5EvRH3gl5XsDFsk479-8wkki0(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$inviteParticipants$23([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PmCobp-dMdSzwwRH8mJhHpUdrEw(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$transfer$15(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Rw_Tyjx5uYtOaFIkRxr9n6MeJ3s(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$terminate$17(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SG6tOPZwG-OrfnueLAbkrWdRpQU(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;C)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$startDtmf$26(C)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TS519Trt-W4dCU3OKlURpIb9UTc(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)Landroid/telephony/ims/ImsCallProfile;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$getLocalCallProfile$3()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$WuUnaz6aWaGZQDk9xd6KY0H97xo(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$update$21(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_juLxQYx0OEHiEB-THdD02_i7Tw(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$accept$12(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$a-Tk-PMjMr7aKrLD7f-AHgzmf9Y(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$sendRttModifyRequest$31(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bICfnSqZcYTAXHWPXVHh2LGNb5w(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)Landroid/telephony/ims/ImsCallProfile;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$getCallProfile$2()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$bRKabmXokQnzxVL7h7E1vM84EO4(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$merge$20()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eNzRF6-1Rd3o5d7shSJA-qGbHYo(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$isMultiparty$30()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$eTE-Zw6ujG1Qwmw6FN-4CIKTZHQ(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$getProperty$5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$fBNOzOJ_jR3H8SqeLw4a6Gv3fqY(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$sendRttModifyResponse$32(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iGliIag3zNQ8GeexlnorW1-UL1Q(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$extendToConference$22([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jDrArPBxy2hMeWoc8yjtt6PKBPY(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$getVideoCallProvider$29()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$njzKfUaF6B5pRjp6kjiyaywzOu0(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$removeParticipants$24([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oPBlMUX80b4vDBa41jCeJ3kLgtc(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$close$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pajixw7uhQLrNUlmo6ZD-lAn29g(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)Landroid/telephony/ims/ImsCallProfile;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$getRemoteCallProfile$4()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ulGqx24s8PSeIdVGYVNlXeNFz8M(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$isInCall$7()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$wQo4WcFrBkdrTNTbiEVHz0nGhZc(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$setMute$9(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ypSQXaZsihLNwzGvh1B5t17QpwE(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$getState$6()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 173
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    return-void
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;

    .line 387
    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda36;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda36;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_12} :catch_13

    .line 392
    goto :goto_3a

    .line 389
    :catch_13
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsCallSessionImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    const-string v2, "ImsCallSessionImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3a
    return-void
.end method

.method private blacklist executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p2, "errorLogName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 397
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda22;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 400
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_f
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_13
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_13} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_13} :catch_14

    return-object v1

    .line 401
    :catch_14
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsCallSessionImplBase Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    const-string v3, "ImsCallSessionImplBase"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v2, 0x0

    return-object v2
.end method

.method private synthetic blacklist lambda$accept$12(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 247
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method private synthetic blacklist lambda$callSessionNotifyAnbr$35(III)V
    .registers 5
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 379
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->callSessionNotifyAnbr(III)V

    return-void
.end method

.method private synthetic blacklist lambda$close$0()V
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->close()V

    return-void
.end method

.method private synthetic blacklist lambda$consultativeTransfer$16(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 4
    .param p1, "transferToSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 271
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    .line 272
    .local v0, "otherSession":Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setServiceImpl(Lcom/android/ims/internal/IImsCallSession;)V

    .line 273
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v1, v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    .line 274
    return-void
.end method

.method private synthetic blacklist lambda$deflect$13(Ljava/lang/String;)V
    .registers 3
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->deflect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsync$36(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 388
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$37(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 398
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$extendToConference$22([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 305
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->extendToConference([Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$getCallId$1()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getCallProfile$2()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getLocalCallProfile$3()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 194
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method private synthetic blacklist lambda$getProperty$5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getRemoteCallProfile$4()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 200
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 199
    return-object v0
.end method

.method private synthetic blacklist lambda$getState$6()Ljava/lang/Integer;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getVideoCallProvider$29()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 2

    .line 343
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 344
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    .line 343
    return-object v0
.end method

.method private synthetic blacklist lambda$hold$18(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 284
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method private synthetic blacklist lambda$inviteParticipants$23([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 311
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->inviteParticipants([Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$isInCall$7()Ljava/lang/Boolean;
    .registers 2

    .line 217
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->isInCall()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$isMultiparty$30()Ljava/lang/Boolean;
    .registers 2

    .line 349
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->isMultiparty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$merge$20()V
    .registers 2

    .line 294
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->merge()V

    return-void
.end method

.method private synthetic blacklist lambda$reject$14(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 259
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->reject(I)V

    return-void
.end method

.method private synthetic blacklist lambda$removeParticipants$24([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 317
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->removeParticipants([Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$resume$19(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 289
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendDtmf$25(CLandroid/os/Message;)V
    .registers 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 323
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendDtmf(CLandroid/os/Message;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRtpHeaderExtensions$34(Ljava/util/List;)V
    .registers 4
    .param p1, "extensions"    # Ljava/util/List;

    .line 373
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRtpHeaderExtensions(Ljava/util/Set;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRttMessage$33(Ljava/lang/String;)V
    .registers 3
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRttMessage(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRttModifyRequest$31(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "toProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 355
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRttModifyResponse$32(Z)V
    .registers 3
    .param p1, "status"    # Z

    .line 361
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRttModifyResponse(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$sendUssd$28(Ljava/lang/String;)V
    .registers 3
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 338
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendUssd(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$setListener$8(Landroid/telephony/ims/ImsCallSessionListener;)V
    .registers 3
    .param p1, "iCSL"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 225
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$setMute$9(Z)V
    .registers 3
    .param p1, "muted"    # Z

    .line 230
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setMute(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$start$10(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 235
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method private synthetic blacklist lambda$startConference$11([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 241
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method private synthetic blacklist lambda$startDtmf$26(C)V
    .registers 3
    .param p1, "c"    # C

    .line 328
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->startDtmf(C)V

    return-void
.end method

.method private synthetic blacklist lambda$stopDtmf$27()V
    .registers 2

    .line 333
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->stopDtmf()V

    return-void
.end method

.method private synthetic blacklist lambda$terminate$17(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 279
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->terminate(I)V

    return-void
.end method

.method private synthetic blacklist lambda$transfer$15(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 264
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->transfer(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$update$21(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 299
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method


# virtual methods
.method public blacklist accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 5
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 247
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    const-string v1, "accept"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public blacklist callSessionNotifyAnbr(III)V
    .registers 6
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 379
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;III)V

    const-string v1, "callSessionNotifyAnbr"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public blacklist close()V
    .registers 3

    .line 176
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public blacklist consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 4
    .param p1, "transferToSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 270
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Lcom/android/ims/internal/IImsCallSession;)V

    const-string v1, "consultativeTransfer"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public blacklist deflect(Ljava/lang/String;)V
    .registers 4
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 253
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V

    const-string v1, "deflect"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public blacklist extendToConference([Ljava/lang/String;)V
    .registers 4
    .param p1, "participants"    # [Ljava/lang/String;

    .line 305
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;)V

    const-string v1, "extendToConference"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public blacklist getCallId()Ljava/lang/String;
    .registers 3

    .line 181
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getCallId"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 187
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getCallProfile"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public blacklist getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 193
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getLocalCallProfile"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public blacklist getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 205
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda32;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V

    const-string v1, "getProperty"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 199
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda27;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getRemoteCallProfile"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public blacklist getState()I
    .registers 3

    .line 211
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda25;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getState"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 3

    .line 343
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getVideoCallProvider"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    return-object v0
.end method

.method public blacklist hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 284
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    const-string v1, "hold"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public blacklist inviteParticipants([Ljava/lang/String;)V
    .registers 4
    .param p1, "participants"    # [Ljava/lang/String;

    .line 311
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;)V

    const-string v1, "inviteParticipants"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public blacklist isInCall()Z
    .registers 3

    .line 217
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda33;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "isInCall"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isMultiparty()Z
    .registers 3

    .line 349
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "isMultiparty"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist merge()V
    .registers 3

    .line 294
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "merge"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public blacklist reject(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 259
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;I)V

    const-string/jumbo v1, "reject"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public blacklist removeParticipants([Ljava/lang/String;)V
    .registers 4
    .param p1, "participants"    # [Ljava/lang/String;

    .line 317
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;)V

    const-string/jumbo v1, "removeParticipants"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public blacklist resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 289
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    const-string/jumbo v1, "resume"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public blacklist sendDtmf(CLandroid/os/Message;)V
    .registers 5
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 323
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;CLandroid/os/Message;)V

    const-string/jumbo v1, "sendDtmf"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public blacklist sendRtpHeaderExtensions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 373
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/util/List;)V

    const-string/jumbo v1, "sendRtpHeaderExtensions"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public blacklist sendRttMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 367
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda30;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V

    const-string/jumbo v1, "sendRttMessage"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public blacklist sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "toProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 355
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsCallProfile;)V

    const-string/jumbo v1, "sendRttModifyRequest"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public blacklist sendRttModifyResponse(Z)V
    .registers 4
    .param p1, "status"    # Z

    .line 361
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Z)V

    const-string/jumbo v1, "sendRttModifyResponse"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public blacklist sendUssd(Ljava/lang/String;)V
    .registers 4
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 338
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V

    const-string/jumbo v1, "sendUssd"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public blacklist setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 223
    new-instance v0, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    .line 224
    .local v0, "iCSL":Landroid/telephony/ims/ImsCallSessionListener;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 225
    new-instance v1, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda37;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsCallSessionListener;)V

    const-string/jumbo v2, "setListener"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public blacklist setMute(Z)V
    .registers 4
    .param p1, "muted"    # Z

    .line 230
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Z)V

    const-string/jumbo v1, "setMute"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public blacklist start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 235
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda31;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    const-string/jumbo v1, "start"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public blacklist startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    const-string/jumbo v1, "startConference"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public blacklist startDtmf(C)V
    .registers 4
    .param p1, "c"    # C

    .line 328
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;C)V

    const-string/jumbo v1, "startDtmf"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public blacklist stopDtmf()V
    .registers 3

    .line 333
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string/jumbo v1, "stopDtmf"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public blacklist terminate(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 279
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda35;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;I)V

    const-string/jumbo v1, "terminate"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 264
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda29;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;Z)V

    const-string/jumbo v1, "transfer"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public blacklist update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 5
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 299
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda34;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    const-string/jumbo v1, "update"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 301
    return-void
.end method
