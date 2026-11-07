.class public final Landroid/telephony/satellite/SystemSelectionSpecifier;
.super Ljava/lang/Object;
.source "SystemSelectionSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SystemSelectionSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBands:[I

.field private blacklist mEarfcns:[I

.field private blacklist mMccMnc:Ljava/lang/String;

.field private blacklist mSatelliteInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTagIds:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 197
    new-instance v0, Landroid/telephony/satellite/SystemSelectionSpecifier$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SystemSelectionSpecifier$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SystemSelectionSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-direct {p0, p1}, Landroid/telephony/satellite/SystemSelectionSpecifier;->readFromParcel(Landroid/os/Parcel;)V

    .line 155
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SystemSelectionSpecifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SystemSelectionSpecifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->-$$Nest$fgetmMccMnc(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->-$$Nest$fgetmBands(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    .line 85
    invoke-static {p1}, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->-$$Nest$fgetmEarfcns(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    .line 86
    invoke-static {p1}, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->-$$Nest$fgetmSatelliteInfos(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    .line 87
    invoke-static {p1}, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->-$$Nest$fgetmTagIds(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/util/IntArray;Landroid/util/IntArray;[Landroid/telephony/satellite/SatelliteInfo;Landroid/util/IntArray;)V
    .registers 7
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "bands"    # Landroid/util/IntArray;
    .param p3, "earfcns"    # Landroid/util/IntArray;
    .param p4, "satelliteInfos"    # [Landroid/telephony/satellite/SatelliteInfo;
    .param p5, "tagIds"    # Landroid/util/IntArray;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    .line 73
    invoke-virtual {p2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    .line 74
    invoke-virtual {p3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    .line 75
    invoke-static {p4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    .line 76
    invoke-virtual {p5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    .line 77
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .local v0, "numBands":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    .line 321
    if-lez v0, :cond_1e

    .line 322
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_1e

    .line 323
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 327
    .end local v1    # "i":I
    :cond_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 328
    .local v1, "numEarfcns":I
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    .line 329
    if-lez v1, :cond_36

    .line 330
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    if-ge v2, v1, :cond_36

    .line 331
    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 335
    .end local v2    # "i":I
    :cond_36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    .line 336
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    const-class v3, Landroid/telephony/satellite/SatelliteInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/telephony/satellite/SatelliteInfo;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .local v2, "numTagIds":I
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    .line 340
    if-lez v2, :cond_62

    .line 341
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_55
    if-ge v3, v2, :cond_62

    .line 342
    iget-object v4, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aput v5, v4, v3

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 345
    .end local v3    # "i":I
    :cond_62
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 262
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 263
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_53

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_53

    .line 264
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/SystemSelectionSpecifier;

    .line 265
    .local v2, "that":Landroid/telephony/satellite/SystemSelectionSpecifier;
    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    iget-object v4, v2, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    .line 266
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    iget-object v4, v2, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    .line 267
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    if-nez v3, :cond_3c

    iget-object v3, v2, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    if-nez v3, :cond_51

    goto :goto_46

    :cond_3c
    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    .line 269
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    :goto_46
    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    iget-object v4, v2, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    .line 270
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_52

    :cond_51
    move v0, v1

    .line 265
    :goto_52
    return v0

    .line 263
    .end local v2    # "that":Landroid/telephony/satellite/SystemSelectionSpecifier;
    :cond_53
    :goto_53
    return v1
.end method

.method public blacklist getBands()[I
    .registers 2

    .line 289
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    return-object v0
.end method

.method public blacklist getEarfcns()[I
    .registers 2

    .line 297
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    return-object v0
.end method

.method public blacklist getMccMnc()Ljava/lang/String;
    .registers 2

    .line 280
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSatelliteInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTagIds()[I
    .registers 2

    .line 313
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 275
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mccmnc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v2, "bands:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    if-eqz v2, :cond_36

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    array-length v2, v2

    if-lez v2, :cond_36

    .line 219
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    array-length v3, v3

    if-ge v2, v3, :cond_35

    .line 220
    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .end local v2    # "i":I
    :cond_35
    goto :goto_3b

    .line 224
    :cond_36
    const-string v2, "none,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :goto_3b
    const-string v2, "earfcs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    const-string v3, "none"

    if-eqz v2, :cond_5f

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    array-length v2, v2

    if-lez v2, :cond_5f

    .line 229
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4c
    iget-object v4, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5e

    .line 230
    iget-object v4, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .end local v2    # "i":I
    :cond_5e
    goto :goto_62

    .line 234
    :cond_5f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :goto_62
    const-string v2, "mSatelliteInfos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    if-eqz v2, :cond_8d

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8d

    .line 239
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/satellite/SatelliteInfo;

    .line 240
    .local v4, "satelliteInfo":Landroid/telephony/satellite/SatelliteInfo;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .end local v4    # "satelliteInfo":Landroid/telephony/satellite/SatelliteInfo;
    goto :goto_79

    :cond_8c
    goto :goto_90

    .line 244
    :cond_8d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :goto_90
    const-string v2, "mTagIds:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    if-eqz v2, :cond_b2

    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    array-length v2, v2

    if-lez v2, :cond_b2

    .line 249
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9f
    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_b1

    .line 250
    iget-object v3, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    .end local v2    # "i":I
    :cond_b1
    goto :goto_b5

    .line 254
    :cond_b2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :goto_b5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 164
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    array-length v0, v0

    if-lez v0, :cond_2e

    .line 168
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2d

    .line 170
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mBands:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .end local v0    # "i":I
    :cond_2d
    goto :goto_31

    .line 173
    :cond_2e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    :goto_31
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    array-length v0, v0

    if-lez v0, :cond_51

    .line 177
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_41
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    array-length v2, v2

    if-ge v0, v2, :cond_50

    .line 179
    iget-object v2, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mEarfcns:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .end local v0    # "i":I
    :cond_50
    goto :goto_54

    .line 182
    :cond_51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    :goto_54
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mSatelliteInfos:Ljava/util/List;

    new-array v2, v1, [Landroid/telephony/satellite/SatelliteInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/satellite/SatelliteInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 187
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    if-eqz v0, :cond_7c

    .line 188
    iget-object v0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6c
    iget-object v1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_7b

    .line 190
    iget-object v1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier;->mTagIds:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .end local v0    # "i":I
    :cond_7b
    goto :goto_7f

    .line 193
    :cond_7c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    :goto_7f
    return-void
.end method
