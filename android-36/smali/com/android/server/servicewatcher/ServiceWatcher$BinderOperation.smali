.class public interface abstract Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BinderOperation"
.end annotation


# virtual methods
.method public blacklist onError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 79
    return-void
.end method

.method public abstract blacklist run(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
