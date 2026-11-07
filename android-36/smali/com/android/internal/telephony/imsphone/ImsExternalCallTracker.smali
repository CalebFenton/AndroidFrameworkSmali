.class public Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
.super Ljava/lang/Object;
.source "ImsExternalCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;,
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;,
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_IMS_EXTERNAL_CALL_ID:Ljava/lang/String; = "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

.field public static final blacklist TAG:Ljava/lang/String; = "ImsExternalCallTracker"


# instance fields
.field private blacklist mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

.field private final blacklist mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

.field private blacklist mExternalCallPullableState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

.field private final blacklist mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

.field private blacklist mExternalConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/imsphone/ImsExternalConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHasActiveCalls:Z

.field private blacklist mIsVideoCapable:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallPuller(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPullCall;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleVideoCapabilitiesChanged(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;Landroid/os/AsyncResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->handleVideoCapabilitiesChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPullCall;Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    .line 135
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    .line 139
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    .line 145
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    .line 162
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 163
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    .line 164
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    invoke-direct {p1, p0, p4}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    .line 165
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    .line 135
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    .line 139
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    .line 145
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    .line 169
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 170
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    .line 181
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->registerForNotifications()V

    return-void
.end method

.method private blacklist containsCallId(Ljava/util/List;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;I)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 429
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsExternalCallState;

    .line 430
    invoke-virtual {v0}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v0

    if-ne v0, p2, :cond_8

    const/4 p0, 0x1

    :cond_1b
    return p0
.end method

.method private blacklist createExternalConnection(Landroid/telephony/ims/ImsExternalCallState;)V
    .registers 9

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createExternalConnection : state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->getCallType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    .line 316
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->isCallPullPermitted(ZI)Z

    move-result v2

    .line 317
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 318
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v5

    .line 319
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->getAddress()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;-><init>(Lcom/android/internal/telephony/Phone;ILandroid/net/Uri;Z)V

    .line 321
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V

    .line 322
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->addListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createExternalConnection - pullable state : externalCallId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ; isPullable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ; networkPullable = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ; isVideo = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ; videoEnabled = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ; hasActiveCalls = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    invoke-interface {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method private blacklist handleVideoCapabilitiesChanged(Landroid/os/AsyncResult;)V
    .registers 3

    .line 445
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    .line 446
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleVideoCapabilitiesChanged : isVideoCapable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsExternalCallTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshCallPullState()V

    return-void
.end method

.method private blacklist isCallPullPermitted(ZI)Z
    .registers 4

    .line 462
    invoke-static {p2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    if-nez p2, :cond_c

    return v0

    .line 468
    :cond_c
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    if-eqz p0, :cond_11

    return v0

    :cond_11
    return p1
.end method

.method private blacklist refreshCallPullState()V
    .registers 8

    .line 396
    const-string v0, "refreshCallPullState"

    const-string v1, "ImsExternalCallTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    .line 399
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    .line 400
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 401
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 403
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->isCallPullPermitted(ZI)Z

    move-result v4

    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshCallPullState : externalCallId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ; isPullable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ; networkPullable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ; isVideo = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ; videoEnabled = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ; hasActiveCalls = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setIsPullable(Z)V

    goto :goto_11

    :cond_89
    return-void
.end method

.method private blacklist registerForNotifications()V
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_29

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_29
    return-void
.end method

.method private blacklist unregisterForNotifications()V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_27

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V

    :cond_27
    return-void
.end method

.method private blacklist updateExistingConnection(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;Landroid/telephony/ims/ImsExternalCallState;)V
    .registers 8

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateExistingConnection : state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsExternalCallTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 356
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->getCallState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 357
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_26

    :cond_24
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    :goto_26
    if-eq v0, v2, :cond_57

    .line 360
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v0, :cond_30

    .line 361
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setActive()V

    goto :goto_57

    .line 363
    :cond_30
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setTerminated()V

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    invoke-interface {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyPreciseCallStateChanged()V

    .line 371
    :cond_57
    :goto_57
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->getCallType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    .line 372
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v2

    if-eq v0, v2, :cond_68

    .line 373
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V

    .line 376
    :cond_68
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->isCallPullPermitted(ZI)Z

    move-result v0

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateExistingConnection - pullable state : externalCallId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ; isPullable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ; networkPullable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " ; isVideo = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result p2

    invoke-static {p2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " ; videoEnabled = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " ; hasActiveCalls = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 378
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setIsPullable(Z)V

    return-void
.end method


# virtual methods
.method public blacklist getConnectionById(I)Lcom/android/internal/telephony/Connection;
    .registers 2

    .line 301
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Connection;

    return-object p0
.end method

.method public blacklist getExternalCallStateListener()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    return-object p0
.end method

.method public blacklist onPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V
    .registers 3

    .line 213
    sget-object p1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p2, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPhoneStateChanged : hasActiveCalls = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsExternalCallTracker"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshCallPullState()V

    return-void
.end method

.method public blacklist refreshExternalCallState(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    .line 250
    const-string v0, "refreshExternalCallState"

    const-string v1, "ImsExternalCallTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    .line 255
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    .line 257
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_42

    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 259
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 261
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->containsCallId(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_12

    .line 262
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    .line 263
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setTerminated()V

    .line 264
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move v2, v4

    goto :goto_12

    :cond_42
    if-eqz v2, :cond_49

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    invoke-interface {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyPreciseCallStateChanged()V

    :cond_49
    if-eqz p1, :cond_a4

    .line 276
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_55
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsExternalCallState;

    .line 278
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshExternalCallState: got = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v0}, Landroid/telephony/ims/ImsExternalCallState;->getCallState()I

    move-result v2

    if-eq v2, v4, :cond_8c

    goto :goto_55

    .line 285
    :cond_8c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->createExternalConnection(Landroid/telephony/ims/ImsExternalCallState;)V

    goto :goto_55

    .line 287
    :cond_90
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->updateExistingConnection(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;Landroid/telephony/ims/ImsExternalCallState;)V

    goto :goto_55

    :cond_a4
    return-void
.end method

.method public blacklist setCallPuller(Lcom/android/internal/telephony/imsphone/ImsPullCall;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    return-void
.end method

.method public blacklist tearDown()V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->unregisterForNotifications()V

    return-void
.end method
