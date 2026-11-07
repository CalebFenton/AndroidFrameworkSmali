.class public final Landroid/net/wifi/rtt/CivicLocation;
.super Ljava/lang/Object;
.source "CivicLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist ADDRESS_LINE_0_ROOM_DESK_FLOOR:I = 0x0

.field private static final blacklist ADDRESS_LINE_1_NUMBER_ROAD_SUFFIX_APT:I = 0x1

.field private static final blacklist ADDRESS_LINE_2_CITY:I = 0x2

.field private static final blacklist ADDRESS_LINE_3_STATE_POSTAL_CODE:I = 0x3

.field private static final blacklist ADDRESS_LINE_4_COUNTRY:I = 0x4

.field private static final blacklist BYTE_MASK:I = 0xff

.field private static final blacklist COUNTRY_CODE_LENGTH:I = 0x2

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/CivicLocation;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_CIVIC_BUFFER_SIZE:I = 0x100

.field private static final blacklist MIN_CIVIC_BUFFER_SIZE:I = 0x3

.field private static final blacklist TLV_LENGTH_INDEX:I = 0x1

.field private static final blacklist TLV_TYPE_INDEX:I = 0x0

.field private static final blacklist TLV_VALUE_INDEX:I = 0x2


# instance fields
.field private blacklist mCivicAddressElements:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCountryCode:Ljava/lang/String;

.field private final blacklist mIsValid:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Landroid/net/wifi/rtt/CivicLocation$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/CivicLocation$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/CivicLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    .line 93
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/rtt/CivicLocation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/CivicLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>([BLjava/lang/String;)V
    .registers 6
    .param p1, "civicTLVs"    # [B
    .param p2, "countryCode"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    .line 74
    iput-object p2, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    .line 75
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    goto :goto_29

    .line 79
    :cond_17
    const/4 v0, 0x0

    .line 80
    .local v0, "isValid":Z
    if-eqz p1, :cond_26

    array-length v2, p1

    if-lt v2, v1, :cond_26

    array-length v1, p1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_26

    .line 83
    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/CivicLocation;->parseCivicTLVs([B)Z

    move-result v0

    .line 86
    :cond_26
    iput-boolean v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    .line 87
    return-void

    .line 76
    .end local v0    # "isValid":Z
    :cond_29
    :goto_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    .line 77
    return-void
.end method

.method private blacklist formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 246
    if-eqz p2, :cond_14

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 249
    :cond_14
    const-string v0, ""

    return-object v0
.end method

.method private blacklist getSparseArrayKeys(Landroid/util/SparseArray;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .line 313
    .local p1, "sa":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 314
    .local v0, "size":I
    new-array v1, v0, [I

    .line 315
    .local v1, "keys":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_12

    .line 316
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 318
    .end local v2    # "i":I
    :cond_12
    return-object v1
.end method

.method private blacklist getSparseArrayValues(Landroid/util/SparseArray;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 328
    .local p1, "sa":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 329
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 330
    .local v1, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 331
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 333
    .end local v2    # "i":I
    :cond_14
    return-object v1
.end method

.method private blacklist isSparseArrayStringEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 292
    .local p1, "sa1":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p2, "sa2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 293
    .local v0, "size":I
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 294
    return v2

    .line 296
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_25

    .line 297
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 298
    .local v3, "sa1Value":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 299
    .local v4, "sa2Value":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 300
    return v2

    .line 296
    .end local v3    # "sa1Value":Ljava/lang/String;
    .end local v4    # "sa2Value":Ljava/lang/String;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 303
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist parseCivicTLVs([B)Z
    .registers 10
    .param p1, "civicTLVs"    # [B

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "bufferPtr":I
    array-length v1, p1

    .line 131
    .local v1, "bufferLength":I
    :goto_2
    if-ge v0, v1, :cond_29

    .line 132
    add-int/lit8 v2, v0, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 133
    .local v2, "civicAddressType":I
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    .line 134
    .local v3, "civicAddressTypeLength":I
    if-eqz v3, :cond_25

    .line 135
    add-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v3

    if-le v4, v1, :cond_17

    .line 136
    const/4 v4, 0x0

    return v4

    .line 138
    :cond_17
    iget-object v4, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v0, 0x2

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    :cond_25
    add-int/lit8 v4, v3, 0x2

    add-int/2addr v0, v4

    .line 143
    .end local v2    # "civicAddressType":I
    .end local v3    # "civicAddressTypeLength":I
    goto :goto_2

    .line 144
    :cond_29
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 255
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 256
    return v0

    .line 258
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/rtt/CivicLocation;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 259
    return v2

    .line 261
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/rtt/CivicLocation;

    .line 262
    .local v1, "other":Landroid/net/wifi/rtt/CivicLocation;
    iget-boolean v3, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    iget-boolean v4, v1, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    if-ne v3, v4, :cond_28

    iget-object v3, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    .line 263
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    iget-object v4, v1, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    .line 264
    invoke-direct {p0, v3, v4}, Landroid/net/wifi/rtt/CivicLocation;->isSparseArrayStringEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    .line 262
    :goto_29
    return v0
.end method

.method public blacklist getCivicElementValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # I

    .line 155
    iget-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 269
    iget-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Landroid/net/wifi/rtt/CivicLocation;->getSparseArrayKeys(Landroid/util/SparseArray;)[I

    move-result-object v0

    .line 270
    .local v0, "civicAddressKeys":[I
    iget-object v1, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-direct {p0, v1}, Landroid/net/wifi/rtt/CivicLocation;->getSparseArrayValues(Landroid/util/SparseArray;)[Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "civicAddressValues":[Ljava/lang/String;
    iget-boolean v2, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 272
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 271
    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 281
    iget-boolean v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    return v0
.end method

.method public blacklist toAddress()Landroid/location/Address;
    .registers 21

    .line 185
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    if-nez v1, :cond_8

    .line 186
    const/4 v1, 0x0

    return-object v1

    .line 188
    :cond_8
    new-instance v1, Landroid/location/Address;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 189
    .local v1, "address":Landroid/location/Address;
    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Room: "

    invoke-direct {v0, v3, v2}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "room":Ljava/lang/String;
    nop

    .line 191
    const/16 v3, 0x21

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, " Desk: "

    invoke-direct {v0, v4, v3}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "desk":Ljava/lang/String;
    nop

    .line 193
    const/16 v4, 0x1b

    invoke-virtual {v0, v4}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ", Flr: "

    invoke-direct {v0, v5, v4}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "floor":Ljava/lang/String;
    const/16 v5, 0x13

    invoke-virtual {v0, v5}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {v0, v7, v6}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "houseNumber":Ljava/lang/String;
    nop

    .line 196
    const/16 v8, 0x14

    invoke-virtual {v0, v8}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, "houseNumberSuffix":Ljava/lang/String;
    nop

    .line 198
    const/16 v9, 0x22

    invoke-virtual {v0, v9}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, " "

    invoke-direct {v0, v11, v10}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 200
    .local v10, "road":Ljava/lang/String;
    const/16 v12, 0x12

    invoke-virtual {v0, v12}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 201
    .local v12, "roadSuffix":Ljava/lang/String;
    const/16 v13, 0x1a

    invoke-virtual {v0, v13}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, ", Apt: "

    invoke-direct {v0, v14, v13}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 202
    .local v13, "apt":Ljava/lang/String;
    const/4 v14, 0x3

    invoke-virtual {v0, v14}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v7, v15}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 203
    .local v15, "city":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v7, v5}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "state":Ljava/lang/String;
    nop

    .line 205
    const/16 v7, 0x18

    invoke-virtual {v0, v7}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v11, v14}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 208
    .local v11, "postalCode":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 210
    .local v14, "addressLine0":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 212
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 213
    .local v7, "addressLine1":Ljava/lang/String;
    move-object/from16 v16, v15

    .line 214
    .local v16, "addressLine2":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, "addressLine3":Ljava/lang/String;
    move-object/from16 v17, v2

    .end local v2    # "room":Ljava/lang/String;
    .local v17, "room":Ljava/lang/String;
    iget-object v2, v0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    .line 218
    .local v2, "addressLine4":Ljava/lang/String;
    move-object/from16 v18, v3

    .end local v3    # "desk":Ljava/lang/String;
    .local v18, "desk":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v14}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 219
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v7}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 220
    const/4 v3, 0x2

    move-object/from16 v19, v4

    move-object/from16 v4, v16

    .end local v16    # "addressLine2":Ljava/lang/String;
    .local v4, "addressLine2":Ljava/lang/String;
    .local v19, "floor":Ljava/lang/String;
    invoke-virtual {v1, v3, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 221
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v9}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 222
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 225
    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 226
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setSubThoroughfare(Ljava/lang/String;)V

    .line 227
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 228
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    .line 229
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 230
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 231
    const/16 v3, 0x18

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 232
    iget-object v3, v0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 233
    return-object v1
.end method

.method public blacklist toSparseArray()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 114
    iget-boolean v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 115
    iget-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 117
    return-void
.end method
