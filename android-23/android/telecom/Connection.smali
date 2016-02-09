.class public abstract Landroid/telecom/Connection;
.super Landroid/telecom/Conferenceable;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$Listener;,
        Landroid/telecom/Connection$VideoProvider;,
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$1;,
        Landroid/telecom/Connection$2;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final CAPABILITY_CONFERENCE_HAS_NO_CHILDREN:I = 0x200000

.field public static final CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final CAPABILITY_GENERIC_CONFERENCE:I = 0x4000

.field public static final CAPABILITY_HIGH_DEF_AUDIO:I = 0x8000

.field public static final CAPABILITY_HOLD:I = 0x1

.field public static final CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final CAPABILITY_MUTE:I = 0x40

.field public static final CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final CAPABILITY_SHOW_CALLBACK_NUMBER:I = 0x20000

.field public static final CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final CAPABILITY_UNUSED:I = 0x10

.field public static final CAPABILITY_WIFI:I = 0x10000

.field public static final EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final EXTRA_CHILD_ADDRESS:Ljava/lang/String; = "android.telecom.extra.CHILD_ADDRESS"

.field public static final EXTRA_LAST_FORWARDED_NUMBER:Ljava/lang/String; = "android.telecom.extra.LAST_FORWARDED_NUMBER"

.field private static final PII_DEBUG:Z

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_DIALING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x6

.field public static final STATE_HOLDING:I = 0x5

.field public static final STATE_INITIALIZING:I = 0x0

.field public static final STATE_NEW:I = 0x1

.field public static final STATE_RINGING:I = 0x2


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private mAudioModeIsVoip:Z

.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/Conference;

.field private final mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private final mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private mConnectionService:Landroid/telecom/ConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static synthetic -get0(Landroid/telecom/Connection;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telecom/Connection;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 279
    const/4 v0, 0x3

    #@1
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@4
    move-result v0

    #@5
    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    #@7
    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1087
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    #@4
    .line 1037
    new-instance v0, Landroid/telecom/Connection$1;

    #@6
    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    #@9
    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@b
    .line 1046
    new-instance v0, Landroid/telecom/Connection$2;

    #@d
    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    #@10
    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    #@12
    .line 1061
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@14
    const/16 v1, 0x8

    #@16
    const v2, 0x3f666666    # 0.9f

    #@19
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@1c
    .line 1060
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@22
    .line 1062
    new-instance v0, Ljava/util/ArrayList;

    #@24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@27
    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@29
    .line 1064
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@2b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@2e
    move-result-object v0

    #@2f
    .line 1063
    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    #@31
    .line 1066
    iput v3, p0, Landroid/telecom/Connection;->mState:I

    #@33
    .line 1072
    const/4 v0, 0x0

    #@34
    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    #@36
    .line 1076
    const-wide/16 v0, 0x0

    #@38
    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    #@3a
    .line 1087
    return-void
.end method

.method public static can(II)Z
    .locals 2
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 290
    and-int v1, p0, p1

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static capabilitiesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "capabilities"    # I

    #@0
    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 327
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[Capabilities:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 328
    const/4 v1, 0x1

    #@c
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 329
    const-string/jumbo v1, " CAPABILITY_HOLD"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 331
    :cond_0
    const/4 v1, 0x2

    #@19
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 332
    const-string/jumbo v1, " CAPABILITY_SUPPORT_HOLD"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 334
    :cond_1
    const/4 v1, 0x4

    #@26
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 335
    const-string/jumbo v1, " CAPABILITY_MERGE_CONFERENCE"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 337
    :cond_2
    const/16 v1, 0x8

    #@34
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 338
    const-string/jumbo v1, " CAPABILITY_SWAP_CONFERENCE"

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 340
    :cond_3
    const/16 v1, 0x20

    #@42
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 341
    const-string/jumbo v1, " CAPABILITY_RESPOND_VIA_TEXT"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 343
    :cond_4
    const/16 v1, 0x40

    #@50
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_5

    #@56
    .line 344
    const-string/jumbo v1, " CAPABILITY_MUTE"

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 346
    :cond_5
    const/16 v1, 0x80

    #@5e
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_6

    #@64
    .line 347
    const-string/jumbo v1, " CAPABILITY_MANAGE_CONFERENCE"

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 349
    :cond_6
    const/16 v1, 0x100

    #@6c
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_7

    #@72
    .line 350
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 352
    :cond_7
    const/16 v1, 0x200

    #@7a
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_8

    #@80
    .line 353
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    #@83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    .line 355
    :cond_8
    const/16 v1, 0x300

    #@88
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@8b
    move-result v1

    #@8c
    if-eqz v1, :cond_9

    #@8e
    .line 356
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 358
    :cond_9
    const/16 v1, 0x400

    #@96
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@99
    move-result v1

    #@9a
    if-eqz v1, :cond_a

    #@9c
    .line 359
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    .line 361
    :cond_a
    const/16 v1, 0x800

    #@a4
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@a7
    move-result v1

    #@a8
    if-eqz v1, :cond_b

    #@aa
    .line 362
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    .line 364
    :cond_b
    const/16 v1, 0xc00

    #@b2
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@b5
    move-result v1

    #@b6
    if-eqz v1, :cond_c

    #@b8
    .line 365
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 367
    :cond_c
    const v1, 0x8000

    #@c1
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@c4
    move-result v1

    #@c5
    if-eqz v1, :cond_d

    #@c7
    .line 368
    const-string/jumbo v1, " CAPABILITY_HIGH_DEF_AUDIO"

    #@ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    .line 370
    :cond_d
    const/high16 v1, 0x10000

    #@cf
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@d2
    move-result v1

    #@d3
    if-eqz v1, :cond_e

    #@d5
    .line 371
    const-string/jumbo v1, " CAPABILITY_WIFI"

    #@d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    .line 373
    :cond_e
    const/16 v1, 0x4000

    #@dd
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@e0
    move-result v1

    #@e1
    if-eqz v1, :cond_f

    #@e3
    .line 374
    const-string/jumbo v1, " CAPABILITY_GENERIC_CONFERENCE"

    #@e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    .line 376
    :cond_f
    const/high16 v1, 0x20000

    #@eb
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@ee
    move-result v1

    #@ef
    if-eqz v1, :cond_10

    #@f1
    .line 377
    const-string/jumbo v1, " CAPABILITY_SHOW_CALLBACK_NUMBER"

    #@f4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    .line 379
    :cond_10
    const/high16 v1, 0x40000

    #@f9
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@fc
    move-result v1

    #@fd
    if-eqz v1, :cond_11

    #@ff
    .line 380
    const-string/jumbo v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    #@102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    .line 382
    :cond_11
    const/high16 v1, 0x80000

    #@107
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@10a
    move-result v1

    #@10b
    if-eqz v1, :cond_12

    #@10d
    .line 383
    const-string/jumbo v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    #@110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    .line 385
    :cond_12
    const/high16 v1, 0x100000

    #@115
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@118
    move-result v1

    #@119
    if-eqz v1, :cond_13

    #@11b
    .line 386
    const-string/jumbo v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    #@11e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    .line 388
    :cond_13
    const/high16 v1, 0x200000

    #@123
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@126
    move-result v1

    #@127
    if-eqz v1, :cond_14

    #@129
    .line 389
    const-string/jumbo v1, " CAPABILITY_SINGLE_PARTY_CONFERENCE"

    #@12c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    .line 391
    :cond_14
    const-string/jumbo v1, "]"

    #@132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v1

    #@139
    return-object v1
.end method

.method private final clearConferenceableList()V
    .locals 5

    #@0
    .prologue
    .line 1877
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_2

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/telecom/Conferenceable;

    #@12
    .line 1878
    .local v0, "c":Landroid/telecom/Conferenceable;
    instance-of v4, v0, Landroid/telecom/Connection;

    #@14
    if-eqz v4, :cond_1

    #@16
    move-object v3, v0

    #@17
    .line 1879
    check-cast v3, Landroid/telecom/Connection;

    #@19
    .line 1880
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@1b
    invoke-virtual {v3, v4}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@1e
    goto :goto_0

    #@1f
    .line 1881
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v4, v0, Landroid/telecom/Conference;

    #@21
    if-eqz v4, :cond_0

    #@23
    move-object v2, v0

    #@24
    .line 1882
    check-cast v2, Landroid/telecom/Conference;

    #@26
    .line 1883
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    #@28
    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    #@2b
    goto :goto_0

    #@2c
    .line 1886
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_2
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@2e
    invoke-interface {v4}, Ljava/util/List;->clear()V

    #@31
    .line 1876
    return-void
.end method

.method public static createCanceledConnection()Landroid/telecom/Connection;
    .locals 3

    #@0
    .prologue
    .line 1861
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    #@2
    new-instance v1, Landroid/telecom/DisconnectCause;

    #@4
    const/4 v2, 0x4

    #@5
    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    #@8
    invoke-direct {v0, v1}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    #@b
    return-object v0
.end method

.method public static createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    .line 1837
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    #@2
    invoke-direct {v0, p0}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    #@5
    return-object v0
.end method

.method private final fireConferenceChanged()V
    .locals 3

    #@0
    .prologue
    .line 1871
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@12
    .line 1872
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@14
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    #@17
    goto :goto_0

    #@18
    .line 1870
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .locals 3

    #@0
    .prologue
    .line 1865
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@12
    .line 1866
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    #@19
    goto :goto_0

    #@1a
    .line 1864
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 6
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1796
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@4
    .line 1797
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    #@6
    const/4 v3, 0x6

    #@7
    if-ne v2, v3, :cond_0

    #@9
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    #@b
    if-eq v2, p1, :cond_0

    #@d
    .line 1798
    const-string/jumbo v2, "Connection already DISCONNECTED; cannot transition out of this state."

    #@10
    new-array v3, v5, [Ljava/lang/Object;

    #@12
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@15
    .line 1799
    return-void

    #@16
    .line 1801
    :cond_0
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    #@18
    if-eq v2, p1, :cond_1

    #@1a
    .line 1802
    const-string/jumbo v2, "setState: %s"

    #@1d
    const/4 v3, 0x1

    #@1e
    new-array v3, v3, [Ljava/lang/Object;

    #@20
    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    aput-object v4, v3, v5

    #@26
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@29
    .line 1803
    iput p1, p0, Landroid/telecom/Connection;->mState:I

    #@2b
    .line 1804
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    #@2e
    .line 1805
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@30
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v1

    #@34
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_1

    #@3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@40
    .line 1806
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    #@43
    goto :goto_0

    #@44
    .line 1795
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "state"    # I

    #@0
    .prologue
    .line 1269
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1285
    const-class v0, Landroid/telecom/Connection;

    #@5
    const-string/jumbo v1, "Unknown state %d"

    #@8
    const/4 v2, 0x1

    #@9
    new-array v2, v2, [Ljava/lang/Object;

    #@b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v3

    #@f
    const/4 v4, 0x0

    #@10
    aput-object v3, v2, v4

    #@12
    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@15
    .line 1286
    const-string/jumbo v0, "UNKNOWN"

    #@18
    return-object v0

    #@19
    .line 1271
    :pswitch_0
    const-string/jumbo v0, "INITIALIZING"

    #@1c
    return-object v0

    #@1d
    .line 1273
    :pswitch_1
    const-string/jumbo v0, "NEW"

    #@20
    return-object v0

    #@21
    .line 1275
    :pswitch_2
    const-string/jumbo v0, "RINGING"

    #@24
    return-object v0

    #@25
    .line 1277
    :pswitch_3
    const-string/jumbo v0, "DIALING"

    #@28
    return-object v0

    #@29
    .line 1279
    :pswitch_4
    const-string/jumbo v0, "ACTIVE"

    #@2c
    return-object v0

    #@2d
    .line 1281
    :pswitch_5
    const-string/jumbo v0, "HOLDING"

    #@30
    return-object v0

    #@31
    .line 1283
    :pswitch_6
    const-string/jumbo v0, "DISCONNECTED"

    #@34
    return-object v0

    #@35
    .line 1269
    nop

    #@36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1772
    if-nez p0, :cond_0

    #@2
    .line 1773
    const-string/jumbo v3, ""

    #@5
    return-object v3

    #@6
    .line 1776
    :cond_0
    sget-boolean v3, Landroid/telecom/Connection;->PII_DEBUG:Z

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 1778
    return-object p0

    #@b
    .line 1783
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 1784
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v3

    #@15
    if-ge v2, v3, :cond_4

    #@17
    .line 1785
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v1

    #@1b
    .line 1786
    .local v1, "c":C
    const/16 v3, 0x2d

    #@1d
    if-eq v1, v3, :cond_2

    #@1f
    const/16 v3, 0x40

    #@21
    if-ne v1, v3, :cond_3

    #@23
    .line 1787
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 1784
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1786
    :cond_3
    const/16 v3, 0x2e

    #@2b
    if-eq v1, v3, :cond_2

    #@2d
    .line 1789
    const/16 v3, 0x78

    #@2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    goto :goto_1

    #@33
    .line 1792
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    return-object v3
.end method


# virtual methods
.method public addCapability(I)V
    .locals 1
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 321
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@5
    .line 320
    return-void
.end method

.method public final addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    #@0
    .prologue
    .line 1224
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 1225
    return-object p0
.end method

.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 301
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@2
    invoke-static {v0, p1}, Landroid/telecom/Connection;->can(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public checkImmutable()V
    .locals 0

    #@0
    .prologue
    .line 1847
    return-void
.end method

.method public final destroy()V
    .locals 3

    #@0
    .prologue
    .line 1497
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@12
    .line 1498
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    #@15
    goto :goto_0

    #@16
    .line 1496
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final getAddress()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 1093
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public final getAddressPresentation()I
    .locals 1

    #@0
    .prologue
    .line 1101
    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    #@2
    return v0
.end method

.method public final getAudioModeIsVoip()Z
    .locals 1

    #@0
    .prologue
    .line 1185
    iget-boolean v0, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    #@2
    return v0
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1150
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1151
    return-object v1

    #@6
    .line 1153
    :cond_0
    new-instance v0, Landroid/telecom/AudioState;

    #@8
    iget-object v1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@a
    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    #@d
    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    #@0
    .prologue
    .line 1162
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@2
    return-object v0
.end method

.method public final getCallerDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1108
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getCallerDisplayNamePresentation()I
    .locals 1

    #@0
    .prologue
    .line 1116
    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    #@2
    return v0
.end method

.method public final getConference()Landroid/telecom/Conference;
    .locals 1

    #@0
    .prologue
    .line 1170
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@2
    return-object v0
.end method

.method public final getConferenceables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1588
    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 1198
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    #@2
    return-wide v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 1294
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@2
    return v0
.end method

.method public final getConnectionService()Landroid/telecom/ConnectionService;
    .locals 1

    #@0
    .prologue
    .line 1620
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@2
    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    #@0
    .prologue
    .line 1247
    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@2
    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 1212
    iget-object v0, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public final getState()I
    .locals 1

    #@0
    .prologue
    .line 1123
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    #@2
    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    #@0
    .prologue
    .line 1205
    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    #@0
    .prologue
    .line 1412
    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@2
    return-object v0
.end method

.method public final getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 1137
    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    #@2
    return v0
.end method

.method public final isRingbackRequested()Z
    .locals 1

    #@0
    .prologue
    .line 1178
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    #@2
    return v0
.end method

.method protected final notifyConferenceMergeFailed()V
    .locals 3

    #@0
    .prologue
    .line 1895
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@12
    .line 1896
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0}, Landroid/telecom/Connection$Listener;->onConferenceMergeFailed(Landroid/telecom/Connection;)V

    #@15
    goto :goto_0

    #@16
    .line 1894
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected notifyConferenceStarted()V
    .locals 3

    #@0
    .prologue
    .line 1918
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@12
    .line 1919
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0}, Landroid/telecom/Connection$Listener;->onConferenceStarted()V

    #@15
    goto :goto_0

    #@16
    .line 1917
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onAbort()V
    .locals 0

    #@0
    .prologue
    .line 1731
    return-void
.end method

.method public onAnswer()V
    .locals 1

    #@0
    .prologue
    .line 1756
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    #@4
    .line 1755
    return-void
.end method

.method public onAnswer(I)V
    .locals 0
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 1749
    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1680
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 1687
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    #@0
    .prologue
    .line 1712
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1721
    return-void
.end method

.method public onHold()V
    .locals 0

    #@0
    .prologue
    .line 1736
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 1702
    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 0
    .param p1, "proceed"    # Z

    #@0
    .prologue
    .line 1768
    return-void
.end method

.method public onReject()V
    .locals 0

    #@0
    .prologue
    .line 1763
    return-void
.end method

.method public onSeparate()V
    .locals 0

    #@0
    .prologue
    .line 1726
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 1695
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 0

    #@0
    .prologue
    .line 1707
    return-void
.end method

.method public onUnhold()V
    .locals 0

    #@0
    .prologue
    .line 1741
    return-void
.end method

.method public removeCapability(I)V
    .locals 2
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 311
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@6
    .line 310
    return-void
.end method

.method public final removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    #@0
    .prologue
    .line 1237
    if-eqz p1, :cond_0

    #@2
    .line 1238
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@4
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@7
    .line 1240
    :cond_0
    return-object p0
.end method

.method public final resetConference()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1649
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1650
    const-string/jumbo v0, "Conference reset"

    #@8
    const/4 v1, 0x0

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@e
    .line 1651
    iput-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@10
    .line 1652
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    #@13
    .line 1648
    :cond_0
    return-void
.end method

.method public final setActive()V
    .locals 1

    #@0
    .prologue
    .line 1354
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1355
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    #@7
    .line 1356
    const/4 v0, 0x4

    #@8
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@b
    .line 1353
    return-void
.end method

.method public final setAddress(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    #@0
    .prologue
    .line 1305
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1306
    const-string/jumbo v2, "setAddress %s"

    #@6
    const/4 v3, 0x1

    #@7
    new-array v3, v3, [Ljava/lang/Object;

    #@9
    const/4 v4, 0x0

    #@a
    aput-object p1, v3, v4

    #@c
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@f
    .line 1307
    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    #@11
    .line 1308
    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    #@13
    .line 1309
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@25
    .line 1310
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    #@28
    goto :goto_0

    #@29
    .line 1304
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setAudioModeIsVoip(Z)V
    .locals 3
    .param p1, "isVoip"    # Z

    #@0
    .prologue
    .line 1508
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1509
    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    #@5
    .line 1510
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@17
    .line 1511
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    #@1a
    goto :goto_0

    #@1b
    .line 1507
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method final setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 1257
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1258
    const-string/jumbo v0, "setAudioState %s"

    #@6
    const/4 v1, 0x1

    #@7
    new-array v1, v1, [Ljava/lang/Object;

    #@9
    const/4 v2, 0x0

    #@a
    aput-object p1, v1, v2

    #@c
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@f
    .line 1259
    iput-object p1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@11
    .line 1260
    invoke-virtual {p0}, Landroid/telecom/Connection;->getAudioState()Landroid/telecom/AudioState;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    #@18
    .line 1261
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    #@1b
    .line 1256
    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    #@0
    .prologue
    .line 1322
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1323
    const-string/jumbo v2, "setCallerDisplayName %s"

    #@6
    const/4 v3, 0x1

    #@7
    new-array v3, v3, [Ljava/lang/Object;

    #@9
    const/4 v4, 0x0

    #@a
    aput-object p1, v3, v4

    #@c
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@f
    .line 1324
    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    #@11
    .line 1325
    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    #@13
    .line 1326
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@25
    .line 1327
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    #@28
    goto :goto_0

    #@29
    .line 1321
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    .line 1632
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1634
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1635
    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@9
    .line 1636
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@b
    if-eqz v0, :cond_0

    #@d
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@f
    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->containsConference(Landroid/telecom/Conference;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 1637
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    #@18
    .line 1639
    :cond_0
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    .line 1641
    :cond_1
    const/4 v0, 0x0

    #@1b
    return v0
.end method

.method public final setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1546
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1547
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    #@6
    .line 1548
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/telecom/Connection;

    #@16
    .line 1551
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@18
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 1552
    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@20
    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@23
    .line 1553
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@25
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 1556
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    #@2c
    .line 1545
    return-void
.end method

.method public final setConferenceables(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1566
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    #@3
    .line 1567
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_3

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/telecom/Conferenceable;

    #@13
    .line 1570
    .local v0, "c":Landroid/telecom/Conferenceable;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@15
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_0

    #@1b
    .line 1571
    instance-of v4, v0, Landroid/telecom/Connection;

    #@1d
    if-eqz v4, :cond_2

    #@1f
    move-object v3, v0

    #@20
    .line 1572
    check-cast v3, Landroid/telecom/Connection;

    #@22
    .line 1573
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@24
    invoke-virtual {v3, v4}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@27
    .line 1578
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@29
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 1574
    :cond_2
    instance-of v4, v0, Landroid/telecom/Conference;

    #@2f
    if-eqz v4, :cond_1

    #@31
    move-object v2, v0

    #@32
    .line 1575
    check-cast v2, Landroid/telecom/Conference;

    #@34
    .line 1576
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    #@36
    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    #@39
    goto :goto_1

    #@3a
    .line 1581
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    #@3d
    .line 1565
    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .locals 1
    .param p1, "connectTimeMillis"    # J

    #@0
    .prologue
    .line 1524
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    #@2
    .line 1523
    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    #@0
    .prologue
    .line 1484
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1485
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@5
    if-eq v2, p1, :cond_0

    #@7
    .line 1486
    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@9
    .line 1487
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@1b
    .line 1488
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@1d
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    #@20
    goto :goto_0

    #@21
    .line 1483
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    #@0
    .prologue
    .line 1595
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1596
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1597
    new-instance v0, Ljava/lang/Exception;

    #@9
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    #@c
    const-string/jumbo v1, "Trying to set ConnectionService on a connection which is already associated with another ConnectionService."

    #@f
    const/4 v2, 0x0

    #@10
    new-array v2, v2, [Ljava/lang/Object;

    #@12
    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    #@15
    .line 1594
    :goto_0
    return-void

    #@16
    .line 1600
    :cond_0
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@18
    goto :goto_0
.end method

.method public final setDialing()V
    .locals 1

    #@0
    .prologue
    .line 1387
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1388
    const/4 v0, 0x3

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1386
    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 5
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    .line 1422
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1423
    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@5
    .line 1424
    const/4 v2, 0x6

    #@6
    invoke-direct {p0, v2}, Landroid/telecom/Connection;->setState(I)V

    #@9
    .line 1425
    const-string/jumbo v2, "Disconnected with cause %s"

    #@c
    const/4 v3, 0x1

    #@d
    new-array v3, v3, [Ljava/lang/Object;

    #@f
    const/4 v4, 0x0

    #@10
    aput-object p1, v3, v4

    #@12
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@15
    .line 1426
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@27
    .line 1427
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    #@2a
    goto :goto_0

    #@2b
    .line 1421
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1664
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1665
    iput-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@5
    .line 1666
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@17
    .line 1667
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    #@1a
    goto :goto_0

    #@1b
    .line 1663
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setInitialized()V
    .locals 1

    #@0
    .prologue
    .line 1379
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1380
    const/4 v0, 0x1

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1378
    return-void
.end method

.method public final setInitializing()V
    .locals 1

    #@0
    .prologue
    .line 1371
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1372
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1370
    return-void
.end method

.method public final setNextPostDialChar(C)V
    .locals 3
    .param p1, "nextChar"    # C

    #@0
    .prologue
    .line 1456
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1457
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@15
    .line 1458
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    #@18
    goto :goto_0

    #@19
    .line 1455
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setOnHold()V
    .locals 1

    #@0
    .prologue
    .line 1395
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1396
    const/4 v0, 0x5

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1394
    return-void
.end method

.method public final setPostDialWait(Ljava/lang/String;)V
    .locals 3
    .param p1, "remaining"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1442
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1443
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@15
    .line 1444
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    #@18
    goto :goto_0

    #@19
    .line 1441
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setRingbackRequested(Z)V
    .locals 3
    .param p1, "ringback"    # Z

    #@0
    .prologue
    .line 1469
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1470
    iget-boolean v2, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    #@5
    if-eq v2, p1, :cond_0

    #@7
    .line 1471
    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    #@9
    .line 1472
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@1b
    .line 1473
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    #@1e
    goto :goto_0

    #@1f
    .line 1468
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setRinging()V
    .locals 1

    #@0
    .prologue
    .line 1363
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1364
    const/4 v0, 0x2

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1362
    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    #@0
    .prologue
    .line 1533
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1534
    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    #@5
    .line 1535
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@17
    .line 1536
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    #@1a
    goto :goto_0

    #@1b
    .line 1532
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    #@0
    .prologue
    .line 1404
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1405
    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@5
    .line 1406
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@17
    .line 1407
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    #@1a
    goto :goto_0

    #@1b
    .line 1403
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoState(I)V
    .locals 6
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 1341
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1342
    const-string/jumbo v2, "setVideoState %d"

    #@6
    const/4 v3, 0x1

    #@7
    new-array v3, v3, [Ljava/lang/Object;

    #@9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v4

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@13
    .line 1343
    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    #@15
    .line 1344
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@27
    .line 1345
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    #@29
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    #@2c
    goto :goto_0

    #@2d
    .line 1340
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    #@0
    .prologue
    .line 1608
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1609
    new-instance v0, Ljava/lang/Exception;

    #@6
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    #@9
    const-string/jumbo v1, "Trying to remove ConnectionService from a Connection that does not belong to the ConnectionService."

    #@c
    const/4 v2, 0x0

    #@d
    new-array v2, v2, [Ljava/lang/Object;

    #@f
    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    #@12
    .line 1607
    :goto_0
    return-void

    #@13
    .line 1612
    :cond_0
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@16
    goto :goto_0
.end method

.method protected final updateConferenceParticipants(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1908
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@12
    .line 1909
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    #@15
    goto :goto_0

    #@16
    .line 1907
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method
