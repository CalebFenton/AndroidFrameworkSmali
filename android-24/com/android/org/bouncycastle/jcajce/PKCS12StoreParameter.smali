.class public Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;
.super Ljava/lang/Object;
.source "PKCS12StoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final forDEREncoding:Z

.field private final out:Ljava/io/OutputStream;

.field private final protectionParameter:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    #@0
    .prologue
    .line 28
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    #@4
    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;
    .param p3, "forDEREncoding"    # Z

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->out:Ljava/io/OutputStream;

    #@5
    .line 39
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    #@7
    .line 40
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->forDEREncoding:Z

    #@9
    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C

    #@0
    .prologue
    .line 23
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;[CZ)V

    #@4
    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CZ)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .param p3, "forDEREncoding"    # Z

    #@0
    .prologue
    .line 33
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    #@2
    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    #@5
    invoke-direct {p0, p1, v0, p3}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    #@8
    .line 31
    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->out:Ljava/io/OutputStream;

    #@2
    return-object v0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    #@2
    return-object v0
.end method

.method public isForDEREncoding()Z
    .locals 1

    #@0
    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->forDEREncoding:Z

    #@2
    return v0
.end method
