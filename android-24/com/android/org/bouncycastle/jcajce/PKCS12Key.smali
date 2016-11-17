.class public Lcom/android/org/bouncycastle/jcajce/PKCS12Key;
.super Ljava/lang/Object;
.source "PKCS12Key.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/PBKDFKey;


# instance fields
.field private final password:[C

.field private final useWrongZeroLengthConversion:Z


# direct methods
.method public constructor <init>([C)V
    .locals 1
    .param p1, "password"    # [C

    #@0
    .prologue
    .line 20
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    #@4
    .line 18
    return-void
.end method

.method public constructor <init>([CZ)V
    .locals 3
    .param p1, "password"    # [C
    .param p2, "useWrongZeroLengthConversion"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 32
    array-length v0, p1

    #@5
    new-array v0, v0, [C

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    #@9
    .line 33
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    #@b
    .line 35
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    #@d
    array-length v1, p1

    #@e
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@11
    .line 30
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 55
    const-string/jumbo v0, "PKCS12"

    #@3
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    #@6
    array-length v0, v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 77
    const/4 v0, 0x2

    #@a
    new-array v0, v0, [B

    #@c
    return-object v0

    #@d
    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    #@f
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 65
    const-string/jumbo v0, "PKCS12"

    #@3
    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    #@2
    return-object v0
.end method
