.class Ljava/net/AddressCache$AddressCacheKey;
.super Ljava/lang/Object;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/AddressCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddressCacheKey"
.end annotation


# instance fields
.field private final greylist mHostname:Ljava/lang/String;

.field private final blacklist mNetId:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljava/net/AddressCache$AddressCacheKey;->mHostname:Ljava/lang/String;

    .line 52
    iput p2, p0, Ljava/net/AddressCache$AddressCacheKey;->mNetId:I

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 57
    return v0

    .line 59
    :cond_4
    instance-of v1, p1, Ljava/net/AddressCache$AddressCacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 60
    return v2

    .line 62
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/net/AddressCache$AddressCacheKey;

    .line 63
    .local v1, "lhs":Ljava/net/AddressCache$AddressCacheKey;
    iget-object v3, p0, Ljava/net/AddressCache$AddressCacheKey;->mHostname:Ljava/lang/String;

    iget-object v4, v1, Ljava/net/AddressCache$AddressCacheKey;->mHostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget v3, p0, Ljava/net/AddressCache$AddressCacheKey;->mNetId:I

    iget v4, v1, Ljava/net/AddressCache$AddressCacheKey;->mNetId:I

    if-ne v3, v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 67
    const/16 v0, 0x11

    .line 68
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ljava/net/AddressCache$AddressCacheKey;->mNetId:I

    add-int/2addr v1, v2

    .line 69
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Ljava/net/AddressCache$AddressCacheKey;->mHostname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 70
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
