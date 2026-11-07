.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;
.super Landroid/telephony/ims/feature/MmTelFeature$Listener;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmTelFeatureListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$-qFdO-Jht9upb3ttpYjCri3dlYM(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;IILcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->lambda$onModifyImsTrafficSession$5(IILcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$1I16Ygc6y2itRhA2vFxsfB87fa8(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 1

    .line 523
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$8E49c7ixkYqdIEKATMvyzbAhAhg(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->lambda$onTriggerEpsFallback$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MSPqWU0Jj1TN73IFW7E08l2ltu0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->lambda$onStopImsTrafficSession$6(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RJhMFVT9Jtj8asQomh-RoFDXWl0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->lambda$onMediaQualityStatusChanged$7(Landroid/telephony/ims/MediaQualityStatus;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WTt94SGstZUPib6n9AIh4odhpfQ(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->lambda$onAudioModeIsVoipChanged$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jAZzTtD2JBoCfBkAe9zcZMohUic(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;IIIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->lambda$onStartImsTrafficSession$4(IIIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lhbDAWLQHF0_9YbAFzbvEfnpuNo(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->lambda$onIncomingCall$0(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$xBhyjZ1wWM4IEe39FmBCPtJoy_g(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->lambda$onVoiceMessageCountUpdate$1(I)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    return-void
.end method

.method private blacklist executeAndWaitForReturn(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 522
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Supplier;)V

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmExecutor(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    .line 526
    :try_start_f
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_13
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_13} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ImsPhoneCallTracker : executeAndWaitForReturn exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 528
    const-string p1, "ImsPhoneCallTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic blacklist lambda$onAudioModeIsVoipChanged$2(I)V
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    const-string v1, "ImsPhoneCallTracker"

    if-eqz v0, :cond_15

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    goto :goto_54

    .line 413
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    goto :goto_54

    .line 415
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    goto :goto_54

    .line 417
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    goto :goto_54

    .line 420
    :cond_4e
    const-string v0, "onAudioModeIsVoipChanged: no Call"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_54
    if-eqz v0, :cond_62

    .line 424
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mfindConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    if-eqz p0, :cond_61

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->onAudioModeIsVoipChanged(I)V

    :cond_61
    return-void

    .line 429
    :cond_62
    const-string p0, "onAudioModeIsVoipChanged: no ImsCall"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$onIncomingCall$0(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .registers 4

    .line 392
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->processIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$onMediaQualityStatusChanged$7(Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 5

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_26

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_26

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaQualityStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 496
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V

    return-void

    .line 498
    :cond_26
    const-string p0, "onMediaQualityStatusChanged: null phone"

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onModifyImsTrafficSession$5(IILcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;)V
    .registers 11

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModifyImsTrafficSession token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;->-$$Nest$fgetmTrafficType(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;)I

    move-result v3

    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;->-$$Nest$fgetmTrafficDirection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;)I

    move-result v5

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v0, 0x21

    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;->-$$Nest$fgetmCallback(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;)Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;

    move-result-object p3

    .line 475
    invoke-virtual {p0, v0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move v4, p2

    .line 473
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startImsTraffic(IIIILandroid/os/Message;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStartImsTrafficSession$4(IIIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V
    .registers 12

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartImsTrafficSession token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", traffic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 455
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v1, 0x21

    .line 456
    invoke-virtual {p0, v1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 455
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startImsTraffic(IIIILandroid/os/Message;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStopImsTrafficSession$6(I)V
    .registers 5

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopImsTrafficSession token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 487
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopImsTraffic(ILandroid/os/Message;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTriggerEpsFallback$3(I)V
    .registers 5

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTriggerEpsFallback reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 438
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->triggerEpsFallback(ILandroid/os/Message;)V

    return-void
.end method

.method private synthetic blacklist lambda$onVoiceMessageCountUpdate$1(I)V
    .registers 5

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_28

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_28

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVoiceMessageCountChanged :: count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 400
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    return-void

    .line 402
    :cond_28
    const-string p0, "onVoiceMessageCountUpdate: null phone"

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist processIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .registers 15

    .line 268
    const-string v0, "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

    const-string v1, "processIncomingCall: USSD"

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v3, "processIncomingCall: incoming call intent"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-nez p3, :cond_12

    .line 270
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 271
    :cond_12
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsManager(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    return-object v3

    .line 276
    :cond_1c
    :try_start_1c
    const-string v2, "android.telephony.ims.feature.extra.IS_USSD"

    const/4 v4, 0x0

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 278
    const-string v5, "android:ussd"

    invoke-virtual {p3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    or-int/2addr v2, v5

    if-eqz v2, :cond_82

    .line 280
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 281
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOperationLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 282
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsManager(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsUssdListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/ims/ImsManager;->takeCall(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)V

    .line 283
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 284
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object p1

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Lcom/android/ims/ImsCall;->accept(I)V

    goto :goto_64

    :catch_60
    move-exception v0

    move-object p1, v0

    goto/16 :goto_276

    :cond_64
    :goto_64
    if-eqz p2, :cond_73

    .line 286
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsCallSession;->setCallId(Ljava/lang/String;)V

    .line 287
    :cond_73
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmUssdSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getIImsCallSessionListenerProxy()Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    move-result-object p0

    return-object p0

    .line 292
    :cond_82
    const-string v1, "android.telephony.ims.feature.extra.IS_UNKNOWN_CALL"

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 294
    const-string v2, "android:isUnknown"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    or-int v10, v1, p3

    .line 296
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processIncomingCall: isUnknown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " fg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 297
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " bg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 298
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 302
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsManager(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object p3

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsCallListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Lcom/android/ims/ImsManager;->takeCall(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v7

    if-eqz p2, :cond_df

    .line 303
    invoke-virtual {v7}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/telephony/ims/ImsCallSession;->setCallId(Ljava/lang/String;)V

    .line 305
    :cond_df
    invoke-virtual {v7}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallSession;->getIImsCallSessionListenerProxy()Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    move-result-object p2

    .line 306
    new-instance v5, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v6, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v10, :cond_f3

    .line 308
    iget-object p3, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    :goto_f1
    move-object v9, p3

    goto :goto_f6

    :cond_f3
    iget-object p3, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    goto :goto_f1

    :goto_f6
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    .line 311
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p3, p3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result p3

    if-eqz p3, :cond_11a

    .line 312
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p3, p3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p3

    if-eqz p3, :cond_11a

    .line 317
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 318
    invoke-static {v1, p3, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mshouldDisconnectActiveCallOnAnswer(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result p3

    .line 319
    invoke-virtual {v5, p3}, Lcom/android/internal/telephony/Connection;->setActiveCallDisconnectedOnAnswer(Z)V

    .line 322
    :cond_11a
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmAllowAddCallDuringVideoCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result p3

    invoke-virtual {v5, p3}, Lcom/android/internal/telephony/Connection;->setAllowAddCallDuringVideoCall(Z)V

    .line 323
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmAllowHoldingVideoCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result p3

    invoke-virtual {v5, p3}, Lcom/android/internal/telephony/Connection;->setAllowHoldingVideoCall(Z)V

    if-eqz p1, :cond_19b

    .line 325
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    if-eqz p3, :cond_19b

    .line 326
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_19b

    .line 327
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object p3

    .line 328
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_19b

    .line 329
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    .line 330
    invoke-virtual {p1, v0, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_154
    .catch Lcom/android/ims/ImsException; {:try_start_1c .. :try_end_154} :catch_60
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_154} :catch_60

    if-eqz p1, :cond_19b

    .line 333
    :try_start_156
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 335
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    .line 333
    invoke-virtual {p3, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I

    move-result p1

    const/16 p3, 0x51

    if-ne p1, p3, :cond_19b

    .line 337
    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 338
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string p3, "onIncomingCall : incoming call auto rejected"

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 339
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOperationLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    const-string p3, "processIncomingCall: auto rejected"

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V
    :try_end_182
    .catch Ljava/lang/NumberFormatException; {:try_start_156 .. :try_end_182} :catch_183
    .catch Lcom/android/ims/ImsException; {:try_start_156 .. :try_end_182} :catch_60
    .catch Landroid/os/RemoteException; {:try_start_156 .. :try_end_182} :catch_60

    goto :goto_19b

    :catch_183
    move-exception v0

    move-object p1, v0

    .line 342
    :try_start_185
    const-string p3, "ImsPhoneCallTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in parsing Integer Data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_19b
    :goto_19b
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOperationLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onIncomingCall: isUnknown="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", connId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 347
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$maddConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 352
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1, v5, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$msetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 354
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p1

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p3, p3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p3

    .line 355
    invoke-virtual {v7}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    .line 354
    invoke-virtual {p1, p3, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallReceive(ILandroid/telephony/ims/ImsCallSession;)V

    .line 356
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onImsCallReceived(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    if-eqz v10, :cond_237

    .line 361
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    if-eqz p1, :cond_22f

    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    .line 362
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22f

    .line 363
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOperationLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onIncomingCall: unknown call "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " replaces "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 366
    :cond_22f
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    goto :goto_260

    .line 368
    :cond_237
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object p3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne p1, p3, :cond_24d

    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 369
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    if-eq p1, p3, :cond_252

    .line 370
    :cond_24d
    sget-object p1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v5, v7, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    .line 373
    :cond_252
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 374
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyIncomingRing()V

    .line 377
    :goto_260
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mupdatePhoneState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 378
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 379
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsCallInfoTracker(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->addImsCallStatus(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    :try_end_275
    .catch Lcom/android/ims/ImsException; {:try_start_185 .. :try_end_275} :catch_60
    .catch Landroid/os/RemoteException; {:try_start_185 .. :try_end_275} :catch_60

    return-object p2

    .line 382
    :goto_276
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processIncomingCall: exception "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 383
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmOperationLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onIncomingCall: exception processing: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public blacklist onAudioModeIsVoipChanged(I)V
    .registers 3

    .line 409
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;I)V

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmExecutor(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public blacklist onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .registers 5

    .line 392
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->executeAndWaitForReturn(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-object p0
.end method

.method public blacklist onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 3

    .line 493
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;Landroid/telephony/ims/MediaQualityStatus;)V

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmExecutor(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public blacklist onModifyImsTrafficSession(II)V
    .registers 5

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mgetImsTrafficSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 465
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onModifyImsTrafficSession unknown session, token="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 468
    :cond_1f
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;IILcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;)V

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmExecutor(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public blacklist onStartImsTrafficSession(IIIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V
    .registers 14

    .line 448
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1, p2, p4, p5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mregisterImsTrafficSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;IIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V

    .line 449
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda5;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;IIIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V

    iget-object p0, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmExecutor(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public blacklist onStopImsTrafficSession(I)V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$munregisterImsTrafficSession(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    return-void

    .line 483
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;I)V

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmExecutor(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public blacklist onTriggerEpsFallback(I)V
    .registers 3

    .line 436
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;I)V

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmExecutor(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public blacklist onVoiceMessageCountUpdate(I)V
    .registers 3

    .line 397
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;I)V

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmExecutor(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
