.class public interface abstract Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;
.super Ljava/lang/Object;
.source "IkeSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract blacklist onIkePacketReceived(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V
.end method
