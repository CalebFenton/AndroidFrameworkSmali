.class public Landroid/security/keystore/StrongBoxUnavailableException;
.super Ljava/security/ProviderException;
.source "StrongBoxUnavailableException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/security/ProviderException;-><init>()V

    .line 32
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/security/KeyStoreException;

    const/16 v1, -0x44

    const-string v2, "No StrongBox available"

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 46
    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method
