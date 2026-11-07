.class public Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;
.super Ljava/lang/Object;
.source "PKCS12StoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final blacklist forDEREncoding:Z

.field private final blacklist out:Ljava/io/OutputStream;

.field private final blacklist protectionParameter:Ljava/security/KeyStore$ProtectionParameter;


# virtual methods
.method public blacklist getOutputStream()Ljava/io/OutputStream;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->out:Ljava/io/OutputStream;

    return-object p0
.end method

.method public whitelist test-api getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object p0
.end method

.method public blacklist isForDEREncoding()Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->forDEREncoding:Z

    return p0
.end method
