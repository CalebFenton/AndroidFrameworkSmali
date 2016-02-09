.class public final Landroid/hardware/hdmi/HdmiRecordSources;
.super Ljava/lang/Object;
.source "HdmiRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;,
        Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;,
        Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;,
        Landroid/hardware/hdmi/HdmiRecordSources$AribData;,
        Landroid/hardware/hdmi/HdmiRecordSources$AtscData;,
        Landroid/hardware/hdmi/HdmiRecordSources$DvbData;,
        Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;,
        Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;,
        Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;,
        Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;,
        Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;,
        Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;
    }
.end annotation


# static fields
.field public static final ANALOGUE_BROADCAST_TYPE_CABLE:I = 0x0

.field public static final ANALOGUE_BROADCAST_TYPE_SATELLITE:I = 0x1

.field public static final ANALOGUE_BROADCAST_TYPE_TERRESTRIAL:I = 0x2

.field public static final BROADCAST_SYSTEM_NTSC_M:I = 0x3

.field public static final BROADCAST_SYSTEM_PAL_BG:I = 0x0

.field public static final BROADCAST_SYSTEM_PAL_DK:I = 0x8

.field public static final BROADCAST_SYSTEM_PAL_I:I = 0x4

.field public static final BROADCAST_SYSTEM_PAL_M:I = 0x2

.field public static final BROADCAST_SYSTEM_PAL_OTHER_SYSTEM:I = 0x1f

.field public static final BROADCAST_SYSTEM_SECAM_BG:I = 0x6

.field public static final BROADCAST_SYSTEM_SECAM_DK:I = 0x5

.field public static final BROADCAST_SYSTEM_SECAM_L:I = 0x7

.field public static final BROADCAST_SYSTEM_SECAM_LP:I = 0x1

.field private static final CHANNEL_NUMBER_FORMAT_1_PART:I = 0x1

.field private static final CHANNEL_NUMBER_FORMAT_2_PART:I = 0x2

.field public static final DIGITAL_BROADCAST_TYPE_ARIB:I = 0x0

.field public static final DIGITAL_BROADCAST_TYPE_ARIB_BS:I = 0x8

.field public static final DIGITAL_BROADCAST_TYPE_ARIB_CS:I = 0x9

.field public static final DIGITAL_BROADCAST_TYPE_ARIB_T:I = 0xa

.field public static final DIGITAL_BROADCAST_TYPE_ATSC:I = 0x1

.field public static final DIGITAL_BROADCAST_TYPE_ATSC_CABLE:I = 0x10

.field public static final DIGITAL_BROADCAST_TYPE_ATSC_SATELLITE:I = 0x11

.field public static final DIGITAL_BROADCAST_TYPE_ATSC_TERRESTRIAL:I = 0x12

.field public static final DIGITAL_BROADCAST_TYPE_DVB:I = 0x2

.field public static final DIGITAL_BROADCAST_TYPE_DVB_C:I = 0x18

.field public static final DIGITAL_BROADCAST_TYPE_DVB_S:I = 0x19

.field public static final DIGITAL_BROADCAST_TYPE_DVB_S2:I = 0x1a

.field public static final DIGITAL_BROADCAST_TYPE_DVB_T:I = 0x1b

.field private static final RECORD_SOURCE_TYPE_ANALOGUE_SERVICE:I = 0x3

.field private static final RECORD_SOURCE_TYPE_DIGITAL_SERVICE:I = 0x2

.field private static final RECORD_SOURCE_TYPE_EXTERNAL_PHYSICAL_ADDRESS:I = 0x5

.field private static final RECORD_SOURCE_TYPE_EXTERNAL_PLUG:I = 0x4

.field private static final RECORD_SOURCE_TYPE_OWN_SOURCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HdmiRecordSources"


# direct methods
.method static synthetic -wrap0(S[BI)I
    .locals 1
    .param p0, "value"    # S
    .param p1, "byteArray"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(III[BI)I
    .locals 1
    .param p0, "first"    # I
    .param p1, "second"    # I
    .param p2, "third"    # I
    .param p3, "data"    # [B
    .param p4, "index"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiRecordSources;->threeFieldsToSixBytes(III[BI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static checkRecordSource([B)Z
    .locals 5
    .param p0, "recordSource"    # [B

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 762
    if-eqz p0, :cond_0

    #@4
    array-length v4, p0

    #@5
    if-nez v4, :cond_1

    #@7
    :cond_0
    return v3

    #@8
    .line 764
    :cond_1
    aget-byte v1, p0, v3

    #@a
    .line 765
    .local v1, "recordSourceType":I
    array-length v4, p0

    #@b
    add-int/lit8 v0, v4, -0x1

    #@d
    .line 766
    .local v0, "extraDataSize":I
    packed-switch v1, :pswitch_data_0

    #@10
    .line 778
    return v3

    #@11
    .line 768
    :pswitch_0
    if-nez v0, :cond_2

    #@13
    :goto_0
    return v2

    #@14
    :cond_2
    move v2, v3

    #@15
    goto :goto_0

    #@16
    .line 770
    :pswitch_1
    const/4 v4, 0x7

    #@17
    if-ne v0, v4, :cond_3

    #@19
    :goto_1
    return v2

    #@1a
    :cond_3
    move v2, v3

    #@1b
    goto :goto_1

    #@1c
    .line 772
    :pswitch_2
    const/4 v4, 0x4

    #@1d
    if-ne v0, v4, :cond_4

    #@1f
    :goto_2
    return v2

    #@20
    :cond_4
    move v2, v3

    #@21
    goto :goto_2

    #@22
    .line 774
    :pswitch_3
    if-ne v0, v2, :cond_5

    #@24
    :goto_3
    return v2

    #@25
    :cond_5
    move v2, v3

    #@26
    goto :goto_3

    #@27
    .line 776
    :pswitch_4
    const/4 v4, 0x2

    #@28
    if-ne v0, v4, :cond_6

    #@2a
    :goto_4
    return v2

    #@2b
    :cond_6
    move v2, v3

    #@2c
    goto :goto_4

    #@2d
    .line 766
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static ofAnalogue(III)Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;
    .locals 3
    .param p0, "broadcastType"    # I
    .param p1, "frequency"    # I
    .param p2, "broadcastSystem"    # I

    #@0
    .prologue
    .line 585
    if-ltz p0, :cond_0

    #@2
    .line 586
    const/4 v0, 0x2

    #@3
    if-le p0, v0, :cond_1

    #@5
    .line 587
    :cond_0
    const-string/jumbo v0, "HdmiRecordSources"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Invalid Broadcast type:"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "Invalid Broadcast type:"

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 590
    :cond_1
    if-ltz p1, :cond_2

    #@3b
    const v0, 0xffff

    #@3e
    if-le p1, v0, :cond_3

    #@40
    .line 591
    :cond_2
    const-string/jumbo v0, "HdmiRecordSources"

    #@43
    new-instance v1, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v2, "Invalid frequency value[0x0000-0xFFFF]:"

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5c
    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v2, "Invalid frequency value[0x0000-0xFFFF]:"

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    .line 592
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v0

    #@74
    .line 595
    :cond_3
    if-ltz p2, :cond_4

    #@76
    .line 596
    const/16 v0, 0x1f

    #@78
    if-le p2, v0, :cond_5

    #@7a
    .line 598
    :cond_4
    const-string/jumbo v0, "HdmiRecordSources"

    #@7d
    new-instance v1, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v2, "Invalid Broadcast system:"

    #@85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 599
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@96
    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v2, "Invalid Broadcast system:"

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v1

    #@a6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v1

    #@aa
    .line 599
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ad
    throw v0

    #@ae
    .line 603
    :cond_5
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;

    #@b0
    const/4 v1, 0x0

    #@b1
    invoke-direct {v0, p0, p1, p2, v1}, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;-><init>(IIILandroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;)V

    #@b4
    return-object v0
.end method

.method public static ofArib(ILandroid/hardware/hdmi/HdmiRecordSources$AribData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .locals 3
    .param p0, "aribType"    # I
    .param p1, "data"    # Landroid/hardware/hdmi/HdmiRecordSources$AribData;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 405
    if-nez p1, :cond_0

    #@3
    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "data should not be null."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 408
    :cond_0
    sparse-switch p0, :sswitch_data_0

    #@f
    .line 417
    const-string/jumbo v0, "HdmiRecordSources"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Invalid ARIB type:"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v1, "type should not be null."

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 413
    :sswitch_0
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    #@34
    .line 414
    const/4 v1, 0x0

    #@35
    .line 413
    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;)V

    #@38
    return-object v0

    #@39
    .line 408
    nop

    #@3a
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static ofAtsc(ILandroid/hardware/hdmi/HdmiRecordSources$AtscData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .locals 3
    .param p0, "atscType"    # I
    .param p1, "data"    # Landroid/hardware/hdmi/HdmiRecordSources$AtscData;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 436
    if-nez p1, :cond_0

    #@3
    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "data should not be null."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 439
    :cond_0
    sparse-switch p0, :sswitch_data_0

    #@f
    .line 448
    const-string/jumbo v0, "HdmiRecordSources"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Invalid ATSC type:"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "Invalid ATSC type:"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 444
    :sswitch_0
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    #@45
    .line 445
    const/4 v1, 0x0

    #@46
    .line 444
    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;)V

    #@49
    return-object v0

    #@4a
    .line 439
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ofDigitalChannelId(ILandroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .locals 3
    .param p0, "broadcastSystem"    # I
    .param p1, "data"    # Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 363
    if-nez p1, :cond_0

    #@3
    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "data should not be null."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 366
    :cond_0
    packed-switch p0, :pswitch_data_0

    #@f
    .line 385
    :pswitch_0
    const-string/jumbo v0, "HdmiRecordSources"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Invalid broadcast type:"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "Invalid broadcast system value:"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 386
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 380
    :pswitch_1
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    #@45
    .line 381
    const/4 v1, 0x1

    #@46
    .line 380
    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;)V

    #@49
    return-object v0

    #@4a
    .line 366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static ofDvb(ILandroid/hardware/hdmi/HdmiRecordSources$DvbData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .locals 3
    .param p0, "dvbType"    # I
    .param p1, "data"    # Landroid/hardware/hdmi/HdmiRecordSources$DvbData;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 468
    if-nez p1, :cond_0

    #@3
    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "data should not be null."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 471
    :cond_0
    sparse-switch p0, :sswitch_data_0

    #@f
    .line 481
    const-string/jumbo v0, "HdmiRecordSources"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Invalid DVB type:"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "Invalid DVB type:"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 477
    :sswitch_0
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    #@45
    .line 478
    const/4 v1, 0x0

    #@46
    .line 477
    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;)V

    #@49
    return-object v0

    #@4a
    .line 471
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public static ofExternalPhysicalAddress(I)Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;
    .locals 3
    .param p0, "physicalAddress"    # I

    #@0
    .prologue
    .line 704
    const/high16 v0, -0x10000

    #@2
    and-int/2addr v0, p0

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 705
    const-string/jumbo v0, "HdmiRecordSources"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Invalid physical address:"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 706
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "Invalid physical address:"

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 709
    :cond_0
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;

    #@3b
    const/4 v1, 0x0

    #@3c
    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;-><init>(ILandroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;)V

    #@3f
    return-object v0
.end method

.method public static ofExternalPlug(I)Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;
    .locals 3
    .param p0, "plugNumber"    # I

    #@0
    .prologue
    .line 660
    const/4 v0, 0x1

    #@1
    if-lt p0, v0, :cond_0

    #@3
    const/16 v0, 0xff

    #@5
    if-le p0, v0, :cond_1

    #@7
    .line 661
    :cond_0
    const-string/jumbo v0, "HdmiRecordSources"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Invalid plug number[1-255]"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "Invalid plug number[1-255]"

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 664
    :cond_1
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;

    #@3d
    const/4 v1, 0x0

    #@3e
    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;-><init>(ILandroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;)V

    #@41
    return-object v0
.end method

.method public static ofOwnSource()Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;
    .locals 2

    #@0
    .prologue
    .line 100
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;)V

    #@6
    return-object v0
.end method

.method private static shortToByteArray(S[BI)I
    .locals 2
    .param p0, "value"    # S
    .param p1, "byteArray"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    .line 751
    ushr-int/lit8 v0, p0, 0x8

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    int-to-byte v0, v0

    #@5
    aput-byte v0, p1, p2

    #@7
    .line 752
    add-int/lit8 v0, p2, 0x1

    #@9
    and-int/lit16 v1, p0, 0xff

    #@b
    int-to-byte v1, v1

    #@c
    aput-byte v1, p1, v0

    #@e
    .line 753
    const/4 v0, 0x2

    #@f
    return v0
.end method

.method private static threeFieldsToSixBytes(III[BI)I
    .locals 2
    .param p0, "first"    # I
    .param p1, "second"    # I
    .param p2, "third"    # I
    .param p3, "data"    # [B
    .param p4, "index"    # I

    #@0
    .prologue
    .line 744
    int-to-short v0, p0

    #@1
    invoke-static {v0, p3, p4}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    #@4
    .line 745
    int-to-short v0, p1

    #@5
    add-int/lit8 v1, p4, 0x2

    #@7
    invoke-static {v0, p3, v1}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    #@a
    .line 746
    int-to-short v0, p2

    #@b
    add-int/lit8 v1, p4, 0x4

    #@d
    invoke-static {v0, p3, v1}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    #@10
    .line 747
    const/4 v0, 0x6

    #@11
    return v0
.end method
