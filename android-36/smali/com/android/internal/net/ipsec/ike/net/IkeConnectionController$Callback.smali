.class public interface abstract Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;
.super Ljava/lang/Object;
.source "IkeConnectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract blacklist onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V
.end method

.method public abstract blacklist onIkePacketReceived(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V
.end method

.method public abstract blacklist onUnderlyingNetworkDied(Landroid/net/Network;)V
.end method

.method public abstract blacklist onUnderlyingNetworkUpdated()V
.end method
