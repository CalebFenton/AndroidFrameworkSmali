.class public Landroid/security/keystore/KeyStoreConnectException;
.super Ljava/security/ProviderException;
.source "KeyStoreConnectException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 28
    const-string/jumbo v0, "Failed to communicate with keystore service"

    #@3
    invoke-direct {p0, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@6
    .line 27
    return-void
.end method
