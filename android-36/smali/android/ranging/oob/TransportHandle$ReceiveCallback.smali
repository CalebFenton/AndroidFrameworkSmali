.class public interface abstract Landroid/ranging/oob/TransportHandle$ReceiveCallback;
.super Ljava/lang/Object;
.source "TransportHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/oob/TransportHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReceiveCallback"
.end annotation


# virtual methods
.method public abstract whitelist onClose()V
.end method

.method public abstract whitelist onDisconnect()V
.end method

.method public abstract whitelist onReceiveData([B)V
.end method

.method public abstract whitelist onReconnect()V
.end method

.method public abstract whitelist onSendFailed()V
.end method
