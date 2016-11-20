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

.field public static final EVENT_CALL_MERGE_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_MERGE_FAILED"

.field public static final EVENT_CALL_PULL_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_PULL_FAILED"

.field public static final EVENT_CALL_REMOTELY_HELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_HELD"

.field public static final EVENT_CALL_REMOTELY_UNHELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_UNHELD"

.field public static final EVENT_ON_HOLD_TONE_END:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_END"

.field public static final EVENT_ON_HOLD_TONE_START:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_START"

.field public static final EXTRA_ANSWERING_DROPS_FG_CALL:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL"

.field public static final EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final EXTRA_CHILD_ADDRESS:Ljava/lang/String; = "android.telecom.extra.CHILD_ADDRESS"

.field public static final EXTRA_DISABLE_ADD_CALL:Ljava/lang/String; = "android.telecom.extra.DISABLE_ADD_CALL"

.field public static final EXTRA_LAST_FORWARDED_NUMBER:Ljava/lang/String; = "android.telecom.extra.LAST_FORWARDED_NUMBER"

.field private static final PII_DEBUG:Z

.field public static final PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x1

.field public static final PROPERTY_GENERIC_CONFERENCE:I = 0x2

.field public static final PROPERTY_HAS_CDMA_VOICE_PRIVACY:I = 0x20

.field public static final PROPERTY_HIGH_DEF_AUDIO:I = 0x4

.field public static final PROPERTY_IS_DOWNGRADED_CONFERENCE:I = 0x40

.field public static final PROPERTY_IS_EXTERNAL_CALL:I = 0x10

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
    .line 491
    const/4 v0, 0x3

    #@1
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@4
    move-result v0

    #@5
    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    #@7
    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1427
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    #@4
    .line 1366
    new-instance v0, Landroid/telecom/Connection$1;

    #@6
    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    #@9
    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@b
    .line 1375
    new-instance v0, Landroid/telecom/Connection$2;

    #@d
    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    #@10
    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    #@12
    .line 1390
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@14
    const/16 v1, 0x8

    #@16
    const v2, 0x3f666666    # 0.9f

    #@19
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@1c
    .line 1389
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@22
    .line 1391
    new-instance v0, Ljava/util/ArrayList;

    #@24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@27
    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@29
    .line 1393
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@2b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@2e
    move-result-object v0

    #@2f
    .line 1392
    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    #@31
    .line 1397
    iput v3, p0, Landroid/telecom/Connection;->mState:I

    #@33
    .line 1403
    const/4 v0, 0x0

    #@34
    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    #@36
    .line 1408
    const-wide/16 v0, 0x0

    #@38
    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    #@3a
    .line 1415
    new-instance v0, Ljava/lang/Object;

    #@3c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@3f
    iput-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    #@41
    .line 1427
    return-void
.end method

.method public static can(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 502
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
    .locals 1
    .param p0, "capabilities"    # I

    #@0
    .prologue
    .line 543
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static capabilitiesToStringInternal(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "capabilities"    # I
    .param p1, "isLong"    # Z

    #@0
    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 560
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 561
    if-eqz p1, :cond_0

    #@d
    .line 562
    const-string/jumbo v1, "Capabilities:"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 565
    :cond_0
    const/4 v1, 0x1

    #@14
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 566
    if-eqz p1, :cond_15

    #@1c
    const-string/jumbo v1, " CAPABILITY_HOLD"

    #@1f
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 568
    :cond_1
    const/4 v1, 0x2

    #@23
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 569
    if-eqz p1, :cond_16

    #@2b
    const-string/jumbo v1, " CAPABILITY_SUPPORT_HOLD"

    #@2e
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 571
    :cond_2
    const/4 v1, 0x4

    #@32
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_3

    #@38
    .line 572
    if-eqz p1, :cond_17

    #@3a
    const-string/jumbo v1, " CAPABILITY_MERGE_CONFERENCE"

    #@3d
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 574
    :cond_3
    const/16 v1, 0x8

    #@42
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 575
    if-eqz p1, :cond_18

    #@4a
    const-string/jumbo v1, " CAPABILITY_SWAP_CONFERENCE"

    #@4d
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 577
    :cond_4
    const/16 v1, 0x20

    #@52
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_5

    #@58
    .line 578
    if-eqz p1, :cond_19

    #@5a
    const-string/jumbo v1, " CAPABILITY_RESPOND_VIA_TEXT"

    #@5d
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 580
    :cond_5
    const/16 v1, 0x40

    #@62
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_6

    #@68
    .line 581
    if-eqz p1, :cond_1a

    #@6a
    const-string/jumbo v1, " CAPABILITY_MUTE"

    #@6d
    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 583
    :cond_6
    const/16 v1, 0x80

    #@72
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@75
    move-result v1

    #@76
    if-eqz v1, :cond_7

    #@78
    .line 584
    if-eqz p1, :cond_1b

    #@7a
    const-string/jumbo v1, " CAPABILITY_MANAGE_CONFERENCE"

    #@7d
    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    .line 586
    :cond_7
    const/16 v1, 0x100

    #@82
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@85
    move-result v1

    #@86
    if-eqz v1, :cond_8

    #@88
    .line 587
    if-eqz p1, :cond_1c

    #@8a
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    #@8d
    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    .line 589
    :cond_8
    const/16 v1, 0x200

    #@92
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@95
    move-result v1

    #@96
    if-eqz v1, :cond_9

    #@98
    .line 590
    if-eqz p1, :cond_1d

    #@9a
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    #@9d
    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    .line 592
    :cond_9
    const/16 v1, 0x300

    #@a2
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@a5
    move-result v1

    #@a6
    if-eqz v1, :cond_a

    #@a8
    .line 593
    if-eqz p1, :cond_1e

    #@aa
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    #@ad
    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    .line 595
    :cond_a
    const/16 v1, 0x400

    #@b2
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@b5
    move-result v1

    #@b6
    if-eqz v1, :cond_b

    #@b8
    .line 596
    if-eqz p1, :cond_1f

    #@ba
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    #@bd
    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    .line 598
    :cond_b
    const/16 v1, 0x800

    #@c2
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@c5
    move-result v1

    #@c6
    if-eqz v1, :cond_c

    #@c8
    .line 599
    if-eqz p1, :cond_20

    #@ca
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    #@cd
    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    .line 601
    :cond_c
    const/16 v1, 0xc00

    #@d2
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@d5
    move-result v1

    #@d6
    if-eqz v1, :cond_d

    #@d8
    .line 602
    if-eqz p1, :cond_21

    #@da
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    #@dd
    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    .line 604
    :cond_d
    const/high16 v1, 0x800000

    #@e2
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@e5
    move-result v1

    #@e6
    if-eqz v1, :cond_e

    #@e8
    .line 605
    if-eqz p1, :cond_22

    #@ea
    const-string/jumbo v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    #@ed
    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    .line 607
    :cond_e
    const/high16 v1, 0x40000

    #@f2
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@f5
    move-result v1

    #@f6
    if-eqz v1, :cond_f

    #@f8
    .line 608
    if-eqz p1, :cond_23

    #@fa
    const-string/jumbo v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    #@fd
    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    .line 610
    :cond_f
    const/high16 v1, 0x80000

    #@102
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@105
    move-result v1

    #@106
    if-eqz v1, :cond_10

    #@108
    .line 611
    if-eqz p1, :cond_24

    #@10a
    const-string/jumbo v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    #@10d
    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    .line 613
    :cond_10
    const/high16 v1, 0x100000

    #@112
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@115
    move-result v1

    #@116
    if-eqz v1, :cond_11

    #@118
    .line 614
    if-eqz p1, :cond_25

    #@11a
    const-string/jumbo v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    #@11d
    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    .line 616
    :cond_11
    const/high16 v1, 0x200000

    #@122
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@125
    move-result v1

    #@126
    if-eqz v1, :cond_12

    #@128
    .line 617
    if-eqz p1, :cond_26

    #@12a
    const-string/jumbo v1, " CAPABILITY_SINGLE_PARTY_CONFERENCE"

    #@12d
    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    .line 619
    :cond_12
    const/high16 v1, 0x400000

    #@132
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@135
    move-result v1

    #@136
    if-eqz v1, :cond_13

    #@138
    .line 620
    if-eqz p1, :cond_27

    #@13a
    const-string/jumbo v1, " CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION"

    #@13d
    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    .line 622
    :cond_13
    const/high16 v1, 0x1000000

    #@142
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@145
    move-result v1

    #@146
    if-eqz v1, :cond_14

    #@148
    .line 623
    if-eqz p1, :cond_28

    #@14a
    const-string/jumbo v1, " CAPABILITY_CAN_PULL_CALL"

    #@14d
    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    .line 626
    :cond_14
    const-string/jumbo v1, "]"

    #@153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    .line 627
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v1

    #@15a
    return-object v1

    #@15b
    .line 566
    :cond_15
    const-string/jumbo v1, " hld"

    #@15e
    goto/16 :goto_0

    #@160
    .line 569
    :cond_16
    const-string/jumbo v1, " sup_hld"

    #@163
    goto/16 :goto_1

    #@165
    .line 572
    :cond_17
    const-string/jumbo v1, " mrg_cnf"

    #@168
    goto/16 :goto_2

    #@16a
    .line 575
    :cond_18
    const-string/jumbo v1, " swp_cnf"

    #@16d
    goto/16 :goto_3

    #@16f
    .line 578
    :cond_19
    const-string/jumbo v1, " txt"

    #@172
    goto/16 :goto_4

    #@174
    .line 581
    :cond_1a
    const-string/jumbo v1, " mut"

    #@177
    goto/16 :goto_5

    #@179
    .line 584
    :cond_1b
    const-string/jumbo v1, " mng_cnf"

    #@17c
    goto/16 :goto_6

    #@17e
    .line 587
    :cond_1c
    const-string/jumbo v1, " VTlrx"

    #@181
    goto/16 :goto_7

    #@183
    .line 590
    :cond_1d
    const-string/jumbo v1, " VTltx"

    #@186
    goto/16 :goto_8

    #@188
    .line 593
    :cond_1e
    const-string/jumbo v1, " VTlbi"

    #@18b
    goto/16 :goto_9

    #@18d
    .line 596
    :cond_1f
    const-string/jumbo v1, " VTrrx"

    #@190
    goto/16 :goto_a

    #@192
    .line 599
    :cond_20
    const-string/jumbo v1, " VTrtx"

    #@195
    goto/16 :goto_b

    #@197
    .line 602
    :cond_21
    const-string/jumbo v1, " VTrbi"

    #@19a
    goto/16 :goto_c

    #@19c
    .line 605
    :cond_22
    const-string/jumbo v1, " !v2a"

    #@19f
    goto/16 :goto_d

    #@1a1
    .line 608
    :cond_23
    const-string/jumbo v1, " spd_aud"

    #@1a4
    goto/16 :goto_e

    #@1a6
    .line 611
    :cond_24
    const-string/jumbo v1, " a2v"

    #@1a9
    goto/16 :goto_f

    #@1ab
    .line 614
    :cond_25
    const-string/jumbo v1, " paus_VT"

    #@1ae
    goto/16 :goto_10

    #@1b0
    .line 617
    :cond_26
    const-string/jumbo v1, " 1p_cnf"

    #@1b3
    goto/16 :goto_11

    #@1b5
    .line 620
    :cond_27
    const-string/jumbo v1, " rsp_by_con"

    #@1b8
    goto :goto_12

    #@1b9
    .line 623
    :cond_28
    const-string/jumbo v1, " pull"

    #@1bc
    goto :goto_13
.end method

.method public static capabilitiesToStringShort(I)Ljava/lang/String;
    .locals 1
    .param p0, "capabilities"    # I

    #@0
    .prologue
    .line 555
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private final clearConferenceableList()V
    .locals 5

    #@0
    .prologue
    .line 2474
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
    .line 2475
    .local v0, "c":Landroid/telecom/Conferenceable;
    instance-of v4, v0, Landroid/telecom/Connection;

    #@14
    if-eqz v4, :cond_1

    #@16
    move-object v3, v0

    #@17
    .line 2476
    check-cast v3, Landroid/telecom/Connection;

    #@19
    .line 2477
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@1b
    invoke-virtual {v3, v4}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@1e
    goto :goto_0

    #@1f
    .line 2478
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v4, v0, Landroid/telecom/Conference;

    #@21
    if-eqz v4, :cond_0

    #@23
    move-object v2, v0

    #@24
    .line 2479
    check-cast v2, Landroid/telecom/Conference;

    #@26
    .line 2480
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    #@28
    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    #@2b
    goto :goto_0

    #@2c
    .line 2483
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_2
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@2e
    invoke-interface {v4}, Ljava/util/List;->clear()V

    #@31
    .line 2473
    return-void
.end method

.method public static createCanceledConnection()Landroid/telecom/Connection;
    .locals 3

    #@0
    .prologue
    .line 2458
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
    .line 2434
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
    .line 2468
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
    .line 2469
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@14
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    #@17
    goto :goto_0

    #@18
    .line 2467
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .locals 3

    #@0
    .prologue
    .line 2462
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
    .line 2463
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    #@19
    goto :goto_0

    #@1a
    .line 2461
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public static propertiesToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "properties"    # I

    #@0
    .prologue
    .line 637
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static propertiesToStringInternal(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "properties"    # I
    .param p1, "isLong"    # Z

    #@0
    .prologue
    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 653
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 654
    if-eqz p1, :cond_0

    #@d
    .line 655
    const-string/jumbo v1, "Properties:"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 658
    :cond_0
    const/4 v1, 0x1

    #@14
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 659
    if-eqz p1, :cond_7

    #@1c
    const-string/jumbo v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    #@1f
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 662
    :cond_1
    const/4 v1, 0x4

    #@23
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 663
    if-eqz p1, :cond_8

    #@2b
    const-string/jumbo v1, " PROPERTY_HIGH_DEF_AUDIO"

    #@2e
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 666
    :cond_2
    const/16 v1, 0x8

    #@33
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_3

    #@39
    .line 667
    if-eqz p1, :cond_9

    #@3b
    const-string/jumbo v1, " PROPERTY_WIFI"

    #@3e
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 670
    :cond_3
    const/4 v1, 0x2

    #@42
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 671
    if-eqz p1, :cond_a

    #@4a
    const-string/jumbo v1, " PROPERTY_GENERIC_CONFERENCE"

    #@4d
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 674
    :cond_4
    const/16 v1, 0x10

    #@52
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_5

    #@58
    .line 675
    if-eqz p1, :cond_b

    #@5a
    const-string/jumbo v1, " PROPERTY_IS_EXTERNAL_CALL"

    #@5d
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 678
    :cond_5
    const/16 v1, 0x20

    #@62
    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_6

    #@68
    .line 679
    if-eqz p1, :cond_c

    #@6a
    const-string/jumbo v1, " PROPERTY_HAS_CDMA_VOICE_PRIVACY"

    #@6d
    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 682
    :cond_6
    const-string/jumbo v1, "]"

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 683
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    return-object v1

    #@7b
    .line 659
    :cond_7
    const-string/jumbo v1, " ecbm"

    #@7e
    goto :goto_0

    #@7f
    .line 663
    :cond_8
    const-string/jumbo v1, " HD"

    #@82
    goto :goto_1

    #@83
    .line 667
    :cond_9
    const-string/jumbo v1, " wifi"

    #@86
    goto :goto_2

    #@87
    .line 671
    :cond_a
    const-string/jumbo v1, " gen_conf"

    #@8a
    goto :goto_3

    #@8b
    .line 675
    :cond_b
    const-string/jumbo v1, " xtrnl"

    #@8e
    goto :goto_4

    #@8f
    .line 679
    :cond_c
    const-string/jumbo v1, " priv"

    #@92
    goto :goto_5
.end method

.method public static propertiesToStringShort(I)Ljava/lang/String;
    .locals 1
    .param p0, "properties"    # I

    #@0
    .prologue
    .line 648
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private setState(I)V
    .locals 6
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2393
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@4
    .line 2394
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
    .line 2395
    const-string/jumbo v2, "Connection already DISCONNECTED; cannot transition out of this state."

    #@10
    new-array v3, v5, [Ljava/lang/Object;

    #@12
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@15
    .line 2396
    return-void

    #@16
    .line 2398
    :cond_0
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    #@18
    if-eq v2, p1, :cond_1

    #@1a
    .line 2399
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
    .line 2400
    iput p1, p0, Landroid/telecom/Connection;->mState:I

    #@2b
    .line 2401
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    #@2e
    .line 2402
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
    .line 2403
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    #@43
    goto :goto_0

    #@44
    .line 2392
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
    .line 1648
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1666
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
    .line 1667
    const-string/jumbo v0, "UNKNOWN"

    #@18
    return-object v0

    #@19
    .line 1650
    :pswitch_0
    const-string/jumbo v0, "INITIALIZING"

    #@1c
    return-object v0

    #@1d
    .line 1652
    :pswitch_1
    const-string/jumbo v0, "NEW"

    #@20
    return-object v0

    #@21
    .line 1654
    :pswitch_2
    const-string/jumbo v0, "RINGING"

    #@24
    return-object v0

    #@25
    .line 1656
    :pswitch_3
    const-string/jumbo v0, "DIALING"

    #@28
    return-object v0

    #@29
    .line 1658
    :pswitch_4
    const-string/jumbo v0, "PULLING_CALL"

    #@2c
    return-object v0

    #@2d
    .line 1660
    :pswitch_5
    const-string/jumbo v0, "ACTIVE"

    #@30
    return-object v0

    #@31
    .line 1662
    :pswitch_6
    const-string/jumbo v0, "HOLDING"

    #@34
    return-object v0

    #@35
    .line 1664
    :pswitch_7
    const-string/jumbo v0, "DISCONNECTED"

    #@38
    return-object v0

    #@39
    .line 1648
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2369
    if-nez p0, :cond_0

    #@2
    .line 2370
    const-string/jumbo v3, ""

    #@5
    return-object v3

    #@6
    .line 2373
    :cond_0
    sget-boolean v3, Landroid/telecom/Connection;->PII_DEBUG:Z

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 2375
    return-object p0

    #@b
    .line 2380
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 2381
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
    .line 2382
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v1

    #@1b
    .line 2383
    .local v1, "c":C
    const/16 v3, 0x2d

    #@1d
    if-eq v1, v3, :cond_2

    #@1f
    const/16 v3, 0x40

    #@21
    if-ne v1, v3, :cond_3

    #@23
    .line 2384
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 2381
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0

    #@29
    .line 2383
    :cond_3
    const/16 v3, 0x2e

    #@2b
    if-eq v1, v3, :cond_2

    #@2d
    .line 2386
    const/16 v3, 0x78

    #@2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    goto :goto_1

    #@33
    .line 2389
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
    .line 533
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@5
    .line 532
    return-void
.end method

.method public final addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    #@0
    .prologue
    .line 1592
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 1593
    return-object p0
.end method

.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 513
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
    .line 2444
    return-void
.end method

.method public final destroy()V
    .locals 3

    #@0
    .prologue
    .line 1910
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
    .line 1911
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    #@15
    goto :goto_0

    #@16
    .line 1909
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final getAddress()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 1444
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public final getAddressPresentation()I
    .locals 1

    #@0
    .prologue
    .line 1452
    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    #@2
    return v0
.end method

.method public final getAudioModeIsVoip()Z
    .locals 1

    #@0
    .prologue
    .line 1536
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
    .line 1501
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1502
    return-object v1

    #@6
    .line 1504
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
    .line 1513
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@2
    return-object v0
.end method

.method public final getCallerDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1459
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getCallerDisplayNamePresentation()I
    .locals 1

    #@0
    .prologue
    .line 1467
    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    #@2
    return v0
.end method

.method public final getConference()Landroid/telecom/Conference;
    .locals 1

    #@0
    .prologue
    .line 1521
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
    .line 2001
    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 1549
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    #@2
    return-wide v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 1675
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@2
    return v0
.end method

.method public final getConnectionProperties()I
    .locals 1

    #@0
    .prologue
    .line 1682
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    #@2
    return v0
.end method

.method public final getConnectionService()Landroid/telecom/ConnectionService;
    .locals 1

    #@0
    .prologue
    .line 2033
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@2
    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    #@0
    .prologue
    .line 1615
    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@2
    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 3

    #@0
    .prologue
    .line 1574
    const/4 v0, 0x0

    #@1
    .line 1575
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 1576
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1577
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
    .line 1580
    return-object v0

    #@11
    .line 1575
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
    .line 1474
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    #@2
    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    #@0
    .prologue
    .line 1556
    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    return-object v0
.end method

.method public final getTelecomCallId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1437
    iget-object v0, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    #@0
    .prologue
    .line 1810
    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@2
    return-object v0
.end method

.method public final getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 1488
    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    #@2
    return v0
.end method

.method final handleExtrasChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2493
    const/4 v0, 0x0

    #@1
    .line 2494
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 2495
    :try_start_0
    iput-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@6
    .line 2496
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2497
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
    .line 2500
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onExtrasChanged(Landroid/os/Bundle;)V

    #@15
    .line 2492
    return-void

    #@16
    .line 2494
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
    .line 1529
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    #@2
    return v0
.end method

.method protected final notifyConferenceMergeFailed()V
    .locals 3

    #@0
    .prologue
    .line 2509
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
    .line 2510
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0}, Landroid/telecom/Connection$Listener;->onConferenceMergeFailed(Landroid/telecom/Connection;)V

    #@15
    goto :goto_0

    #@16
    .line 2508
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected notifyConferenceStarted()V
    .locals 3

    #@0
    .prologue
    .line 2532
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
    .line 2533
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0}, Landroid/telecom/Connection$Listener;->onConferenceStarted()V

    #@15
    goto :goto_0

    #@16
    .line 2531
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected notifyConferenceSupportedChanged(Z)V
    .locals 3
    .param p1, "isConferenceSupported"    # Z

    #@0
    .prologue
    .line 2545
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
    .line 2546
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceSupportedChanged(Landroid/telecom/Connection;Z)V

    #@15
    goto :goto_0

    #@16
    .line 2544
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onAbort()V
    .locals 0

    #@0
    .prologue
    .line 2272
    return-void
.end method

.method public onAnswer()V
    .locals 1

    #@0
    .prologue
    .line 2297
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    #@4
    .line 2296
    return-void
.end method

.method public onAnswer(I)V
    .locals 0
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 2290
    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2221
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 2228
    return-void
.end method

.method public onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2353
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    #@0
    .prologue
    .line 2253
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2262
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2365
    return-void
.end method

.method public onHold()V
    .locals 0

    #@0
    .prologue
    .line 2277
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 2243
    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 0
    .param p1, "proceed"    # Z

    #@0
    .prologue
    .line 2322
    return-void
.end method

.method public onPullExternalCall()V
    .locals 0

    #@0
    .prologue
    .line 2335
    return-void
.end method

.method public onReject()V
    .locals 0

    #@0
    .prologue
    .line 2304
    return-void
.end method

.method public onReject(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2310
    return-void
.end method

.method public onSeparate()V
    .locals 0

    #@0
    .prologue
    .line 2267
    return-void
.end method

.method public onSilence()V
    .locals 0

    #@0
    .prologue
    .line 2317
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 2236
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 0

    #@0
    .prologue
    .line 2248
    return-void
.end method

.method public onUnhold()V
    .locals 0

    #@0
    .prologue
    .line 2282
    return-void
.end method

.method public final putExtra(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 2166
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 2167
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8
    .line 2168
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    #@b
    .line 2165
    return-void
.end method

.method public final putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2179
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 2180
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 2181
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    #@b
    .line 2178
    return-void
.end method

.method public final putExtra(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 2153
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 2154
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@8
    .line 2155
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    #@b
    .line 2152
    return-void
.end method

.method public final putExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2124
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 2125
    if-nez p1, :cond_0

    #@5
    .line 2126
    return-void

    #@6
    .line 2131
    :cond_0
    iget-object v4, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    #@8
    monitor-enter v4

    #@9
    .line 2132
    :try_start_0
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@b
    if-nez v3, :cond_1

    #@d
    .line 2133
    new-instance v3, Landroid/os/Bundle;

    #@f
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@12
    iput-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@14
    .line 2135
    :cond_1
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@16
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@19
    .line 2136
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
    .line 2138
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
    .line 2141
    .local v0, "l":Landroid/telecom/Connection$Listener;
    new-instance v3, Landroid/os/Bundle;

    #@35
    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@38
    invoke-virtual {v0, p0, v3}, Landroid/telecom/Connection$Listener;->onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    #@3b
    goto :goto_0

    #@3c
    .line 2131
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
    .line 2123
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
    .line 523
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@6
    .line 522
    return-void
.end method

.method public final removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    #@0
    .prologue
    .line 1605
    if-eqz p1, :cond_0

    #@2
    .line 1606
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    #@4
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@7
    .line 1608
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
    .line 2190
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 2191
    :try_start_0
    iget-object v5, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 2192
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
    .line 2193
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    #@19
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 2190
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
    .line 2197
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@24
    move-result-object v4

    #@25
    .line 2198
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
    .line 2199
    .local v2, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v2, p0, v4}, Landroid/telecom/Connection$Listener;->onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V

    #@3a
    goto :goto_1

    #@3b
    .line 2189
    .end local v2    # "l":Landroid/telecom/Connection$Listener;
    :cond_1
    return-void
.end method

.method public final varargs removeExtras([Ljava/lang/String;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2209
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    #@7
    .line 2208
    return-void
.end method

.method public final resetConference()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2062
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2063
    const-string/jumbo v0, "Conference reset"

    #@8
    const/4 v1, 0x0

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@e
    .line 2064
    iput-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@10
    .line 2065
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    #@13
    .line 2061
    :cond_0
    return-void
.end method

.method public sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2588
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
    .line 2589
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V

    #@15
    goto :goto_0

    #@16
    .line 2587
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setActive()V
    .locals 1

    #@0
    .prologue
    .line 1742
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1743
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    #@7
    .line 1744
    const/4 v0, 0x4

    #@8
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@b
    .line 1741
    return-void
.end method

.method public final setAddress(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    #@0
    .prologue
    .line 1693
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1694
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
    .line 1695
    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    #@11
    .line 1696
    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    #@13
    .line 1697
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
    .line 1698
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    #@28
    goto :goto_0

    #@29
    .line 1692
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setAudioModeIsVoip(Z)V
    .locals 3
    .param p1, "isVoip"    # Z

    #@0
    .prologue
    .line 1921
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1922
    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    #@5
    .line 1923
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
    .line 1924
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    #@1a
    goto :goto_0

    #@1b
    .line 1920
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method final setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 1636
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1637
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
    .line 1638
    iput-object p1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@11
    .line 1639
    invoke-virtual {p0}, Landroid/telecom/Connection;->getAudioState()Landroid/telecom/AudioState;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    #@18
    .line 1640
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    #@1b
    .line 1635
    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    #@0
    .prologue
    .line 1710
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1711
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
    .line 1712
    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    #@11
    .line 1713
    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    #@13
    .line 1714
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
    .line 1715
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    #@28
    goto :goto_0

    #@29
    .line 1709
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    .line 2045
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 2047
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 2048
    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    #@9
    .line 2049
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
    .line 2050
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    #@18
    .line 2052
    :cond_0
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    .line 2054
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
    .line 1959
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1960
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    #@6
    .line 1961
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
    .line 1964
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@18
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 1965
    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@20
    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@23
    .line 1966
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@25
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 1969
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    #@2c
    .line 1958
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
    .line 1979
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    #@3
    .line 1980
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
    .line 1983
    .local v0, "c":Landroid/telecom/Conferenceable;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@15
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_0

    #@1b
    .line 1984
    instance-of v4, v0, Landroid/telecom/Connection;

    #@1d
    if-eqz v4, :cond_2

    #@1f
    move-object v3, v0

    #@20
    .line 1985
    check-cast v3, Landroid/telecom/Connection;

    #@22
    .line 1986
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@24
    invoke-virtual {v3, v4}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@27
    .line 1991
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    #@29
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 1987
    :cond_2
    instance-of v4, v0, Landroid/telecom/Conference;

    #@2f
    if-eqz v4, :cond_1

    #@31
    move-object v2, v0

    #@32
    .line 1988
    check-cast v2, Landroid/telecom/Conference;

    #@34
    .line 1989
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    #@36
    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    #@39
    goto :goto_1

    #@3a
    .line 1994
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    #@3d
    .line 1978
    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .locals 1
    .param p1, "connectTimeMillis"    # J

    #@0
    .prologue
    .line 1937
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    #@2
    .line 1936
    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    #@0
    .prologue
    .line 1882
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1883
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@5
    if-eq v2, p1, :cond_0

    #@7
    .line 1884
    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@9
    .line 1885
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
    .line 1886
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    #@1d
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    #@20
    goto :goto_0

    #@21
    .line 1881
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
    .line 1897
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1898
    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    #@5
    if-eq v2, p1, :cond_0

    #@7
    .line 1899
    iput p1, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    #@9
    .line 1900
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
    .line 1901
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    #@1d
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V

    #@20
    goto :goto_0

    #@21
    .line 1896
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
    .line 2008
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 2009
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2010
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
    .line 2007
    :goto_0
    return-void

    #@16
    .line 2013
    :cond_0
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@18
    goto :goto_0
.end method

.method public final setDialing()V
    .locals 1

    #@0
    .prologue
    .line 1775
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1776
    const/4 v0, 0x3

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1774
    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 5
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    .line 1820
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1821
    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@5
    .line 1822
    const/4 v2, 0x6

    #@6
    invoke-direct {p0, v2}, Landroid/telecom/Connection;->setState(I)V

    #@9
    .line 1823
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
    .line 1824
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
    .line 1825
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    #@2a
    goto :goto_0

    #@2b
    .line 1819
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2084
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 2087
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    #@6
    .line 2091
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    #@8
    if-eqz v3, :cond_3

    #@a
    .line 2092
    new-instance v2, Ljava/util/ArrayList;

    #@c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 2093
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
    .line 2094
    .local v0, "oldKey":Ljava/lang/String;
    if-eqz p1, :cond_1

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_0

    #@29
    .line 2095
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 2098
    .end local v0    # "oldKey":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_3

    #@33
    .line 2099
    invoke-virtual {p0, v2}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    #@36
    .line 2105
    .end local v1    # "oldKey$iterator":Ljava/util/Iterator;
    .end local v2    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    #@38
    if-nez v3, :cond_4

    #@3a
    .line 2106
    new-instance v3, Landroid/util/ArraySet;

    #@3c
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@3f
    iput-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    #@41
    .line 2108
    :cond_4
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    #@43
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    #@46
    .line 2109
    if-eqz p1, :cond_5

    #@48
    .line 2110
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    #@4a
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@4d
    move-result-object v4

    #@4e
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@51
    .line 2083
    :cond_5
    return-void
.end method

.method public final setInitialized()V
    .locals 1

    #@0
    .prologue
    .line 1767
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1768
    const/4 v0, 0x1

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1766
    return-void
.end method

.method public final setInitializing()V
    .locals 1

    #@0
    .prologue
    .line 1759
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1760
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1758
    return-void
.end method

.method public final setNextPostDialChar(C)V
    .locals 3
    .param p1, "nextChar"    # C

    #@0
    .prologue
    .line 1854
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1855
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
    .line 1856
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    #@18
    goto :goto_0

    #@19
    .line 1853
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setOnHold()V
    .locals 1

    #@0
    .prologue
    .line 1793
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1794
    const/4 v0, 0x5

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1792
    return-void
.end method

.method public final setPostDialWait(Ljava/lang/String;)V
    .locals 3
    .param p1, "remaining"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1840
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1841
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
    .line 1842
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    #@18
    goto :goto_0

    #@19
    .line 1839
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setPulling()V
    .locals 1

    #@0
    .prologue
    .line 1785
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1786
    const/4 v0, 0x7

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1784
    return-void
.end method

.method public final setRingbackRequested(Z)V
    .locals 3
    .param p1, "ringback"    # Z

    #@0
    .prologue
    .line 1867
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1868
    iget-boolean v2, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    #@5
    if-eq v2, p1, :cond_0

    #@7
    .line 1869
    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    #@9
    .line 1870
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
    .line 1871
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    #@1e
    goto :goto_0

    #@1f
    .line 1866
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setRinging()V
    .locals 1

    #@0
    .prologue
    .line 1751
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1752
    const/4 v0, 0x2

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    #@7
    .line 1750
    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    #@0
    .prologue
    .line 1946
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1947
    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    #@5
    .line 1948
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
    .line 1949
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    #@1a
    goto :goto_0

    #@1b
    .line 1945
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setTelecomCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1626
    iput-object p1, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    #@2
    .line 1625
    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    #@0
    .prologue
    .line 1802
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1803
    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    #@5
    .line 1804
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
    .line 1805
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    #@1a
    goto :goto_0

    #@1b
    .line 1801
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoState(I)V
    .locals 6
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 1729
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    #@3
    .line 1730
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
    .line 1731
    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    #@15
    .line 1732
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
    .line 1733
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    #@29
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    #@2c
    goto :goto_0

    #@2d
    .line 1728
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    #@0
    .prologue
    .line 2021
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 2022
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
    .line 2020
    :goto_0
    return-void

    #@13
    .line 2025
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
    .line 2522
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
    .line 2523
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    #@15
    goto :goto_0

    #@16
    .line 2521
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method
