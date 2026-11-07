.class public Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;
.super Ljava/lang/Object;
.source "NetworkChangeNotifier.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "net"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;,
        Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sInstance:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;


# instance fields
.field private blacklist mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

.field private final blacklist mConnectionTypeObservers:Landroid/net/connectivity/org/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/ObserverList<",
            "Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentConnectionCost:I

.field private blacklist mCurrentConnectionType:I

.field private final blacklist mNativeChangeNotifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateCurrentConnectionType(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->updateCurrentConnectionType(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 31
    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mCurrentConnectionType:I

    .line 47
    iput v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mCurrentConnectionCost:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mConnectionTypeObservers:Landroid/net/connectivity/org/chromium/base/ObserverList;

    .line 56
    return-void
.end method

.method public static blacklist addConnectionTypeObserver(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V
    .registers 2
    .param p0, "observer"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    .line 447
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->addConnectionTypeObserverInternal(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 448
    return-void
.end method

.method private blacklist addConnectionTypeObserverInternal(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    .line 451
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mConnectionTypeObservers:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method private blacklist destroyAutoDetector()V
    .registers 2

    .line 197
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    if-eqz v0, :cond_c

    .line 198
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->destroy()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 201
    :cond_c
    return-void
.end method

.method public static blacklist fakeConnectionCostChanged(I)V
    .registers 2
    .param p0, "connectionCost"    # I

    .line 343
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 344
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfConnectionCostChange(I)V

    .line 345
    return-void
.end method

.method public static blacklist fakeConnectionSubtypeChanged(I)V
    .registers 2
    .param p0, "connectionSubtype"    # I

    .line 350
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 351
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfConnectionSubtypeChange(I)V

    .line 352
    return-void
.end method

.method public static blacklist fakeDefaultNetwork(JI)V
    .registers 4
    .param p0, "netId"    # J
    .param p2, "connectionType"    # I

    .line 335
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 336
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-direct {v0, p2, p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfConnectionTypeChange(IJ)V

    .line 337
    return-void
.end method

.method public static blacklist fakeNetworkConnected(JI)V
    .registers 4
    .param p0, "netId"    # J
    .param p2, "connectionType"    # I

    .line 307
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 308
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfNetworkConnect(JI)V

    .line 309
    return-void
.end method

.method public static blacklist fakeNetworkDisconnected(J)V
    .registers 3
    .param p0, "netId"    # J

    .line 321
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 322
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfNetworkDisconnect(J)V

    .line 323
    return-void
.end method

.method public static blacklist fakeNetworkSoonToBeDisconnected(J)V
    .registers 3
    .param p0, "netId"    # J

    .line 314
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 315
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfNetworkSoonToDisconnect(J)V

    .line 316
    return-void
.end method

.method public static blacklist fakePurgeActiveNetworkList([J)V
    .registers 2
    .param p0, "activeNetIds"    # [J

    .line 328
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 329
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversToPurgeActiveNetworkList([J)V

    .line 330
    return-void
.end method

.method public static blacklist forceConnectivityState(Z)V
    .registers 2
    .param p0, "networkAvailable"    # Z

    .line 285
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 286
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->forceConnectivityStateInternal(Z)V

    .line 287
    return-void
.end method

.method private blacklist forceConnectivityStateInternal(Z)V
    .registers 6
    .param p1, "forceOnline"    # Z

    .line 290
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mCurrentConnectionType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 292
    .local v0, "connectionCurrentlyExists":Z
    :goto_a
    if-eq v0, p1, :cond_1e

    .line 293
    nop

    .line 294
    if-eqz p1, :cond_11

    .line 295
    move v3, v2

    goto :goto_12

    .line 296
    :cond_11
    nop

    .line 293
    :goto_12
    invoke-direct {p0, v3}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->updateCurrentConnectionType(I)V

    .line 297
    nop

    .line 298
    if-eqz p1, :cond_1a

    .line 299
    move v1, v2

    goto :goto_1b

    .line 300
    :cond_1a
    nop

    .line 297
    :goto_1b
    invoke-virtual {p0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfConnectionSubtypeChange(I)V

    .line 302
    :cond_1e
    return-void
.end method

.method public static blacklist getAutoDetectorForTest()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;
    .registers 1

    .line 465
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    iget-object v0, v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;
    .registers 1

    .line 149
    nop

    .line 150
    sget-object v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->sInstance:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    return-object v0
.end method

.method public static blacklist init()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;
    .registers 1

    .line 61
    sget-object v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->sInstance:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->sInstance:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    .line 64
    :cond_b
    sget-object v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->sInstance:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    return-object v0
.end method

.method public static blacklist isInitialized()Z
    .registers 1

    .line 68
    sget-object v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->sInstance:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isOnline()Z
    .registers 2

    .line 470
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getCurrentConnectionType()I

    move-result v0

    .line 471
    .local v0, "connectionType":I
    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method private blacklist notifyObserversOfConnectionTypeChange(IJ)V
    .registers 13
    .param p1, "newConnectionType"    # I
    .param p2, "defaultNetId"    # J

    .line 365
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 366
    .local v1, "nativeChangeNotifier":Ljava/lang/Long;
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;->get()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;

    move-result-object v2

    .line 368
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 367
    move-object v5, p0

    move v6, p1

    move-wide v7, p2

    .end local p1    # "newConnectionType":I
    .end local p2    # "defaultNetId":J
    .local v6, "newConnectionType":I
    .local v7, "defaultNetId":J
    invoke-interface/range {v2 .. v8}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;->notifyConnectionTypeChanged(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;IJ)V

    .line 372
    .end local v1    # "nativeChangeNotifier":Ljava/lang/Long;
    goto :goto_6

    .line 373
    .end local v6    # "newConnectionType":I
    .end local v7    # "defaultNetId":J
    .restart local p1    # "newConnectionType":I
    .restart local p2    # "defaultNetId":J
    :cond_21
    move-object v5, p0

    move v6, p1

    move-wide v7, p2

    .end local p1    # "newConnectionType":I
    .end local p2    # "defaultNetId":J
    .restart local v6    # "newConnectionType":I
    .restart local v7    # "defaultNetId":J
    iget-object p1, v5, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mConnectionTypeObservers:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    .line 374
    .local p2, "observer":Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;
    invoke-interface {p2, v6}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;->onConnectionTypeChanged(I)V

    .line 375
    .end local p2    # "observer":Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;
    goto :goto_2a

    .line 376
    :cond_3a
    return-void
.end method

.method public static blacklist registerToReceiveNotificationsAlways()V
    .registers 3

    .line 179
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    new-instance v1, Landroid/net/connectivity/org/chromium/net/RegistrationPolicyAlwaysRegister;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/RegistrationPolicyAlwaysRegister;-><init>()V

    .line 180
    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityStateInternal(ZLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;)V

    .line 182
    return-void
.end method

.method public static blacklist removeConnectionTypeObserver(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V
    .registers 2
    .param p0, "observer"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    .line 456
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->removeConnectionTypeObserverInternal(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 457
    return-void
.end method

.method private blacklist removeConnectionTypeObserverInternal(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    .line 460
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mConnectionTypeObservers:Landroid/net/connectivity/org/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 461
    return-void
.end method

.method public static blacklist resetInstanceForTests()V
    .registers 1

    .line 72
    new-instance v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->sInstance:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    .line 73
    return-void
.end method

.method public static blacklist resetInstanceForTests(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;)V
    .registers 1
    .param p0, "notifier"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    .line 76
    sput-object p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->sInstance:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    .line 77
    return-void
.end method

.method public static blacklist setAutoDetectConnectivityState(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;Z)V
    .registers 4
    .param p0, "policy"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;
    .param p1, "forceUpdateNetworkState"    # Z

    .line 193
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityStateInternal(ZLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;Z)V

    .line 194
    return-void
.end method

.method public static blacklist setAutoDetectConnectivityState(Z)V
    .registers 3
    .param p0, "shouldAutoDetect"    # Z

    .line 165
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getInstance()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    new-instance v1, Landroid/net/connectivity/org/chromium/net/RegistrationPolicyApplicationStatus;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/RegistrationPolicyApplicationStatus;-><init>()V

    .line 166
    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityStateInternal(ZLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;)V

    .line 168
    return-void
.end method

.method private blacklist setAutoDetectConnectivityStateInternal(ZLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;)V
    .registers 4
    .param p1, "shouldAutoDetect"    # Z
    .param p2, "policy"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityStateInternal(ZLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;Z)V

    .line 207
    return-void
.end method

.method private blacklist setAutoDetectConnectivityStateInternal(ZLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;Z)V
    .registers 7
    .param p1, "shouldAutoDetect"    # Z
    .param p2, "policy"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;
    .param p3, "forceUpdateNetworkState"    # Z

    .line 213
    nop

    .line 214
    const-string v0, "NetworkChangeNotifier.setAutoDetectConnectivityStateInternal"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 216
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    if-eqz p1, :cond_3c

    .line 217
    :try_start_9
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v1, :cond_3f

    .line 218
    new-instance v1, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance v2, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$1;

    invoke-direct {v2, p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$1;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;)V

    invoke-direct {v1, v2, p2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;)V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 261
    if-eqz p3, :cond_20

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->updateCurrentNetworkState()V

    .line 263
    :cond_20
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 264
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentNetworkState()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v1

    .line 266
    .local v1, "networkState":Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionType()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->updateCurrentConnectionType(I)V

    .line 267
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionCost()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->updateCurrentConnectionCost(I)V

    .line 268
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionSubtype()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfConnectionSubtypeChange(I)V

    .line 269
    .end local v1    # "networkState":Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    goto :goto_3f

    .line 271
    :cond_3c
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->destroyAutoDetector()V
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_45

    .line 273
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 274
    .end local v0    # "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_44
    return-void

    .line 213
    .restart local v0    # "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_45
    move-exception v1

    if-eqz v0, :cond_50

    :try_start_48
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_50
    :goto_50
    throw v1
.end method

.method private blacklist updateCurrentConnectionCost(I)V
    .registers 2
    .param p1, "newConnectionCost"    # I

    .line 379
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mCurrentConnectionCost:I

    .line 380
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfConnectionCostChange(I)V

    .line 381
    return-void
.end method

.method private blacklist updateCurrentConnectionType(I)V
    .registers 2
    .param p1, "newConnectionType"    # I

    .line 355
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mCurrentConnectionType:I

    .line 356
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfConnectionTypeChange(I)V

    .line 357
    return-void
.end method


# virtual methods
.method public blacklist addNativeObserver(J)V
    .registers 5
    .param p1, "nativeChangeNotifier"    # J

    .line 129
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public blacklist getCurrentConnectionCost()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mCurrentConnectionCost:I

    return v0
.end method

.method public blacklist getCurrentConnectionSubtype()I
    .registers 4

    .line 86
    nop

    .line 87
    const-string v0, "NetworkChangeNotifier.getCurrentConnectionSubtype"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 88
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_27

    if-nez v1, :cond_12

    .line 92
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 88
    :cond_10
    const/4 v1, 0x0

    return v1

    .line 90
    :cond_12
    :try_start_12
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->updateCurrentNetworkState()V

    .line 91
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentNetworkState()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionSubtype()I

    move-result v1
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_27

    .line 92
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 91
    :cond_26
    return v1

    .line 86
    :catchall_27
    move-exception v1

    if-eqz v0, :cond_32

    :try_start_2a
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    throw v1
.end method

.method public blacklist getCurrentConnectionType()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mCurrentConnectionType:I

    return v0
.end method

.method public blacklist getCurrentDefaultNetId()J
    .registers 3

    .line 107
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->getDefaultNetId()J

    move-result-wide v0

    :goto_d
    return-wide v0
.end method

.method public blacklist getCurrentNetworksAndTypes()[J
    .registers 4

    .line 119
    nop

    .line 120
    const-string v0, "NetworkChangeNotifierAutoDetect.getCurrentNetworksAndTypes"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 122
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    new-array v1, v1, [J

    goto :goto_15

    :cond_f
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->getNetworksAndTypes()[J

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1b

    .line 123
    :goto_15
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 122
    :cond_1a
    return-object v1

    .line 119
    :catchall_1b
    move-exception v1

    if-eqz v0, :cond_26

    :try_start_1e
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw v1
.end method

.method blacklist notifyObserversOfConnectionCostChange(I)V
    .registers 7
    .param p1, "newConnectionCost"    # I

    .line 385
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 386
    .local v1, "nativeChangeNotifier":Ljava/lang/Long;
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;->get()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;

    move-result-object v2

    .line 388
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 387
    invoke-interface {v2, v3, v4, p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;->notifyConnectionCostChanged(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;I)V

    .line 389
    .end local v1    # "nativeChangeNotifier":Ljava/lang/Long;
    goto :goto_6

    .line 390
    :cond_1e
    return-void
.end method

.method blacklist notifyObserversOfConnectionSubtypeChange(I)V
    .registers 7
    .param p1, "connectionSubtype"    # I

    .line 394
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 395
    .local v1, "nativeChangeNotifier":Ljava/lang/Long;
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;->get()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;

    move-result-object v2

    .line 397
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 396
    invoke-interface {v2, v3, v4, p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;->notifyConnectionSubtypeChanged(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;I)V

    .line 398
    .end local v1    # "nativeChangeNotifier":Ljava/lang/Long;
    goto :goto_6

    .line 399
    :cond_1e
    return-void
.end method

.method blacklist notifyObserversOfConnectionTypeChange(I)V
    .registers 4
    .param p1, "newConnectionType"    # I

    .line 361
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->getCurrentDefaultNetId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfConnectionTypeChange(IJ)V

    .line 362
    return-void
.end method

.method blacklist notifyObserversOfNetworkConnect(JI)V
    .registers 13
    .param p1, "netId"    # J
    .param p3, "connectionType"    # I

    .line 403
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 404
    .local v1, "nativeChangeNotifier":Ljava/lang/Long;
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;->get()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;

    move-result-object v2

    .line 406
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 405
    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    .end local p1    # "netId":J
    .end local p3    # "connectionType":I
    .local v6, "netId":J
    .local v8, "connectionType":I
    invoke-interface/range {v2 .. v8}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;->notifyOfNetworkConnect(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;JI)V

    .line 410
    .end local v1    # "nativeChangeNotifier":Ljava/lang/Long;
    goto :goto_6

    .line 411
    .end local v6    # "netId":J
    .end local v8    # "connectionType":I
    .restart local p1    # "netId":J
    .restart local p3    # "connectionType":I
    :cond_21
    return-void
.end method

.method blacklist notifyObserversOfNetworkDisconnect(J)V
    .registers 11
    .param p1, "netId"    # J

    .line 424
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 425
    .local v1, "nativeChangeNotifier":Ljava/lang/Long;
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;->get()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;

    move-result-object v2

    .line 427
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 426
    move-object v5, p0

    move-wide v6, p1

    .end local p1    # "netId":J
    .local v6, "netId":J
    invoke-interface/range {v2 .. v7}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;->notifyOfNetworkDisconnect(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;J)V

    .line 428
    .end local v1    # "nativeChangeNotifier":Ljava/lang/Long;
    goto :goto_6

    .line 429
    .end local v6    # "netId":J
    .restart local p1    # "netId":J
    :cond_20
    return-void
.end method

.method blacklist notifyObserversOfNetworkSoonToDisconnect(J)V
    .registers 11
    .param p1, "netId"    # J

    .line 415
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 416
    .local v1, "nativeChangeNotifier":Ljava/lang/Long;
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;->get()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;

    move-result-object v2

    .line 418
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 417
    move-object v5, p0

    move-wide v6, p1

    .end local p1    # "netId":J
    .local v6, "netId":J
    invoke-interface/range {v2 .. v7}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;->notifyOfNetworkSoonToDisconnect(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;J)V

    .line 419
    .end local v1    # "nativeChangeNotifier":Ljava/lang/Long;
    goto :goto_6

    .line 420
    .end local v6    # "netId":J
    .restart local p1    # "netId":J
    :cond_20
    return-void
.end method

.method blacklist notifyObserversToPurgeActiveNetworkList([J)V
    .registers 7
    .param p1, "activeNetIds"    # [J

    .line 438
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 439
    .local v1, "nativeChangeNotifier":Ljava/lang/Long;
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;->get()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;

    move-result-object v2

    .line 441
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 440
    invoke-interface {v2, v3, v4, p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;->notifyPurgeActiveNetworkList(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;[J)V

    .line 442
    .end local v1    # "nativeChangeNotifier":Ljava/lang/Long;
    goto :goto_6

    .line 443
    :cond_1e
    return-void
.end method

.method public blacklist registerNetworkCallbackFailed()Z
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->registerNetworkCallbackFailed()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public blacklist removeNativeObserver(J)V
    .registers 5
    .param p1, "nativeChangeNotifier"    # J

    .line 135
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method
