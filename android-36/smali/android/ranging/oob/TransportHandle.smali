.class public interface abstract Landroid/ranging/oob/TransportHandle;
.super Ljava/lang/Object;
.source "TransportHandle.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/oob/TransportHandle$ReceiveCallback;
    }
.end annotation


# virtual methods
.method public abstract whitelist registerReceiveCallback(Ljava/util/concurrent/Executor;Landroid/ranging/oob/TransportHandle$ReceiveCallback;)V
.end method

.method public abstract whitelist sendData([B)V
.end method
