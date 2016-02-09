.class Lcom/android/server/accounts/TokenCache;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/TokenCache$Value;,
        Lcom/android/server/accounts/TokenCache$Key;,
        Lcom/android/server/accounts/TokenCache$TokenLruCache;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_CHARS:I = 0xfa00


# instance fields
.field private mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 176
    new-instance v0, Lcom/android/server/accounts/TokenCache$TokenLruCache;

    #@5
    invoke-direct {v0}, Lcom/android/server/accounts/TokenCache$TokenLruCache;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    #@a
    .line 34
    return-void
.end method


# virtual methods
.method public get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "tokenType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "sigDigest"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 220
    new-instance v2, Lcom/android/server/accounts/TokenCache$Key;

    #@3
    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/accounts/TokenCache$Key;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    #@6
    .line 221
    .local v2, "k":Lcom/android/server/accounts/TokenCache$Key;
    iget-object v4, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    #@8
    invoke-virtual {v4, v2}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Lcom/android/server/accounts/TokenCache$Value;

    #@e
    .line 222
    .local v3, "v":Lcom/android/server/accounts/TokenCache$Value;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@11
    move-result-wide v0

    #@12
    .line 223
    .local v0, "currentTime":J
    if-eqz v3, :cond_0

    #@14
    iget-wide v4, v3, Lcom/android/server/accounts/TokenCache$Value;->expiryEpochMillis:J

    #@16
    cmp-long v4, v0, v4

    #@18
    if-gez v4, :cond_0

    #@1a
    .line 224
    iget-object v4, v3, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    #@1c
    return-object v4

    #@1d
    .line 225
    :cond_0
    if-eqz v3, :cond_1

    #@1f
    .line 226
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@21
    iget-object v5, v3, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    #@23
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 228
    :cond_1
    return-object v6
.end method

.method public put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "tokenType"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "sigDigest"    # [B
    .param p6, "expiryMillis"    # J

    #@0
    .prologue
    .line 195
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 196
    if-eqz p2, :cond_0

    #@5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v2

    #@9
    cmp-long v2, v2, p6

    #@b
    if-lez v2, :cond_1

    #@d
    .line 197
    :cond_0
    return-void

    #@e
    .line 199
    :cond_1
    new-instance v0, Lcom/android/server/accounts/TokenCache$Key;

    #@10
    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/server/accounts/TokenCache$Key;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    #@13
    .line 200
    .local v0, "k":Lcom/android/server/accounts/TokenCache$Key;
    new-instance v1, Lcom/android/server/accounts/TokenCache$Value;

    #@15
    invoke-direct {v1, p2, p6, p7}, Lcom/android/server/accounts/TokenCache$Value;-><init>(Ljava/lang/String;J)V

    #@18
    .line 201
    .local v1, "v":Lcom/android/server/accounts/TokenCache$Value;
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    #@1a
    invoke-virtual {v2, v0, v1}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->putToken(Lcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;)V

    #@1d
    .line 194
    return-void
.end method

.method public remove(Landroid/accounts/Account;)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->evict(Landroid/accounts/Account;)V

    #@5
    .line 212
    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->evict(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 208
    return-void
.end method
