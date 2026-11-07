.class public Landroid/security/keystore/KeyStoreConnectException;
.super Ljava/security/ProviderException;
.source "KeyStoreConnectException.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 28
    const-string v0, "Failed to communicate with keystore service"

    invoke-direct {p0, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
