.class public interface abstract Landroid/net/nsd/NsdManager$ServiceInfoCallback;
.super Ljava/lang/Object;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceInfoCallback"
.end annotation


# virtual methods
.method public abstract whitelist onServiceInfoCallbackRegistrationFailed(I)V
.end method

.method public abstract whitelist onServiceInfoCallbackUnregistered()V
.end method

.method public abstract whitelist onServiceLost()V
.end method

.method public abstract whitelist onServiceUpdated(Landroid/net/nsd/NsdServiceInfo;)V
.end method
