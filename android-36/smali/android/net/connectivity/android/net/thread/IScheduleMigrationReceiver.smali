.class public interface abstract Landroid/net/connectivity/android/net/thread/IScheduleMigrationReceiver;
.super Ljava/lang/Object;
.source "IScheduleMigrationReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/thread/IScheduleMigrationReceiver$Stub;,
        Landroid/net/connectivity/android/net/thread/IScheduleMigrationReceiver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.thread.IScheduleMigrationReceiver"


# virtual methods
.method public abstract blacklist onError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onMigrated()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onScheduled(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
