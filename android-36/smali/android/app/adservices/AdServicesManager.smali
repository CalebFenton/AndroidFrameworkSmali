.class public final Landroid/app/adservices/AdServicesManager;
.super Ljava/lang/Object;
.source "AdServicesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/adservices/AdServicesManager$DeletionApiType;
    }
.end annotation


# static fields
.field public static final blacklist AD_SERVICES_SYSTEM_SERVICE:Ljava/lang/String; = "adservices_manager"

.field public static final blacklist MEASUREMENT_DELETION:I

.field private static final blacklist SINGLETON_LOCK:Ljava/lang/Object;

.field private static blacklist sContext:Landroid/content/Context;

.field private static blacklist sSingleton:Landroid/app/adservices/AdServicesManager;


# instance fields
.field private final blacklist mService:Landroid/app/adservices/IAdServicesManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/adservices/AdServicesManager;->SINGLETON_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/adservices/IAdServicesManager;)V
    .registers 3
    .param p1, "service"    # Landroid/app/adservices/IAdServicesManager;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "IAdServicesManager cannot be null!"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/adservices/IAdServicesManager;

    iput-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    .line 78
    return-void
.end method

.method public static blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 802
    const-string v0, "PrintWriter cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 804
    const-string v0, "AdServicesManager: "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 805
    sget-object v0, Landroid/app/adservices/AdServicesManager;->SINGLETON_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 806
    :try_start_10
    const-string v1, "sContext=%s, sSingleton=%s"

    sget-object v2, Landroid/app/adservices/AdServicesManager;->sContext:Landroid/content/Context;

    sget-object v3, Landroid/app/adservices/AdServicesManager;->sSingleton:Landroid/app/adservices/AdServicesManager;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 807
    sget-object v1, Landroid/app/adservices/AdServicesManager;->sSingleton:Landroid/app/adservices/AdServicesManager;

    if-eqz v1, :cond_2e

    .line 808
    const-string v1, " (service=%s)"

    sget-object v2, Landroid/app/adservices/AdServicesManager;->sSingleton:Landroid/app/adservices/AdServicesManager;

    iget-object v2, v2, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 810
    :cond_2e
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 811
    monitor-exit v0

    return-void

    .line 812
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/app/adservices/AdServicesManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 92
    const-string v0, "context cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    sget-object v0, Landroid/app/adservices/AdServicesManager;->SINGLETON_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_8
    sget-object v1, Landroid/app/adservices/AdServicesManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_18

    .line 96
    const-string v1, "Setting AdServicesManager static context as %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    sput-object p0, Landroid/app/adservices/AdServicesManager;->sContext:Landroid/content/Context;

    goto :goto_1c

    .line 98
    :cond_18
    sget-object v1, Landroid/app/adservices/AdServicesManager;->sContext:Landroid/content/Context;

    if-ne v1, p0, :cond_67

    .line 102
    :goto_1c
    sget-object v1, Landroid/app/adservices/AdServicesManager;->sSingleton:Landroid/app/adservices/AdServicesManager;

    if-nez v1, :cond_63

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_63

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ge v1, v2, :cond_49

    .line 109
    const-string v1, "AdServicesManager.getInstance(): getting binder from SdkSandboxManager on TM"

    invoke-static {v1}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 112
    const-class v1, Landroid/app/sdksandbox/SdkSandboxManager;

    .line 113
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/sdksandbox/SdkSandboxManager;

    .line 114
    invoke-virtual {v1}, Landroid/app/sdksandbox/SdkSandboxManager;->getAdServicesManager()Landroid/os/IBinder;

    move-result-object v1

    .line 116
    .local v1, "iBinder":Landroid/os/IBinder;
    new-instance v2, Landroid/app/adservices/AdServicesManager;

    .line 117
    invoke-static {v1}, Landroid/app/adservices/IAdServicesManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/adservices/IAdServicesManager;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/adservices/AdServicesManager;-><init>(Landroid/app/adservices/IAdServicesManager;)V

    sput-object v2, Landroid/app/adservices/AdServicesManager;->sSingleton:Landroid/app/adservices/AdServicesManager;

    .line 118
    .end local v1    # "iBinder":Landroid/os/IBinder;
    goto :goto_58

    .line 119
    :cond_49
    const-string v1, "AdServicesManager.getInstance(): getting binder from AdServicesManager on UDC+"

    invoke-static {v1}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 122
    const-class v1, Landroid/app/adservices/AdServicesManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/adservices/AdServicesManager;

    sput-object v1, Landroid/app/adservices/AdServicesManager;->sSingleton:Landroid/app/adservices/AdServicesManager;

    .line 124
    :goto_58
    const-string v1, "AdServicesManager.getInstance(): singleton set as %s"

    sget-object v2, Landroid/app/adservices/AdServicesManager;->sSingleton:Landroid/app/adservices/AdServicesManager;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 126
    :cond_63
    sget-object v1, Landroid/app/adservices/AdServicesManager;->sSingleton:Landroid/app/adservices/AdServicesManager;

    monitor-exit v0

    return-object v1

    .line 99
    :cond_67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstance("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): context already set as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/adservices/AdServicesManager;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    throw v1

    .line 127
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8 .. :try_end_8e} :catchall_8c

    throw v1
.end method


# virtual methods
.method public blacklist clearAllAppConsentData()V
    .registers 3

    .line 391
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->clearAllAppConsentData()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 394
    nop

    .line 395
    return-void

    .line 392
    :catch_7
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist clearAllBlockedTopics()V
    .registers 3

    .line 341
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->clearAllBlockedTopics()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 344
    nop

    .line 345
    return-void

    .line 342
    :catch_7
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist clearConsentForUninstalledApp(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUid"    # I

    .line 431
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1, p2}, Landroid/app/adservices/IAdServicesManager;->clearConsentForUninstalledApp(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 434
    nop

    .line 435
    return-void

    .line 432
    :catch_7
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist clearKnownAppsWithConsent()V
    .registers 3

    .line 381
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->clearKnownAppsWithConsent()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 384
    nop

    .line 385
    return-void

    .line 382
    :catch_7
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAppsWithRevokedConsent(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 361
    .local p1, "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->getAppsWithRevokedConsent(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 362
    :catch_7
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getConsent(I)Landroid/app/adservices/consent/ConsentParcel;
    .registers 4
    .param p1, "consentApiType"    # I

    .line 134
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->getConsent(I)Landroid/app/adservices/consent/ConsentParcel;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 135
    :catch_7
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getConsentNullable(I)Landroid/app/adservices/consent/ConsentParcel;
    .registers 4
    .param p1, "consentApiType"    # I

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->getConsentNullable(I)Landroid/app/adservices/consent/ConsentParcel;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 145
    :catch_7
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCurrentPrivacySandboxFeature()Ljava/lang/String;
    .registers 3

    .line 583
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->getCurrentPrivacySandboxFeature()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 584
    :catch_7
    move-exception v0

    .line 585
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDefaultAdIdState()Z
    .registers 3

    .line 573
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->getDefaultAdIdState()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 574
    :catch_7
    move-exception v0

    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDefaultConsent()Z
    .registers 3

    .line 517
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->getDefaultConsent()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 518
    :catch_7
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getEnrollmentChannel()Ljava/lang/String;
    .registers 3

    .line 723
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->getEnrollmentChannel()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 724
    :catch_7
    move-exception v0

    .line 725
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getFledgeDefaultConsent()Z
    .registers 3

    .line 545
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->getFledgeDefaultConsent()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 546
    :catch_7
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getKnownAppsWithConsent(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 351
    .local p1, "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->getKnownAppsWithConsent(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 352
    :catch_7
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMeasurementDefaultConsent()Z
    .registers 3

    .line 559
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->getMeasurementDefaultConsent()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 560
    :catch_7
    move-exception v0

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getModuleEnrollmentState()Ljava/lang/String;
    .registers 3

    .line 783
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->getModuleEnrollmentState()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 784
    :catch_7
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTopicsDefaultConsent()Z
    .registers 3

    .line 531
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->getTopicsDefaultConsent()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 532
    :catch_7
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUserManualInteractionWithConsent()I
    .registers 3

    .line 214
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->getUserManualInteractionWithConsent()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 215
    :catch_7
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUx()Ljava/lang/String;
    .registers 3

    .line 703
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->getUx()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 704
    :catch_7
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAdIdEnabled()Z
    .registers 3

    .line 603
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->isAdIdEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 604
    :catch_7
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAdultAccount()Z
    .registers 3

    .line 663
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->isAdultAccount()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 664
    :catch_7
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isConsentRevokedForApp(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUid"    # I

    .line 405
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1, p2}, Landroid/app/adservices/IAdServicesManager;->isConsentRevokedForApp(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 406
    :catch_7
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isEntryPointEnabled()Z
    .registers 3

    .line 643
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->isEntryPointEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 644
    :catch_7
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isMeasurementDataReset()Z
    .registers 3

    .line 743
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->isMeasurementDataReset()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 744
    :catch_7
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isPaDataReset()Z
    .registers 3

    .line 763
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->isPaDataReset()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 764
    :catch_7
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isU18Account()Z
    .registers 3

    .line 623
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->isU18Account()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 624
    :catch_7
    move-exception v0

    .line 625
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist needsToHandleRollbackReconciliation(I)Z
    .registers 4
    .param p1, "deletionType"    # I

    .line 503
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->needsToHandleRollbackReconciliation(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 504
    :catch_7
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist recordAdServicesDeletionOccurred(I)V
    .registers 4
    .param p1, "deletionType"    # I

    .line 441
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->recordAdServicesDeletionOccurred(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 444
    nop

    .line 445
    return-void

    .line 442
    :catch_7
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist recordBlockedTopic(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/adservices/topics/TopicParcel;",
            ">;)V"
        }
    .end annotation

    .line 303
    .local p1, "blockedTopicParcels":Ljava/util/List;, "Ljava/util/List<Landroid/app/adservices/topics/TopicParcel;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->recordBlockedTopic(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 306
    nop

    .line 307
    return-void

    .line 304
    :catch_7
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist recordDefaultAdIdState(Z)V
    .registers 4
    .param p1, "defaultAdIdState"    # Z

    .line 491
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->recordDefaultAdIdState(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 494
    nop

    .line 495
    return-void

    .line 492
    :catch_7
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist recordDefaultConsent(Z)V
    .registers 4
    .param p1, "defaultConsent"    # Z

    .line 451
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->recordDefaultConsent(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 454
    nop

    .line 455
    return-void

    .line 452
    :catch_7
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist recordFledgeDefaultConsent(Z)V
    .registers 4
    .param p1, "defaultConsent"    # Z

    .line 471
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->recordFledgeDefaultConsent(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 474
    nop

    .line 475
    return-void

    .line 472
    :catch_7
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist recordGaUxNotificationDisplayed(Z)V
    .registers 4
    .param p1, "wasNotificationDisplayed"    # Z

    .line 195
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->recordGaUxNotificationDisplayed(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 198
    nop

    .line 199
    return-void

    .line 196
    :catch_7
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist recordMeasurementDefaultConsent(Z)V
    .registers 4
    .param p1, "defaultConsent"    # Z

    .line 481
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->recordMeasurementDefaultConsent(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 484
    nop

    .line 485
    return-void

    .line 482
    :catch_7
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist recordNotificationDisplayed(Z)V
    .registers 4
    .param p1, "wasNotificationDisplayed"    # Z

    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->recordNotificationDisplayed(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 171
    nop

    .line 172
    return-void

    .line 169
    :catch_7
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist recordPasNotificationDisplayed(Z)V
    .registers 4
    .param p1, "wasNotificationDisplayed"    # Z

    .line 265
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->recordPasNotificationDisplayed(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 268
    nop

    .line 269
    return-void

    .line 266
    :catch_7
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist recordPasNotificationOpened(Z)V
    .registers 4
    .param p1, "wasNotificationOpened"    # Z

    .line 289
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->recordPasNotificationOpened(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 292
    nop

    .line 293
    return-void

    .line 290
    :catch_7
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist recordTopicsDefaultConsent(Z)V
    .registers 4
    .param p1, "defaultConsent"    # Z

    .line 461
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->recordTopicsDefaultConsent(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 464
    nop

    .line 465
    return-void

    .line 462
    :catch_7
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist recordUserManualInteractionWithConsent(I)V
    .registers 4
    .param p1, "interaction"    # I

    .line 224
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->recordUserManualInteractionWithConsent(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 227
    nop

    .line 228
    return-void

    .line 225
    :catch_7
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeBlockedTopic(Landroid/app/adservices/topics/TopicParcel;)V
    .registers 4
    .param p1, "blockedTopicParcel"    # Landroid/app/adservices/topics/TopicParcel;

    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->removeBlockedTopic(Landroid/app/adservices/topics/TopicParcel;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 320
    nop

    .line 321
    return-void

    .line 318
    :catch_7
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist retrieveAllBlockedTopics()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/adservices/topics/TopicParcel;",
            ">;"
        }
    .end annotation

    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->retrieveAllBlockedTopics()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 332
    :catch_7
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAdIdEnabled(Z)V
    .registers 4
    .param p1, "isAdIdEnabled"    # Z

    .line 613
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->setAdIdEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 616
    nop

    .line 617
    return-void

    .line 614
    :catch_7
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAdultAccount(Z)V
    .registers 4
    .param p1, "isAdultAccount"    # Z

    .line 673
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->setAdultAccount(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 676
    nop

    .line 677
    return-void

    .line 674
    :catch_7
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setConsent(Landroid/app/adservices/consent/ConsentParcel;)V
    .registers 4
    .param p1, "consentParcel"    # Landroid/app/adservices/consent/ConsentParcel;

    .line 153
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :try_start_3
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->setConsent(Landroid/app/adservices/consent/ConsentParcel;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 158
    nop

    .line 159
    return-void

    .line 156
    :catch_a
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setConsentForApp(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUid"    # I
    .param p3, "isConsentRevoked"    # Z

    .line 371
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/adservices/IAdServicesManager;->setConsentForApp(Ljava/lang/String;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 374
    nop

    .line 375
    return-void

    .line 372
    :catch_7
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setConsentForAppIfNew(Ljava/lang/String;IZ)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUid"    # I
    .param p3, "isConsentRevoked"    # Z

    .line 421
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/adservices/IAdServicesManager;->setConsentForAppIfNew(Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 422
    :catch_7
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setCurrentPrivacySandboxFeature(Ljava/lang/String;)V
    .registers 4
    .param p1, "featureType"    # Ljava/lang/String;

    .line 593
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->setCurrentPrivacySandboxFeature(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 596
    nop

    .line 597
    return-void

    .line 594
    :catch_7
    move-exception v0

    .line 595
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setEnrollmentChannel(Ljava/lang/String;)V
    .registers 4
    .param p1, "enrollmentChannel"    # Ljava/lang/String;

    .line 733
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->setEnrollmentChannel(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 736
    nop

    .line 737
    return-void

    .line 734
    :catch_7
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setEntryPointEnabled(Z)V
    .registers 4
    .param p1, "isEntryPointEnabled"    # Z

    .line 653
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->setEntryPointEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 656
    nop

    .line 657
    return-void

    .line 654
    :catch_7
    move-exception v0

    .line 655
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMeasurementDataReset(Z)V
    .registers 4
    .param p1, "isMeasurementDataReset"    # Z

    .line 753
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->setMeasurementDataReset(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 756
    nop

    .line 757
    return-void

    .line 754
    :catch_7
    move-exception v0

    .line 755
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setModuleEnrollmentState(Ljava/lang/String;)V
    .registers 4
    .param p1, "enrollmentState"    # Ljava/lang/String;

    .line 793
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->setModuleEnrollmentState(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 796
    nop

    .line 797
    return-void

    .line 794
    :catch_7
    move-exception v0

    .line 795
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setPaDataReset(Z)V
    .registers 4
    .param p1, "isPaDataReset"    # Z

    .line 773
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->setPaDataReset(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 776
    nop

    .line 777
    return-void

    .line 774
    :catch_7
    move-exception v0

    .line 775
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setU18Account(Z)V
    .registers 4
    .param p1, "isU18Account"    # Z

    .line 633
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->setU18Account(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 636
    nop

    .line 637
    return-void

    .line 634
    :catch_7
    move-exception v0

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setU18NotificationDisplayed(Z)V
    .registers 4
    .param p1, "wasU18NotificationDisplayed"    # Z

    .line 693
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->setU18NotificationDisplayed(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 696
    nop

    .line 697
    return-void

    .line 694
    :catch_7
    move-exception v0

    .line 695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setUx(Ljava/lang/String;)V
    .registers 4
    .param p1, "ux"    # Ljava/lang/String;

    .line 713
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0, p1}, Landroid/app/adservices/IAdServicesManager;->setUx(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 716
    nop

    .line 717
    return-void

    .line 714
    :catch_7
    move-exception v0

    .line 715
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wasGaUxNotificationDisplayed()Z
    .registers 3

    .line 238
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->wasGaUxNotificationDisplayed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 239
    :catch_7
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wasNotificationDisplayed()Z
    .registers 3

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->wasNotificationDisplayed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 183
    :catch_7
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wasPasNotificationDisplayed()Z
    .registers 3

    .line 252
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->wasPasNotificationDisplayed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 253
    :catch_7
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wasPasNotificationOpened()Z
    .registers 3

    .line 279
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->wasPasNotificationOpened()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 280
    :catch_7
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wasU18NotificationDisplayed()Z
    .registers 3

    .line 683
    :try_start_0
    iget-object v0, p0, Landroid/app/adservices/AdServicesManager;->mService:Landroid/app/adservices/IAdServicesManager;

    invoke-interface {v0}, Landroid/app/adservices/IAdServicesManager;->wasU18NotificationDisplayed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 684
    :catch_7
    move-exception v0

    .line 685
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
