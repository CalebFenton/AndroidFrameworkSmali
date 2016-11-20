.class public Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;
.super Ljava/lang/Object;
.source "JDKPKCS12StoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private outputStream:Ljava/io/OutputStream;

.field private protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

.field private useDEREncoding:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->outputStream:Ljava/io/OutputStream;

    #@2
    return-object v0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    #@0
    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    #@2
    return-object v0
.end method

.method public isUseDEREncoding()Z
    .locals 1

    #@0
    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->useDEREncoding:Z

    #@2
    return v0
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->outputStream:Ljava/io/OutputStream;

    #@2
    .line 32
    return-void
.end method

.method public setPassword([C)V
    .locals 1
    .param p1, "password"    # [C

    #@0
    .prologue
    .line 39
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    #@2
    invoke-direct {v0, p1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    #@7
    .line 37
    return-void
.end method

.method public setProtectionParameter(Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 0
    .param p1, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    #@0
    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    #@2
    .line 42
    return-void
.end method

.method public setUseDEREncoding(Z)V
    .locals 0
    .param p1, "useDEREncoding"    # Z

    #@0
    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->useDEREncoding:Z

    #@2
    .line 47
    return-void
.end method
