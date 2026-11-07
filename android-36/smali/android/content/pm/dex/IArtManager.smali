.class public interface abstract Landroid/content/pm/dex/IArtManager;
.super Ljava/lang/Object;
.source "IArtManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/dex/IArtManager$Stub;,
        Landroid/content/pm/dex/IArtManager$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o isRuntimeProfilingEnabled(ILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
