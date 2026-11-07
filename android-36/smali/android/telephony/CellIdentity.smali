.class public abstract Landroid/telephony/CellIdentity;
.super Ljava/lang/Object;
.source "CellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentity;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o INVALID_CHANNEL_NUMBER:I = 0x7fffffff

.field public static final blacklist MCC_LENGTH:I = 0x3

.field public static final blacklist MNC_MAX_LENGTH:I = 0x3

.field public static final blacklist MNC_MIN_LENGTH:I = 0x2


# instance fields
.field protected greylist-max-o mAlphaLong:Ljava/lang/String;

.field protected greylist-max-o mAlphaShort:Ljava/lang/String;

.field protected blacklist mGlobalCellId:Ljava/lang/String;

.field protected final greylist-max-o mMccStr:Ljava/lang/String;

.field protected final greylist-max-o mMncStr:Ljava/lang/String;

.field protected final greylist-max-o mTag:Ljava/lang/String;

.field protected final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 289
    new-instance v0, Landroid/telephony/CellIdentity$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentity$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .registers 11
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "source"    # Landroid/os/Parcel;

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 284
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "type":I
    .local v1, "tag":Ljava/lang/String;
    .local v2, "type":I
    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "mcc"    # Ljava/lang/String;
    .param p4, "mnc"    # Ljava/lang/String;
    .param p5, "alphal"    # Ljava/lang/String;
    .param p6, "alphas"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/telephony/CellIdentity;->mTag:Ljava/lang/String;

    .line 81
    iput p2, p0, Landroid/telephony/CellIdentity;->mType:I

    .line 84
    const v0, 0x7fffffff

    const/4 v1, 0x0

    if-eqz p3, :cond_42

    invoke-static {p3}, Landroid/telephony/CellIdentity;->isMcc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_42

    .line 86
    :cond_14
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_3f

    .line 92
    :cond_25
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid MCC format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/telephony/CellIdentity;->log(Ljava/lang/String;)V

    goto :goto_44

    .line 88
    :cond_3f
    :goto_3f
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    goto :goto_44

    .line 85
    :cond_42
    :goto_42
    iput-object p3, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    .line 96
    :goto_44
    if-eqz p4, :cond_7b

    invoke-static {p4}, Landroid/telephony/CellIdentity;->isMnc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_7b

    .line 98
    :cond_4d
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_78

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    goto :goto_78

    .line 104
    :cond_5e
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid MNC format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/CellIdentity;->log(Ljava/lang/String;)V

    goto :goto_7d

    .line 100
    :cond_78
    :goto_78
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    goto :goto_7d

    .line 97
    :cond_7b
    :goto_7b
    iput-object p4, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    .line 108
    :goto_7d
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_85

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    if-eqz v0, :cond_8d

    :cond_85
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    if-nez v0, :cond_99

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    if-eqz v0, :cond_99

    .line 109
    :cond_8d
    nop

    .line 110
    const-string v0, "e257ae06-ac0a-44c0-ba63-823b9f07b3e4"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 109
    const-string v1, "CellIdentity Missing Half of PLMN ID"

    invoke-static {v0, v1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 114
    :cond_99
    iput-object p5, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    .line 115
    iput-object p6, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    .line 116
    return-void
.end method

.method protected static final blacklist inRangeOrUnavailable(III)I
    .registers 4
    .param p0, "value"    # I
    .param p1, "rangeMin"    # I
    .param p2, "rangeMax"    # I

    .line 319
    if-lt p0, p1, :cond_6

    if-le p0, p2, :cond_5

    goto :goto_6

    .line 320
    :cond_5
    return p0

    .line 319
    :cond_6
    :goto_6
    const v0, 0x7fffffff

    return v0
.end method

.method protected static final blacklist inRangeOrUnavailable(IIII)I
    .registers 5
    .param p0, "value"    # I
    .param p1, "rangeMin"    # I
    .param p2, "rangeMax"    # I
    .param p3, "special"    # I

    .line 332
    if-lt p0, p1, :cond_4

    if-le p0, p2, :cond_a

    :cond_4
    if-eq p0, p3, :cond_a

    const v0, 0x7fffffff

    return v0

    .line 333
    :cond_a
    return p0
.end method

.method protected static final blacklist inRangeOrUnavailable(JJJ)J
    .registers 8
    .param p0, "value"    # J
    .param p2, "rangeMin"    # J
    .param p4, "rangeMax"    # J

    .line 325
    cmp-long v0, p0, p2

    if-ltz v0, :cond_a

    cmp-long v0, p0, p4

    if-lez v0, :cond_9

    goto :goto_a

    .line 326
    :cond_9
    return-wide p0

    .line 325
    :cond_a
    :goto_a
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method private static blacklist isMcc(Ljava/lang/String;)Z
    .registers 6
    .param p0, "mcc"    # Ljava/lang/String;

    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    return v1

    .line 342
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v2, :cond_21

    .line 343
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_20

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-le v3, v4, :cond_1d

    goto :goto_20

    .line 342
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 343
    :cond_20
    :goto_20
    return v1

    .line 346
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isMnc(Ljava/lang/String;)Z
    .registers 5
    .param p0, "mnc"    # Ljava/lang/String;

    .line 352
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_10

    goto :goto_2e

    .line 355
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 356
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x30

    if-lt v1, v3, :cond_2b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x39

    if-le v1, v3, :cond_28

    goto :goto_2b

    .line 355
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 356
    :cond_2b
    :goto_2b
    return v2

    .line 359
    .end local v0    # "i":I
    :cond_2c
    const/4 v0, 0x1

    return v0

    .line 352
    :cond_2e
    :goto_2e
    return v2
.end method

.method public static blacklist isValidPlmn(Ljava/lang/String;)Z
    .registers 4
    .param p0, "plmn"    # Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_27

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_10

    goto :goto_27

    .line 276
    :cond_10
    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/CellIdentity;->isMcc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/CellIdentity;->isMnc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v2, 0x1

    :cond_26
    return v2

    .line 274
    :cond_27
    :goto_27
    return v2
.end method


# virtual methods
.method public abstract whitelist asCellLocation()Landroid/telephony/CellLocation;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 237
    instance-of v0, p1, Landroid/telephony/CellIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 238
    return v1

    .line 241
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellIdentity;

    .line 242
    .local v0, "o":Landroid/telephony/CellIdentity;
    iget v2, p0, Landroid/telephony/CellIdentity;->mType:I

    iget v3, v0, Landroid/telephony/CellIdentity;->mType:I

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    .line 243
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    .line 244
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    .line 245
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    .line 246
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    nop

    .line 242
    :goto_3a
    return v1
.end method

.method public greylist-max-o getChannelNumber()I
    .registers 2

    .line 155
    const v0, 0x7fffffff

    return v0
.end method

.method public blacklist getGlobalCellId()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mGlobalCellId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMccString()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMncString()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaLong()Ljava/lang/CharSequence;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOperatorAlphaShort()Ljava/lang/CharSequence;
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPlmn()Ljava/lang/String;
    .registers 3

    .line 212
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_1f

    .line 213
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getType()I
    .registers 2

    .line 129
    iget v0, p0, Landroid/telephony/CellIdentity;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 251
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    iget v4, p0, Landroid/telephony/CellIdentity;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSameCell(Landroid/telephony/CellIdentity;)Z
    .registers 5
    .param p1, "ci"    # Landroid/telephony/CellIdentity;

    .line 205
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 206
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    return v0

    .line 207
    :cond_f
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getGlobalCellId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getGlobalCellId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 314
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method public abstract whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public blacklist setOperatorAlphaLong(Ljava/lang/String;)V
    .registers 2
    .param p1, "alphaLong"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public blacklist setOperatorAlphaShort(Ljava/lang/String;)V
    .registers 2
    .param p1, "alphaShort"    # Ljava/lang/String;

    .line 187
    iput-object p1, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    .line 188
    return-void
.end method

.method protected abstract blacklist updateGlobalCellId()V
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "type"    # I

    .line 261
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    return-void
.end method
