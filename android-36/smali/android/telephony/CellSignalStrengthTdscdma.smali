.class public final Landroid/telephony/CellSignalStrengthTdscdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthTdscdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CellSignalStrengthTdscdma"

.field private static final blacklist TDSCDMA_RSCP_GOOD:I = -0x49

.field private static final blacklist TDSCDMA_RSCP_GREAT:I = -0x31

.field private static final blacklist TDSCDMA_RSCP_MAX:I = -0x18

.field private static final blacklist TDSCDMA_RSCP_MIN:I = -0x78

.field private static final blacklist TDSCDMA_RSCP_MODERATE:I = -0x61

.field private static final blacklist TDSCDMA_RSCP_POOR:I = -0x6e

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthTdscdma;


# instance fields
.field private blacklist mBitErrorRate:I

.field private blacklist mLevel:I

.field private blacklist mRscp:I

.field private blacklist mRssi:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 177
    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->sInvalid:Landroid/telephony/CellSignalStrengthTdscdma;

    .line 239
    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthTdscdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 60
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->setDefaultValues()V

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 7
    .param p1, "rssi"    # I
    .param p2, "ber"    # I
    .param p3, "rscp"    # I

    .line 70
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 71
    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthTdscdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    .line 72
    const/4 v0, 0x7

    const/16 v1, 0x63

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Landroid/telephony/CellSignalStrengthTdscdma;->inRangeOrUnavailable(IIII)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    .line 73
    const/16 v0, -0x78

    const/16 v1, -0x18

    invoke-static {p3, v0, v1}, Landroid/telephony/CellSignalStrengthTdscdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 75
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 222
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    .line 228
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthTdscdma-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellSignalStrengthTdscdma;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthTdscdma;

    .line 78
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthTdscdma;->copyFrom(Landroid/telephony/CellSignalStrengthTdscdma;)V

    .line 80
    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 256
    const-string v0, "CellSignalStrengthTdscdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 35
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->copy()Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copy()Landroid/telephony/CellSignalStrengthTdscdma;
    .registers 2

    .line 93
    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-object v0
.end method

.method protected blacklist copyFrom(Landroid/telephony/CellSignalStrengthTdscdma;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthTdscdma;

    .line 84
    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    .line 85
    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    .line 86
    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    .line 87
    iget v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    .line 88
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 187
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 188
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthTdscdma;

    .line 190
    .local v0, "s":Landroid/telephony/CellSignalStrengthTdscdma;
    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    if-ne v2, v3, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public whitelist getAsuLevel()I
    .registers 3

    .line 165
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_e

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuFromRscpDbm(I)I

    move-result v0

    return v0

    .line 168
    :cond_e
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    if-eq v0, v1, :cond_19

    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuFromRssiDbm(I)I

    move-result v0

    return v0

    .line 169
    :cond_19
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuFromRscpDbm(I)I

    move-result v0

    return v0
.end method

.method public blacklist getBitErrorRate()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    return v0
.end method

.method public whitelist getDbm()I
    .registers 2

    .line 129
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    return v0
.end method

.method public whitelist getLevel()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    return v0
.end method

.method public whitelist getRscp()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    return v0
.end method

.method public blacklist getRssi()I
    .registers 2

    .line 145
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 174
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 182
    sget-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->sInvalid:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthTdscdma;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist setDefaultValues()V
    .registers 2

    .line 99
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    .line 100
    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    .line 101
    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    .line 103
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthTdscdma: rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rscp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 6
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 116
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/16 v1, -0x18

    const/4 v2, 0x0

    if-le v0, v1, :cond_a

    iput v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_34

    .line 117
    :cond_a
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/16 v1, -0x31

    if-lt v0, v1, :cond_14

    const/4 v0, 0x4

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_34

    .line 118
    :cond_14
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/16 v1, -0x49

    if-lt v0, v1, :cond_1e

    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_34

    .line 119
    :cond_1e
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/16 v1, -0x61

    if-lt v0, v1, :cond_28

    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_34

    .line 120
    :cond_28
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    const/16 v1, -0x6e

    if-lt v0, v1, :cond_32

    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    goto :goto_34

    .line 121
    :cond_32
    iput v2, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    .line 122
    :goto_34
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 212
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Landroid/telephony/CellSignalStrengthTdscdma;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    return-void
.end method
