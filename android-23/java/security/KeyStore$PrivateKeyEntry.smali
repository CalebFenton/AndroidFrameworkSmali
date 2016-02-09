.class public final Ljava/security/KeyStore$PrivateKeyEntry;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivateKeyEntry"
.end annotation


# instance fields
.field private chain:[Ljava/security/cert/Certificate;

.field private privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    .locals 8
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1202
    if-nez p1, :cond_0

    #@6
    .line 1203
    new-instance v4, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v5, "privateKey == null"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 1205
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 1206
    new-instance v4, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v5, "chain == null"

    #@16
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v4

    #@1a
    .line 1209
    :cond_1
    array-length v4, p2

    #@1b
    if-nez v4, :cond_2

    #@1d
    .line 1210
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v5, "chain.length == 0"

    #@22
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v4

    #@26
    .line 1214
    :cond_2
    aget-object v4, p2, v5

    #@28
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 1215
    .local v3, "s":Ljava/lang/String;
    aget-object v4, p2, v5

    #@2e
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@31
    move-result-object v4

    #@32
    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v4

    #@3e
    if-nez v4, :cond_3

    #@40
    .line 1216
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@42
    const-string/jumbo v5, "Algorithm of private key does not match algorithm of public key in end certificate of entry (with index number: 0)"

    #@45
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v4

    #@49
    .line 1221
    :cond_3
    const/4 v1, 0x1

    #@4a
    .local v1, "i":I
    :goto_0
    array-length v4, p2

    #@4b
    if-ge v1, v4, :cond_5

    #@4d
    .line 1222
    aget-object v4, p2, v1

    #@4f
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v4

    #@57
    if-nez v4, :cond_4

    #@59
    .line 1223
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5b
    const-string/jumbo v5, "Certificates from the given chain have different types"

    #@5e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v4

    #@62
    .line 1221
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@64
    goto :goto_0

    #@65
    .line 1228
    :cond_5
    const/4 v2, 0x1

    #@66
    .line 1230
    .local v2, "isAllX509Certificates":Z
    array-length v6, p2

    #@67
    move v4, v5

    #@68
    :goto_1
    if-ge v4, v6, :cond_6

    #@6a
    aget-object v0, p2, v4

    #@6c
    .line 1231
    .local v0, "cert":Ljava/security/cert/Certificate;
    instance-of v7, v0, Ljava/security/cert/X509Certificate;

    #@6e
    if-nez v7, :cond_7

    #@70
    .line 1232
    const/4 v2, 0x0

    #@71
    .line 1237
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    :cond_6
    if-eqz v2, :cond_8

    #@73
    .line 1238
    array-length v4, p2

    #@74
    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    #@76
    iput-object v4, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@78
    .line 1242
    :goto_2
    iget-object v4, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@7a
    array-length v6, p2

    #@7b
    invoke-static {p2, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@7e
    .line 1243
    iput-object p1, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privateKey:Ljava/security/PrivateKey;

    #@80
    .line 1201
    return-void

    #@81
    .line 1230
    .restart local v0    # "cert":Ljava/security/cert/Certificate;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    #@83
    goto :goto_1

    #@84
    .line 1240
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    :cond_8
    array-length v4, p2

    #@85
    new-array v4, v4, [Ljava/security/cert/Certificate;

    #@87
    iput-object v4, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@89
    goto :goto_2
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 2

    #@0
    .prologue
    .line 1270
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 1261
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/security/cert/Certificate;

    #@8
    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    #@0
    .prologue
    .line 1252
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privateKey:Ljava/security/PrivateKey;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1281
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    .line 1282
    const-string/jumbo v2, "PrivateKeyEntry: number of elements in certificate chain is "

    #@5
    .line 1281
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 1283
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@a
    array-length v2, v2

    #@b
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 1284
    const-string/jumbo v2, "\n"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 1285
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@1b
    array-length v2, v2

    #@1c
    if-ge v0, v2, :cond_0

    #@1e
    .line 1286
    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    #@20
    aget-object v2, v2, v0

    #@22
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 1287
    const-string/jumbo v2, "\n"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 1285
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1289
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    return-object v2
.end method
