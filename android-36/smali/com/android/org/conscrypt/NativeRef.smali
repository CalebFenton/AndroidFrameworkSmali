.class abstract Lcom/android/org/conscrypt/NativeRef;
.super Ljava/lang/Object;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;,
        Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;,
        Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;,
        Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;,
        Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;,
        Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;,
        Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;,
        Lcom/android/org/conscrypt/NativeRef$EC_POINT;,
        Lcom/android/org/conscrypt/NativeRef$EC_GROUP;,
        Lcom/android/org/conscrypt/NativeRef$CMAC_CTX;
    }
.end annotation


# instance fields
.field final blacklist address:J


# direct methods
.method constructor greylist-max-o <init>(J)V
    .registers 5
    .param p1, "address"    # J

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    .line 31
    iput-wide p1, p0, Lcom/android/org/conscrypt/NativeRef;->address:J

    .line 32
    return-void

    .line 29
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == 0"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract greylist-max-o doFree(J)V
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 36
    instance-of v0, p1, Lcom/android/org/conscrypt/NativeRef;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 37
    return v1

    .line 40
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/NativeRef;

    iget-wide v2, v0, Lcom/android/org/conscrypt/NativeRef;->address:J

    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeRef;->address:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeRef;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 53
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeRef;->address:J

    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/NativeRef;->doFree(J)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_12

    .line 56
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 57
    nop

    .line 58
    return-void

    .line 56
    :catchall_12
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 57
    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeRef;->address:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public blacklist isNull()Z
    .registers 5

    .line 62
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeRef;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
