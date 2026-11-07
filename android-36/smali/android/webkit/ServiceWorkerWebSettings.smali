.class public abstract Landroid/webkit/ServiceWorkerWebSettings;
.super Ljava/lang/Object;
.source "ServiceWorkerWebSettings.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist getAllowContentAccess()Z
.end method

.method public abstract whitelist getAllowFileAccess()Z
.end method

.method public abstract whitelist getBlockNetworkLoads()Z
.end method

.method public abstract whitelist getCacheMode()I
.end method

.method public abstract whitelist setAllowContentAccess(Z)V
.end method

.method public abstract whitelist setAllowFileAccess(Z)V
.end method

.method public abstract whitelist setBlockNetworkLoads(Z)V
.end method

.method public abstract whitelist setCacheMode(I)V
.end method
