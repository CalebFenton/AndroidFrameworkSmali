.class public abstract Landroid/telecom/Connection;
.super Landroid/telecom/Conferenceable;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$1;,
        Landroid/telecom/Connection$2;,
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$Listener;,
        Landroid/telecom/Connection$VideoProvider;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x800000

.field public static final CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final CAPABILITY_CAN_PULL_CALL:I = 0x1000000

.field public static final CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION:I = 0x400000

.field public static final CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final CAPABILITY_CONFERENCE_HAS_NO_CHILDREN:I = 0x200000

.field public static final CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final CAPABILITY_HOLD:I = 0x1

.field public static final CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final CAPABILITY_MUTE:I = 0x40

.field public static final CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

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

.field public static final CAPABILITY_UNUSED_2:I = 0x4000

.field public static final CAPABILITY_UNUSED_3:I = 0x8000

.field public static final CAPABILITY_UNUSED_4:I = 0x10000

.field public static final CAPABILITY_UNUSED_5:I = 0x20000

.field public static final EVENT_CALL_PULL_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_PULL_FAILED"

.field public static final EVENT_ON_HOLD_TONE_END:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_END"

.field public static final EVENT_ON_HOLD_TONE_START:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_START"

.field public static final EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final EXTRA_CHILD_ADDRESS:Ljava/lang/String; = "android.telecom.extra.CHILD_ADDRESS"

.field public static final EXTRA_LAST_FORWARDED_NUMBER:Ljava/lang/String; = "android.telecom.extra.LAST_FORWARDED_NUMBER"

.field private static final PII_DEBUG:Z

.field public static final PROPERTY_GENERIC_CONFERENCE:I = 0x2

.field public static final PROPERTY_HIGH_DEF_AUDIO:I = 0x4

.field public static final PROPERTY_IS_EXTERNAL_CALL:I = 0x10

.field public static final PROPERTY_SHOW_CALLBACK_NUMBER:I = 0x1

.field public static final PROPERTY_WIFI:I = 0x8

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_DIALING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x6

.field public static final STATE_HOLDING:I = 0x5

.field public static final STATE_INITIALIZING:I = 0x0

.field public static final STATE_NEW:I = 0x1

.field public static final STATE_PULLING_CALL:I = 0x7

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

.field private mConnectionProperties:I

.field private mConnectionService:Landroid/telecom/ConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private final mExtrasLock:Ljava/lang/Object;

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

.field private mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private mTelecomCallId:Ljava/lang/String;

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
    .line 399
    const/4 v0, 0x3

    #@1
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@4
    move-result v0

    #@5
    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    #@7
    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1254
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    #@4
    .line 1193
    new-instance v0, Landroid/telecom/Connection$1;

    #@6
    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    #@9
    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@b
    .line 1202
    new-instance v0, Landroid/telecom/Connection$2;

    #@d
    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    #@10
    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    #@12
    .line 1217
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@14
    const/16 v1, 0x8

    #@16
    const v2, 0x3f666666    # 0.9f

    #@19
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@1c
    .line 1216
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@22
    .line 1218
    new-instance v0, Ljava/util/ArrayList;

    #@24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@27
    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@29
    .line 1220
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@2b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@2e
    move-result-object v0

    #@2f
    .line 1219
    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    #@31
    .line 1224
    iput v3, p0, Landroid/telecom/Connection;->mState:I

    #@33
    .line 1230
    const/4 v0, 0x0

    #@34
    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    #@36
    .line 1235
    const-wide/16 v0, 0x0

    #@38
    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    #@3a
    .line 1242
    new-instance v0, Ljava/lang/Object;

    #@3c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@3f
    iput-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    #@41
    .line 1254
    return-void
.end method

.method public static can(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 410
    and-int v0, p0, p1

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public static capabilitiesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "capabilities"    # I

    #@0
    .prologue
    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 447
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[Capabilities:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 448
    const/4 v1, 0x1

    #@c
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 449
    const-string/jumbo v1, " CAPABILITY_HOLD"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 451
    :cond_0
    const/4 v1, 0x2

    #@19
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 452
    const-string/jumbo v1, " CAPABILITY_SUPPORT_HOLD"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 454
    :cond_1
    const/4 v1, 0x4

    #@26
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 455
    const-string/jumbo v1, " CAPABILITY_MERGE_CONFERENCE"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 457
    :cond_2
    const/16 v1, 0x8

    #@34
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 458
    const-string/jumbo v1, " CAPABILITY_SWAP_CONFERENCE"

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 460
    :cond_3
    const/16 v1, 0x20

    #@42
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 461
    const-string/jumbo v1, " CAPABILITY_RESPOND_VIA_TEXT"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 463
    :cond_4
    const/16 v1, 0x40

    #@50
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_5

    #@56
    .line 464
    const-string/jumbo v1, " CAPABILITY_MUTE"

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 466
    :cond_5
    const/16 v1, 0x80

    #@5e
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_6

    #@64
    .line 467
    const-string/jumbo v1, " CAPABILITY_MANAGE_CONFERENCE"

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 469
    :cond_6
    const/16 v1, 0x100

    #@6c
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_7

    #@72
    .line 470
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 472
    :cond_7
    const/16 v1, 0x200

    #@7a
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_8

    #@80
    .line 473
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    #@83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    .line 475
    :cond_8
    const/16 v1, 0x300

    #@88
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@8b
    move-result v1

    #@8c
    if-eqz v1, :cond_9

    #@8e
    .line 476
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 478
    :cond_9
    const/16 v1, 0x400

    #@96
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@99
    move-result v1

    #@9a
    if-eqz v1, :cond_a

    #@9c
    .line 479
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    .line 481
    :cond_a
    const/16 v1, 0x800

    #@a4
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@a7
    move-result v1

    #@a8
    if-eqz v1, :cond_b

    #@aa
    .line 482
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    .line 484
    :cond_b
    const/16 v1, 0xc00

    #@b2
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@b5
    move-result v1

    #@b6
    if-eqz v1, :cond_c

    #@b8
    .line 485
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 487
    :cond_c
    const/high16 v1, 0x800000

    #@c0
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@c3
    move-result v1

    #@c4
    if-eqz v1, :cond_d

    #@c6
    .line 488
    const-string/jumbo v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    #@c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    .line 490
    :cond_d
    const/high16 v1, 0x40000

    #@ce
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@d1
    move-result v1

    #@d2
    if-eqz v1, :cond_e

    #@d4
    .line 491
    const-string/jumbo v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    #@d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    .line 493
    :cond_e
    const/high16 v1, 0x80000

    #@dc
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@df
    move-result v1

    #@e0
    if-eqz v1, :cond_f

    #@e2
    .line 494
    const-string/jumbo v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    #@e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    .line 496
    :cond_f
    const/high16 v1, 0x100000

    #@ea
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@ed
    move-result v1

    #@ee
    if-eqz v1, :cond_10

    #@f0
    .line 497
    const-string/jumbo v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    #@f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    .line 499
    :cond_10
    const/high16 v1, 0x200000

    #@f8
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@fb
    move-result v1

    #@fc
    if-eqz v1, :cond_11

    #@fe
    .line 500
    const-string/jumbo v1, " CAPABILITY_SINGLE_PARTY_CONFERENCE"

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    .line 502
    :cond_11
    const/high16 v1, 0x400000

    #@106
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@109
    move-result v1

    #@10a
    if-eqz v1, :cond_12

    #@10c
    .line 503
    const-string/jumbo v1, " CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION"

    #@10f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    .line 505
    :cond_12
    const/high16 v1, 0x1000000

    #@114
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@117
    move-result v1

    #@118
    if-eqz v1, :cond_13

    #@11a
    .line 506
    const-string/jumbo v1, " CAPABILITY_CAN_PULL_CALL"

    #@11d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    .line 509
    :cond_13
    const-string/jumbo v1, "]"

    #@123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v1

    #@12a
    return-object v1
.end method

.method private final clearConferenceableList()V
    .locals 5

    #@0
    .prologue
    .line 2269
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
    .line 2270
    .local v0, "c":Landroid/telecom/Conferenceable;
    instance-of v4, v0, Landroid/telecom/Connection;

    #@14
    if-eqz v4, :cond_1

    #@16
    move-object v3, v0

    #@17
    .line 2271
    check-cast v3, Landroid/telecom/Connection;

    #@19
    .line 2272
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@1b
    invoke-virtual {v3, v4}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@1e
    goto :goto_0

    #@1f
    .line 2273
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v4, v0, Landroid/telecom/Conference;

    #@21
    if-eqz v4, :cond_0

    #@23
    move-object v2, v0

    #@24
    .line 2274
    check-cast v2, Landroid/telecom/Conference;

    #@26
    .line 2275
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    #@28
    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    #@2b
    goto :goto_0

    #@2c
    .line 2278
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_2
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@2e
    invoke-interface {v4}, Ljava/util/List;->clear()V

    #@31
    .line 2268
    return-void
.end method

.method public static createCanceledConnection()Landroid/telecom/Connection;
    .locals 3

    #@0
    .prologue
    .line 2253
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
    .line 2229
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
    .line 2263
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
    .line 2264
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@14
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    #@17
    goto :goto_0

    #@18
    .line 2262
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .locals 3

    #@0
    .prologue
    .line 2257
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
    .line 2258
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    #@19
    goto :goto_0

    #@1a
    .line 2256
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public static propertiesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "properties"    # I

    #@0
    .prologue
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 522
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[Properties:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 524
    const/4 v1, 0x1

    #@c
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 525
    const-string/jumbo v1, " PROPERTY_SHOW_CALLBACK_NUMBER"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 528
    :cond_0
    const/4 v1, 0x4

    #@19
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 529
    const-string/jumbo v1, " PROPERTY_HIGH_DEF_AUDIO"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 532
    :cond_1
    const/16 v1, 0x8

    #@27
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 533
    const-string/jumbo v1, " PROPERTY_WIFI"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 536
    :cond_2
    const/4 v1, 0x2

    #@34
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 537
    const-string/jumbo v1, " PROPERTY_GENERIC_CONFERENCE"

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 540
    :cond_3
    const/16 v1, 0x10

    #@42
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 541
    const-string/jumbo v1, " PROPERTY_IS_EXTERNAL_CALL"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 544
    :cond_4
    const-string/jumbo v1, "]"

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    return-object v1
.end method

.method private setState(I)V
    .locals 6
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2188
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@4
    .line 2189
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
    .line 2190
    const-string/jumbo v2, "Connection already DISCONNECTED; cannot transition out of this state."

    #@10
    new-array v3, v5, [Ljava/lang/Object;

    #@12
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@15
    .line 2191
    return-void

    #@16
    .line 2193
    :cond_0
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    #@18
    if-eq v2, p1, :cond_1

    #@1a
    .line 2194
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
    .line 2195
    iput p1, p0, Landroid/telecom/Connection;->mState:I

    #@2b
    .line 2196
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    #@2e
    .line 2197
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
    .line 2198
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    #@43
    goto :goto_0

    #@44
    .line 2187
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
    .line 1466
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1482
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
    .line 1483
    const-string/jumbo v0, "UNKNOWN"

    #@18
    return-object v0

    #@19
    .line 1468
    :pswitch_0
    const-string/jumbo v0, "INITIALIZING"

    #@1c
    return-object v0

    #@1d
    .line 1470
    :pswitch_1
    const-string/jumbo v0, "NEW"

    #@20
    return-object v0

    #@21
    .line 1472
    :pswitch_2
    const-string/jumbo v0, "RINGING"

    #@24
    return-object v0

    #@25
    .line 1474
    :pswitch_3
    const-string/jumbo v0, "DIALING"

    #@28
    return-object v0

    #@29
    .line 1476
    :pswitch_4
    const-string/jumbo v0, "ACTIVE"

    #@2c
    return-object v0

    #@2d
    .line 1478
    :pswitch_5
    const-string/jumbo v0, "HOLDING"

    #@30
    return-object v0

    #@31
    .line 1480
    :pswitch_6
    const-string/jumbo v0, "DISCONNECTED"

    #@34
    return-object v0

    #@35
    .line 1466
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
    .line 2164
    if-nez p0, :cond_0

    #@2
    .line 2165
    const-string/jumbo v3, ""

    #@5
    return-object v3

    #@6
    .line 2168
    :cond_0
    sget-boolean v3, Landroid/telecom/Connection;->PII_DEBUG:Z

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 2170
    return-object p0

    #@b
    .line 2175
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 2176
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
    .line 2177
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v1

    #@1b
    .line 2178
    .local v1, "c":C
    const/16 v3, 0x2d

    #@1d
    if-eq v1, v3, :cond_2

    #@1f
    const/16 v3, 0x40

    #@21
    if-ne v1, v3, :cond_3

    #@23
    .line 2179
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 2176
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0

    #@29
    .line 2178
    :cond_3
    const/16 v3, 0x2e

    #@2b
    if-eq v1, v3, :cond_2

    #@2d
    .line 2181
    const/16 v3, 0x78

    #@2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    goto :goto_1

    #@33
    .line 2184
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
    .line 441
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@5
    .line 440
    return-void
.end method

.method public final addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    #@0
    .prologue
    .line 1410
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 1411
    return-object p0
.end method

.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 421
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
    .line 2239
    return-void
.end method

.method public final destroy()V
    .locals 3

    #@0
    .prologue
    .line 1718
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
    .line 1719
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    #@15
    goto :goto_0

    #@16
    .line 1717
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final getAddress()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 1271
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public final getAddressPresentation()I
    .locals 1

    #@0
    .prologue
    .line 1279
    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    #@2
    return v0
.end method

.method public final getAudioModeIsVoip()Z
    .locals 1

    #@0
    .prologue
    .line 1363
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
    .line 1328
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1329
    return-object v1

    #@6
    .line 1331
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
    .line 1340
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@2
    return-object v0
.end method

.method public final getCallerDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1286
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getCallerDisplayNamePresentation()I
    .locals 1

    #@0
    .prologue
    .line 1294
    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    #@2
    return v0
.end method

.method public final getConference()Landroid/telecom/Conference;
    .locals 1

    #@0
    .prologue
    .line 1348
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
    .line 1809
    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 1376
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    #@2
    return-wide v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 1491
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@2
    return v0
.end method

.method public final getConnectionProperties()I
    .locals 1

    #@0
    .prologue
    .line 1499
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    #@2
    return v0
.end method

.method public final getConnectionService()Landroid/telecom/ConnectionService;
    .locals 1

    #@0
    .prologue
    .line 1841
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@2
    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    #@0
    .prologue
    .line 1433
    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@2
    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 3

    #@0
    .prologue
    .line 1392
    const/4 v0, 0x0

    #@1
    .line 1393
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 1394
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1395
    new-instance v0, Landroid/os/Bundle;

    #@a
    .end local v0    # "extras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@c
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v2

    #@10
    .line 1398
    return-object v0

    #@11
    .line 1393
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v2

    #@13
    throw v1
.end method

.method public final getState()I
    .locals 1

    #@0
    .prologue
    .line 1301
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    #@2
    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    #@0
    .prologue
    .line 1383
    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    return-object v0
.end method

.method public final getTelecomCallId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1264
    iget-object v0, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    #@0
    .prologue
    .line 1617
    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@2
    return-object v0
.end method

.method public final getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 1315
    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    #@2
    return v0
.end method

.method final handleExtrasChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2288
    const/4 v0, 0x0

    #@1
    .line 2289
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 2290
    :try_start_0
    iput-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@6
    .line 2291
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2292
    new-instance v0, Landroid/os/Bundle;

    #@c
    .end local v0    # "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@e
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit v2

    #@12
    .line 2295
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onExtrasChanged(Landroid/os/Bundle;)V

    #@15
    .line 2287
    return-void

    #@16
    .line 2289
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method public final isRingbackRequested()Z
    .locals 1

    #@0
    .prologue
    .line 1356
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    #@2
    return v0
.end method

.method protected final notifyConferenceMergeFailed()V
    .locals 3

    #@0
    .prologue
    .line 2304
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
    .line 2305
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0}, Landroid/telecom/Connection$Listener;->onConferenceMergeFailed(Landroid/telecom/Connection;)V

    #@15
    goto :goto_0

    #@16
    .line 2303
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected notifyConferenceStarted()V
    .locals 3

    #@0
    .prologue
    .line 2327
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
    .line 2328
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0}, Landroid/telecom/Connection$Listener;->onConferenceStarted()V

    #@15
    goto :goto_0

    #@16
    .line 2326
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onAbort()V
    .locals 0

    #@0
    .prologue
    .line 2070
    return-void
.end method

.method public onAnswer()V
    .locals 1

    #@0
    .prologue
    .line 2095
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    #@4
    .line 2094
    return-void
.end method

.method public onAnswer(I)V
    .locals 0
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 2088
    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2019
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 2026
    return-void
.end method

.method public onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2147
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    #@0
    .prologue
    .line 2051
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2060
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2160
    return-void
.end method

.method public onHold()V
    .locals 0

    #@0
    .prologue
    .line 2075
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 2041
    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 0
    .param p1, "proceed"    # Z

    #@0
    .prologue
    .line 2120
    return-void
.end method

.method public onPullExternalCall()V
    .locals 0

    #@0
    .prologue
    .line 2134
    return-void
.end method

.method public onReject()V
    .locals 0

    #@0
    .prologue
    .line 2102
    return-void
.end method

.method public onReject(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2108
    return-void
.end method

.method public onSeparate()V
    .locals 0

    #@0
    .prologue
    .line 2065
    return-void
.end method

.method public onSilence()V
    .locals 0

    #@0
    .prologue
    .line 2115
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 2034
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 0

    #@0
    .prologue
    .line 2046
    return-void
.end method

.method public onUnhold()V
    .locals 0

    #@0
    .prologue
    .line 2080
    return-void
.end method

.method public final putExtra(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1972
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1973
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8
    .line 1974
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    #@b
    .line 1971
    return-void
.end method

.method public final putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1985
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1986
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 1987
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    #@b
    .line 1984
    return-void
.end method

.method public final putExtra(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 1959
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1960
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@8
    .line 1961
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    #@b
    .line 1958
    return-void
.end method

.method public final putExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1930
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1931
    if-nez p1, :cond_0

    #@5
    .line 1932
    return-void

    #@6
    .line 1937
    :cond_0
    iget-object v4, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    #@8
    monitor-enter v4

    #@9
    .line 1938
    :try_start_0
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@b
    if-nez v3, :cond_1

    #@d
    .line 1939
    new-instance v3, Landroid/os/Bundle;

    #@f
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@12
    iput-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@14
    .line 1941
    :cond_1
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@16
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@19
    .line 1942
    new-instance v2, Landroid/os/Bundle;

    #@1b
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@1d
    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .local v2, "listenerExtras":Landroid/os/Bundle;
    monitor-exit v4

    #@21
    .line 1944
    iget-object v3, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@23
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v1

    #@27
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/telecom/Connection$Listener;

    #@33
    .line 1947
    .local v0, "l":Landroid/telecom/Connection$Listener;
    new-instance v3, Landroid/os/Bundle;

    #@35
    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@38
    invoke-virtual {v0, p0, v3}, Landroid/telecom/Connection$Listener;->onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    #@3b
    goto :goto_0

    #@3c
    .line 1937
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "listenerExtras":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    #@3d
    monitor-exit v4

    #@3e
    throw v3

    #@3f
    .line 1929
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    .restart local v2    # "listenerExtras":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method public removeCapability(I)V
    .locals 2
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 431
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@6
    .line 430
    return-void
.end method

.method public final removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    #@0
    .prologue
    .line 1423
    if-eqz p1, :cond_0

    #@2
    .line 1424
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@4
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@7
    .line 1426
    :cond_0
    return-object p0
.end method

.method public final removeExtras(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1997
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 1998
    :try_start_0
    iget-object v5, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 1999
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    .line 2000
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@19
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 1997
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@1e
    monitor-exit v6

    #@1f
    throw v5

    #@20
    :cond_0
    monitor-exit v6

    #@21
    .line 2004
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@24
    move-result-object v4

    #@25
    .line 2005
    .local v4, "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@27
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v3

    #@2b
    .local v3, "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_1

    #@31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Landroid/telecom/Connection$Listener;

    #@37
    .line 2006
    .local v2, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v2, p0, v4}, Landroid/telecom/Connection$Listener;->onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V

    #@3a
    goto :goto_1

    #@3b
    .line 1996
    .end local v2    # "l":Landroid/telecom/Connection$Listener;
    :cond_1
    return-void
.end method

.method public final resetConference()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1870
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1871
    const-string/jumbo v0, "Conference reset"

    #@8
    const/4 v1, 0x0

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@e
    .line 1872
    iput-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@10
    .line 1873
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    #@13
    .line 1869
    :cond_0
    return-void
.end method

.method public sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2346
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
    .line 2347
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V

    #@15
    goto :goto_0

    #@16
    .line 2345
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setActive()V
    .locals 1

    #@0
    .prologue
    .line 1559
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1560
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    #@7
    .line 1561
    const/4 v0, 0x4

    #@8
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@b
    .line 1558
    return-void
.end method

.method public final setAddress(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    #@0
    .prologue
    .line 1510
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1511
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
    .line 1512
    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    #@11
    .line 1513
    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    #@13
    .line 1514
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
    .line 1515
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    #@28
    goto :goto_0

    #@29
    .line 1509
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setAudioModeIsVoip(Z)V
    .locals 3
    .param p1, "isVoip"    # Z

    #@0
    .prologue
    .line 1729
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1730
    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    #@5
    .line 1731
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
    .line 1732
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    #@1a
    goto :goto_0

    #@1b
    .line 1728
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method final setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 1454
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1455
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
    .line 1456
    iput-object p1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@11
    .line 1457
    invoke-virtual {p0}, Landroid/telecom/Connection;->getAudioState()Landroid/telecom/AudioState;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    #@18
    .line 1458
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    #@1b
    .line 1453
    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    #@0
    .prologue
    .line 1527
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1528
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
    .line 1529
    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    #@11
    .line 1530
    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    #@13
    .line 1531
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
    .line 1532
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    #@28
    goto :goto_0

    #@29
    .line 1526
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    .line 1853
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1855
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1856
    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@9
    .line 1857
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
    .line 1858
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    #@18
    .line 1860
    :cond_0
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    .line 1862
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
    .line 1767
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1768
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    #@6
    .line 1769
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
    .line 1772
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@18
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 1773
    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@20
    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@23
    .line 1774
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@25
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 1777
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    #@2c
    .line 1766
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
    .line 1787
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    #@3
    .line 1788
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
    .line 1791
    .local v0, "c":Landroid/telecom/Conferenceable;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@15
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_0

    #@1b
    .line 1792
    instance-of v4, v0, Landroid/telecom/Connection;

    #@1d
    if-eqz v4, :cond_2

    #@1f
    move-object v3, v0

    #@20
    .line 1793
    check-cast v3, Landroid/telecom/Connection;

    #@22
    .line 1794
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@24
    invoke-virtual {v3, v4}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@27
    .line 1799
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@29
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 1795
    :cond_2
    instance-of v4, v0, Landroid/telecom/Conference;

    #@2f
    if-eqz v4, :cond_1

    #@31
    move-object v2, v0

    #@32
    .line 1796
    check-cast v2, Landroid/telecom/Conference;

    #@34
    .line 1797
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    #@36
    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    #@39
    goto :goto_1

    #@3a
    .line 1802
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    #@3d
    .line 1786
    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .locals 1
    .param p1, "connectTimeMillis"    # J

    #@0
    .prologue
    .line 1745
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    #@2
    .line 1744
    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    #@0
    .prologue
    .line 1689
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1690
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@5
    if-eq v2, p1, :cond_0

    #@7
    .line 1691
    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@9
    .line 1692
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
    .line 1693
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@1d
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    #@20
    goto :goto_0

    #@21
    .line 1688
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setConnectionProperties(I)V
    .locals 3
    .param p1, "connectionProperties"    # I

    #@0
    .prologue
    .line 1705
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1706
    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    #@5
    if-eq v2, p1, :cond_0

    #@7
    .line 1707
    iput p1, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    #@9
    .line 1708
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
    .line 1709
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    #@1d
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V

    #@20
    goto :goto_0

    #@21
    .line 1704
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
    .line 1816
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1817
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1818
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
    .line 1815
    :goto_0
    return-void

    #@16
    .line 1821
    :cond_0
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@18
    goto :goto_0
.end method

.method public final setDialing()V
    .locals 1

    #@0
    .prologue
    .line 1592
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1593
    const/4 v0, 0x3

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1591
    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 5
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    .line 1627
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1628
    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@5
    .line 1629
    const/4 v2, 0x6

    #@6
    invoke-direct {p0, v2}, Landroid/telecom/Connection;->setState(I)V

    #@9
    .line 1630
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
    .line 1631
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
    .line 1632
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    #@2a
    goto :goto_0

    #@2b
    .line 1626
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1889
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1892
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    #@6
    .line 1896
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    #@8
    if-eqz v3, :cond_3

    #@a
    .line 1897
    new-instance v2, Ljava/util/ArrayList;

    #@c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 1898
    .local v2, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "oldKey$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/lang/String;

    #@21
    .line 1899
    .local v0, "oldKey":Ljava/lang/String;
    if-eqz p1, :cond_1

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_0

    #@29
    .line 1900
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 1903
    .end local v0    # "oldKey":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_3

    #@33
    .line 1904
    invoke-virtual {p0, v2}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    #@36
    .line 1910
    .end local v1    # "oldKey$iterator":Ljava/util/Iterator;
    .end local v2    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    #@38
    if-nez v3, :cond_4

    #@3a
    .line 1911
    new-instance v3, Landroid/util/ArraySet;

    #@3c
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@3f
    iput-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    #@41
    .line 1913
    :cond_4
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    #@43
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    #@46
    .line 1914
    if-eqz p1, :cond_5

    #@48
    .line 1915
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    #@4a
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@4d
    move-result-object v4

    #@4e
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@51
    .line 1888
    :cond_5
    return-void
.end method

.method public final setInitialized()V
    .locals 1

    #@0
    .prologue
    .line 1584
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1585
    const/4 v0, 0x1

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1583
    return-void
.end method

.method public final setInitializing()V
    .locals 1

    #@0
    .prologue
    .line 1576
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1577
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1575
    return-void
.end method

.method public final setNextPostDialChar(C)V
    .locals 3
    .param p1, "nextChar"    # C

    #@0
    .prologue
    .line 1661
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1662
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
    .line 1663
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    #@18
    goto :goto_0

    #@19
    .line 1660
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setOnHold()V
    .locals 1

    #@0
    .prologue
    .line 1600
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1601
    const/4 v0, 0x5

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1599
    return-void
.end method

.method public final setPostDialWait(Ljava/lang/String;)V
    .locals 3
    .param p1, "remaining"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1647
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1648
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
    .line 1649
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    #@18
    goto :goto_0

    #@19
    .line 1646
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setRingbackRequested(Z)V
    .locals 3
    .param p1, "ringback"    # Z

    #@0
    .prologue
    .line 1674
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1675
    iget-boolean v2, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    #@5
    if-eq v2, p1, :cond_0

    #@7
    .line 1676
    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    #@9
    .line 1677
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
    .line 1678
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    #@1e
    goto :goto_0

    #@1f
    .line 1673
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setRinging()V
    .locals 1

    #@0
    .prologue
    .line 1568
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1569
    const/4 v0, 0x2

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1567
    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    #@0
    .prologue
    .line 1754
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1755
    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    #@5
    .line 1756
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
    .line 1757
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    #@1a
    goto :goto_0

    #@1b
    .line 1753
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setTelecomCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1444
    iput-object p1, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    #@2
    .line 1443
    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    #@0
    .prologue
    .line 1609
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1610
    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@5
    .line 1611
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
    .line 1612
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    #@1a
    goto :goto_0

    #@1b
    .line 1608
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoState(I)V
    .locals 6
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 1546
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1547
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
    .line 1548
    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    #@15
    .line 1549
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
    .line 1550
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    #@29
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    #@2c
    goto :goto_0

    #@2d
    .line 1545
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    #@0
    .prologue
    .line 1829
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1830
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
    .line 1828
    :goto_0
    return-void

    #@13
    .line 1833
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
    .line 2317
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
    .line 2318
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    #@15
    goto :goto_0

    #@16
    .line 2316
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method
