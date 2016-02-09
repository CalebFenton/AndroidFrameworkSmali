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
.field private final mHostname:Ljava/lang/String;

.field private final mNetId:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "netId"    # I

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Ljava/net/AddressCache$AddressCacheKey;->mHostname:Ljava/lang/String;

    #@5
    .line 49
    iput p2, p0, Ljava/net/AddressCache$AddressCacheKey;->mNetId:I

    #@7
    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 53
    if-ne p0, p1, :cond_0

    #@4
    .line 54
    return v1

    #@5
    .line 56
    :cond_0
    instance-of v3, p1, Ljava/net/AddressCache$AddressCacheKey;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 57
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 59
    check-cast v0, Ljava/net/AddressCache$AddressCacheKey;

    #@d
    .line 60
    .local v0, "lhs":Ljava/net/AddressCache$AddressCacheKey;
    iget-object v3, p0, Ljava/net/AddressCache$AddressCacheKey;->mHostname:Ljava/lang/String;

    #@f
    iget-object v4, v0, Ljava/net/AddressCache$AddressCacheKey;->mHostname:Ljava/lang/String;

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2

    #@17
    iget v3, p0, Ljava/net/AddressCache$AddressCacheKey;->mNetId:I

    #@19
    iget v4, v0, Ljava/net/AddressCache$AddressCacheKey;->mNetId:I

    #@1b
    if-ne v3, v4, :cond_2

    #@1d
    :goto_0
    return v1

    #@1e
    :cond_2
    move v1, v2

    #@1f
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 65
    iget v1, p0, Ljava/net/AddressCache$AddressCacheKey;->mNetId:I

    #@2
    add-int/lit16 v0, v1, 0x20f

    #@4
    .line 66
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@6
    iget-object v2, p0, Ljava/net/AddressCache$AddressCacheKey;->mHostname:Ljava/lang/String;

    #@8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v2

    #@c
    add-int v0, v1, v2

    #@e
    .line 67
    return v0
.end method
