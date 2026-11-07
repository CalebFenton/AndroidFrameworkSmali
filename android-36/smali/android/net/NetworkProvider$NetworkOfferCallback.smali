.class public interface abstract Landroid/net/NetworkProvider$NetworkOfferCallback;
.super Ljava/lang/Object;
.source "NetworkProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkOfferCallback"
.end annotation


# virtual methods
.method public abstract whitelist onNetworkNeeded(Landroid/net/NetworkRequest;)V
.end method

.method public abstract whitelist onNetworkUnneeded(Landroid/net/NetworkRequest;)V
.end method
