.class public final Landroid/hardware/hdmi/HdmiRecordSources;
.super Ljava/lang/Object;
.source "HdmiRecordSources.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;,
        Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;,
        Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;,
        Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;,
        Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;,
        Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;,
        Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;,
        Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;,
        Landroid/hardware/hdmi/HdmiRecordSources$DvbData;,
        Landroid/hardware/hdmi/HdmiRecordSources$AtscData;,
        Landroid/hardware/hdmi/HdmiRecordSources$AribData;,
        Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
    }
.end annotation


# static fields
.field public static final greylist-max-o ANALOGUE_BROADCAST_TYPE_CABLE:I = 0x0

.field public static final greylist-max-o ANALOGUE_BROADCAST_TYPE_SATELLITE:I = 0x1

.field public static final greylist-max-o ANALOGUE_BROADCAST_TYPE_TERRESTRIAL:I = 0x2

.field public static final greylist-max-o BROADCAST_SYSTEM_NTSC_M:I = 0x3

.field public static final greylist-max-o BROADCAST_SYSTEM_PAL_BG:I = 0x0

.field public static final greylist-max-o BROADCAST_SYSTEM_PAL_DK:I = 0x8

.field public static final greylist-max-o BROADCAST_SYSTEM_PAL_I:I = 0x4

.field public static final greylist-max-o BROADCAST_SYSTEM_PAL_M:I = 0x2

.field public static final greylist-max-o BROADCAST_SYSTEM_PAL_OTHER_SYSTEM:I = 0x1f

.field public static final greylist-max-o BROADCAST_SYSTEM_SECAM_BG:I = 0x6

.field public static final greylist-max-o BROADCAST_SYSTEM_SECAM_DK:I = 0x5

.field public static final greylist-max-o BROADCAST_SYSTEM_SECAM_L:I = 0x7

.field public static final greylist-max-o BROADCAST_SYSTEM_SECAM_LP:I = 0x1

.field private static final greylist-max-o CHANNEL_NUMBER_FORMAT_1_PART:I = 0x1

.field private static final greylist-max-o CHANNEL_NUMBER_FORMAT_2_PART:I = 0x2

.field public static final greylist-max-o DIGITAL_BROADCAST_TYPE_ARIB:I = 0x0

.field public static final greylist-max-o DIGITAL_BROADCAST_TYPE_ARIB_BS:I = 0x8

.field public static final greylist-max-o DIGITAL_BROADCAST_TYPE_ARIB_CS:I = 0x9

.field public static final greylist-max-o DIGITAL_BROADCAST_TYPE_ARIB_T:I = 0xa

.field public static final greylist-max-o DIGITAL_BROADCAST_TYPE_ATSC:I = 0x1

.field public static final greylist-max-o DIGITAL_BROADCAST_TYPE_ATSC_CABLE:I = 0x10

.field public static final greylist-max-o DIGITAL_BROADCAST_TYPE_ATSC_SATELLITE:I = 0x11

.field public static final greylist-max-o DIGITAL_BROADCAST_TYPE_ATSC_TERRESTRIAL:I = 0x12

.field public static final greylist-max-o DIGITAL_BROADCAST_TYPE_DVB:I = 0x2

.field public static final greylist-max-o DIGITAL_BROADCAST_TYPE_DVB_C:I = 0x18

.field public static final greylist-max-o DIGITAL_BROADCAST_TYPE_DVB_S:I = 0x19

.field public static final greylist-max-o DIGITAL_BROADCAST_TYPE_DVB_S2:I = 0x1a

.field public static final greylist-max-o DIGITAL_BROADCAST_TYPE_DVB_T:I = 0x1b

.field private static final greylist-max-o RECORD_SOURCE_TYPE_ANALOGUE_SERVICE:I = 0x3

.field private static final greylist-max-o RECORD_SOURCE_TYPE_DIGITAL_SERVICE:I = 0x2

.field private static final greylist-max-o RECORD_SOURCE_TYPE_EXTERNAL_PHYSICAL_ADDRESS:I = 0x5

.field private static final greylist-max-o RECORD_SOURCE_TYPE_EXTERNAL_PLUG:I = 0x4

.field private static final greylist-max-o RECORD_SOURCE_TYPE_OWN_SOURCE:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "HdmiRecordSources"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smshortToByteArray(S[BI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smthreeFieldsToSixBytes(III[BI)I
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiRecordSources;->threeFieldsToSixBytes(III[BI)I

    move-result p0

    return p0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist checkRecordSource([B)Z
    .registers 6
    .param p0, "recordSource"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 762
    const/4 v0, 0x0

    if-eqz p0, :cond_27

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_27

    .line 764
    :cond_7
    aget-byte v1, p0, v0

    .line 765
    .local v1, "recordSourceType":I
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 766
    .local v2, "extraDataSize":I
    packed-switch v1, :pswitch_data_28

    .line 778
    return v0

    .line 776
    :pswitch_10
    const/4 v4, 0x2

    if-ne v2, v4, :cond_14

    move v0, v3

    :cond_14
    return v0

    .line 774
    :pswitch_15
    if-ne v2, v3, :cond_18

    move v0, v3

    :cond_18
    return v0

    .line 772
    :pswitch_19
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1d

    move v0, v3

    :cond_1d
    return v0

    .line 770
    :pswitch_1e
    const/4 v4, 0x7

    if-ne v2, v4, :cond_22

    move v0, v3

    :cond_22
    return v0

    .line 768
    :pswitch_23
    if-nez v2, :cond_26

    move v0, v3

    :cond_26
    return v0

    .line 762
    .end local v1    # "recordSourceType":I
    .end local v2    # "extraDataSize":I
    :cond_27
    :goto_27
    return v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method

.method public static greylist-max-o ofAnalogue(III)Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;
    .registers 6
    .param p0, "broadcastType"    # I
    .param p1, "frequency"    # I
    .param p2, "broadcastSystem"    # I

    .line 585
    const-string v0, "HdmiRecordSources"

    if-ltz p0, :cond_75

    const/4 v1, 0x2

    if-gt p0, v1, :cond_75

    .line 590
    if-ltz p1, :cond_48

    const v1, 0xffff

    if-gt p1, v1, :cond_48

    .line 595
    if-ltz p2, :cond_1b

    const/16 v1, 0x1f

    if-gt p2, v1, :cond_1b

    .line 603
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;-><init>(IIILandroid/hardware/hdmi/HdmiRecordSources-IA;)V

    return-object v0

    .line 598
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Broadcast system:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid frequency value[0x0000-0xFFFF]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Broadcast type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o ofArib(ILandroid/hardware/hdmi/HdmiRecordSources$AribData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .registers 5
    .param p0, "aribType"    # I
    .param p1, "data"    # Landroid/hardware/hdmi/HdmiRecordSources$AribData;

    .line 405
    if-eqz p1, :cond_2d

    .line 408
    sparse-switch p0, :sswitch_data_36

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid ARIB type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiRecordSources"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :sswitch_25
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources-IA;)V

    return-object v0

    .line 406
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_25
        0x8 -> :sswitch_25
        0x9 -> :sswitch_25
        0xa -> :sswitch_25
    .end sparse-switch
.end method

.method public static greylist-max-o ofAtsc(ILandroid/hardware/hdmi/HdmiRecordSources$AtscData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .registers 5
    .param p0, "atscType"    # I
    .param p1, "data"    # Landroid/hardware/hdmi/HdmiRecordSources$AtscData;

    .line 436
    if-eqz p1, :cond_3c

    .line 439
    sparse-switch p0, :sswitch_data_44

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid ATSC type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HdmiRecordSources"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :sswitch_34
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources-IA;)V

    return-object v0

    .line 437
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_34
        0x10 -> :sswitch_34
        0x11 -> :sswitch_34
        0x12 -> :sswitch_34
    .end sparse-switch
.end method

.method public static greylist-max-o ofDigitalChannelId(ILandroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .registers 5
    .param p0, "broadcastSystem"    # I
    .param p1, "data"    # Landroid/hardware/hdmi/HdmiRecordSources$DigitalChannelData;

    .line 363
    if-eqz p1, :cond_3e

    .line 366
    sparse-switch p0, :sswitch_data_46

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid broadcast type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiRecordSources"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid broadcast system value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :sswitch_36
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources-IA;)V

    return-object v0

    .line 364
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_36
        0x1 -> :sswitch_36
        0x2 -> :sswitch_36
        0x8 -> :sswitch_36
        0x9 -> :sswitch_36
        0xa -> :sswitch_36
        0x10 -> :sswitch_36
        0x11 -> :sswitch_36
        0x12 -> :sswitch_36
        0x18 -> :sswitch_36
        0x19 -> :sswitch_36
        0x1a -> :sswitch_36
        0x1b -> :sswitch_36
    .end sparse-switch
.end method

.method public static greylist-max-o ofDvb(ILandroid/hardware/hdmi/HdmiRecordSources$DvbData;)Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
    .registers 5
    .param p0, "dvbType"    # I
    .param p1, "data"    # Landroid/hardware/hdmi/HdmiRecordSources$DvbData;

    .line 468
    if-eqz p1, :cond_3c

    .line 471
    sparse-switch p0, :sswitch_data_44

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid DVB type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HdmiRecordSources"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :sswitch_34
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources-IA;)V

    return-object v0

    .line 469
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_44
    .sparse-switch
        0x2 -> :sswitch_34
        0x18 -> :sswitch_34
        0x19 -> :sswitch_34
        0x1a -> :sswitch_34
        0x1b -> :sswitch_34
    .end sparse-switch
.end method

.method public static greylist-max-o ofExternalPhysicalAddress(I)Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;
    .registers 4
    .param p0, "physicalAddress"    # I

    .line 704
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_c

    .line 709
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;-><init>(ILandroid/hardware/hdmi/HdmiRecordSources-IA;)V

    return-object v0

    .line 705
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid physical address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HdmiRecordSources"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o ofExternalPlug(I)Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;
    .registers 4
    .param p0, "plugNumber"    # I

    .line 660
    const/4 v0, 0x1

    if-lt p0, v0, :cond_e

    const/16 v0, 0xff

    if-gt p0, v0, :cond_e

    .line 664
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;-><init>(ILandroid/hardware/hdmi/HdmiRecordSources-IA;)V

    return-object v0

    .line 661
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid plug number[1-255]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HdmiRecordSources"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist ofOwnSource()Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;
    .registers 2

    .line 100
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$OwnSource;-><init>(Landroid/hardware/hdmi/HdmiRecordSources-IA;)V

    return-object v0
.end method

.method private static greylist-max-o shortToByteArray(S[BI)I
    .registers 5
    .param p0, "value"    # S
    .param p1, "byteArray"    # [B
    .param p2, "index"    # I

    .line 751
    ushr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 752
    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 753
    const/4 v0, 0x2

    return v0
.end method

.method private static greylist-max-o threeFieldsToSixBytes(III[BI)I
    .registers 7
    .param p0, "first"    # I
    .param p1, "second"    # I
    .param p2, "third"    # I
    .param p3, "data"    # [B
    .param p4, "index"    # I

    .line 744
    int-to-short v0, p0

    invoke-static {v0, p3, p4}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    .line 745
    int-to-short v0, p1

    add-int/lit8 v1, p4, 0x2

    invoke-static {v0, p3, v1}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    .line 746
    int-to-short v0, p2

    add-int/lit8 v1, p4, 0x4

    invoke-static {v0, p3, v1}, Landroid/hardware/hdmi/HdmiRecordSources;->shortToByteArray(S[BI)I

    .line 747
    const/4 v0, 0x6

    return v0
.end method
