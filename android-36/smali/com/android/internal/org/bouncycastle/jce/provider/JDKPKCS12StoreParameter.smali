.class public Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;
.super Ljava/lang/Object;
.source "JDKPKCS12StoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private blacklist outputStream:Ljava/io/OutputStream;

.field private blacklist protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

.field private blacklist useDEREncoding:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public whitelist test-api getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method public blacklist isUseDEREncoding()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->useDEREncoding:Z

    return v0
.end method

.method public blacklist setOutputStream(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 36
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->outputStream:Ljava/io/OutputStream;

    .line 37
    return-void
.end method

.method public blacklist setPassword([C)V
    .registers 3
    .param p1, "password"    # [C

    .line 41
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 42
    return-void
.end method

.method public blacklist setProtectionParameter(Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 2
    .param p1, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    .line 46
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 47
    return-void
.end method

.method public blacklist setUseDEREncoding(Z)V
    .registers 2
    .param p1, "useDEREncoding"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->useDEREncoding:Z

    .line 52
    return-void
.end method
