.class public Landroid/adservices/common/AdServicesCommonManager;
.super Ljava/lang/Object;
.source "AdServicesCommonManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/AdServicesCommonManager$Module;,
        Landroid/adservices/common/AdServicesCommonManager$ModuleState;,
        Landroid/adservices/common/AdServicesCommonManager$ModuleUserChoice;,
        Landroid/adservices/common/AdServicesCommonManager$NotificationType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ADSERVICES_NOTIFICATION_DISPLAYED:Ljava/lang/String; = "android.adservices.common.action.ADSERVICES_NOTIFICATION_DISPLAYED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_VIEW_ADSERVICES_CONSENT_PAGE:Ljava/lang/String; = "android.adservices.common.action.VIEW_ADSERVICES_CONSENT_PAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist AD_SERVICES_COMMON_SERVICE:Ljava/lang/String; = "ad_services_common_service"

.field public static final whitelist MODULE_ADID:I = 0x5

.field public static final whitelist MODULE_MEASUREMENT:I = 0x0

.field public static final whitelist MODULE_ON_DEVICE_PERSONALIZATION:I = 0x4

.field public static final whitelist MODULE_PROTECTED_APP_SIGNALS:I = 0x2

.field public static final whitelist MODULE_PROTECTED_AUDIENCE:I = 0x1

.field public static final whitelist MODULE_STATE_DISABLED:I = 0x2

.field public static final whitelist MODULE_STATE_ENABLED:I = 0x1

.field public static final whitelist MODULE_STATE_UNKNOWN:I = 0x0

.field public static final whitelist MODULE_TOPICS:I = 0x3

.field public static final whitelist NOTIFICATION_NONE:I = 0x0

.field public static final whitelist NOTIFICATION_ONGOING:I = 0x1

.field public static final whitelist NOTIFICATION_REGULAR:I = 0x2

.field public static final whitelist USER_CHOICE_OPTED_IN:I = 0x1

.field public static final whitelist USER_CHOICE_OPTED_OUT:I = 0x2

.field public static final whitelist USER_CHOICE_UNKNOWN:I


# instance fields
.field private final blacklist mAdServicesCommonServiceBinder:Lcom/android/adservices/ServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/adservices/ServiceBinder<",
            "Landroid/adservices/common/IAdServicesCommonService;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Landroid/adservices/common/AdServicesCommonManager;->mContext:Landroid/content/Context;

    .line 229
    new-instance v0, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda2;-><init>()V

    .line 230
    const-string v1, "android.adservices.AD_SERVICES_COMMON_SERVICE"

    invoke-static {p1, v1, v0}, Lcom/android/adservices/ServiceBinder;->getServiceBinder(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Function;)Lcom/android/adservices/ServiceBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/AdServicesCommonManager;->mAdServicesCommonServiceBinder:Lcom/android/adservices/ServiceBinder;

    .line 234
    return-void
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/adservices/common/AdServicesCommonManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_f

    .line 246
    const-class v0, Landroid/adservices/common/AdServicesCommonManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdServicesCommonManager;

    goto :goto_14

    .line 247
    :cond_f
    new-instance v0, Landroid/adservices/common/AdServicesCommonManager;

    invoke-direct {v0, p0}, Landroid/adservices/common/AdServicesCommonManager;-><init>(Landroid/content/Context;)V

    .line 245
    :goto_14
    return-object v0
.end method

.method private blacklist getService()Landroid/adservices/common/IAdServicesCommonService;
    .registers 4

    .line 252
    iget-object v0, p0, Landroid/adservices/common/AdServicesCommonManager;->mAdServicesCommonServiceBinder:Lcom/android/adservices/ServiceBinder;

    invoke-virtual {v0}, Lcom/android/adservices/ServiceBinder;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/IAdServicesCommonService;

    .line 253
    .local v0, "service":Landroid/adservices/common/IAdServicesCommonService;
    if-eqz v0, :cond_b

    .line 256
    return-object v0

    .line 254
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to find the service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic blacklist lambda$enableAdServices$1(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 4
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal Error!"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getAdservicesCommonStates$5(Landroid/adservices/common/AdServicesOutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 4
    .param p0, "callback"    # Landroid/adservices/common/AdServicesOutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 751
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal Error!"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$isAdServicesEnabled$0(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 4
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal Error!"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestAdServicesModuleOverrides$2(Landroid/adservices/common/AdServicesOutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 4
    .param p0, "callback"    # Landroid/adservices/common/AdServicesOutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 511
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal Error!"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestAdServicesModuleUserChoices$3(Landroid/adservices/common/AdServicesOutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 4
    .param p0, "callback"    # Landroid/adservices/common/AdServicesOutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 564
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal Error!"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$updateAdId$4(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 4
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 683
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal Error!"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static blacklist validateModule(I)I
    .registers 4
    .param p0, "module"    # I

    .line 196
    packed-switch p0, :pswitch_data_1e

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Module:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :pswitch_1c
    nop

    .line 196
    return p0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist validateModuleState(I)I
    .registers 4
    .param p0, "moduleState"    # I

    .line 216
    packed-switch p0, :pswitch_data_1e

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Module State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :pswitch_1c
    nop

    .line 216
    return p0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public whitelist enableAdServices(Landroid/adservices/common/AdServicesStates;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 5
    .param p1, "adServicesStates"    # Landroid/adservices/common/AdServicesStates;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/common/AdServicesStates;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 596
    .local p3, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    invoke-static {p3}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 597
    return-void

    .line 600
    :cond_7
    nop

    .line 601
    invoke-static {p3}, Landroid/adservices/common/OutcomeReceiverConverter;->toOutcomeReceiver(Landroid/adservices/common/AdServicesOutcomeReceiver;)Landroid/os/OutcomeReceiver;

    move-result-object v0

    .line 600
    invoke-virtual {p0, p1, p2, v0}, Landroid/adservices/common/AdServicesCommonManager;->enableAdServices(Landroid/adservices/common/AdServicesStates;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 602
    return-void
.end method

.method public whitelist enableAdServices(Landroid/adservices/common/AdServicesStates;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "adServicesStates"    # Landroid/adservices/common/AdServicesStates;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/common/AdServicesStates;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 382
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-direct {p0}, Landroid/adservices/common/AdServicesCommonManager;->getService()Landroid/adservices/common/IAdServicesCommonService;

    move-result-object v0

    .line 388
    .local v0, "service":Landroid/adservices/common/IAdServicesCommonService;
    :try_start_d
    new-instance v1, Landroid/adservices/common/AdServicesCommonManager$2;

    invoke-direct {v1, p0, p2, p3}, Landroid/adservices/common/AdServicesCommonManager$2;-><init>(Landroid/adservices/common/AdServicesCommonManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/adservices/common/IAdServicesCommonService;->enableAdServices(Landroid/adservices/common/AdServicesStates;Landroid/adservices/common/IEnableAdServicesCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    .line 422
    goto :goto_24

    .line 418
    :catch_16
    move-exception v1

    .line 419
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 420
    new-instance v2, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p3, v1}, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda6;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 423
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public blacklist getAdservicesCommonStates(Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 10
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Landroid/adservices/common/AdServicesCommonStatesResponse;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 704
    .local p2, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Landroid/adservices/common/AdServicesCommonStatesResponse;Ljava/lang/Exception;>;"
    invoke-static {p2}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 705
    return-void

    .line 708
    :cond_7
    invoke-direct {p0}, Landroid/adservices/common/AdServicesCommonManager;->getService()Landroid/adservices/common/IAdServicesCommonService;

    move-result-object v0

    .line 709
    .local v0, "service":Landroid/adservices/common/IAdServicesCommonService;
    new-instance v1, Landroid/adservices/common/CallerMetadata$Builder;

    invoke-direct {v1}, Landroid/adservices/common/CallerMetadata$Builder;-><init>()V

    .line 711
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/adservices/common/CallerMetadata$Builder;->setBinderElapsedTimestamp(J)Landroid/adservices/common/CallerMetadata$Builder;

    move-result-object v1

    .line 712
    invoke-virtual {v1}, Landroid/adservices/common/CallerMetadata$Builder;->build()Landroid/adservices/common/CallerMetadata;

    move-result-object v1

    .line 713
    .local v1, "callerMetadata":Landroid/adservices/common/CallerMetadata;
    const-string v2, ""

    .line 714
    .local v2, "appPackageName":Ljava/lang/String;
    const-string v3, ""

    .line 716
    .local v3, "sdkPackageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/adservices/common/AdServicesCommonManager;->mContext:Landroid/content/Context;

    .line 717
    invoke-static {v4}, Landroid/adservices/common/SandboxedSdkContextUtils;->getAsSandboxedSdkContext(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v4

    .line 718
    .local v4, "sandboxedSdkContext":Landroid/app/sdksandbox/SandboxedSdkContext;
    if-eqz v4, :cond_31

    .line 720
    invoke-virtual {v4}, Landroid/app/sdksandbox/SandboxedSdkContext;->getSdkPackageName()Ljava/lang/String;

    move-result-object v3

    .line 721
    invoke-virtual {v4}, Landroid/app/sdksandbox/SandboxedSdkContext;->getClientPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_37

    .line 724
    :cond_31
    iget-object v5, p0, Landroid/adservices/common/AdServicesCommonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 727
    :goto_37
    :try_start_37
    new-instance v5, Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;

    invoke-direct {v5, v2, v3}, Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual {v5}, Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;->build()Landroid/adservices/common/GetAdServicesCommonStatesParams;

    move-result-object v5

    new-instance v6, Landroid/adservices/common/AdServicesCommonManager$6;

    invoke-direct {v6, p0, p1, p2}, Landroid/adservices/common/AdServicesCommonManager$6;-><init>(Landroid/adservices/common/AdServicesCommonManager;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    .line 727
    invoke-interface {v0, v5, v1, v6}, Landroid/adservices/common/IAdServicesCommonService;->getAdServicesCommonStates(Landroid/adservices/common/GetAdServicesCommonStatesParams;Landroid/adservices/common/CallerMetadata;Landroid/adservices/common/IAdServicesCommonStatesCallback;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_48} :catch_49

    .line 752
    goto :goto_57

    .line 748
    :catch_49
    move-exception v5

    .line 749
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 750
    new-instance v6, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, p2, v5}, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda1;-><init>(Landroid/adservices/common/AdServicesOutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p1, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 753
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_57
    return-void
.end method

.method public whitelist isAdServicesEnabled(Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    .local p2, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    invoke-static {p2}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 317
    return-void

    .line 320
    :cond_7
    invoke-static {p2}, Landroid/adservices/common/OutcomeReceiverConverter;->toOutcomeReceiver(Landroid/adservices/common/AdServicesOutcomeReceiver;)Landroid/os/OutcomeReceiver;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/adservices/common/AdServicesCommonManager;->isAdServicesEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 321
    return-void
.end method

.method public whitelist isAdServicesEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    invoke-direct {p0}, Landroid/adservices/common/AdServicesCommonManager;->getService()Landroid/adservices/common/IAdServicesCommonService;

    move-result-object v0

    .line 273
    .local v0, "service":Landroid/adservices/common/IAdServicesCommonService;
    :try_start_4
    new-instance v1, Landroid/adservices/common/AdServicesCommonManager$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/adservices/common/AdServicesCommonManager$1;-><init>(Landroid/adservices/common/AdServicesCommonManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/adservices/common/IAdServicesCommonService;->isAdServicesEnabled(Landroid/adservices/common/IAdServicesCommonCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 295
    goto :goto_1b

    .line 291
    :catch_d
    move-exception v1

    .line 292
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 293
    new-instance v2, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, v1}, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda4;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 296
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public whitelist requestAdServicesModuleOverrides(Landroid/adservices/common/UpdateAdServicesModuleStatesParams;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 7
    .param p1, "updateParams"    # Landroid/adservices/common/UpdateAdServicesModuleStatesParams;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/common/UpdateAdServicesModuleStatesParams;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 483
    .local p3, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Ljava/lang/Void;Ljava/lang/Exception;>;"
    const-string v0, "updateParams cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 484
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 485
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 487
    invoke-static {p3}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 488
    return-void

    .line 491
    :cond_16
    invoke-direct {p0}, Landroid/adservices/common/AdServicesCommonManager;->getService()Landroid/adservices/common/IAdServicesCommonService;

    move-result-object v0

    .line 493
    .local v0, "service":Landroid/adservices/common/IAdServicesCommonService;
    :try_start_1a
    new-instance v1, Landroid/adservices/common/AdServicesCommonManager$3;

    invoke-direct {v1, p0, p3}, Landroid/adservices/common/AdServicesCommonManager$3;-><init>(Landroid/adservices/common/AdServicesCommonManager;Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/adservices/common/IAdServicesCommonService;->requestAdServicesModuleOverrides(Landroid/adservices/common/UpdateAdServicesModuleStatesParams;Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_22} :catch_23

    .line 512
    goto :goto_31

    .line 508
    :catch_23
    move-exception v1

    .line 509
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 510
    new-instance v2, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3, v1}, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda0;-><init>(Landroid/adservices/common/AdServicesOutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 513
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void
.end method

.method public whitelist requestAdServicesModuleUserChoices(Landroid/adservices/common/UpdateAdServicesUserChoicesParams;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 7
    .param p1, "updateParams"    # Landroid/adservices/common/UpdateAdServicesUserChoicesParams;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/common/UpdateAdServicesUserChoicesParams;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 536
    .local p3, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Ljava/lang/Void;Ljava/lang/Exception;>;"
    const-string v0, "updateParams cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 538
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 540
    invoke-static {p3}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 541
    return-void

    .line 544
    :cond_16
    invoke-direct {p0}, Landroid/adservices/common/AdServicesCommonManager;->getService()Landroid/adservices/common/IAdServicesCommonService;

    move-result-object v0

    .line 546
    .local v0, "service":Landroid/adservices/common/IAdServicesCommonService;
    :try_start_1a
    new-instance v1, Landroid/adservices/common/AdServicesCommonManager$4;

    invoke-direct {v1, p0, p3}, Landroid/adservices/common/AdServicesCommonManager$4;-><init>(Landroid/adservices/common/AdServicesCommonManager;Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/adservices/common/IAdServicesCommonService;->requestAdServicesModuleUserChoices(Landroid/adservices/common/UpdateAdServicesUserChoicesParams;Landroid/adservices/common/IRequestAdServicesModuleUserChoicesCallback;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_22} :catch_23

    .line 565
    goto :goto_31

    .line 561
    :catch_23
    move-exception v1

    .line 562
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 563
    new-instance v2, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p3, v1}, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda5;-><init>(Landroid/adservices/common/AdServicesOutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 566
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void
.end method

.method public whitelist setAdServicesEnabled(ZZ)V
    .registers 6
    .param p1, "adServicesEntryPointEnabled"    # Z
    .param p2, "adIdEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 342
    invoke-direct {p0}, Landroid/adservices/common/AdServicesCommonManager;->getService()Landroid/adservices/common/IAdServicesCommonService;

    move-result-object v0

    .line 344
    .local v0, "service":Landroid/adservices/common/IAdServicesCommonService;
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/adservices/common/IAdServicesCommonService;->setAdServicesEnabled(ZZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 347
    goto :goto_e

    .line 345
    :catch_8
    move-exception v1

    .line 346
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 348
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist updateAdId(Landroid/adservices/common/UpdateAdIdRequest;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 5
    .param p1, "updateAdIdRequest"    # Landroid/adservices/common/UpdateAdIdRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/common/UpdateAdIdRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 630
    .local p3, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    invoke-static {p3}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 631
    return-void

    .line 634
    :cond_7
    nop

    .line 635
    invoke-static {p3}, Landroid/adservices/common/OutcomeReceiverConverter;->toOutcomeReceiver(Landroid/adservices/common/AdServicesOutcomeReceiver;)Landroid/os/OutcomeReceiver;

    move-result-object v0

    .line 634
    invoke-virtual {p0, p1, p2, v0}, Landroid/adservices/common/AdServicesCommonManager;->updateAdId(Landroid/adservices/common/UpdateAdIdRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 636
    return-void
.end method

.method public whitelist updateAdId(Landroid/adservices/common/UpdateAdIdRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "updateAdIdRequest"    # Landroid/adservices/common/UpdateAdIdRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/common/UpdateAdIdRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 658
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-direct {p0}, Landroid/adservices/common/AdServicesCommonManager;->getService()Landroid/adservices/common/IAdServicesCommonService;

    move-result-object v0

    .line 664
    .local v0, "service":Landroid/adservices/common/IAdServicesCommonService;
    :try_start_d
    new-instance v1, Landroid/adservices/common/AdServicesCommonManager$5;

    invoke-direct {v1, p0, p2, p3}, Landroid/adservices/common/AdServicesCommonManager$5;-><init>(Landroid/adservices/common/AdServicesCommonManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/adservices/common/IAdServicesCommonService;->updateAdIdCache(Landroid/adservices/common/UpdateAdIdRequest;Landroid/adservices/common/IUpdateAdIdCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    .line 684
    goto :goto_28

    .line 680
    :catch_16
    move-exception v1

    .line 681
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException calling updateAdIdCache with %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 682
    new-instance v2, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p3, v1}, Landroid/adservices/common/AdServicesCommonManager$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 685
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method
