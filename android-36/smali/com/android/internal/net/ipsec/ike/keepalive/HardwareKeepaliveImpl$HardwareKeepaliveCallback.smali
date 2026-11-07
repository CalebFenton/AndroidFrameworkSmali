.class public interface abstract Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;
.super Ljava/lang/Object;
.source "HardwareKeepaliveImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HardwareKeepaliveCallback"
.end annotation


# virtual methods
.method public abstract blacklist onHardwareOffloadError()V
.end method

.method public abstract blacklist onNetworkError()V
.end method

.method public abstract blacklist onStopped(Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;)V
.end method
