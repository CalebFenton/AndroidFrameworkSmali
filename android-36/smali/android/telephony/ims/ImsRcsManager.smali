.class public Landroid/telephony/ims/ImsRcsManager;
.super Ljava/lang/Object;
.source "ImsRcsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;,
        Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;,
        Landroid/telephony/ims/ImsRcsManager$RcsImsCapabilityFlag;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_SHOW_CAPABILITY_DISCOVERY_OPT_IN:Ljava/lang/String; = "android.telephony.ims.action.SHOW_CAPABILITY_DISCOVERY_OPT_IN"

.field public static final blacklist CAPABILITY_TYPE_MAX:I = 0x3

.field public static final whitelist CAPABILITY_TYPE_NONE:I = 0x0

.field public static final whitelist CAPABILITY_TYPE_OPTIONS_UCE:I = 0x1

.field public static final whitelist CAPABILITY_TYPE_PRESENCE_UCE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "ImsRcsManager"


# instance fields
.field private final blacklist mAvailabilityChangedCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;",
            "Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSubId:I

.field private final blacklist mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;Landroid/telephony/BinderCacheManager;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;",
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p3, "binderCache":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<Landroid/telephony/ims/aidl/IImsRcsController;>;"
    .local p4, "telephonyBinderCache":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<Lcom/android/internal/telephony/ITelephony;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput p2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    .line 222
    iput-object p1, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    .line 223
    iput-object p3, p0, Landroid/telephony/ims/ImsRcsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    .line 225
    iput-object p4, p0, Landroid/telephony/ims/ImsRcsManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    .line 226
    return-void
.end method

.method private blacklist addAvailabilityChangedListenerToCollection(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;

    .line 678
    new-instance v0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)V

    .line 679
    .local v0, "adapter":Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    iget-object v1, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 680
    :try_start_8
    iget-object v2, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    monitor-exit v1

    .line 682
    return-object v0

    .line 681
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v2
.end method

.method private blacklist getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;
    .registers 3

    .line 700
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 703
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getRegistrationState$0(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "stateCallback"    # Ljava/util/function/Consumer;

    .line 369
    nop

    .line 370
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 369
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getRegistrationTransportType$1(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "transportTypeCallback"    # Ljava/util/function/Consumer;

    .line 422
    nop

    .line 423
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 422
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist removeAvailabilityChangedListenerFromCollection(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    .registers 4
    .param p1, "listener"    # Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;

    .line 693
    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 694
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    monitor-exit v0

    return-object v1

    .line 695
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method


# virtual methods
.method public whitelist addOnAvailabilityChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)V
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 454
    if-eqz p2, :cond_4d

    .line 458
    if-eqz p1, :cond_45

    .line 462
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 463
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_38

    .line 469
    nop

    .line 470
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager;->addAvailabilityChangedListenerToCollection(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    move-result-object v3

    .line 472
    .local v3, "adapter":Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    :try_start_12
    iget v4, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {v3}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/telephony/ims/aidl/IImsRcsController;->registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_12 .. :try_end_1b} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1d

    .line 479
    nop

    .line 480
    return-void

    .line 475
    :catch_1d
    move-exception v4

    .line 476
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Error calling IImsRcsController#registerRcsAvailabilityCallback"

    invoke-static {v2, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v5, "Remote IMS Service is not available"

    invoke-direct {v2, v5, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 473
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_2b
    move-exception v1

    .line 474
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 464
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .end local v3    # "adapter":Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    :cond_38
    const-string v3, "Add availability changed listener: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 459
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-nullOnAvailabilityChangedListener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRegistrationState(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 342
    .local p2, "stateCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_4c

    .line 345
    if-eqz p1, :cond_44

    .line 349
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 350
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const-string v1, "ImsRcsManager"

    if-eqz v0, :cond_37

    .line 356
    :try_start_c
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    new-instance v3, Landroid/telephony/ims/ImsRcsManager$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$1;-><init>(Landroid/telephony/ims/ImsRcsManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->getImsRcsRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_16} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    .line 371
    goto :goto_36

    .line 367
    :catch_17
    move-exception v2

    .line 368
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get registration state error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v1, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 372
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_36
    return-void

    .line 351
    :cond_37
    const-string v2, "Get registration state error: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find remote IMS service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null stateCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRegistrationTransportType(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 394
    .local p2, "transportTypeCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_4c

    .line 397
    if-eqz p1, :cond_44

    .line 401
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 402
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const-string v1, "ImsRcsManager"

    if-eqz v0, :cond_37

    .line 408
    :try_start_c
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    new-instance v3, Landroid/telephony/ims/ImsRcsManager$2;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$2;-><init>(Landroid/telephony/ims/ImsRcsManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->getImsRcsRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_16} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    .line 424
    goto :goto_36

    .line 420
    :catch_17
    move-exception v2

    .line 421
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get registration transport type error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v1, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 425
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_36
    return-void

    .line 403
    :cond_37
    const-string v2, "Get registration transport type error: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find remote IMS service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 398
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null transportTypeCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getUceAdapter()Landroid/telephony/ims/RcsUceAdapter;
    .registers 4

    .line 234
    new-instance v0, Landroid/telephony/ims/RcsUceAdapter;

    iget-object v1, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsUceAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public whitelist isAvailable(II)Z
    .registers 8
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 589
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 590
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_2b

    .line 597
    :try_start_9
    iget v3, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-interface {v0, v3, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->isAvailable(III)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v1

    .line 600
    :catch_10
    move-exception v3

    .line 601
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling IImsRcsController#isAvailable"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 598
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1e
    move-exception v1

    .line 599
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 591
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2b
    const-string/jumbo v3, "isAvailable: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist isCapable(II)Z
    .registers 8
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 548
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 549
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_2b

    .line 556
    :try_start_9
    iget v3, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-interface {v0, v3, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->isCapable(III)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v1

    .line 559
    :catch_10
    move-exception v3

    .line 560
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling IImsRcsController#isCapable"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 557
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1e
    move-exception v1

    .line 558
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 550
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2b
    const-string/jumbo v3, "isCapable: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "c"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 261
    if-eqz p2, :cond_48

    .line 264
    if-eqz p1, :cond_40

    .line 268
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 269
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    if-eqz v0, :cond_31

    .line 275
    invoke-virtual {p2, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 277
    :try_start_e
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_17} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_19

    .line 282
    nop

    .line 283
    return-void

    .line 280
    :catch_19
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 278
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v1

    .line 279
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 270
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_31
    const-string v2, "ImsRcsManager"

    const-string v3, "Register registration callback: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 265
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/ims/ImsStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 629
    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 630
    const-string v0, "Must include a non-null Executor."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 632
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsStateCallback;->init(Ljava/util/concurrent/Executor;)V

    .line 633
    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsStateCallback;)V

    invoke-virtual {v0, p2, v1}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 634
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    .line 640
    :try_start_20
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    .line 642
    invoke-virtual {p2}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 640
    const/4 v5, 0x2

    invoke-interface {v0, v2, v5, v3, v4}, Lcom/android/internal/telephony/ITelephony;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_30} :catch_3d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_30} :catch_32
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_30} :catch_32

    .line 647
    nop

    .line 648
    return-void

    .line 645
    :catch_32
    move-exception v2

    .line 646
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 643
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3d
    move-exception v1

    .line 644
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 635
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_4a
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Telephony server is down"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist removeOnAvailabilityChangedListener(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 500
    if-eqz p1, :cond_29

    .line 505
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 506
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const-string v1, "ImsRcsManager"

    if-nez v0, :cond_10

    .line 507
    const-string v2, "Remove availability changed listener: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void

    .line 511
    :cond_10
    nop

    .line 512
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsRcsManager;->removeAvailabilityChangedListenerFromCollection(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    move-result-object v2

    .line 513
    .local v2, "callback":Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    if-nez v2, :cond_18

    .line 514
    return-void

    .line 518
    :cond_18
    :try_start_18
    iget v3, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {v2}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22

    .line 521
    goto :goto_28

    .line 519
    :catch_22
    move-exception v3

    .line 520
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling IImsRcsController#unregisterRcsAvailabilityCallback"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void

    .line 501
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    .end local v2    # "callback":Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-nullOnAvailabilityChangedListener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 305
    if-eqz p1, :cond_28

    .line 309
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 310
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    if-eqz v0, :cond_19

    .line 316
    :try_start_8
    iget v1, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    .line 319
    nop

    .line 320
    return-void

    .line 317
    :catch_13
    move-exception v1

    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 311
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const-string v1, "ImsRcsManager"

    const-string v2, "Unregister registration callback: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find remote IMS service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/ImsStateCallback;

    .line 656
    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 658
    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 660
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 661
    :try_start_f
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_19

    .line 663
    :catch_17
    move-exception v1

    goto :goto_1a

    .line 665
    :cond_19
    :goto_19
    nop

    .line 666
    :goto_1a
    return-void
.end method
