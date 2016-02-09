.class public Lcom/android/server/hdmi/HdmiCecMessageBuilder;
.super Ljava/lang/Object;
.source "HdmiCecMessageBuilder.java"


# static fields
.field private static final OSD_NAME_MAX_LENGTH:I = 0xd


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "physicalAddress"    # I

    #@0
    .prologue
    .line 266
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    #@3
    move-result-object v0

    #@4
    .line 265
    const/16 v1, 0xf

    #@6
    const/16 v2, 0x82

    #@8
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method static buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "version"    # I

    #@0
    .prologue
    .line 196
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [B

    #@3
    .line 197
    and-int/lit16 v1, p2, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x0

    #@7
    aput-byte v1, v0, v2

    #@9
    .line 199
    .local v0, "params":[B
    const/16 v1, 0x9e

    #@b
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method static buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    #@0
    .prologue
    .line 553
    const/16 v0, 0x33

    #@2
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    #@0
    .prologue
    .line 541
    const/16 v0, 0x99

    #@2
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    #@0
    .prologue
    .line 565
    const/16 v0, 0xa1

    #@2
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "opcode"    # I

    #@0
    .prologue
    .line 579
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    #@2
    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    #@4
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    #@7
    return-object v0
.end method

.method private static buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "opcode"    # I
    .param p3, "params"    # [B

    #@0
    .prologue
    .line 592
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    #@5
    return-object v0
.end method

.method static buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "vendorId"    # I

    #@0
    .prologue
    .line 176
    const/4 v1, 0x3

    #@1
    new-array v0, v1, [B

    #@3
    .line 177
    shr-int/lit8 v1, p1, 0x10

    #@5
    and-int/lit16 v1, v1, 0xff

    #@7
    int-to-byte v1, v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-byte v1, v0, v2

    #@b
    .line 178
    shr-int/lit8 v1, p1, 0x8

    #@d
    and-int/lit16 v1, v1, 0xff

    #@f
    int-to-byte v1, v1

    #@10
    const/4 v2, 0x1

    #@11
    aput-byte v1, v0, v2

    #@13
    .line 179
    and-int/lit16 v1, p1, 0xff

    #@15
    int-to-byte v1, v1

    #@16
    const/4 v2, 0x2

    #@17
    aput-byte v1, v0, v2

    #@19
    .line 182
    .local v0, "params":[B
    const/16 v1, 0xf

    #@1b
    .line 183
    const/16 v2, 0x87

    #@1d
    .line 182
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method static buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "originalOpcode"    # I
    .param p3, "reason"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 56
    const/4 v1, 0x2

    #@2
    new-array v0, v1, [B

    #@4
    .line 57
    and-int/lit16 v1, p2, 0xff

    #@6
    int-to-byte v1, v1

    #@7
    aput-byte v1, v0, v3

    #@9
    .line 58
    and-int/lit16 v1, p3, 0xff

    #@b
    int-to-byte v1, v1

    #@c
    const/4 v2, 0x1

    #@d
    aput-byte v1, v0, v2

    #@f
    .line 60
    .local v0, "params":[B
    invoke-static {p0, p1, v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method static buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 382
    const/16 v0, 0x71

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 322
    const/16 v0, 0x8f

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 93
    const/16 v0, 0x8c

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 82
    const/16 v0, 0x46

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 71
    const/16 v0, 0x83

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 428
    const/16 v0, 0x7d

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "physicalAddress"    # I

    #@0
    .prologue
    .line 278
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    #@3
    move-result-object v0

    #@4
    .line 277
    const/4 v1, 0x0

    #@5
    .line 278
    const/16 v2, 0x9d

    #@7
    .line 277
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method static buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 493
    const/16 v0, 0xb

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildRecordOn(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    #@0
    .prologue
    .line 482
    const/16 v0, 0x9

    #@2
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 232
    const/16 v0, 0xc1

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 243
    const/16 v0, 0xc2

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "menuStatus"    # I

    #@0
    .prologue
    .line 349
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [B

    #@3
    .line 350
    and-int/lit16 v1, p2, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x0

    #@7
    aput-byte v1, v0, v2

    #@9
    .line 352
    .local v0, "param":[B
    const/16 v1, 0x8e

    #@b
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method static buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "address"    # I
    .param p2, "deviceType"    # I

    #@0
    .prologue
    .line 153
    const/4 v1, 0x3

    #@1
    new-array v0, v1, [B

    #@3
    .line 155
    shr-int/lit8 v1, p1, 0x8

    #@5
    and-int/lit16 v1, v1, 0xff

    #@7
    int-to-byte v1, v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-byte v1, v0, v2

    #@b
    .line 156
    and-int/lit16 v1, p1, 0xff

    #@d
    int-to-byte v1, v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-byte v1, v0, v2

    #@11
    .line 158
    and-int/lit16 v1, p2, 0xff

    #@13
    int-to-byte v1, v1

    #@14
    const/4 v2, 0x2

    #@15
    aput-byte v1, v0, v2

    #@17
    .line 161
    .local v0, "params":[B
    const/16 v1, 0xf

    #@19
    .line 162
    const/16 v2, 0x84

    #@1b
    .line 161
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method static buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "powerStatus"    # I

    #@0
    .prologue
    .line 334
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [B

    #@3
    .line 335
    and-int/lit16 v1, p2, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x0

    #@7
    aput-byte v1, v0, v2

    #@9
    .line 337
    .local v0, "param":[B
    const/16 v1, 0x90

    #@b
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method static buildRequestArcInitiation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 210
    const/16 v0, 0xc3

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildRequestArcTermination(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 221
    const/16 v0, 0xc4

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "oldPath"    # I
    .param p2, "newPath"    # I

    #@0
    .prologue
    .line 306
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [B

    #@3
    .line 307
    shr-int/lit8 v1, p1, 0x8

    #@5
    and-int/lit16 v1, v1, 0xff

    #@7
    int-to-byte v1, v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-byte v1, v0, v2

    #@b
    and-int/lit16 v1, p1, 0xff

    #@d
    int-to-byte v1, v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-byte v1, v0, v2

    #@11
    .line 308
    shr-int/lit8 v1, p2, 0x8

    #@13
    and-int/lit16 v1, v1, 0xff

    #@15
    int-to-byte v1, v1

    #@16
    const/4 v2, 0x2

    #@17
    aput-byte v1, v0, v2

    #@19
    and-int/lit16 v1, p2, 0xff

    #@1b
    int-to-byte v1, v1

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-byte v1, v0, v2

    #@1f
    .line 310
    .local v0, "param":[B
    const/16 v1, 0xf

    #@21
    const/16 v2, 0x80

    #@23
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@26
    move-result-object v1

    #@27
    return-object v1
.end method

.method static buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    #@0
    .prologue
    .line 517
    const/16 v0, 0x34

    #@2
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    #@0
    .prologue
    .line 505
    const/16 v0, 0x97

    #@2
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    #@0
    .prologue
    .line 529
    const/16 v0, 0xa2

    #@2
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 7
    .param p0, "src"    # I
    .param p1, "language"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    if-eq v2, v6, :cond_0

    #@a
    .line 108
    const/4 v2, 0x0

    #@b
    return-object v2

    #@c
    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 112
    .local v0, "normalized":Ljava/lang/String;
    new-array v1, v6, [B

    #@12
    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v2

    #@16
    and-int/lit16 v2, v2, 0xff

    #@18
    int-to-byte v2, v2

    #@19
    aput-byte v2, v1, v3

    #@1b
    .line 114
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v2

    #@1f
    and-int/lit16 v2, v2, 0xff

    #@21
    int-to-byte v2, v2

    #@22
    aput-byte v2, v1, v4

    #@24
    .line 115
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v2

    #@28
    and-int/lit16 v2, v2, 0xff

    #@2a
    int-to-byte v2, v2

    #@2b
    aput-byte v2, v1, v5

    #@2d
    .line 118
    .local v1, "params":[B
    const/16 v2, 0xf

    #@2f
    .line 119
    const/16 v3, 0x32

    #@31
    .line 118
    invoke-static {p0, v2, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@34
    move-result-object v2

    #@35
    return-object v2
.end method

.method static buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 5
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    const/16 v4, 0xd

    #@6
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v1

    #@a
    .line 134
    .local v1, "length":I
    const/4 v3, 0x0

    #@b
    :try_start_0
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    const-string/jumbo v4, "US-ASCII"

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v2

    #@16
    .line 138
    .local v2, "params":[B
    const/16 v3, 0x47

    #@18
    invoke-static {p0, p1, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@1b
    move-result-object v3

    #@1c
    return-object v3

    #@1d
    .line 135
    .end local v2    # "params":[B
    :catch_0
    move-exception v0

    #@1e
    .line 136
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x0

    #@1f
    return-object v3
.end method

.method static buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "streamPath"    # I

    #@0
    .prologue
    .line 292
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    #@3
    move-result-object v0

    #@4
    .line 291
    const/16 v1, 0xf

    #@6
    .line 292
    const/16 v2, 0x86

    #@8
    .line 291
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 439
    const/16 v0, 0x36

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2
    .param p0, "src"    # I
    .param p1, "avr"    # I
    .param p2, "avrPhysicalAddress"    # I
    .param p3, "enableSystemAudio"    # Z

    #@0
    .prologue
    const/16 v1, 0x70

    #@2
    .line 366
    if-eqz p3, :cond_0

    #@4
    .line 368
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    #@7
    move-result-object v0

    #@8
    .line 367
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 370
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method static buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 254
    const/16 v0, 0xd

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "uiCommand"    # I

    #@0
    .prologue
    .line 394
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [B

    #@3
    and-int/lit16 v1, p2, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x0

    #@7
    aput-byte v1, v0, v2

    #@9
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method static buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "commandParam"    # [B

    #@0
    .prologue
    .line 406
    const/16 v0, 0x44

    #@2
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    #@0
    .prologue
    .line 417
    const/16 v0, 0x45

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildVendorCommand(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    #@0
    .prologue
    .line 451
    const/16 v0, 0x89

    #@2
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static buildVendorCommandWithId(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "vendorId"    # I
    .param p3, "operands"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 465
    array-length v1, p3

    #@2
    add-int/lit8 v1, v1, 0x3

    #@4
    new-array v0, v1, [B

    #@6
    .line 466
    .local v0, "params":[B
    shr-int/lit8 v1, p2, 0x10

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    int-to-byte v1, v1

    #@b
    aput-byte v1, v0, v3

    #@d
    .line 467
    shr-int/lit8 v1, p2, 0x8

    #@f
    and-int/lit16 v1, v1, 0xff

    #@11
    int-to-byte v1, v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-byte v1, v0, v2

    #@15
    .line 468
    and-int/lit16 v1, p2, 0xff

    #@17
    int-to-byte v1, v1

    #@18
    const/4 v2, 0x2

    #@19
    aput-byte v1, v0, v2

    #@1b
    .line 469
    array-length v1, p3

    #@1c
    const/4 v2, 0x3

    #@1d
    invoke-static {p3, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@20
    .line 470
    const/16 v1, 0xa0

    #@22
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@25
    move-result-object v1

    #@26
    return-object v1
.end method

.method static of(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "body"    # [B

    #@0
    .prologue
    .line 39
    const/4 v2, 0x0

    #@1
    aget-byte v0, p2, v2

    #@3
    .line 40
    .local v0, "opcode":B
    array-length v2, p2

    #@4
    const/4 v3, 0x1

    #@5
    invoke-static {p2, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@8
    move-result-object v1

    #@9
    .line 41
    .local v1, "params":[B
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessage;

    #@b
    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    #@e
    return-object v2
.end method

.method private static physicalAddressToParam(I)[B
    .locals 3
    .param p0, "physicalAddress"    # I

    #@0
    .prologue
    .line 596
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [B

    #@3
    .line 597
    shr-int/lit8 v1, p0, 0x8

    #@5
    and-int/lit16 v1, v1, 0xff

    #@7
    int-to-byte v1, v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-byte v1, v0, v2

    #@b
    .line 598
    and-int/lit16 v1, p0, 0xff

    #@d
    int-to-byte v1, v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-byte v1, v0, v2

    #@11
    .line 596
    return-object v0
.end method
