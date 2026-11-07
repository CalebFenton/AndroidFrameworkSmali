.class public final Landroid/net/thread/ActiveOperationalDataset;
.super Ljava/lang/Object;
.source "ActiveOperationalDataset.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/thread/ActiveOperationalDataset$Builder;,
        Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;
    }
.end annotation


# static fields
.field public static final whitelist CHANNEL_MAX_24_GHZ:I = 0x1a

.field public static final whitelist CHANNEL_MIN_24_GHZ:I = 0xb

.field public static final whitelist CHANNEL_PAGE_24_GHZ:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/thread/ActiveOperationalDataset;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LENGTH_CHANNEL:I = 0x3

.field public static final whitelist LENGTH_EXTENDED_PAN_ID:I = 0x8

.field public static final whitelist LENGTH_MAX_DATASET_TLVS:I = 0xfe

.field public static final whitelist LENGTH_MAX_NETWORK_NAME_BYTES:I = 0x10

.field public static final whitelist LENGTH_MESH_LOCAL_PREFIX_BITS:I = 0x40

.field public static final whitelist LENGTH_MIN_NETWORK_NAME_BYTES:I = 0x1

.field public static final whitelist LENGTH_NETWORK_KEY:I = 0x10

.field private static final blacklist LENGTH_PAN_ID:I = 0x2

.field public static final whitelist LENGTH_PSKC:I = 0x10

.field public static final blacklist MESH_LOCAL_PREFIX_FIRST_BYTE:B = -0x3t

.field public static final blacklist TYPE_ACTIVE_TIMESTAMP:I = 0xe

.field public static final blacklist TYPE_CHANNEL:I = 0x0

.field public static final blacklist TYPE_CHANNEL_MASK:I = 0x35

.field public static final blacklist TYPE_EXTENDED_PAN_ID:I = 0x2

.field public static final blacklist TYPE_MESH_LOCAL_PREFIX:I = 0x7

.field public static final blacklist TYPE_NETWORK_KEY:I = 0x5

.field public static final blacklist TYPE_NETWORK_NAME:I = 0x3

.field public static final blacklist TYPE_PAN_ID:I = 0x1

.field public static final blacklist TYPE_PSKC:I = 0x4

.field public static final blacklist TYPE_SECURITY_POLICY:I = 0xc


# instance fields
.field private final blacklist mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

.field private final blacklist mChannel:I

.field private final blacklist mChannelMask:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist mChannelPage:I

.field private final blacklist mExtendedPanId:[B

.field private final blacklist mMeshLocalPrefix:Landroid/net/IpPrefix;

.field private final blacklist mNetworkKey:[B

.field private final blacklist mNetworkName:Ljava/lang/String;

.field private final blacklist mPanId:I

.field private final blacklist mPskc:[B

.field private final blacklist mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

.field private final blacklist mUnknownTlvs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveTimestamp(Landroid/net/thread/ActiveOperationalDataset;)Landroid/net/thread/OperationalDatasetTimestamp;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannel(Landroid/net/thread/ActiveOperationalDataset;)I
    .registers 1

    iget p0, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelMask(Landroid/net/thread/ActiveOperationalDataset;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannelMask:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelPage(Landroid/net/thread/ActiveOperationalDataset;)I
    .registers 1

    iget p0, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannelPage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtendedPanId(Landroid/net/thread/ActiveOperationalDataset;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset;->mExtendedPanId:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMeshLocalPrefix(Landroid/net/thread/ActiveOperationalDataset;)Landroid/net/IpPrefix;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset;->mMeshLocalPrefix:Landroid/net/IpPrefix;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkKey(Landroid/net/thread/ActiveOperationalDataset;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkKey:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkName(Landroid/net/thread/ActiveOperationalDataset;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPanId(Landroid/net/thread/ActiveOperationalDataset;)I
    .registers 1

    iget p0, p0, Landroid/net/thread/ActiveOperationalDataset;->mPanId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPskc(Landroid/net/thread/ActiveOperationalDataset;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset;->mPskc:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecurityPolicy(Landroid/net/thread/ActiveOperationalDataset;)Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset;->mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnknownTlvs(Landroid/net/thread/ActiveOperationalDataset;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset;->mUnknownTlvs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smdeepCloneSparseArray(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 1

    invoke-static {p0}, Landroid/net/thread/ActiveOperationalDataset;->deepCloneSparseArray(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smdeepHashCode([Ljava/lang/Object;)I
    .registers 1

    invoke-static {p0}, Landroid/net/thread/ActiveOperationalDataset;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Landroid/net/thread/ActiveOperationalDataset$1;

    invoke-direct {v0}, Landroid/net/thread/ActiveOperationalDataset$1;-><init>()V

    sput-object v0, Landroid/net/thread/ActiveOperationalDataset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/thread/ActiveOperationalDataset$Builder;)V
    .registers 16
    .param p1, "builder"    # Landroid/net/thread/ActiveOperationalDataset$Builder;

    .line 170
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset$Builder;->-$$Nest$fgetmActiveTimestamp(Landroid/net/thread/ActiveOperationalDataset$Builder;)Landroid/net/thread/OperationalDatasetTimestamp;

    move-result-object v0

    .line 171
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/thread/OperationalDatasetTimestamp;

    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset$Builder;->-$$Nest$fgetmNetworkName(Landroid/net/thread/ActiveOperationalDataset$Builder;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset$Builder;->-$$Nest$fgetmExtendedPanId(Landroid/net/thread/ActiveOperationalDataset$Builder;)[B

    move-result-object v0

    .line 173
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [B

    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset$Builder;->-$$Nest$fgetmPanId(Landroid/net/thread/ActiveOperationalDataset$Builder;)Ljava/lang/Integer;

    move-result-object v0

    .line 174
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset$Builder;->-$$Nest$fgetmChannelPage(Landroid/net/thread/ActiveOperationalDataset$Builder;)Ljava/lang/Integer;

    move-result-object v0

    .line 175
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset$Builder;->-$$Nest$fgetmChannel(Landroid/net/thread/ActiveOperationalDataset$Builder;)Ljava/lang/Integer;

    move-result-object v0

    .line 176
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset$Builder;->-$$Nest$fgetmChannelMask(Landroid/net/thread/ActiveOperationalDataset$Builder;)Landroid/util/SparseArray;

    move-result-object v0

    .line 177
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset$Builder;->-$$Nest$fgetmPskc(Landroid/net/thread/ActiveOperationalDataset$Builder;)[B

    move-result-object v0

    .line 178
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [B

    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset$Builder;->-$$Nest$fgetmNetworkKey(Landroid/net/thread/ActiveOperationalDataset$Builder;)[B

    move-result-object v0

    .line 179
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [B

    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset$Builder;->-$$Nest$fgetmMeshLocalPrefix(Landroid/net/thread/ActiveOperationalDataset$Builder;)Landroid/net/IpPrefix;

    move-result-object v0

    .line 180
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/net/IpPrefix;

    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset$Builder;->-$$Nest$fgetmSecurityPolicy(Landroid/net/thread/ActiveOperationalDataset$Builder;)Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    move-result-object v0

    .line 181
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset$Builder;->-$$Nest$fgetmUnknownTlvs(Landroid/net/thread/ActiveOperationalDataset$Builder;)Landroid/util/SparseArray;

    move-result-object v0

    .line 182
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/util/SparseArray;

    .line 170
    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Landroid/net/thread/ActiveOperationalDataset;-><init>(Landroid/net/thread/OperationalDatasetTimestamp;Ljava/lang/String;[BIIILandroid/util/SparseArray;[B[BLandroid/net/IpPrefix;Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;Landroid/util/SparseArray;)V

    .line 183
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/thread/ActiveOperationalDataset$Builder;Landroid/net/thread/ActiveOperationalDataset-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/thread/ActiveOperationalDataset;-><init>(Landroid/net/thread/ActiveOperationalDataset$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/thread/OperationalDatasetTimestamp;Ljava/lang/String;[BIIILandroid/util/SparseArray;[B[BLandroid/net/IpPrefix;Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;Landroid/util/SparseArray;)V
    .registers 14
    .param p1, "activeTimestamp"    # Landroid/net/thread/OperationalDatasetTimestamp;
    .param p2, "networkName"    # Ljava/lang/String;
    .param p3, "extendedPanId"    # [B
    .param p4, "panId"    # I
    .param p5, "channelPage"    # I
    .param p6, "channel"    # I
    .param p8, "pskc"    # [B
    .param p9, "networkKey"    # [B
    .param p10, "meshLocalPrefix"    # Landroid/net/IpPrefix;
    .param p11, "securityPolicy"    # Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/thread/OperationalDatasetTimestamp;",
            "Ljava/lang/String;",
            "[BIII",
            "Landroid/util/SparseArray<",
            "[B>;[B[B",
            "Landroid/net/IpPrefix;",
            "Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;",
            "Landroid/util/SparseArray<",
            "[B>;)V"
        }
    .end annotation

    .line 197
    .local p7, "channelMask":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p12, "unknownTlvs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Landroid/net/thread/ActiveOperationalDataset;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    .line 199
    iput-object p2, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkName:Ljava/lang/String;

    .line 200
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mExtendedPanId:[B

    .line 201
    iput p4, p0, Landroid/net/thread/ActiveOperationalDataset;->mPanId:I

    .line 202
    iput p6, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannel:I

    .line 203
    iput p5, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannelPage:I

    .line 204
    invoke-static {p7}, Landroid/net/thread/ActiveOperationalDataset;->deepCloneSparseArray(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannelMask:Landroid/util/SparseArray;

    .line 205
    invoke-virtual {p8}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mPskc:[B

    .line 206
    invoke-virtual {p9}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkKey:[B

    .line 207
    iput-object p10, p0, Landroid/net/thread/ActiveOperationalDataset;->mMeshLocalPrefix:Landroid/net/IpPrefix;

    .line 208
    iput-object p11, p0, Landroid/net/thread/ActiveOperationalDataset;->mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    .line 209
    invoke-static {p12}, Landroid/net/thread/ActiveOperationalDataset;->deepCloneSparseArray(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mUnknownTlvs:Landroid/util/SparseArray;

    .line 210
    return-void
.end method

.method private static blacklist areByteSparseArraysEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Landroid/util/SparseArray<",
            "[B>;)Z"
        }
    .end annotation

    .line 368
    .local p0, "first":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p1, "second":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 369
    return v0

    .line 370
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_3e

    if-nez p1, :cond_a

    goto :goto_3e

    .line 372
    :cond_a
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 373
    return v1

    .line 375
    :cond_15
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 376
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 377
    .local v3, "firstKey":I
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 378
    .local v4, "secondKey":I
    if-eq v3, v4, :cond_27

    .line 379
    return v1

    .line 382
    :cond_27
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 383
    .local v5, "firstValue":[B
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 384
    .local v6, "secondValue":[B
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_3a

    .line 385
    return v1

    .line 375
    .end local v3    # "firstKey":I
    .end local v4    # "secondKey":I
    .end local v5    # "firstValue":[B
    .end local v6    # "secondValue":[B
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 388
    .end local v2    # "i":I
    :cond_3d
    return v0

    .line 371
    :cond_3e
    :goto_3e
    return v1
.end method

.method static blacklist checkNetworkName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "networkName"    # Ljava/lang/String;

    .line 626
    const-string v0, "networkName cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 628
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    .line 629
    .local v0, "nameLength":I
    const/16 v1, 0x10

    const/4 v2, 0x1

    if-lt v0, v2, :cond_15

    if-gt v0, v1, :cond_15

    move v3, v2

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    .line 633
    :goto_16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 634
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 635
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4, v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 629
    const-string v2, "Invalid network name (length = %d, expectedLengthRange = [%d, %d])"

    invoke-static {v3, v2, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 636
    return-object p0
.end method

.method private static blacklist decodeChannelMask([B)Landroid/util/SparseArray;
    .registers 9
    .param p0, "tlvValue"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 323
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 324
    .local v0, "channelMask":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    const/4 v1, 0x0

    .line 325
    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_4e

    .line 326
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 327
    .local v1, "channelPage":I
    array-length v3, p0

    if-ge v2, v3, :cond_46

    .line 332
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 333
    .local v2, "maskLength":I
    add-int v4, v3, v2

    array-length v5, p0

    if-gt v4, v5, :cond_29

    .line 341
    add-int v4, v3, v2

    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    add-int v1, v3, v2

    .line 343
    .end local v2    # "maskLength":I
    .end local v3    # "i":I
    .local v1, "i":I
    goto :goto_6

    .line 334
    .local v1, "channelPage":I
    .restart local v2    # "maskLength":I
    .restart local v3    # "i":I
    :cond_29
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 338
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    array-length v7, p0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 335
    const-string v6, "Invalid channel mask - channel mask is incomplete (offset = %d, length = %d, totalLength = %d)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 328
    .end local v3    # "i":I
    .local v2, "i":I
    :cond_46
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid channel mask - channel mask length is missing"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 344
    .end local v2    # "i":I
    .local v1, "i":I
    :cond_4e
    return-object v0
.end method

.method private static blacklist deepCloneSparseArray(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;)",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 512
    .local p0, "src":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 513
    .local v0, "dst":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 514
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 516
    .end local v1    # "i":I
    :cond_26
    return-object v0
.end method

.method private static varargs blacklist deepHashCode([Ljava/lang/Object;)I
    .registers 2
    .param p0, "values"    # [Ljava/lang/Object;

    .line 394
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static blacklist encodeChannelMask(Landroid/util/SparseArray;Ljava/io/ByteArrayOutputStream;)V
    .registers 8
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/io/ByteArrayOutputStream;",
            ")V"
        }
    .end annotation

    .line 349
    .local p0, "channelMask":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 351
    .local v0, "entryStream":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_25

    .line 352
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 353
    .local v2, "key":I
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 354
    .local v4, "value":[B
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 355
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 356
    array-length v5, v4

    invoke-virtual {v0, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 351
    .end local v2    # "key":I
    .end local v4    # "value":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 359
    .end local v1    # "i":I
    :cond_25
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 361
    .local v1, "entries":[B
    const/16 v2, 0x35

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 362
    array-length v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 363
    array-length v2, v1

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 364
    return-void
.end method

.method public static whitelist fromThreadTlvs([B)Landroid/net/thread/ActiveOperationalDataset;
    .registers 9
    .param p0, "tlvs"    # [B

    .line 226
    const-string v0, "tlvs cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    array-length v0, p0

    const/16 v1, 0xfe

    if-gt v0, v1, :cond_77

    .line 234
    new-instance v0, Landroid/net/thread/ActiveOperationalDataset$Builder;

    invoke-direct {v0}, Landroid/net/thread/ActiveOperationalDataset$Builder;-><init>()V

    .line 235
    .local v0, "builder":Landroid/net/thread/ActiveOperationalDataset$Builder;
    const/4 v1, 0x0

    .line 236
    .local v1, "i":I
    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_69

    .line 237
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 238
    .local v1, "type":I
    array-length v3, p0

    if-ge v2, v3, :cond_50

    .line 245
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 246
    .local v2, "length":I
    add-int v4, v3, v2

    array-length v5, p0

    if-gt v4, v5, :cond_33

    .line 254
    add-int v4, v3, v2

    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v0, v1, v4}, Landroid/net/thread/ActiveOperationalDataset;->initWithTlv(Landroid/net/thread/ActiveOperationalDataset$Builder;I[B)V

    .line 255
    add-int v1, v3, v2

    .line 256
    .end local v2    # "length":I
    .end local v3    # "i":I
    .local v1, "i":I
    goto :goto_10

    .line 247
    .local v1, "type":I
    .restart local v2    # "length":I
    .restart local v3    # "i":I
    :cond_33
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    array-length v7, p0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 248
    const-string v6, "Found TLV type %d with length %d which exceeds the remaining data in the operational dataset with length %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 239
    .end local v3    # "i":I
    .local v2, "i":I
    :cond_50
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 240
    const-string v5, "Found TLV type %d at end of operational dataset with length %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    .end local v2    # "i":I
    .local v1, "i":I
    :cond_69
    :try_start_69
    invoke-virtual {v0}, Landroid/net/thread/ActiveOperationalDataset$Builder;->build()Landroid/net/thread/ActiveOperationalDataset;

    move-result-object v2
    :try_end_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_69 .. :try_end_6d} :catch_6e

    return-object v2

    .line 259
    :catch_6e
    move-exception v2

    .line 260
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to build the ActiveOperationalDataset object"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 228
    .end local v0    # "builder":Landroid/net/thread/ActiveOperationalDataset$Builder;
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 229
    const-string v2, "tlvs length exceeds max length %d (actual is %d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist initWithTlv(Landroid/net/thread/ActiveOperationalDataset$Builder;I[B)V
    .registers 9
    .param p0, "builder"    # Landroid/net/thread/ActiveOperationalDataset$Builder;
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .line 268
    array-length v0, p2

    const/16 v1, 0xfc

    if-gt v0, v1, :cond_9d

    .line 275
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_bc

    .line 317
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0, p2}, Landroid/net/thread/ActiveOperationalDataset$Builder;->addUnknownTlv(I[B)Landroid/net/thread/ActiveOperationalDataset$Builder;

    goto/16 :goto_9c

    .line 314
    :sswitch_12
    invoke-static {p2}, Landroid/net/thread/ActiveOperationalDataset;->decodeChannelMask([B)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/thread/ActiveOperationalDataset$Builder;->setChannelMask(Landroid/util/SparseArray;)Landroid/net/thread/ActiveOperationalDataset$Builder;

    .line 315
    goto/16 :goto_9c

    .line 311
    :sswitch_1b
    invoke-static {p2}, Landroid/net/thread/OperationalDatasetTimestamp;->fromTlvValue([B)Landroid/net/thread/OperationalDatasetTimestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/thread/ActiveOperationalDataset$Builder;->setActiveTimestamp(Landroid/net/thread/OperationalDatasetTimestamp;)Landroid/net/thread/ActiveOperationalDataset$Builder;

    .line 312
    goto/16 :goto_9c

    .line 308
    :sswitch_24
    invoke-static {p2}, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->fromTlvValue([B)Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/thread/ActiveOperationalDataset$Builder;->setSecurityPolicy(Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;)Landroid/net/thread/ActiveOperationalDataset$Builder;

    .line 309
    goto/16 :goto_9c

    .line 305
    :sswitch_2d
    invoke-virtual {p0, p2}, Landroid/net/thread/ActiveOperationalDataset$Builder;->setMeshLocalPrefix([B)Landroid/net/thread/ActiveOperationalDataset$Builder;

    .line 306
    goto/16 :goto_9c

    .line 302
    :sswitch_32
    invoke-virtual {p0, p2}, Landroid/net/thread/ActiveOperationalDataset$Builder;->setNetworkKey([B)Landroid/net/thread/ActiveOperationalDataset$Builder;

    .line 303
    goto :goto_9c

    .line 299
    :sswitch_36
    invoke-virtual {p0, p2}, Landroid/net/thread/ActiveOperationalDataset$Builder;->setPskc([B)Landroid/net/thread/ActiveOperationalDataset$Builder;

    .line 300
    goto :goto_9c

    .line 296
    :sswitch_3a
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Landroid/net/thread/ActiveOperationalDataset$Builder;->setNetworkName(Ljava/lang/String;)Landroid/net/thread/ActiveOperationalDataset$Builder;

    .line 297
    goto :goto_9c

    .line 293
    :sswitch_45
    invoke-virtual {p0, p2}, Landroid/net/thread/ActiveOperationalDataset$Builder;->setExtendedPanId([B)Landroid/net/thread/ActiveOperationalDataset$Builder;

    .line 294
    goto :goto_9c

    .line 285
    :sswitch_49
    array-length v3, p2

    if-ne v3, v0, :cond_4e

    move v3, v1

    goto :goto_4f

    :cond_4e
    move v3, v2

    :goto_4f
    array-length v4, p2

    .line 288
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 285
    const-string v4, "Invalid PAN ID (length = %d, expectedLength = %d)"

    invoke-static {v3, v4, v0}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 290
    aget-byte v0, p2, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/net/thread/ActiveOperationalDataset$Builder;->setPanId(I)Landroid/net/thread/ActiveOperationalDataset$Builder;

    .line 291
    goto :goto_9c

    .line 277
    :sswitch_70
    array-length v3, p2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_76

    move v3, v1

    goto :goto_77

    :cond_76
    move v3, v2

    :goto_77
    array-length v5, p2

    .line 280
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 277
    const-string v5, "Invalid channel (length = %d, expectedLength = %d)"

    invoke-static {v3, v5, v4}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 282
    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/net/thread/ActiveOperationalDataset$Builder;->setChannel(II)Landroid/net/thread/ActiveOperationalDataset$Builder;

    .line 283
    nop

    .line 320
    :goto_9c
    return-void

    .line 269
    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    and-int/lit16 v2, p1, 0xff

    .line 272
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 270
    const-string v2, "Length of TLV %d exceeds %d (actualLength = %d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_bc
    .sparse-switch
        0x0 -> :sswitch_70
        0x1 -> :sswitch_49
        0x2 -> :sswitch_45
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_36
        0x5 -> :sswitch_32
        0x7 -> :sswitch_2d
        0xc -> :sswitch_24
        0xe -> :sswitch_1b
        0x35 -> :sswitch_12
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 571
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 572
    return v0

    .line 573
    :cond_4
    instance-of v1, p1, Landroid/net/thread/ActiveOperationalDataset;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 574
    return v2

    .line 576
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/thread/ActiveOperationalDataset;

    .line 577
    .local v1, "otherDataset":Landroid/net/thread/ActiveOperationalDataset;
    iget-object v3, p0, Landroid/net/thread/ActiveOperationalDataset;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    iget-object v4, v1, Landroid/net/thread/ActiveOperationalDataset;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    invoke-virtual {v3, v4}, Landroid/net/thread/OperationalDatasetTimestamp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkName:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/thread/ActiveOperationalDataset;->mNetworkName:Ljava/lang/String;

    .line 578
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/thread/ActiveOperationalDataset;->mExtendedPanId:[B

    iget-object v4, v1, Landroid/net/thread/ActiveOperationalDataset;->mExtendedPanId:[B

    .line 579
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget v3, p0, Landroid/net/thread/ActiveOperationalDataset;->mPanId:I

    iget v4, v1, Landroid/net/thread/ActiveOperationalDataset;->mPanId:I

    if-ne v3, v4, :cond_7a

    iget v3, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannelPage:I

    iget v4, v1, Landroid/net/thread/ActiveOperationalDataset;->mChannelPage:I

    if-ne v3, v4, :cond_7a

    iget v3, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannel:I

    iget v4, v1, Landroid/net/thread/ActiveOperationalDataset;->mChannel:I

    if-ne v3, v4, :cond_7a

    iget-object v3, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannelMask:Landroid/util/SparseArray;

    iget-object v4, v1, Landroid/net/thread/ActiveOperationalDataset;->mChannelMask:Landroid/util/SparseArray;

    .line 583
    invoke-static {v3, v4}, Landroid/net/thread/ActiveOperationalDataset;->areByteSparseArraysEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/thread/ActiveOperationalDataset;->mPskc:[B

    iget-object v4, v1, Landroid/net/thread/ActiveOperationalDataset;->mPskc:[B

    .line 584
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkKey:[B

    iget-object v4, v1, Landroid/net/thread/ActiveOperationalDataset;->mNetworkKey:[B

    .line 585
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/thread/ActiveOperationalDataset;->mMeshLocalPrefix:Landroid/net/IpPrefix;

    iget-object v4, v1, Landroid/net/thread/ActiveOperationalDataset;->mMeshLocalPrefix:Landroid/net/IpPrefix;

    .line 586
    invoke-virtual {v3, v4}, Landroid/net/IpPrefix;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/thread/ActiveOperationalDataset;->mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    iget-object v4, v1, Landroid/net/thread/ActiveOperationalDataset;->mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    .line 587
    invoke-virtual {v3, v4}, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/thread/ActiveOperationalDataset;->mUnknownTlvs:Landroid/util/SparseArray;

    iget-object v4, v1, Landroid/net/thread/ActiveOperationalDataset;->mUnknownTlvs:Landroid/util/SparseArray;

    .line 588
    invoke-static {v3, v4}, Landroid/net/thread/ActiveOperationalDataset;->areByteSparseArraysEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_7a

    goto :goto_7b

    :cond_7a
    move v0, v2

    .line 577
    :goto_7b
    return v0
.end method

.method public whitelist getActiveTimestamp()Landroid/net/thread/OperationalDatasetTimestamp;
    .registers 2

    .line 466
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    return-object v0
.end method

.method public whitelist getChannel()I
    .registers 2

    .line 492
    iget v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannel:I

    return v0
.end method

.method public whitelist getChannelMask()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannelMask:Landroid/util/SparseArray;

    invoke-static {v0}, Landroid/net/thread/ActiveOperationalDataset;->deepCloneSparseArray(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChannelPage()I
    .registers 2

    .line 498
    iget v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannelPage:I

    return v0
.end method

.method public whitelist getExtendedPanId()[B
    .registers 2

    .line 480
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mExtendedPanId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getMeshLocalPrefix()Landroid/net/IpPrefix;
    .registers 2

    .line 539
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mMeshLocalPrefix:Landroid/net/IpPrefix;

    return-object v0
.end method

.method public whitelist getNetworkKey()[B
    .registers 2

    .line 530
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getNetworkName()Ljava/lang/String;
    .registers 2

    .line 473
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPanId()I
    .registers 2

    .line 486
    iget v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mPanId:I

    return v0
.end method

.method public whitelist getPskc()[B
    .registers 2

    .line 523
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mPskc:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getSecurityPolicy()Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;
    .registers 2

    .line 545
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    return-object v0
.end method

.method public blacklist getUnknownTlvs()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mUnknownTlvs:Landroid/util/SparseArray;

    invoke-static {v0}, Landroid/net/thread/ActiveOperationalDataset;->deepCloneSparseArray(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 12

    .line 594
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    iget-object v1, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset;->mExtendedPanId:[B

    iget v3, p0, Landroid/net/thread/ActiveOperationalDataset;->mPanId:I

    .line 598
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannel:I

    .line 599
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannelPage:I

    .line 600
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannelMask:Landroid/util/SparseArray;

    iget-object v7, p0, Landroid/net/thread/ActiveOperationalDataset;->mPskc:[B

    iget-object v8, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkKey:[B

    iget-object v9, p0, Landroid/net/thread/ActiveOperationalDataset;->mMeshLocalPrefix:Landroid/net/IpPrefix;

    iget-object v10, p0, Landroid/net/thread/ActiveOperationalDataset;->mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 594
    invoke-static {v0}, Landroid/net/thread/ActiveOperationalDataset;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{networkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 612
    invoke-virtual {p0}, Landroid/net/thread/ActiveOperationalDataset;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 613
    const-string v2, ", extendedPanId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 614
    invoke-virtual {p0}, Landroid/net/thread/ActiveOperationalDataset;->getExtendedPanId()[B

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 615
    const-string v2, ", panId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 616
    invoke-virtual {p0}, Landroid/net/thread/ActiveOperationalDataset;->getPanId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 617
    const-string v2, ", channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 618
    invoke-virtual {p0}, Landroid/net/thread/ActiveOperationalDataset;->getChannel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 619
    const-string v2, ", activeTimestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 620
    invoke-virtual {p0}, Landroid/net/thread/ActiveOperationalDataset;->getActiveTimestamp()Landroid/net/thread/OperationalDatasetTimestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 621
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist toThreadTlvs()[B
    .registers 9

    .line 407
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 409
    .local v0, "dataset":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 410
    iget-object v1, p0, Landroid/net/thread/ActiveOperationalDataset;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    invoke-virtual {v1}, Landroid/net/thread/OperationalDatasetTimestamp;->toTlvValue()[B

    move-result-object v1

    .line 411
    .local v1, "activeTimestampBytes":[B
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 412
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 414
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 415
    iget-object v4, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkName:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 416
    .local v4, "networkNameBytes":[B
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 417
    array-length v5, v4

    invoke-virtual {v0, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 419
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 420
    iget-object v6, p0, Landroid/net/thread/ActiveOperationalDataset;->mExtendedPanId:[B

    array-length v6, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 421
    iget-object v6, p0, Landroid/net/thread/ActiveOperationalDataset;->mExtendedPanId:[B

    iget-object v7, p0, Landroid/net/thread/ActiveOperationalDataset;->mExtendedPanId:[B

    array-length v7, v7

    invoke-virtual {v0, v6, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 423
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 424
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 425
    iget v5, p0, Landroid/net/thread/ActiveOperationalDataset;->mPanId:I

    shr-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 426
    iget v5, p0, Landroid/net/thread/ActiveOperationalDataset;->mPanId:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 428
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 429
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 430
    iget v2, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannelPage:I

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 431
    iget v2, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannel:I

    shr-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 432
    iget v2, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannel:I

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 434
    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset;->mChannelMask:Landroid/util/SparseArray;

    invoke-static {v2, v0}, Landroid/net/thread/ActiveOperationalDataset;->encodeChannelMask(Landroid/util/SparseArray;Ljava/io/ByteArrayOutputStream;)V

    .line 436
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 437
    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset;->mPskc:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 438
    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset;->mPskc:[B

    iget-object v5, p0, Landroid/net/thread/ActiveOperationalDataset;->mPskc:[B

    array-length v5, v5

    invoke-virtual {v0, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 440
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 441
    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkKey:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 442
    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkKey:[B

    iget-object v5, p0, Landroid/net/thread/ActiveOperationalDataset;->mNetworkKey:[B

    array-length v5, v5

    invoke-virtual {v0, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 444
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 445
    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset;->mMeshLocalPrefix:Landroid/net/IpPrefix;

    invoke-virtual {v2}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 446
    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset;->mMeshLocalPrefix:Landroid/net/IpPrefix;

    invoke-virtual {v2}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v2

    iget-object v5, p0, Landroid/net/thread/ActiveOperationalDataset;->mMeshLocalPrefix:Landroid/net/IpPrefix;

    invoke-virtual {v5}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 448
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 449
    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset;->mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    invoke-virtual {v2}, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->toTlvValue()[B

    move-result-object v2

    .line 450
    .local v2, "securityPolicyBytes":[B
    array-length v5, v2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 451
    array-length v5, v2

    invoke-virtual {v0, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 453
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c6
    iget-object v6, p0, Landroid/net/thread/ActiveOperationalDataset;->mUnknownTlvs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_ea

    .line 454
    iget-object v6, p0, Landroid/net/thread/ActiveOperationalDataset;->mUnknownTlvs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 455
    .local v6, "value":[B
    iget-object v7, p0, Landroid/net/thread/ActiveOperationalDataset;->mUnknownTlvs:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 456
    array-length v7, v6

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 457
    array-length v7, v6

    invoke-virtual {v0, v6, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 453
    .end local v6    # "value":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_c6

    .line 460
    .end local v5    # "i":I
    :cond_ea
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 566
    invoke-virtual {p0}, Landroid/net/thread/ActiveOperationalDataset;->toThreadTlvs()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 567
    return-void
.end method
