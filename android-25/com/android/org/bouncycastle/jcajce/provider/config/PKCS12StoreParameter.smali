.class public Lcom/android/org/bouncycastle/jcajce/provider/config/PKCS12StoreParameter;
.super Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;
.source "PKCS12StoreParameter.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    #@0
    .prologue
    .line 20
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    #@4
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;
    .param p3, "forDEREncoding"    # Z

    #@0
    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    #@3
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C

    #@0
    .prologue
    .line 15
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;[CZ)V

    #@4
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CZ)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .param p3, "forDEREncoding"    # Z

    #@0
    .prologue
    .line 25
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    #@2
    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    #@5
    invoke-direct {p0, p1, v0, p3}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    #@8
    .line 23
    return-void
.end method
