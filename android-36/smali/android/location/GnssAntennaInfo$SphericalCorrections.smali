.class public final Landroid/location/GnssAntennaInfo$SphericalCorrections;
.super Ljava/lang/Object;
.source "GnssAntennaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAntennaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SphericalCorrections"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssAntennaInfo$SphericalCorrections;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCorrectionUncertainties:[[D

.field private final blacklist mCorrections:[[D

.field private final blacklist mNumColumns:I

.field private final blacklist mNumRows:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 319
    new-instance v0, Landroid/location/GnssAntennaInfo$SphericalCorrections$1;

    invoke-direct {v0}, Landroid/location/GnssAntennaInfo$SphericalCorrections$1;-><init>()V

    sput-object v0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .local v0, "numRows":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .local v1, "numColumns":I
    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v5, 0x0

    aput v0, v3, v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 251
    .local v3, "corrections":[[D
    new-array v2, v2, [I

    aput v1, v2, v4

    aput v0, v2, v5

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 254
    .local v2, "correctionUncertainties":[[D
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_2b
    if-ge v4, v0, :cond_46

    .line 255
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_2e
    if-ge v5, v1, :cond_43

    .line 256
    aget-object v6, v3, v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    aput-wide v7, v6, v5

    .line 257
    aget-object v6, v2, v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    aput-wide v7, v6, v5

    .line 255
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 254
    .end local v5    # "col":I
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 261
    .end local v4    # "row":I
    :cond_46
    iput v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    .line 262
    iput v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    .line 263
    iput-object v3, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    .line 264
    iput-object v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    .line 265
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/location/GnssAntennaInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GnssAntennaInfo$SphericalCorrections;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>([[D[[D)V
    .registers 6
    .param p1, "corrections"    # [[D
    .param p2, "correctionUncertainties"    # [[D

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_3b

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3b

    .line 231
    array-length v0, p1

    iput v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    .line 232
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    iput v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    array-length v1, p1

    if-ge v0, v1, :cond_36

    .line 234
    aget-object v1, p1, v0

    array-length v1, v1

    iget v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    if-ne v1, v2, :cond_2e

    aget-object v1, p2, v0

    array-length v1, v1

    iget v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    if-ne v1, v2, :cond_2e

    iget v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2e

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 236
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "correction and uncertainty arrays must all  have the same (greater than 2) number of columns"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    .end local v0    # "i":I
    :cond_36
    iput-object p1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    .line 242
    iput-object p2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    .line 243
    return-void

    .line 227
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "correction and uncertainty arrays must have the same (non-zero) dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 361
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 362
    return v0

    .line 364
    :cond_4
    instance-of v1, p1, Landroid/location/GnssAntennaInfo$SphericalCorrections;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 365
    return v2

    .line 367
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 368
    .local v1, "that":Landroid/location/GnssAntennaInfo$SphericalCorrections;
    iget v3, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    iget v4, v1, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    iget v4, v1, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    iget-object v4, v1, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    .line 370
    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    iget-object v4, v1, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    .line 371
    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 368
    :goto_2f
    return v0
.end method

.method public whitelist getCorrectionUncertaintiesArray()[[D
    .registers 2

    .line 299
    iget-object v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    return-object v0
.end method

.method public whitelist getCorrectionsArray()[[D
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    return-object v0
.end method

.method public whitelist getDeltaPhi()D
    .registers 5

    .line 315
    iget v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public whitelist getDeltaTheta()D
    .registers 5

    .line 307
    iget v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    int-to-double v0, v0

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 376
    iget-object v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    .line 377
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    invoke-static {v2}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 378
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SphericalCorrections{Corrections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    .line 352
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CorrectionUncertainties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    .line 353
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DeltaTheta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Landroid/location/GnssAntennaInfo$SphericalCorrections;->getDeltaTheta()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DeltaPhi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Landroid/location/GnssAntennaInfo$SphericalCorrections;->getDeltaPhi()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 339
    iget v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v0, 0x0

    .local v0, "row":I
    :goto_b
    iget v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    if-ge v0, v1, :cond_2c

    .line 342
    const/4 v1, 0x0

    .local v1, "col":I
    :goto_10
    iget v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    if-ge v1, v2, :cond_29

    .line 343
    iget-object v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    aget-object v2, v2, v0

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 344
    iget-object v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    aget-object v2, v2, v0

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 341
    .end local v1    # "col":I
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 347
    .end local v0    # "row":I
    :cond_2c
    return-void
.end method
