.class public Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
.super Ljava/lang/Object;
.source "ImsExternalCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;,
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;,
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;,
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;
    }
.end annotation


# static fields
.field private static final EVENT_VIDEO_CAPABILITIES_CHANGED:I = 0x1

.field public static final EXTRA_IMS_EXTERNAL_CALL_ID:Ljava/lang/String; = "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

.field public static final TAG:Ljava/lang/String; = "ImsExternalCallTracker"


# instance fields
.field private mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

.field private final mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

.field private mExternalCallPullableState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

.field private final mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

.field private mExternalConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/imsphone/ImsExternalConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHasActiveCalls:Z

.field private mIsVideoCapable:Z

.field private final mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPullCall;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->handleVideoCapabilitiesChanged(Landroid/os/AsyncResult;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 116
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 115
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@a
    .line 128
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    #@11
    .line 133
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    #@13
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    #@16
    .line 132
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    #@18
    .line 138
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;

    #@1a
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    #@1f
    .line 162
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@21
    .line 163
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;

    #@23
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    #@26
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    #@28
    .line 174
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    #@2a
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    #@2d
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    #@2f
    .line 175
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->registerForNotifications()V

    #@32
    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPullCall;Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p2, "callPuller"    # Lcom/android/internal/telephony/imsphone/ImsPullCall;
    .param p3, "callNotifier"    # Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    #@0
    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 116
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 115
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@a
    .line 128
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    #@11
    .line 133
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    #@13
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    #@16
    .line 132
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    #@18
    .line 138
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;

    #@1a
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    #@1f
    .line 155
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@21
    .line 156
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    #@23
    .line 157
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    #@25
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    #@28
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    #@2a
    .line 158
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    #@2c
    .line 153
    return-void
.end method

.method private containsCallId(Ljava/util/List;I)Z
    .locals 4
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ims/ImsExternalCallState;",
            ">;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "externalCallStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsExternalCallState;>;"
    const/4 v3, 0x0

    #@1
    .line 418
    if-nez p1, :cond_0

    #@3
    .line 419
    return v3

    #@4
    .line 422
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_2

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/ims/ImsExternalCallState;

    #@14
    .line 423
    .local v0, "state":Lcom/android/ims/ImsExternalCallState;
    invoke-virtual {v0}, Lcom/android/ims/ImsExternalCallState;->getCallId()I

    #@17
    move-result v2

    #@18
    if-ne v2, p2, :cond_1

    #@1a
    .line 424
    const/4 v2, 0x1

    #@1b
    return v2

    #@1c
    .line 428
    .end local v0    # "state":Lcom/android/ims/ImsExternalCallState;
    :cond_2
    return v3
.end method

.method private createExternalConnection(Lcom/android/ims/ImsExternalCallState;)V
    .locals 6
    .param p1, "state"    # Lcom/android/ims/ImsExternalCallState;

    #@0
    .prologue
    .line 305
    const-string/jumbo v3, "ImsExternalCallTracker"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "createExternalConnection : state = "

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 307
    invoke-virtual {p1}, Lcom/android/ims/ImsExternalCallState;->getCallType()I

    #@1d
    move-result v3

    #@1e
    invoke-static {v3}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    #@21
    move-result v2

    #@22
    .line 309
    .local v2, "videoState":I
    invoke-virtual {p1}, Lcom/android/ims/ImsExternalCallState;->isCallPullable()Z

    #@25
    move-result v3

    #@26
    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->isCallPullPermitted(ZI)Z

    #@29
    move-result v1

    #@2a
    .line 310
    .local v1, "isCallPullPermitted":Z
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    #@2c
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2e
    .line 311
    invoke-virtual {p1}, Lcom/android/ims/ImsExternalCallState;->getCallId()I

    #@31
    move-result v4

    #@32
    .line 312
    invoke-virtual {p1}, Lcom/android/ims/ImsExternalCallState;->getAddress()Landroid/net/Uri;

    #@35
    move-result-object v5

    #@36
    .line 310
    invoke-direct {v0, v3, v4, v5, v1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;-><init>(Lcom/android/internal/telephony/Phone;ILandroid/net/Uri;Z)V

    #@39
    .line 314
    .local v0, "connection":Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setVideoState(I)V

    #@3c
    .line 315
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    #@3e
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->addListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    #@41
    .line 317
    const-string/jumbo v3, "ImsExternalCallTracker"

    #@44
    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v5, "createExternalConnection - pullable state : externalCallId = "

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    .line 319
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    #@53
    move-result v5

    #@54
    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    .line 320
    const-string/jumbo v5, " ; isPullable = "

    #@5b
    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 321
    const-string/jumbo v5, " ; networkPullable = "

    #@66
    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    .line 321
    invoke-virtual {p1}, Lcom/android/ims/ImsExternalCallState;->isCallPullable()Z

    #@6d
    move-result v5

    #@6e
    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    .line 322
    const-string/jumbo v5, " ; isVideo = "

    #@75
    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    .line 322
    invoke-static {v2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    #@7c
    move-result v5

    #@7d
    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    .line 323
    const-string/jumbo v5, " ; videoEnabled = "

    #@84
    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    .line 323
    iget-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    #@8a
    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v4

    #@8e
    .line 324
    const-string/jumbo v5, " ; hasActiveCalls = "

    #@91
    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    .line 324
    iget-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    #@97
    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v4

    #@9f
    .line 317
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    .line 327
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@a4
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    #@a7
    move-result v4

    #@a8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ab
    move-result-object v4

    #@ac
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@af
    .line 328
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    #@b1
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    #@b4
    move-result v4

    #@b5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b8
    move-result-object v4

    #@b9
    invoke-virtual {p1}, Lcom/android/ims/ImsExternalCallState;->isCallPullable()Z

    #@bc
    move-result v5

    #@bd
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c0
    move-result-object v5

    #@c1
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c4
    .line 334
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    #@c6
    invoke-interface {v3, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    #@c9
    .line 304
    return-void
.end method

.method private handleVideoCapabilitiesChanged(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 438
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2
    check-cast v0, Ljava/lang/Boolean;

    #@4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@7
    move-result v0

    #@8
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    #@a
    .line 439
    const-string/jumbo v0, "ImsExternalCallTracker"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "handleVideoCapabilitiesChanged : isVideoCapable = "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 442
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshCallPullState()V

    #@29
    .line 437
    return-void
.end method

.method private isCallPullPermitted(ZI)Z
    .locals 2
    .param p1, "isNetworkPullable"    # Z
    .param p2, "videoState"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 455
    invoke-static {p2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 461
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 463
    return v1

    #@10
    .line 458
    :cond_1
    return v1

    #@11
    .line 466
    :cond_2
    return p1
.end method

.method private refreshCallPullState()V
    .locals 7

    #@0
    .prologue
    .line 389
    const-string/jumbo v4, "ImsExternalCallTracker"

    #@3
    const-string/jumbo v5, "refreshCallPullState"

    #@6
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 391
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@b
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@e
    move-result-object v4

    #@f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "imsExternalConnection$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    #@1f
    .line 393
    .local v0, "imsExternalConnection":Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    #@21
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    #@24
    move-result v5

    #@25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v5

    #@29
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Ljava/lang/Boolean;

    #@2f
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@32
    move-result v3

    #@33
    .line 396
    .local v3, "isNetworkPullable":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getVideoState()I

    #@36
    move-result v4

    #@37
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->isCallPullPermitted(ZI)Z

    #@3a
    move-result v2

    #@3b
    .line 397
    .local v2, "isCallPullPermitted":Z
    const-string/jumbo v4, "ImsExternalCallTracker"

    #@3e
    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v6, "refreshCallPullState : externalCallId = "

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    #@4d
    move-result v6

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    .line 399
    const-string/jumbo v6, " ; isPullable = "

    #@55
    .line 398
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    .line 400
    const-string/jumbo v6, " ; networkPullable = "

    #@60
    .line 398
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    .line 401
    const-string/jumbo v6, " ; isVideo = "

    #@6b
    .line 398
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    .line 402
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getVideoState()I

    #@72
    move-result v6

    #@73
    invoke-static {v6}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    #@76
    move-result v6

    #@77
    .line 398
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    .line 403
    const-string/jumbo v6, " ; videoEnabled = "

    #@7e
    .line 398
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v5

    #@82
    .line 403
    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    #@84
    .line 398
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    .line 404
    const-string/jumbo v6, " ; hasActiveCalls = "

    #@8b
    .line 398
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    .line 404
    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    #@91
    .line 398
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v5

    #@99
    .line 397
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9c
    .line 405
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setIsPullable(Z)V

    #@9f
    goto/16 :goto_0

    #@a1
    .line 388
    .end local v0    # "imsExternalConnection":Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    .end local v2    # "isCallPullPermitted":Z
    .end local v3    # "isNetworkPullable":Z
    :cond_0
    return-void
.end method

.method private registerForNotifications()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 217
    const-string/jumbo v0, "ImsExternalCallTracker"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Registering: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@23
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    #@26
    move-result-object v0

    #@27
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    #@29
    .line 219
    const/4 v2, 0x1

    #@2a
    .line 218
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@2d
    .line 215
    :cond_0
    return-void
.end method

.method private unregisterForNotifications()V
    .locals 3

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 228
    const-string/jumbo v0, "ImsExternalCallTracker"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Unregistering: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@22
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    #@24
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V

    #@27
    .line 226
    :cond_0
    return-void
.end method

.method private updateExistingConnection(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;Lcom/android/ims/ImsExternalCallState;)V
    .locals 7
    .param p1, "connection"    # Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    .param p2, "state"    # Lcom/android/ims/ImsExternalCallState;

    #@0
    .prologue
    .line 347
    const-string/jumbo v4, "ImsExternalCallTracker"

    #@3
    new-instance v5, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v6, "updateExistingConnection : state = "

    #@b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 348
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@1d
    move-result-object v0

    #@1e
    .line 349
    .local v0, "existingState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p2}, Lcom/android/ims/ImsExternalCallState;->getCallState()I

    #@21
    move-result v4

    #@22
    const/4 v5, 0x1

    #@23
    if-ne v4, v5, :cond_2

    #@25
    .line 350
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@27
    .line 352
    .local v2, "newState":Lcom/android/internal/telephony/Call$State;
    :goto_0
    if-eq v0, v2, :cond_0

    #@29
    .line 353
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@2b
    if-ne v2, v4, :cond_3

    #@2d
    .line 354
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setActive()V

    #@30
    .line 364
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/android/ims/ImsExternalCallState;->getCallType()I

    #@33
    move-result v4

    #@34
    invoke-static {v4}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    #@37
    move-result v3

    #@38
    .line 365
    .local v3, "newVideoState":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getVideoState()I

    #@3b
    move-result v4

    #@3c
    if-eq v3, v4, :cond_1

    #@3e
    .line 366
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setVideoState(I)V

    #@41
    .line 369
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    #@43
    invoke-virtual {p2}, Lcom/android/ims/ImsExternalCallState;->getCallId()I

    #@46
    move-result v5

    #@47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {p2}, Lcom/android/ims/ImsExternalCallState;->isCallPullable()Z

    #@4e
    move-result v6

    #@4f
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@52
    move-result-object v6

    #@53
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    .line 370
    invoke-virtual {p2}, Lcom/android/ims/ImsExternalCallState;->isCallPullable()Z

    #@59
    move-result v4

    #@5a
    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->isCallPullPermitted(ZI)Z

    #@5d
    move-result v1

    #@5e
    .line 371
    .local v1, "isCallPullPermitted":Z
    const-string/jumbo v4, "ImsExternalCallTracker"

    #@61
    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v6, "updateExistingConnection - pullable state : externalCallId = "

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    #@70
    move-result v6

    #@71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    .line 374
    const-string/jumbo v6, " ; isPullable = "

    #@78
    .line 372
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    .line 375
    const-string/jumbo v6, " ; networkPullable = "

    #@83
    .line 372
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    .line 375
    invoke-virtual {p2}, Lcom/android/ims/ImsExternalCallState;->isCallPullable()Z

    #@8a
    move-result v6

    #@8b
    .line 372
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    .line 376
    const-string/jumbo v6, " ; isVideo = "

    #@92
    .line 372
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v5

    #@96
    .line 377
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getVideoState()I

    #@99
    move-result v6

    #@9a
    invoke-static {v6}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    #@9d
    move-result v6

    #@9e
    .line 372
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v5

    #@a2
    .line 378
    const-string/jumbo v6, " ; videoEnabled = "

    #@a5
    .line 372
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v5

    #@a9
    .line 378
    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    #@ab
    .line 372
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v5

    #@af
    .line 379
    const-string/jumbo v6, " ; hasActiveCalls = "

    #@b2
    .line 372
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    .line 379
    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    #@b8
    .line 372
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v5

    #@bc
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v5

    #@c0
    .line 371
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    .line 381
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setIsPullable(Z)V

    #@c6
    .line 345
    return-void

    #@c7
    .line 350
    .end local v1    # "isCallPullPermitted":Z
    .end local v2    # "newState":Lcom/android/internal/telephony/Call$State;
    .end local v3    # "newVideoState":I
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@c9
    goto/16 :goto_0

    #@cb
    .line 356
    .restart local v2    # "newState":Lcom/android/internal/telephony/Call$State;
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setTerminated()V

    #@ce
    .line 357
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    #@d0
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    #@d3
    .line 358
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@d5
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    #@d8
    move-result v5

    #@d9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@dc
    move-result-object v5

    #@dd
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e0
    .line 359
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    #@e2
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    #@e5
    move-result v5

    #@e6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e9
    move-result-object v5

    #@ea
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@ed
    .line 360
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    #@ef
    invoke-interface {v4}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyPreciseCallStateChanged()V

    #@f2
    goto/16 :goto_1
.end method


# virtual methods
.method public getConnectionById(I)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "callId"    # I

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@c
    return-object v0
.end method

.method public getExternalCallStateListener()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    #@2
    return-object v0
.end method

.method public onPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 3
    .param p1, "oldState"    # Lcom/android/internal/telephony/PhoneConstants$State;
    .param p2, "newState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    #@0
    .prologue
    .line 206
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    if-eq p2, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    #@7
    .line 207
    const-string/jumbo v0, "ImsExternalCallTracker"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "onPhoneStateChanged : hasActiveCalls = "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 209
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshCallPullState()V

    #@26
    .line 205
    return-void

    #@27
    .line 206
    :cond_0
    const/4 v0, 0x0

    #@28
    goto :goto_0
.end method

.method public refreshExternalCallState(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 243
    .local p1, "externalCallStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsExternalCallState;>;"
    const-string/jumbo v7, "ImsExternalCallTracker"

    #@3
    const-string/jumbo v8, "refreshExternalCallState"

    #@6
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 248
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@b
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@e
    move-result-object v7

    #@f
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v3

    #@13
    .line 249
    .local v3, "connectionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;>;>;"
    const/4 v6, 0x0

    #@14
    .line 250
    .local v6, "wasCallRemoved":Z
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_1

    #@1a
    .line 251
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Ljava/util/Map$Entry;

    #@20
    .line 252
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@23
    move-result-object v7

    #@24
    check-cast v7, Ljava/lang/Integer;

    #@26
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@29
    move-result v0

    #@2a
    .line 254
    .local v0, "callId":I
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->containsCallId(Ljava/util/List;I)Z

    #@2d
    move-result v7

    #@2e
    if-nez v7, :cond_0

    #@30
    .line 255
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@33
    move-result-object v5

    #@34
    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    #@36
    .line 256
    .local v5, "externalConnection":Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setTerminated()V

    #@39
    .line 257
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    #@3b
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    #@3e
    .line 258
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    #@41
    .line 259
    const/4 v6, 0x1

    #@42
    goto :goto_0

    #@43
    .line 264
    .end local v0    # "callId":I
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;>;"
    .end local v5    # "externalConnection":Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    :cond_1
    if-eqz v6, :cond_2

    #@45
    .line 265
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    #@47
    invoke-interface {v7}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyPreciseCallStateChanged()V

    #@4a
    .line 269
    :cond_2
    if-eqz p1, :cond_3

    #@4c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@4f
    move-result v7

    #@50
    if-eqz v7, :cond_4

    #@52
    .line 242
    :cond_3
    return-void

    #@53
    .line 270
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v2

    #@57
    .local v2, "callState$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v7

    #@5b
    if-eqz v7, :cond_3

    #@5d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v1

    #@61
    check-cast v1, Lcom/android/ims/ImsExternalCallState;

    #@63
    .line 271
    .local v1, "callState":Lcom/android/ims/ImsExternalCallState;
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@65
    invoke-virtual {v1}, Lcom/android/ims/ImsExternalCallState;->getCallId()I

    #@68
    move-result v8

    #@69
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6c
    move-result-object v8

    #@6d
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@70
    move-result v7

    #@71
    if-nez v7, :cond_6

    #@73
    .line 272
    const-string/jumbo v7, "ImsExternalCallTracker"

    #@76
    new-instance v8, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v9, "refreshExternalCallState: got = "

    #@7e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v8

    #@82
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v8

    #@86
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v8

    #@8a
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 275
    invoke-virtual {v1}, Lcom/android/ims/ImsExternalCallState;->getCallState()I

    #@90
    move-result v7

    #@91
    const/4 v8, 0x1

    #@92
    if-ne v7, v8, :cond_5

    #@94
    .line 278
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->createExternalConnection(Lcom/android/ims/ImsExternalCallState;)V

    #@97
    goto :goto_1

    #@98
    .line 280
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@9a
    invoke-virtual {v1}, Lcom/android/ims/ImsExternalCallState;->getCallId()I

    #@9d
    move-result v8

    #@9e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a1
    move-result-object v8

    #@a2
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a5
    move-result-object v7

    #@a6
    check-cast v7, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    #@a8
    invoke-direct {p0, v7, v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->updateExistingConnection(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;Lcom/android/ims/ImsExternalCallState;)V

    #@ab
    goto :goto_1
.end method

.method public setCallPuller(Lcom/android/internal/telephony/imsphone/ImsPullCall;)V
    .locals 0
    .param p1, "callPuller"    # Lcom/android/internal/telephony/imsphone/ImsPullCall;

    #@0
    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    #@2
    .line 190
    return-void
.end method

.method public tearDown()V
    .locals 0

    #@0
    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->unregisterForNotifications()V

    #@3
    .line 181
    return-void
.end method
