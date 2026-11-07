.class public Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;
.super Ljava/lang/Object;
.source "BCLoadStoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final blacklist in:Ljava/io/InputStream;

.field private final blacklist out:Ljava/io/OutputStream;

.field private final blacklist protectionParameter:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;->in:Ljava/io/InputStream;

    .line 47
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;->out:Ljava/io/OutputStream;

    .line 48
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;[C)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "password"    # [C

    .line 31
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;-><init>(Ljava/io/InputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/OutputStream;[C)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C

    .line 26
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist getInputStream()Ljava/io/InputStream;
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_7

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;->in:Ljava/io/InputStream;

    return-object v0

    .line 70
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "parameter configured for storage OutputStream present"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getOutputStream()Ljava/io/OutputStream;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    .line 63
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;->out:Ljava/io/OutputStream;

    return-object v0

    .line 60
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "parameter not configured for storage - no OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method
