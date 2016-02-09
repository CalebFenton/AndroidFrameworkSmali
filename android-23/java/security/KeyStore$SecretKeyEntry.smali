.class public final Ljava/security/KeyStore$SecretKeyEntry;
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
    name = "SecretKeyEntry"
.end annotation


# instance fields
.field private final secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 2
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;

    #@0
    .prologue
    .line 1311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1312
    if-nez p1, :cond_0

    #@5
    .line 1313
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "secretKey == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1315
    :cond_0
    iput-object p1, p0, Ljava/security/KeyStore$SecretKeyEntry;->secretKey:Ljavax/crypto/SecretKey;

    #@10
    .line 1311
    return-void
.end method


# virtual methods
.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    #@0
    .prologue
    .line 1324
    iget-object v0, p0, Ljava/security/KeyStore$SecretKeyEntry;->secretKey:Ljavax/crypto/SecretKey;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "SecretKeyEntry: algorithm - "

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 1337
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/security/KeyStore$SecretKeyEntry;->secretKey:Ljavax/crypto/SecretKey;

    #@a
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 1338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method
