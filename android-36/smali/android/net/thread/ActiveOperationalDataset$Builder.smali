.class public final Landroid/net/thread/ActiveOperationalDataset$Builder;
.super Ljava/lang/Object;
.source "ActiveOperationalDataset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/thread/ActiveOperationalDataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

.field private blacklist mChannel:Ljava/lang/Integer;

.field private blacklist mChannelMask:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist mChannelPage:Ljava/lang/Integer;

.field private blacklist mExtendedPanId:[B

.field private blacklist mMeshLocalPrefix:Landroid/net/IpPrefix;

.field private blacklist mNetworkKey:[B

.field private blacklist mNetworkName:Ljava/lang/String;

.field private blacklist mPanId:Ljava/lang/Integer;

.field private blacklist mPskc:[B

.field private blacklist mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

.field private blacklist mUnknownTlvs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveTimestamp(Landroid/net/thread/ActiveOperationalDataset$Builder;)Landroid/net/thread/OperationalDatasetTimestamp;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannel(Landroid/net/thread/ActiveOperationalDataset$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannel:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelMask(Landroid/net/thread/ActiveOperationalDataset$Builder;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannelMask:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelPage(Landroid/net/thread/ActiveOperationalDataset$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannelPage:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtendedPanId(Landroid/net/thread/ActiveOperationalDataset$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mExtendedPanId:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMeshLocalPrefix(Landroid/net/thread/ActiveOperationalDataset$Builder;)Landroid/net/IpPrefix;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mMeshLocalPrefix:Landroid/net/IpPrefix;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkKey(Landroid/net/thread/ActiveOperationalDataset$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mNetworkKey:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkName(Landroid/net/thread/ActiveOperationalDataset$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPanId(Landroid/net/thread/ActiveOperationalDataset$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mPanId:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPskc(Landroid/net/thread/ActiveOperationalDataset$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mPskc:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecurityPolicy(Landroid/net/thread/ActiveOperationalDataset$Builder;)Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnknownTlvs(Landroid/net/thread/ActiveOperationalDataset$Builder;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mUnknownTlvs:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannelMask:Landroid/util/SparseArray;

    .line 683
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mUnknownTlvs:Landroid/util/SparseArray;

    .line 684
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/thread/ActiveOperationalDataset;)V
    .registers 3
    .param p1, "activeOpDataset"    # Landroid/net/thread/ActiveOperationalDataset;

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    const-string v0, "activeOpDataset cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 661
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$fgetmActiveTimestamp(Landroid/net/thread/ActiveOperationalDataset;)Landroid/net/thread/OperationalDatasetTimestamp;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    .line 662
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$fgetmNetworkName(Landroid/net/thread/ActiveOperationalDataset;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mNetworkName:Ljava/lang/String;

    .line 663
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$fgetmExtendedPanId(Landroid/net/thread/ActiveOperationalDataset;)[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mExtendedPanId:[B

    .line 664
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$fgetmPanId(Landroid/net/thread/ActiveOperationalDataset;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mPanId:Ljava/lang/Integer;

    .line 665
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$fgetmChannel(Landroid/net/thread/ActiveOperationalDataset;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannel:Ljava/lang/Integer;

    .line 666
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$fgetmChannelPage(Landroid/net/thread/ActiveOperationalDataset;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannelPage:Ljava/lang/Integer;

    .line 667
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$fgetmChannelMask(Landroid/net/thread/ActiveOperationalDataset;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$smdeepCloneSparseArray(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannelMask:Landroid/util/SparseArray;

    .line 668
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$fgetmPskc(Landroid/net/thread/ActiveOperationalDataset;)[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mPskc:[B

    .line 669
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$fgetmNetworkKey(Landroid/net/thread/ActiveOperationalDataset;)[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mNetworkKey:[B

    .line 670
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$fgetmMeshLocalPrefix(Landroid/net/thread/ActiveOperationalDataset;)Landroid/net/IpPrefix;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mMeshLocalPrefix:Landroid/net/IpPrefix;

    .line 671
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$fgetmSecurityPolicy(Landroid/net/thread/ActiveOperationalDataset;)Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    .line 672
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$fgetmUnknownTlvs(Landroid/net/thread/ActiveOperationalDataset;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$smdeepCloneSparseArray(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mUnknownTlvs:Landroid/util/SparseArray;

    .line 673
    return-void
.end method

.method private blacklist getTotalDatasetLength()I
    .registers 4

    .line 963
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mNetworkName:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 966
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1a

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    .line 973
    invoke-virtual {v1}, Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;->toTlvValue()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 975
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannelMask:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 976
    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannelMask:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 975
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 981
    .end local v1    # "i":I
    :cond_37
    add-int/lit8 v0, v0, 0x2

    .line 983
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3a
    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mUnknownTlvs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 984
    iget-object v2, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mUnknownTlvs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 983
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 987
    .end local v1    # "i":I
    :cond_51
    return v0
.end method


# virtual methods
.method public blacklist addUnknownTlv(I[B)Landroid/net/thread/ActiveOperationalDataset$Builder;
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .line 927
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mUnknownTlvs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 928
    return-object p0
.end method

.method public whitelist build()Landroid/net/thread/ActiveOperationalDataset;
    .registers 5

    .line 939
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    const-string v3, "Active Timestamp is missing"

    invoke-static {v0, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 940
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mNetworkName:Ljava/lang/String;

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    const-string v3, "Network Name is missing"

    invoke-static {v0, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 941
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mExtendedPanId:[B

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    const-string v3, "Extended PAN ID is missing"

    invoke-static {v0, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 942
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mPanId:Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    move v0, v1

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    const-string v3, "PAN ID is missing"

    invoke-static {v0, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 943
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannel:Ljava/lang/Integer;

    if-eqz v0, :cond_38

    move v0, v1

    goto :goto_39

    :cond_38
    move v0, v2

    :goto_39
    const-string v3, "Channel is missing"

    invoke-static {v0, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 944
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannelPage:Ljava/lang/Integer;

    if-eqz v0, :cond_44

    move v0, v1

    goto :goto_45

    :cond_44
    move v0, v2

    :goto_45
    const-string v3, "Channel Page is missing"

    invoke-static {v0, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 945
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannelMask:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_54

    move v0, v1

    goto :goto_55

    :cond_54
    move v0, v2

    :goto_55
    const-string v3, "Channel Mask is missing"

    invoke-static {v0, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 946
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mPskc:[B

    if-eqz v0, :cond_60

    move v0, v1

    goto :goto_61

    :cond_60
    move v0, v2

    :goto_61
    const-string v3, "PSKc is missing"

    invoke-static {v0, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 947
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mNetworkKey:[B

    if-eqz v0, :cond_6c

    move v0, v1

    goto :goto_6d

    :cond_6c
    move v0, v2

    :goto_6d
    const-string v3, "Network Key is missing"

    invoke-static {v0, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 948
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mMeshLocalPrefix:Landroid/net/IpPrefix;

    if-eqz v0, :cond_78

    move v0, v1

    goto :goto_79

    :cond_78
    move v0, v2

    :goto_79
    const-string v3, "Mesh Local Prefix is missing"

    invoke-static {v0, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 949
    iget-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    if-eqz v0, :cond_83

    goto :goto_84

    :cond_83
    move v1, v2

    :goto_84
    const-string v0, "Security Policy is missing"

    invoke-static {v1, v0}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 951
    invoke-direct {p0}, Landroid/net/thread/ActiveOperationalDataset$Builder;->getTotalDatasetLength()I

    move-result v0

    .line 952
    .local v0, "length":I
    const/16 v1, 0xfe

    if-gt v0, v1, :cond_98

    .line 959
    new-instance v1, Landroid/net/thread/ActiveOperationalDataset;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/thread/ActiveOperationalDataset;-><init>(Landroid/net/thread/ActiveOperationalDataset$Builder;Landroid/net/thread/ActiveOperationalDataset-IA;)V

    return-object v1

    .line 953
    :cond_98
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 956
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 954
    const-string v3, "Total dataset length exceeds max length %d (actual is %d)"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist setActiveTimestamp(Landroid/net/thread/OperationalDatasetTimestamp;)Landroid/net/thread/ActiveOperationalDataset$Builder;
    .registers 3
    .param p1, "activeTimestamp"    # Landroid/net/thread/OperationalDatasetTimestamp;

    .line 693
    const-string v0, "activeTimestamp cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 694
    iput-object p1, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mActiveTimestamp:Landroid/net/thread/OperationalDatasetTimestamp;

    .line 695
    return-object p0
.end method

.method public whitelist setChannel(II)Landroid/net/thread/ActiveOperationalDataset$Builder;
    .registers 8
    .param p1, "page"    # I
    .param p2, "channel"    # I

    .line 768
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_a

    const/16 v2, 0xff

    if-gt p1, v2, :cond_a

    move v2, v0

    goto :goto_b

    :cond_a
    move v2, v1

    .line 771
    :goto_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 768
    const-string v4, "Invalid channel page (page = %d, allowedRange = [0, 255])"

    invoke-static {v2, v4, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 772
    if-nez p1, :cond_3e

    .line 773
    const/16 v2, 0x1a

    const/16 v3, 0xb

    if-lt p2, v3, :cond_23

    if-gt p2, v2, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    .line 776
    :goto_24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 777
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 778
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 779
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v4, v3, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 773
    const-string v2, "Invalid channel %d in page %d (allowedChannelRange = [%d, %d])"

    invoke-static {v0, v2, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5c

    .line 781
    :cond_3e
    if-ltz p2, :cond_46

    const v2, 0xffff

    if-gt p2, v2, :cond_46

    goto :goto_47

    :cond_46
    move v0, v1

    .line 785
    :goto_47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 786
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 787
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 781
    const-string v2, "Invalid channel %d in page %d (channel = %d, allowedChannelRange = [0, 65535])"

    invoke-static {v0, v2, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 790
    :goto_5c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannelPage:Ljava/lang/Integer;

    .line 791
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannel:Ljava/lang/Integer;

    .line 792
    return-object p0
.end method

.method public whitelist setChannelMask(Landroid/util/SparseArray;)Landroid/net/thread/ActiveOperationalDataset$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;)",
            "Landroid/net/thread/ActiveOperationalDataset$Builder;"
        }
    .end annotation

    .line 802
    .local p1, "channelMask":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    const-string v0, "channelMask cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 803
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "channelMask is empty"

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 804
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$smdeepCloneSparseArray(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mChannelMask:Landroid/util/SparseArray;

    .line 805
    return-object p0
.end method

.method public whitelist setExtendedPanId([B)Landroid/net/thread/ActiveOperationalDataset$Builder;
    .registers 5
    .param p1, "extendedPanId"    # [B

    .line 730
    const-string v0, "extendedPanId cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 731
    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    array-length v2, p1

    .line 734
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 735
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 731
    const-string v2, "Invalid extended PAN ID (length = %d, expectedLength = %d)"

    invoke-static {v0, v2, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 736
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mExtendedPanId:[B

    .line 737
    return-object p0
.end method

.method public whitelist setMeshLocalPrefix(Landroid/net/IpPrefix;)Landroid/net/thread/ActiveOperationalDataset$Builder;
    .registers 7
    .param p1, "meshLocalPrefix"    # Landroid/net/IpPrefix;

    .line 863
    const-string v0, "meshLocalPrefix cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 864
    nop

    .line 865
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-ne v0, v3, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 867
    :goto_13
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 868
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 864
    const-string v4, "Invalid mesh-local prefix length (length = %d, expectedLength = %d)"

    invoke-static {v0, v4, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 869
    nop

    .line 870
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    aget-byte v0, v0, v2

    const/4 v3, -0x3

    if-ne v0, v3, :cond_33

    goto :goto_34

    :cond_33
    move v1, v2

    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mesh-local prefix must start with 0xfd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    invoke-static {v1, v0}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 872
    iput-object p1, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mMeshLocalPrefix:Landroid/net/IpPrefix;

    .line 873
    return-object p0
.end method

.method public blacklist setMeshLocalPrefix([B)Landroid/net/thread/ActiveOperationalDataset$Builder;
    .registers 7
    .param p1, "meshLocalPrefix"    # [B

    .line 886
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 887
    .local v0, "prefixLength":I
    const/4 v1, 0x0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    move v3, v1

    .line 890
    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 891
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 887
    const-string v4, "Invalid mesh-local prefix length (length = %d, expectedLength = %d)"

    invoke-static {v3, v4, v2}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 892
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 893
    .local v2, "ip6RawAddress":[B
    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    :try_start_24
    new-instance v1, Landroid/net/IpPrefix;

    .line 896
    invoke-static {v2}, Ljava/net/Inet6Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 895
    invoke-virtual {p0, v1}, Landroid/net/thread/ActiveOperationalDataset$Builder;->setMeshLocalPrefix(Landroid/net/IpPrefix;)Landroid/net/thread/ActiveOperationalDataset$Builder;

    move-result-object v1
    :try_end_31
    .catch Ljava/net/UnknownHostException; {:try_start_24 .. :try_end_31} :catch_32

    return-object v1

    .line 897
    :catch_32
    move-exception v1

    .line 899
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public whitelist setNetworkKey([B)Landroid/net/thread/ActiveOperationalDataset$Builder;
    .registers 5
    .param p1, "networkKey"    # [B

    .line 843
    const-string v0, "networkKey cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 844
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    array-length v2, p1

    .line 847
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 848
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 844
    const-string v2, "Invalid network key length (length = %d, expectedLength = %d)"

    invoke-static {v0, v2, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 849
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mNetworkKey:[B

    .line 850
    return-object p0
.end method

.method public whitelist setNetworkName(Ljava/lang/String;)Landroid/net/thread/ActiveOperationalDataset$Builder;
    .registers 3
    .param p1, "networkName"    # Ljava/lang/String;

    .line 713
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->checkNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mNetworkName:Ljava/lang/String;

    .line 714
    return-object p0
.end method

.method public whitelist setPanId(I)Landroid/net/thread/ActiveOperationalDataset$Builder;
    .registers 5
    .param p1, "panId"    # I

    .line 747
    if-ltz p1, :cond_9

    const v0, 0xfffe

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 750
    :goto_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 747
    const-string v2, "PAN ID exceeds allowed range (panid = %d, allowedRange = [0x0, 0xffff])"

    invoke-static {v0, v2, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 751
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mPanId:Ljava/lang/Integer;

    .line 752
    return-object p0
.end method

.method public whitelist setPskc([B)Landroid/net/thread/ActiveOperationalDataset$Builder;
    .registers 5
    .param p1, "pskc"    # [B

    .line 820
    const-string v0, "pskc cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 821
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    array-length v2, p1

    .line 824
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 825
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 821
    const-string v2, "Invalid PSKc length (length = %d, expectedLength = %d)"

    invoke-static {v0, v2, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 826
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mPskc:[B

    .line 827
    return-object p0
.end method

.method public whitelist setSecurityPolicy(Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;)Landroid/net/thread/ActiveOperationalDataset$Builder;
    .registers 3
    .param p1, "securityPolicy"    # Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    .line 906
    const-string v0, "securityPolicy cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 907
    iput-object p1, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mSecurityPolicy:Landroid/net/thread/ActiveOperationalDataset$SecurityPolicy;

    .line 908
    return-object p0
.end method

.method public blacklist setUnknownTlvs(Landroid/util/SparseArray;)Landroid/net/thread/ActiveOperationalDataset$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;)",
            "Landroid/net/thread/ActiveOperationalDataset$Builder;"
        }
    .end annotation

    .line 918
    .local p1, "unknownTlvs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    const-string v0, "unknownTlvs cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 919
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->-$$Nest$smdeepCloneSparseArray(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ActiveOperationalDataset$Builder;->mUnknownTlvs:Landroid/util/SparseArray;

    .line 920
    return-object p0
.end method
