.class Lcom/android/server/accounts/TokenCache$Key;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/TokenCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final packageName:Ljava/lang/String;

.field public final sigDigest:[B

.field public final tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "tokenType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "sigDigest"    # [B

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    #@5
    .line 56
    iput-object p2, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    #@7
    .line 57
    iput-object p3, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    #@9
    .line 58
    iput-object p4, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    #@b
    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 63
    if-eqz p1, :cond_1

    #@3
    instance-of v2, p1, Lcom/android/server/accounts/TokenCache$Key;

    #@5
    if-eqz v2, :cond_1

    #@7
    move-object v0, p1

    #@8
    .line 64
    check-cast v0, Lcom/android/server/accounts/TokenCache$Key;

    #@a
    .line 65
    .local v0, "cacheKey":Lcom/android/server/accounts/TokenCache$Key;
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    #@c
    iget-object v3, v0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    #@e
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 66
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    #@16
    iget-object v3, v0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    #@18
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    .line 65
    if-eqz v2, :cond_0

    #@1e
    .line 67
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    #@20
    iget-object v3, v0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    #@22
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    .line 65
    if-eqz v2, :cond_0

    #@28
    .line 68
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    #@2a
    iget-object v2, v0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    #@2c
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@2f
    move-result v1

    #@30
    .line 65
    :cond_0
    return v1

    #@31
    .line 70
    .end local v0    # "cacheKey":Lcom/android/server/accounts/TokenCache$Key;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    #@2
    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 77
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    .line 76
    xor-int/2addr v0, v1

    #@d
    .line 78
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    #@f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@12
    move-result v1

    #@13
    .line 76
    xor-int/2addr v0, v1

    #@14
    .line 79
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    #@16
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    #@19
    move-result v1

    #@1a
    .line 76
    xor-int/2addr v0, v1

    #@1b
    return v0
.end method
