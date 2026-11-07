.class public Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;
.super Lcom/android/internal/telephony/ims/ImsServiceController;
.source "ImsServiceControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;
    }
.end annotation


# instance fields
.field private final blacklist mConfigCompatAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMmTelCompatAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMmTelFeatureFactory:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;

.field private final blacklist mRegCompatAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceController:Lcom/android/ims/internal/IImsServiceController;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Landroid/os/Handler;Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;)V
    .registers 16

    .line 88
    new-instance v7, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v7}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ims/ImsServiceController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Landroid/os/Handler;Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 58
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    .line 59
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mConfigCompatAdapters:Landroid/util/SparseArray;

    .line 60
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mRegCompatAdapters:Landroid/util/SparseArray;

    .line 90
    iput-object p7, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelFeatureFactory:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;)V
    .registers 11

    .line 80
    new-instance v5, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v5}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ims/ImsServiceController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 58
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    .line 59
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mConfigCompatAdapters:Landroid/util/SparseArray;

    .line 60
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mRegCompatAdapters:Landroid/util/SparseArray;

    .line 81
    new-instance p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$$ExternalSyntheticLambda0;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelFeatureFactory:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;

    return-void
.end method

.method private blacklist createMMTelCompat(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->getInterface(I)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelFeatureFactory:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;->create(Landroid/content/Context;ILcom/android/internal/telephony/ims/MmTelInterfaceAdapter;)Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    new-instance v1, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-direct {v1}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;-><init>()V

    .line 256
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->addRegistrationAdapter(Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;)V

    .line 257
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mRegCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mConfigCompatAdapters:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;

    .line 259
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->getOldConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;-><init>(Lcom/android/ims/internal/IImsConfig;)V

    .line 258
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method private blacklist createRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getInterface(I)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsServiceController;->createMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    if-nez p0, :cond_11

    .line 243
    const-string p0, "ImsSCCompat"

    const-string p1, "createMMTelCompat: createMMTelFeature returned null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 246
    :cond_11
    new-instance v0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;-><init>(ILandroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final blacklist createImsFeature(IIIJ)Landroid/os/IInterface;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x1

    if-eq p3, p2, :cond_d

    const/4 p2, 0x2

    if-eq p3, p2, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 189
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->createRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    return-object p0

    .line 185
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->createMMTelCompat(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist disableIms(II)V
    .registers 4

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    .line 122
    const-string p2, "ImsSCCompat"

    if-nez p0, :cond_21

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disableIms: adapter null for slot :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->disableIms()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t disableIms IMS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final blacklist enableIms(II)V
    .registers 4

    .line 104
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    .line 105
    const-string p2, "ImsSCCompat"

    if-nez p0, :cond_21

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableIms: adapter null for slot :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->enableIms()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t enable IMS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final blacklist getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 3

    .line 151
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mConfigCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;

    if-nez p0, :cond_22

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getConfig: Config does not exist for slot "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsSCCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 156
    :cond_22
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 3

    .line 138
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mRegCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    if-nez p0, :cond_22

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getRegistration: Registration does not exist for slot "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsSCCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 143
    :cond_22
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->getBinder()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method protected final blacklist getServiceInterface()Ljava/lang/String;
    .registers 1

    .line 96
    const-string p0, "android.telephony.ims.compat.ImsService"

    return-object p0
.end method

.method public blacklist getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected blacklist getStaticServiceCapabilities()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected blacklist isServiceControllerAvailable()Z
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method protected final blacklist notifyImsServiceReady()V
    .registers 2

    .line 176
    const-string p0, "ImsSCCompat"

    const-string v0, "notifyImsServiceReady"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist registerImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsServiceController;->addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method protected final blacklist removeImsFeature(IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_20

    .line 216
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    if-eqz p3, :cond_11

    .line 219
    invoke-virtual {p3}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->onFeatureRemoved()V

    .line 220
    :cond_11
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 221
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mRegCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 222
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mConfigCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 224
    :cond_20
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    if-eqz p0, :cond_27

    .line 225
    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->removeImsFeature(II)V

    :cond_27
    return-void
.end method

.method protected blacklist setServiceController(Landroid/os/IBinder;)V
    .registers 2

    .line 231
    invoke-static {p1}, Lcom/android/ims/internal/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    return-void
.end method

.method protected blacklist unregisterImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    .line 206
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsServiceController;->removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    .line 208
    :catch_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "compat - unregisterImsFeatureStatusCallback - couldn\'t remove "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsSCCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
