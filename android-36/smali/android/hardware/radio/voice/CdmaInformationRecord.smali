.class public Landroid/hardware/radio/voice/CdmaInformationRecord;
.super Ljava/lang/Object;
.source "CdmaInformationRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CDMA_MAX_NUMBER_OF_INFO_RECS:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/voice/CdmaInformationRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NAME_CALLED_PARTY_NUMBER:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NAME_CALLING_PARTY_NUMBER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NAME_CONNECTED_NUMBER:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NAME_DISPLAY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NAME_EXTENDED_DISPLAY:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NAME_LINE_CONTROL:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NAME_REDIRECTING_NUMBER:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NAME_SIGNAL:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NAME_T53_AUDIO_CONTROL:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NAME_T53_CLIR:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NAME_T53_RELEASE:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public blacklist audioCtrl:[Landroid/hardware/radio/voice/CdmaT53AudioControlInfoRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist clir:[Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist display:[Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist lineCtrl:[Landroid/hardware/radio/voice/CdmaLineControlInfoRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist name:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist number:[Landroid/hardware/radio/voice/CdmaNumberInfoRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist redir:[Landroid/hardware/radio/voice/CdmaRedirectingNumberInfoRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist signal:[Landroid/hardware/radio/voice/CdmaSignalInfoRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Landroid/hardware/radio/voice/CdmaInformationRecord$1;

    invoke-direct {v0}, Landroid/hardware/radio/voice/CdmaInformationRecord$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/voice/CdmaInformationRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->name:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 191
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 192
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 195
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/radio/voice/CdmaInformationRecord;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 194
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 197
    :cond_19
    return v1

    .line 199
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 200
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 202
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->display:[Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;

    invoke-direct {p0, v1}, Landroid/hardware/radio/voice/CdmaInformationRecord;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 182
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->number:[Landroid/hardware/radio/voice/CdmaNumberInfoRecord;

    invoke-direct {p0, v1}, Landroid/hardware/radio/voice/CdmaInformationRecord;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 183
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->signal:[Landroid/hardware/radio/voice/CdmaSignalInfoRecord;

    invoke-direct {p0, v1}, Landroid/hardware/radio/voice/CdmaInformationRecord;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 184
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->redir:[Landroid/hardware/radio/voice/CdmaRedirectingNumberInfoRecord;

    invoke-direct {p0, v1}, Landroid/hardware/radio/voice/CdmaInformationRecord;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 185
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->lineCtrl:[Landroid/hardware/radio/voice/CdmaLineControlInfoRecord;

    invoke-direct {p0, v1}, Landroid/hardware/radio/voice/CdmaInformationRecord;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 186
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->clir:[Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;

    invoke-direct {p0, v1}, Landroid/hardware/radio/voice/CdmaInformationRecord;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 187
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->audioCtrl:[Landroid/hardware/radio/voice/CdmaT53AudioControlInfoRecord;

    invoke-direct {p0, v1}, Landroid/hardware/radio/voice/CdmaInformationRecord;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 188
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 100
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_11e

    .line 103
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 120
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 123
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    return-void

    .line 121
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->name:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 120
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 123
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    return-void

    .line 121
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_42
    :try_start_42
    sget-object v2, Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;

    iput-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->display:[Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 120
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 123
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 107
    return-void

    .line 121
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_62
    :try_start_62
    sget-object v2, Landroid/hardware/radio/voice/CdmaNumberInfoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/voice/CdmaNumberInfoRecord;

    iput-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->number:[Landroid/hardware/radio/voice/CdmaNumberInfoRecord;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 120
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 123
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 109
    return-void

    .line 121
    :cond_7c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_82
    :try_start_82
    sget-object v2, Landroid/hardware/radio/voice/CdmaSignalInfoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/voice/CdmaSignalInfoRecord;

    iput-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->signal:[Landroid/hardware/radio/voice/CdmaSignalInfoRecord;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a2

    .line 120
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_9c

    .line 123
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    return-void

    .line 121
    :cond_9c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_a2
    :try_start_a2
    sget-object v2, Landroid/hardware/radio/voice/CdmaRedirectingNumberInfoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/voice/CdmaRedirectingNumberInfoRecord;

    iput-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->redir:[Landroid/hardware/radio/voice/CdmaRedirectingNumberInfoRecord;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b0
    .catchall {:try_start_a2 .. :try_end_b0} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c2

    .line 120
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_bc

    .line 123
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    return-void

    .line 121
    :cond_bc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_c2
    :try_start_c2
    sget-object v2, Landroid/hardware/radio/voice/CdmaLineControlInfoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/voice/CdmaLineControlInfoRecord;

    iput-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->lineCtrl:[Landroid/hardware/radio/voice/CdmaLineControlInfoRecord;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d0
    .catchall {:try_start_c2 .. :try_end_d0} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 120
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 123
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 115
    return-void

    .line 121
    :cond_dc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_e2
    :try_start_e2
    sget-object v2, Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;

    iput-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->clir:[Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f0
    .catchall {:try_start_e2 .. :try_end_f0} :catchall_11c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_102

    .line 120
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fc

    .line 123
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 117
    return-void

    .line 121
    :cond_fc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_102
    :try_start_102
    sget-object v2, Landroid/hardware/radio/voice/CdmaT53AudioControlInfoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/voice/CdmaT53AudioControlInfoRecord;

    iput-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->audioCtrl:[Landroid/hardware/radio/voice/CdmaT53AudioControlInfoRecord;
    :try_end_10c
    .catchall {:try_start_102 .. :try_end_10c} :catchall_11c

    .line 120
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_116

    .line 123
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    nop

    .line 125
    return-void

    .line 121
    :cond_116
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :catchall_11c
    move-exception v2

    goto :goto_126

    .line 102
    :cond_11e
    :try_start_11e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/radio/voice/CdmaInformationRecord;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_126
    .catchall {:try_start_11e .. :try_end_126} :catchall_11c

    .line 120
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/radio/voice/CdmaInformationRecord;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_126
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_12f

    .line 121
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_12f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 167
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 168
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->name:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->display:[Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->number:[Landroid/hardware/radio/voice/CdmaNumberInfoRecord;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->signal:[Landroid/hardware/radio/voice/CdmaSignalInfoRecord;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->redir:[Landroid/hardware/radio/voice/CdmaRedirectingNumberInfoRecord;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lineCtrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->lineCtrl:[Landroid/hardware/radio/voice/CdmaLineControlInfoRecord;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->clir:[Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioCtrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->audioCtrl:[Landroid/hardware/radio/voice/CdmaT53AudioControlInfoRecord;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaInformationRecord"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 83
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->name:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->display:[Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 86
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->number:[Landroid/hardware/radio/voice/CdmaNumberInfoRecord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 87
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->signal:[Landroid/hardware/radio/voice/CdmaSignalInfoRecord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 88
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->redir:[Landroid/hardware/radio/voice/CdmaRedirectingNumberInfoRecord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 89
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->lineCtrl:[Landroid/hardware/radio/voice/CdmaLineControlInfoRecord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 90
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->clir:[Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 91
    iget-object v1, p0, Landroid/hardware/radio/voice/CdmaInformationRecord;->audioCtrl:[Landroid/hardware/radio/voice/CdmaT53AudioControlInfoRecord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 93
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void
.end method
