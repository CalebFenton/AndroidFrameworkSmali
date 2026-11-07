.class public Lcom/android/org/conscrypt/OpenSSLMac$Hmac;
.super Lcom/android/org/conscrypt/OpenSSLMac;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hmac"
.end annotation


# instance fields
.field private blacklist ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

.field private final blacklist evpMd:J


# direct methods
.method public constructor blacklist <init>(JI)V
    .registers 5
    .param p1, "evpMd"    # J
    .param p3, "size"    # I

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(ILcom/android/org/conscrypt/OpenSSLMac-IA;)V

    .line 167
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->evpMd:J

    .line 168
    return-void
.end method


# virtual methods
.method protected blacklist doFinal()[B
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 198
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Final(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;)[B

    move-result-object v1

    return-object v1
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 185
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 186
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Update(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BII)V

    .line 187
    return-void
.end method

.method protected blacklist initContext([B)V
    .registers 5
    .param p1, "keyBytes"    # [B

    .line 172
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_CTX_new()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;-><init>(J)V

    .line 173
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->evpMd:J

    invoke-static {v0, p1, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Init_ex(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BJ)V

    .line 174
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 175
    return-void
.end method

.method protected blacklist resetContext()V
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 180
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Reset(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;)V

    .line 181
    return-void
.end method

.method protected blacklist updateDirect(JI)V
    .registers 5
    .param p1, "ptr"    # J
    .param p3, "len"    # I

    .line 191
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 192
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_UpdateDirect(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;JI)V

    .line 193
    return-void
.end method
