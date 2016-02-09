.class public final Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;
    }
.end annotation


# static fields
.field public static final RIL_CDMA_CALLED_PARTY_NUMBER_INFO_REC:I = 0x1

.field public static final RIL_CDMA_CALLING_PARTY_NUMBER_INFO_REC:I = 0x2

.field public static final RIL_CDMA_CONNECTED_NUMBER_INFO_REC:I = 0x3

.field public static final RIL_CDMA_DISPLAY_INFO_REC:I = 0x0

.field public static final RIL_CDMA_EXTENDED_DISPLAY_INFO_REC:I = 0x7

.field public static final RIL_CDMA_LINE_CONTROL_INFO_REC:I = 0x6

.field public static final RIL_CDMA_REDIRECTING_NUMBER_INFO_REC:I = 0x5

.field public static final RIL_CDMA_SIGNAL_INFO_REC:I = 0x4

.field public static final RIL_CDMA_T53_AUDIO_CONTROL_INFO_REC:I = 0xa

.field public static final RIL_CDMA_T53_CLIR_INFO_REC:I = 0x8

.field public static final RIL_CDMA_T53_RELEASE_INFO_REC:I = 0x9


# instance fields
.field public record:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v1

    #@7
    .line 41
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    #@a
    .line 79
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "RIL_UNSOL_CDMA_INFO_REC: unsupported record. Got "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 80
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->idToString(I)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 80
    const-string/jumbo v3, " "

    #@23
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 44
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    #@31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;-><init>(ILjava/lang/String;)V

    #@38
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@3a
    .line 39
    :goto_0
    return-void

    #@3b
    .line 50
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    #@3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v3

    #@45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v4

    #@49
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v5

    #@4d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v6

    #@51
    .line 50
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;-><init>(ILjava/lang/String;IIII)V

    #@54
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@56
    goto :goto_0

    #@57
    .line 55
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    #@59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v2

    #@5d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v3

    #@61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@64
    move-result v4

    #@65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v5

    #@69
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;-><init>(IIII)V

    #@6c
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@6e
    goto :goto_0

    #@6f
    .line 59
    :pswitch_4
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    #@71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v4

    #@79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7c
    move-result v5

    #@7d
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v6

    #@81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@84
    move-result v7

    #@85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@88
    move-result v8

    #@89
    .line 59
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;-><init>(Ljava/lang/String;IIIII)V

    #@8c
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@8e
    goto :goto_0

    #@8f
    .line 64
    :pswitch_5
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    #@91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@94
    move-result v2

    #@95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@98
    move-result v3

    #@99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v4

    #@9d
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v5

    #@a1
    .line 64
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;-><init>(IIII)V

    #@a4
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@a6
    goto :goto_0

    #@a7
    .line 69
    :pswitch_6
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    #@a9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@ac
    move-result v2

    #@ad
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;-><init>(I)V

    #@b0
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@b2
    goto :goto_0

    #@b3
    .line 73
    :pswitch_7
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    #@b5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b8
    move-result v2

    #@b9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@bc
    move-result v3

    #@bd
    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;-><init>(II)V

    #@c0
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    #@c2
    goto/16 :goto_0

    #@c4
    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static idToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    #@0
    .prologue
    .line 86
    packed-switch p0, :pswitch_data_0

    #@3
    .line 98
    const-string/jumbo v0, "<unknown record>"

    #@6
    return-object v0

    #@7
    .line 87
    :pswitch_0
    const-string/jumbo v0, "RIL_CDMA_DISPLAY_INFO_REC"

    #@a
    return-object v0

    #@b
    .line 88
    :pswitch_1
    const-string/jumbo v0, "RIL_CDMA_CALLED_PARTY_NUMBER_INFO_REC"

    #@e
    return-object v0

    #@f
    .line 89
    :pswitch_2
    const-string/jumbo v0, "RIL_CDMA_CALLING_PARTY_NUMBER_INFO_REC"

    #@12
    return-object v0

    #@13
    .line 90
    :pswitch_3
    const-string/jumbo v0, "RIL_CDMA_CONNECTED_NUMBER_INFO_REC"

    #@16
    return-object v0

    #@17
    .line 91
    :pswitch_4
    const-string/jumbo v0, "RIL_CDMA_SIGNAL_INFO_REC"

    #@1a
    return-object v0

    #@1b
    .line 92
    :pswitch_5
    const-string/jumbo v0, "RIL_CDMA_REDIRECTING_NUMBER_INFO_REC"

    #@1e
    return-object v0

    #@1f
    .line 93
    :pswitch_6
    const-string/jumbo v0, "RIL_CDMA_LINE_CONTROL_INFO_REC"

    #@22
    return-object v0

    #@23
    .line 94
    :pswitch_7
    const-string/jumbo v0, "RIL_CDMA_EXTENDED_DISPLAY_INFO_REC"

    #@26
    return-object v0

    #@27
    .line 95
    :pswitch_8
    const-string/jumbo v0, "RIL_CDMA_T53_CLIR_INFO_REC"

    #@2a
    return-object v0

    #@2b
    .line 96
    :pswitch_9
    const-string/jumbo v0, "RIL_CDMA_T53_RELEASE_INFO_REC"

    #@2e
    return-object v0

    #@2f
    .line 97
    :pswitch_a
    const-string/jumbo v0, "RIL_CDMA_T53_AUDIO_CONTROL_INFO_REC"

    #@32
    return-object v0

    #@33
    .line 86
    nop

    #@34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
