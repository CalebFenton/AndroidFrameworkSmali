.class public Landroid/telecom/Call$Details;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Details"
.end annotation


# static fields
.field public static final CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x400000

.field public static final CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final CAPABILITY_CAN_PULL_CALL:I = 0x800000

.field public static final CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION:I = 0x200000

.field public static final CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

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

.field public static final CAPABILITY_UNUSED_1:I = 0x10

.field public static final PROPERTY_CONFERENCE:I = 0x1

.field public static final PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x4

.field public static final PROPERTY_ENTERPRISE_CALL:I = 0x20

.field public static final PROPERTY_GENERIC_CONFERENCE:I = 0x2

.field public static final PROPERTY_HIGH_DEF_AUDIO:I = 0x10

.field public static final PROPERTY_IS_EXTERNAL_CALL:I = 0x40

.field public static final PROPERTY_WIFI:I = 0x8


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mCallCapabilities:I

.field private final mCallProperties:I

.field private final mCallerDisplayName:Ljava/lang/String;

.field private final mCallerDisplayNamePresentation:I

.field private final mConnectTimeMillis:J

.field private final mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mExtras:Landroid/os/Bundle;

.field private final mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final mHandle:Landroid/net/Uri;

.field private final mHandlePresentation:I

.field private final mIntentExtras:Landroid/os/Bundle;

.field private final mStatusHints:Landroid/telecom/StatusHints;

.field private final mTelecomCallId:Ljava/lang/String;

.field private final mVideoState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "telecomCallId"    # Ljava/lang/String;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "handlePresentation"    # I
    .param p4, "callerDisplayName"    # Ljava/lang/String;
    .param p5, "callerDisplayNamePresentation"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "capabilities"    # I
    .param p8, "properties"    # I
    .param p9, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p10, "connectTimeMillis"    # J
    .param p12, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p13, "videoState"    # I
    .param p14, "statusHints"    # Landroid/telecom/StatusHints;
    .param p15, "extras"    # Landroid/os/Bundle;
    .param p16, "intentExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 645
    iput-object p1, p0, Landroid/telecom/Call$Details;->mTelecomCallId:Ljava/lang/String;

    #@5
    .line 646
    iput-object p2, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    #@7
    .line 647
    iput p3, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    #@9
    .line 648
    iput-object p4, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    #@b
    .line 649
    iput p5, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    #@d
    .line 650
    iput-object p6, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@f
    .line 651
    iput p7, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    #@11
    .line 652
    iput p8, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    #@13
    .line 653
    iput-object p9, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@15
    .line 654
    iput-wide p10, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    #@17
    .line 655
    iput-object p12, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    #@19
    .line 656
    iput p13, p0, Landroid/telecom/Call$Details;->mVideoState:I

    #@1b
    .line 657
    move-object/from16 v0, p14

    #@1d
    iput-object v0, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    #@1f
    .line 658
    move-object/from16 v0, p15

    #@21
    iput-object v0, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    #@23
    .line 659
    move-object/from16 v0, p16

    #@25
    iput-object v0, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    #@27
    .line 644
    return-void
.end method

.method public static can(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 340
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
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 361
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[Capabilities:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 362
    const/4 v1, 0x1

    #@c
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 363
    const-string/jumbo v1, " CAPABILITY_HOLD"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 365
    :cond_0
    const/4 v1, 0x2

    #@19
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 366
    const-string/jumbo v1, " CAPABILITY_SUPPORT_HOLD"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 368
    :cond_1
    const/4 v1, 0x4

    #@26
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 369
    const-string/jumbo v1, " CAPABILITY_MERGE_CONFERENCE"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 371
    :cond_2
    const/16 v1, 0x8

    #@34
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 372
    const-string/jumbo v1, " CAPABILITY_SWAP_CONFERENCE"

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 374
    :cond_3
    const/16 v1, 0x20

    #@42
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 375
    const-string/jumbo v1, " CAPABILITY_RESPOND_VIA_TEXT"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 377
    :cond_4
    const/16 v1, 0x40

    #@50
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_5

    #@56
    .line 378
    const-string/jumbo v1, " CAPABILITY_MUTE"

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 380
    :cond_5
    const/16 v1, 0x80

    #@5e
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_6

    #@64
    .line 381
    const-string/jumbo v1, " CAPABILITY_MANAGE_CONFERENCE"

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 383
    :cond_6
    const/16 v1, 0x100

    #@6c
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_7

    #@72
    .line 384
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 386
    :cond_7
    const/16 v1, 0x200

    #@7a
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_8

    #@80
    .line 387
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    #@83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    .line 389
    :cond_8
    const/16 v1, 0x300

    #@88
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@8b
    move-result v1

    #@8c
    if-eqz v1, :cond_9

    #@8e
    .line 390
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 392
    :cond_9
    const/16 v1, 0x400

    #@96
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@99
    move-result v1

    #@9a
    if-eqz v1, :cond_a

    #@9c
    .line 393
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    .line 395
    :cond_a
    const/16 v1, 0x800

    #@a4
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@a7
    move-result v1

    #@a8
    if-eqz v1, :cond_b

    #@aa
    .line 396
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    .line 398
    :cond_b
    const/high16 v1, 0x400000

    #@b2
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@b5
    move-result v1

    #@b6
    if-eqz v1, :cond_c

    #@b8
    .line 399
    const-string/jumbo v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 401
    :cond_c
    const/16 v1, 0xc00

    #@c0
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@c3
    move-result v1

    #@c4
    if-eqz v1, :cond_d

    #@c6
    .line 402
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    #@c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    .line 404
    :cond_d
    const/high16 v1, 0x40000

    #@ce
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@d1
    move-result v1

    #@d2
    if-eqz v1, :cond_e

    #@d4
    .line 405
    const-string/jumbo v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    #@d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    .line 407
    :cond_e
    const/high16 v1, 0x80000

    #@dc
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@df
    move-result v1

    #@e0
    if-eqz v1, :cond_f

    #@e2
    .line 408
    const-string/jumbo v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    #@e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    .line 410
    :cond_f
    const/high16 v1, 0x100000

    #@ea
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@ed
    move-result v1

    #@ee
    if-eqz v1, :cond_10

    #@f0
    .line 411
    const-string/jumbo v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    #@f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    .line 413
    :cond_10
    const/high16 v1, 0x800000

    #@f8
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@fb
    move-result v1

    #@fc
    if-eqz v1, :cond_11

    #@fe
    .line 414
    const-string/jumbo v1, " CAPABILITY_CAN_PULL_CALL"

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    .line 416
    :cond_11
    const-string/jumbo v1, "]"

    #@107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v1

    #@10e
    return-object v1
.end method

.method public static createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;
    .locals 17
    .param p0, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    #@0
    .prologue
    .line 664
    new-instance v0, Landroid/telecom/Call$Details;

    #@2
    .line 665
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 666
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getHandle()Landroid/net/Uri;

    #@9
    move-result-object v2

    #@a
    .line 667
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getHandlePresentation()I

    #@d
    move-result v3

    #@e
    .line 668
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCallerDisplayName()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    .line 669
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCallerDisplayNamePresentation()I

    #@15
    move-result v5

    #@16
    .line 670
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    #@19
    move-result-object v6

    #@1a
    .line 671
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCapabilities()I

    #@1d
    move-result v7

    #@1e
    .line 672
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getProperties()I

    #@21
    move-result v8

    #@22
    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    #@25
    move-result-object v9

    #@26
    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getConnectTimeMillis()J

    #@29
    move-result-wide v10

    #@2a
    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    #@2d
    move-result-object v12

    #@2e
    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getVideoState()I

    #@31
    move-result v13

    #@32
    .line 677
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getStatusHints()Landroid/telecom/StatusHints;

    #@35
    move-result-object v14

    #@36
    .line 678
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getExtras()Landroid/os/Bundle;

    #@39
    move-result-object v15

    #@3a
    .line 679
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getIntentExtras()Landroid/os/Bundle;

    #@3d
    move-result-object v16

    #@3e
    .line 664
    invoke-direct/range {v0 .. v16}, Landroid/telecom/Call$Details;-><init>(Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@41
    return-object v0
.end method

.method public static hasProperty(II)Z
    .locals 1
    .param p0, "properties"    # I
    .param p1, "property"    # I

    #@0
    .prologue
    .line 428
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

.method public static propertiesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "properties"    # I

    #@0
    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 449
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[Properties:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 450
    const/4 v1, 0x1

    #@c
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 451
    const-string/jumbo v1, " PROPERTY_CONFERENCE"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 453
    :cond_0
    const/4 v1, 0x2

    #@19
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 454
    const-string/jumbo v1, " PROPERTY_GENERIC_CONFERENCE"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 456
    :cond_1
    const/16 v1, 0x8

    #@27
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 457
    const-string/jumbo v1, " PROPERTY_WIFI"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 459
    :cond_2
    const/16 v1, 0x10

    #@35
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_3

    #@3b
    .line 460
    const-string/jumbo v1, " PROPERTY_HIGH_DEF_AUDIO"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 462
    :cond_3
    const/4 v1, 0x4

    #@42
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 463
    const-string/jumbo v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 465
    :cond_4
    const/16 v1, 0x40

    #@50
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_5

    #@56
    .line 466
    const-string/jumbo v1, " PROPERTY_IS_EXTERNAL_CALL"

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 468
    :cond_5
    const-string/jumbo v1, "]"

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    return-object v1
.end method


# virtual methods
.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 350
    iget v0, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    #@2
    invoke-static {v0, p1}, Landroid/telecom/Call$Details;->can(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 587
    instance-of v2, p1, Landroid/telecom/Call$Details;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 588
    check-cast v0, Landroid/telecom/Call$Details;

    #@8
    .line 590
    .local v0, "d":Landroid/telecom/Call$Details;
    iget-object v2, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    #@a
    iget-object v3, v0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    #@c
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 591
    iget v2, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    #@14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    iget v3, v0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    #@1a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    .line 590
    if-eqz v2, :cond_0

    #@24
    .line 592
    iget-object v2, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    #@26
    iget-object v3, v0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    #@28
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    .line 590
    if-eqz v2, :cond_0

    #@2e
    .line 593
    iget v2, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    #@30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v2

    #@34
    .line 594
    iget v3, v0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    #@36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v3

    #@3a
    .line 593
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    .line 590
    if-eqz v2, :cond_0

    #@40
    .line 595
    iget-object v2, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@42
    iget-object v3, v0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@44
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    .line 590
    if-eqz v2, :cond_0

    #@4a
    .line 596
    iget v2, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    #@4c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v2

    #@50
    iget v3, v0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    #@52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v3

    #@56
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@59
    move-result v2

    #@5a
    .line 590
    if-eqz v2, :cond_0

    #@5c
    .line 597
    iget v2, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    #@5e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v2

    #@62
    iget v3, v0, Landroid/telecom/Call$Details;->mCallProperties:I

    #@64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v3

    #@68
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6b
    move-result v2

    #@6c
    .line 590
    if-eqz v2, :cond_0

    #@6e
    .line 598
    iget-object v2, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@70
    iget-object v3, v0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@72
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@75
    move-result v2

    #@76
    .line 590
    if-eqz v2, :cond_0

    #@78
    .line 599
    iget-wide v2, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    #@7a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7d
    move-result-object v2

    #@7e
    iget-wide v4, v0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    #@80
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@83
    move-result-object v3

    #@84
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@87
    move-result v2

    #@88
    .line 590
    if-eqz v2, :cond_0

    #@8a
    .line 600
    iget-object v2, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    #@8c
    iget-object v3, v0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    #@8e
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@91
    move-result v2

    #@92
    .line 590
    if-eqz v2, :cond_0

    #@94
    .line 601
    iget v2, p0, Landroid/telecom/Call$Details;->mVideoState:I

    #@96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@99
    move-result-object v2

    #@9a
    iget v3, v0, Landroid/telecom/Call$Details;->mVideoState:I

    #@9c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9f
    move-result-object v3

    #@a0
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a3
    move-result v2

    #@a4
    .line 590
    if-eqz v2, :cond_0

    #@a6
    .line 602
    iget-object v2, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    #@a8
    iget-object v3, v0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    #@aa
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@ad
    move-result v2

    #@ae
    .line 590
    if-eqz v2, :cond_0

    #@b0
    .line 603
    iget-object v2, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    #@b2
    iget-object v3, v0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    #@b4
    invoke-static {v2, v3}, Landroid/telecom/Call;->-wrap0(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@b7
    move-result v2

    #@b8
    .line 590
    if-eqz v2, :cond_0

    #@ba
    .line 604
    iget-object v1, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    #@bc
    iget-object v2, v0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    #@be
    invoke-static {v1, v2}, Landroid/telecom/Call;->-wrap0(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@c1
    move-result v1

    #@c2
    .line 589
    :cond_0
    return v1

    #@c3
    .line 606
    .end local v0    # "d":Landroid/telecom/Call$Details;
    :cond_1
    return v1
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    #@0
    .prologue
    .line 513
    iget-object v0, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@2
    return-object v0
.end method

.method public getCallCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 521
    iget v0, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    #@2
    return v0
.end method

.method public getCallProperties()I
    .locals 1

    #@0
    .prologue
    .line 529
    iget v0, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    #@2
    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 497
    iget-object v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    #@0
    .prologue
    .line 505
    iget v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    #@2
    return v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 546
    iget-wide v0, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    #@2
    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    #@0
    .prologue
    .line 537
    iget-object v0, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 575
    iget-object v0, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    #@0
    .prologue
    .line 553
    iget-object v0, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    #@2
    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    #@0
    .prologue
    .line 490
    iget v0, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    #@2
    return v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    #@0
    .prologue
    .line 568
    iget-object v0, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    return-object v0
.end method

.method public getTelecomCallId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 474
    iget-object v0, p0, Landroid/telecom/Call$Details;->mTelecomCallId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 560
    iget v0, p0, Landroid/telecom/Call$Details;->mVideoState:I

    #@2
    return v0
.end method

.method public hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    #@0
    .prologue
    .line 438
    iget v0, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    #@2
    invoke-static {v0, p1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 612
    iget-object v0, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    #@2
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 613
    iget v1, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    .line 612
    add-int/2addr v0, v1

    #@11
    .line 614
    iget-object v1, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    #@13
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@16
    move-result v1

    #@17
    .line 612
    add-int/2addr v0, v1

    #@18
    .line 615
    iget v1, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    #@1a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@21
    move-result v1

    #@22
    .line 612
    add-int/2addr v0, v1

    #@23
    .line 616
    iget-object v1, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@25
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@28
    move-result v1

    #@29
    .line 612
    add-int/2addr v0, v1

    #@2a
    .line 617
    iget v1, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    #@2c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@33
    move-result v1

    #@34
    .line 612
    add-int/2addr v0, v1

    #@35
    .line 618
    iget v1, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    #@37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@3e
    move-result v1

    #@3f
    .line 612
    add-int/2addr v0, v1

    #@40
    .line 619
    iget-object v1, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@42
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@45
    move-result v1

    #@46
    .line 612
    add-int/2addr v0, v1

    #@47
    .line 620
    iget-wide v2, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    #@49
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4c
    move-result-object v1

    #@4d
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@50
    move-result v1

    #@51
    .line 612
    add-int/2addr v0, v1

    #@52
    .line 621
    iget-object v1, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    #@54
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@57
    move-result v1

    #@58
    .line 612
    add-int/2addr v0, v1

    #@59
    .line 622
    iget v1, p0, Landroid/telecom/Call$Details;->mVideoState:I

    #@5b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v1

    #@5f
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@62
    move-result v1

    #@63
    .line 612
    add-int/2addr v0, v1

    #@64
    .line 623
    iget-object v1, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    #@66
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@69
    move-result v1

    #@6a
    .line 612
    add-int/2addr v0, v1

    #@6b
    .line 624
    iget-object v1, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    #@6d
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@70
    move-result v1

    #@71
    .line 612
    add-int/2addr v0, v1

    #@72
    .line 625
    iget-object v1, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    #@74
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@77
    move-result v1

    #@78
    .line 612
    add-int/2addr v0, v1

    #@79
    .line 611
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 685
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[pa: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 686
    iget-object v1, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    .line 687
    const-string/jumbo v1, ", hdl: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 688
    iget-object v1, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    #@18
    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 689
    const-string/jumbo v1, ", caps: "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 690
    iget v1, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    #@27
    invoke-static {v1}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 691
    const-string/jumbo v1, ", props: "

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 692
    iget v1, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    #@36
    invoke-static {v1}, Landroid/telecom/Call$Details;->propertiesToString(I)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 693
    const-string/jumbo v1, "]"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 694
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    return-object v1
.end method
