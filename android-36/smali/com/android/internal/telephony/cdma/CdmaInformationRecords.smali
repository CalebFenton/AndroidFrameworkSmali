.class public final Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;
    }
.end annotation


# static fields
.field public static final blacklist RIL_CDMA_CALLED_PARTY_NUMBER_INFO_REC:I = 0x1

.field public static final blacklist RIL_CDMA_CALLING_PARTY_NUMBER_INFO_REC:I = 0x2

.field public static final blacklist RIL_CDMA_CONNECTED_NUMBER_INFO_REC:I = 0x3

.field public static final blacklist RIL_CDMA_DISPLAY_INFO_REC:I = 0x0

.field public static final blacklist RIL_CDMA_EXTENDED_DISPLAY_INFO_REC:I = 0x7

.field public static final blacklist RIL_CDMA_LINE_CONTROL_INFO_REC:I = 0x6

.field public static final blacklist RIL_CDMA_REDIRECTING_NUMBER_INFO_REC:I = 0x5

.field public static final blacklist RIL_CDMA_SIGNAL_INFO_REC:I = 0x4

.field public static final blacklist RIL_CDMA_T53_AUDIO_CONTROL_INFO_REC:I = 0xa

.field public static final blacklist RIL_CDMA_T53_CLIR_INFO_REC:I = 0x8

.field public static final blacklist RIL_CDMA_T53_RELEASE_INFO_REC:I = 0x9


# instance fields
.field public blacklist record:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 13

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    packed-switch v1, :pswitch_data_be

    .line 107
    :pswitch_a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RIL_UNSOL_CDMA_INFO_REC: unsupported record. Got "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->idToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :pswitch_2a
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void

    .line 97
    :pswitch_3a
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void

    .line 92
    :pswitch_46
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void

    .line 87
    :pswitch_5e
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;-><init>(Ljava/lang/String;IIIII)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void

    .line 83
    :pswitch_7e
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void

    .line 78
    :pswitch_96
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;-><init>(ILjava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void

    .line 72
    :pswitch_b2
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_7e
        :pswitch_5e
        :pswitch_46
        :pswitch_b2
        :pswitch_3a
        :pswitch_a
        :pswitch_2a
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    return-void
.end method

.method public static blacklist idToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_28

    .line 126
    const-string p0, "<unknown record>"

    return-object p0

    .line 125
    :pswitch_6
    const-string p0, "RIL_CDMA_T53_AUDIO_CONTROL_INFO_REC"

    return-object p0

    .line 124
    :pswitch_9
    const-string p0, "RIL_CDMA_T53_RELEASE_INFO_REC"

    return-object p0

    .line 123
    :pswitch_c
    const-string p0, "RIL_CDMA_T53_CLIR_INFO_REC"

    return-object p0

    .line 122
    :pswitch_f
    const-string p0, "RIL_CDMA_EXTENDED_DISPLAY_INFO_REC"

    return-object p0

    .line 121
    :pswitch_12
    const-string p0, "RIL_CDMA_LINE_CONTROL_INFO_REC"

    return-object p0

    .line 120
    :pswitch_15
    const-string p0, "RIL_CDMA_REDIRECTING_NUMBER_INFO_REC"

    return-object p0

    .line 119
    :pswitch_18
    const-string p0, "RIL_CDMA_SIGNAL_INFO_REC"

    return-object p0

    .line 118
    :pswitch_1b
    const-string p0, "RIL_CDMA_CONNECTED_NUMBER_INFO_REC"

    return-object p0

    .line 117
    :pswitch_1e
    const-string p0, "RIL_CDMA_CALLING_PARTY_NUMBER_INFO_REC"

    return-object p0

    .line 116
    :pswitch_21
    const-string p0, "RIL_CDMA_CALLED_PARTY_NUMBER_INFO_REC"

    return-object p0

    .line 115
    :pswitch_24
    const-string p0, "RIL_CDMA_DISPLAY_INFO_REC"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
