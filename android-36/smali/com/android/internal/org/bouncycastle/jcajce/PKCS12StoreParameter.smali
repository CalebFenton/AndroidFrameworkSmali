.class public Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;
.super Ljava/lang/Object;
.source "PKCS12StoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final blacklist forDEREncoding:Z

.field private final blacklist out:Ljava/io/OutputStream;

.field private final blacklist protectionParameter:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;
    .param p3, "forDEREncoding"    # Z

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;->out:Ljava/io/OutputStream;

    .line 41
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 42
    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;->forDEREncoding:Z

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/OutputStream;[C)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;[CZ)V

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/OutputStream;[CZ)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .param p3, "forDEREncoding"    # Z

    .line 35
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public whitelist test-api getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method public blacklist isForDEREncoding()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;->forDEREncoding:Z

    return v0
.end method
