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
.field public static final CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

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

.field public static final PROPERTY_GENERIC_CONFERENCE:I = 0x2

.field public static final PROPERTY_HIGH_DEF_AUDIO:I = 0x10

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

.field private final mVideoState:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "handle"    # Landroid/net/Uri;
    .param p2, "handlePresentation"    # I
    .param p3, "callerDisplayName"    # Ljava/lang/String;
    .param p4, "callerDisplayNamePresentation"    # I
    .param p5, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p6, "capabilities"    # I
    .param p7, "properties"    # I
    .param p8, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p9, "connectTimeMillis"    # J
    .param p11, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p12, "videoState"    # I
    .param p13, "statusHints"    # Landroid/telecom/StatusHints;
    .param p14, "extras"    # Landroid/os/Bundle;
    .param p15, "intentExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 556
    iput-object p1, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    #@5
    .line 557
    iput p2, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    #@7
    .line 558
    iput-object p3, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    #@9
    .line 559
    iput p4, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    #@b
    .line 560
    iput-object p5, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@d
    .line 561
    iput p6, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    #@f
    .line 562
    iput p7, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    #@11
    .line 563
    iput-object p8, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@13
    .line 564
    iput-wide p9, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    #@15
    .line 565
    iput-object p11, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    #@17
    .line 566
    iput p12, p0, Landroid/telecom/Call$Details;->mVideoState:I

    #@19
    .line 567
    move-object/from16 v0, p13

    #@1b
    iput-object v0, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    #@1d
    .line 568
    move-object/from16 v0, p14

    #@1f
    iput-object v0, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    #@21
    .line 569
    move-object/from16 v0, p15

    #@23
    iput-object v0, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    #@25
    .line 555
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
    .line 266
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
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 287
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[Capabilities:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 288
    const/4 v1, 0x1

    #@c
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 289
    const-string/jumbo v1, " CAPABILITY_HOLD"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 291
    :cond_0
    const/4 v1, 0x2

    #@19
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 292
    const-string/jumbo v1, " CAPABILITY_SUPPORT_HOLD"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 294
    :cond_1
    const/4 v1, 0x4

    #@26
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 295
    const-string/jumbo v1, " CAPABILITY_MERGE_CONFERENCE"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 297
    :cond_2
    const/16 v1, 0x8

    #@34
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 298
    const-string/jumbo v1, " CAPABILITY_SWAP_CONFERENCE"

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 300
    :cond_3
    const/16 v1, 0x20

    #@42
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 301
    const-string/jumbo v1, " CAPABILITY_RESPOND_VIA_TEXT"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 303
    :cond_4
    const/16 v1, 0x40

    #@50
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_5

    #@56
    .line 304
    const-string/jumbo v1, " CAPABILITY_MUTE"

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 306
    :cond_5
    const/16 v1, 0x80

    #@5e
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_6

    #@64
    .line 307
    const-string/jumbo v1, " CAPABILITY_MANAGE_CONFERENCE"

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 309
    :cond_6
    const/16 v1, 0x100

    #@6c
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_7

    #@72
    .line 310
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 312
    :cond_7
    const/16 v1, 0x200

    #@7a
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_8

    #@80
    .line 313
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    #@83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    .line 315
    :cond_8
    const/16 v1, 0x300

    #@88
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@8b
    move-result v1

    #@8c
    if-eqz v1, :cond_9

    #@8e
    .line 316
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 318
    :cond_9
    const/16 v1, 0x400

    #@96
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@99
    move-result v1

    #@9a
    if-eqz v1, :cond_a

    #@9c
    .line 319
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    .line 321
    :cond_a
    const/16 v1, 0x800

    #@a4
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@a7
    move-result v1

    #@a8
    if-eqz v1, :cond_b

    #@aa
    .line 322
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    .line 324
    :cond_b
    const/16 v1, 0xc00

    #@b2
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@b5
    move-result v1

    #@b6
    if-eqz v1, :cond_c

    #@b8
    .line 325
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 327
    :cond_c
    const/high16 v1, 0x40000

    #@c0
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@c3
    move-result v1

    #@c4
    if-eqz v1, :cond_d

    #@c6
    .line 328
    const-string/jumbo v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    #@c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    .line 330
    :cond_d
    const/high16 v1, 0x80000

    #@ce
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@d1
    move-result v1

    #@d2
    if-eqz v1, :cond_e

    #@d4
    .line 331
    const-string/jumbo v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    #@d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    .line 333
    :cond_e
    const/high16 v1, 0x100000

    #@dc
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    #@df
    move-result v1

    #@e0
    if-eqz v1, :cond_f

    #@e2
    .line 334
    const-string/jumbo v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    #@e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    .line 336
    :cond_f
    const-string/jumbo v1, "]"

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v1

    #@f2
    return-object v1
.end method

.method public static hasProperty(II)Z
    .locals 2
    .param p0, "properties"    # I
    .param p1, "property"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 348
    and-int v1, p0, p1

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static propertiesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "properties"    # I

    #@0
    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 369
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[Properties:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 370
    const/4 v1, 0x1

    #@c
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 371
    const-string/jumbo v1, " PROPERTY_CONFERENCE"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 373
    :cond_0
    const/4 v1, 0x2

    #@19
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 374
    const-string/jumbo v1, " PROPERTY_GENERIC_CONFERENCE"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 376
    :cond_1
    const/16 v1, 0x8

    #@27
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 377
    const-string/jumbo v1, " PROPERTY_WIFI"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 379
    :cond_2
    const/16 v1, 0x10

    #@35
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_3

    #@3b
    .line 380
    const-string/jumbo v1, " PROPERTY_HIGH_DEF_AUDIO"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 382
    :cond_3
    const/4 v1, 0x4

    #@42
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 383
    const-string/jumbo v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 385
    :cond_4
    const-string/jumbo v1, "]"

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    return-object v1
.end method


# virtual methods
.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 276
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
    .line 499
    instance-of v2, p1, Landroid/telecom/Call$Details;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 500
    check-cast v0, Landroid/telecom/Call$Details;

    #@8
    .line 502
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
    .line 503
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
    .line 502
    if-eqz v2, :cond_0

    #@24
    .line 504
    iget-object v2, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    #@26
    iget-object v3, v0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    #@28
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    .line 502
    if-eqz v2, :cond_0

    #@2e
    .line 505
    iget v2, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    #@30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v2

    #@34
    .line 506
    iget v3, v0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    #@36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v3

    #@3a
    .line 505
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    .line 502
    if-eqz v2, :cond_0

    #@40
    .line 507
    iget-object v2, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@42
    iget-object v3, v0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@44
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    .line 502
    if-eqz v2, :cond_0

    #@4a
    .line 508
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
    .line 502
    if-eqz v2, :cond_0

    #@5c
    .line 509
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
    .line 502
    if-eqz v2, :cond_0

    #@6e
    .line 510
    iget-object v2, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@70
    iget-object v3, v0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@72
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@75
    move-result v2

    #@76
    .line 502
    if-eqz v2, :cond_0

    #@78
    .line 511
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
    .line 502
    if-eqz v2, :cond_0

    #@8a
    .line 512
    iget-object v2, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    #@8c
    iget-object v3, v0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    #@8e
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@91
    move-result v2

    #@92
    .line 502
    if-eqz v2, :cond_0

    #@94
    .line 513
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
    .line 502
    if-eqz v2, :cond_0

    #@a6
    .line 514
    iget-object v2, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    #@a8
    iget-object v3, v0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    #@aa
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@ad
    move-result v2

    #@ae
    .line 502
    if-eqz v2, :cond_0

    #@b0
    .line 515
    iget-object v2, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    #@b2
    iget-object v3, v0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    #@b4
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b7
    move-result v2

    #@b8
    .line 502
    if-eqz v2, :cond_0

    #@ba
    .line 516
    iget-object v1, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    #@bc
    iget-object v2, v0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    #@be
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@c1
    move-result v1

    #@c2
    .line 501
    :cond_0
    return v1

    #@c3
    .line 518
    .end local v0    # "d":Landroid/telecom/Call$Details;
    :cond_1
    return v1
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@2
    return-object v0
.end method

.method public getCallCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 433
    iget v0, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    #@2
    return v0
.end method

.method public getCallProperties()I
    .locals 1

    #@0
    .prologue
    .line 441
    iget v0, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    #@2
    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    #@0
    .prologue
    .line 417
    iget v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    #@2
    return v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 458
    iget-wide v0, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    #@2
    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    #@0
    .prologue
    .line 449
    iget-object v0, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    #@0
    .prologue
    .line 465
    iget-object v0, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    #@2
    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    #@0
    .prologue
    .line 402
    iget v0, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    #@2
    return v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 494
    iget-object v0, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 472
    iget v0, p0, Landroid/telecom/Call$Details;->mVideoState:I

    #@2
    return v0
.end method

.method public hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    #@0
    .prologue
    .line 358
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
    .line 524
    iget-object v0, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    #@2
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 525
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
    .line 524
    add-int/2addr v0, v1

    #@11
    .line 526
    iget-object v1, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    #@13
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@16
    move-result v1

    #@17
    .line 524
    add-int/2addr v0, v1

    #@18
    .line 527
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
    .line 524
    add-int/2addr v0, v1

    #@23
    .line 528
    iget-object v1, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@25
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@28
    move-result v1

    #@29
    .line 524
    add-int/2addr v0, v1

    #@2a
    .line 529
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
    .line 524
    add-int/2addr v0, v1

    #@35
    .line 530
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
    .line 524
    add-int/2addr v0, v1

    #@40
    .line 531
    iget-object v1, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@42
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@45
    move-result v1

    #@46
    .line 524
    add-int/2addr v0, v1

    #@47
    .line 532
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
    .line 524
    add-int/2addr v0, v1

    #@52
    .line 533
    iget-object v1, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    #@54
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@57
    move-result v1

    #@58
    .line 524
    add-int/2addr v0, v1

    #@59
    .line 534
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
    .line 524
    add-int/2addr v0, v1

    #@64
    .line 535
    iget-object v1, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    #@66
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@69
    move-result v1

    #@6a
    .line 524
    add-int/2addr v0, v1

    #@6b
    .line 536
    iget-object v1, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    #@6d
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@70
    move-result v1

    #@71
    .line 524
    add-int/2addr v0, v1

    #@72
    .line 537
    iget-object v1, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    #@74
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@77
    move-result v1

    #@78
    .line 524
    add-int/2addr v0, v1

    #@79
    .line 523
    return v0
.end method
