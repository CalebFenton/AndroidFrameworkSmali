.class Landroid/telephony/TelephonyManager$9;
.super Landroid/os/ResultReceiver;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 13374
    iput-object p3, p0, Landroid/telephony/TelephonyManager$9;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$9;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendErrorToListener$2(Landroid/os/OutcomeReceiver;Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    .line 13421
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendErrorToListener$3(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/os/OutcomeReceiver;
    .param p2, "e"    # Landroid/telephony/TelephonyManager$ModemActivityInfoException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13420
    new-instance v0, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendResultToListener$0(Landroid/os/OutcomeReceiver;Landroid/telephony/ModemActivityInfo;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "info"    # Landroid/telephony/ModemActivityInfo;

    .line 13414
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendResultToListener$1(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telephony/ModemActivityInfo;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/os/OutcomeReceiver;
    .param p2, "info"    # Landroid/telephony/ModemActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13413
    new-instance v0, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;Landroid/telephony/ModemActivityInfo;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist sendErrorToListener(I)V
    .registers 6
    .param p1, "code"    # I

    .line 13418
    new-instance v0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$ModemActivityInfoException;-><init>(I)V

    .line 13419
    .local v0, "e":Landroid/telephony/TelephonyManager$ModemActivityInfoException;
    iget-object v1, p0, Landroid/telephony/TelephonyManager$9;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$9;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v2, v0}, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 13422
    return-void
.end method

.method private blacklist sendResultToListener(Landroid/telephony/ModemActivityInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/telephony/ModemActivityInfo;

    .line 13412
    iget-object v0, p0, Landroid/telephony/TelephonyManager$9;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$9;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p1}, Landroid/telephony/TelephonyManager$9$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telephony/ModemActivityInfo;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 13415
    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 13377
    const/4 v0, 0x0

    const-string v1, "TelephonyManager"

    if-nez p2, :cond_f

    .line 13378
    const-string/jumbo v2, "requestModemActivityInfo: received null bundle"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13379
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager$9;->sendErrorToListener(I)V

    .line 13380
    return-void

    .line 13382
    :cond_f
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 13383
    const-string v2, "exception"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 13384
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 13385
    .local v0, "receivedErrorCode":I
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager$9;->sendErrorToListener(I)V

    .line 13386
    return-void

    .line 13389
    .end local v0    # "receivedErrorCode":I
    :cond_23
    const-string v2, "controller_activity"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 13390
    const-string/jumbo v2, "requestModemActivityInfo: Bundle did not contain expected key"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13391
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager$9;->sendErrorToListener(I)V

    .line 13392
    return-void

    .line 13394
    :cond_35
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 13395
    .local v2, "receivedResult":Landroid/os/Parcelable;
    instance-of v3, v2, Landroid/telephony/ModemActivityInfo;

    if-nez v3, :cond_47

    .line 13396
    const-string/jumbo v3, "requestModemActivityInfo: Bundle contained something that wasn\'t a ModemActivityInfo."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13398
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager$9;->sendErrorToListener(I)V

    .line 13399
    return-void

    .line 13401
    :cond_47
    move-object v0, v2

    check-cast v0, Landroid/telephony/ModemActivityInfo;

    .line 13402
    .local v0, "modemActivityInfo":Landroid/telephony/ModemActivityInfo;
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 13403
    const-string/jumbo v3, "requestModemActivityInfo: Received an invalid ModemActivityInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13404
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager$9;->sendErrorToListener(I)V

    .line 13405
    return-void

    .line 13407
    :cond_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestModemActivityInfo: Sending result to app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13408
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager$9;->sendResultToListener(Landroid/telephony/ModemActivityInfo;)V

    .line 13409
    return-void
.end method
