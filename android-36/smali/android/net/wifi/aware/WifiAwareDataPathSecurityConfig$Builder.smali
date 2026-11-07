.class public final Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;
.super Ljava/lang/Object;
.source "WifiAwareDataPathSecurityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCipherSuite:I

.field private blacklist mPassphrase:Ljava/lang/String;

.field private blacklist mPmk:[B

.field private blacklist mPmkId:[B


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "cipherSuite"    # I

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    const/16 v0, 0x8

    if-ne p1, v0, :cond_11

    goto :goto_19

    .line 242
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid cipher suite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_19
    :goto_19
    iput p1, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mCipherSuite:I

    .line 245
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
    .registers 6

    .line 320
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPassphrase:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPmk:[B

    if-nez v0, :cond_9

    goto :goto_11

    .line 321
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only specify a Passphrase or a PMK - not both!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_11
    :goto_11
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mCipherSuite:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mCipherSuite:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    goto :goto_3d

    .line 335
    :cond_1c
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPmk:[B

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPmkId:[B

    if-eqz v0, :cond_35

    .line 339
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_56

    .line 340
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Passphrase is not support for public key cipher suite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set both PMK and PMKID for public key cipher suite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_3d
    :goto_3d
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPmk:[B

    if-eqz v0, :cond_4a

    goto :goto_52

    .line 327
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set either PMK or Passphrase for shared key cipher suite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_52
    :goto_52
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPmkId:[B

    if-nez v0, :cond_64

    .line 345
    :goto_56
    new-instance v0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mCipherSuite:I

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPmk:[B

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPmkId:[B

    iget-object v4, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPassphrase:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;-><init>(I[B[BLjava/lang/String;)V

    return-object v0

    .line 331
    :cond_64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PMKID should not set for shared key cipher suite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPmk([B)Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;
    .registers 4
    .param p1, "pmk"    # [B

    .line 284
    invoke-static {p1}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 287
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPmk:[B

    .line 288
    return-object p0

    .line 285
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PMK must 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPmkId([B)Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;
    .registers 4
    .param p1, "pmkId"    # [B

    .line 306
    invoke-static {p1}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmkId([B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 309
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPmkId:[B

    .line 310
    return-object p0

    .line 307
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PMKID must 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPskPassphrase(Ljava/lang/String;)Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;
    .registers 4
    .param p1, "pskPassphrase"    # Ljava/lang/String;

    .line 259
    invoke-static {p1}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 262
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;->mPassphrase:Ljava/lang/String;

    .line 263
    return-object p0

    .line 260
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passphrase must meet length requirements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
