.class public interface abstract Landroid/window/ISurfaceSyncGroup;
.super Ljava/lang/Object;
.source "ISurfaceSyncGroup.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ISurfaceSyncGroup$Stub;,
        Landroid/window/ISurfaceSyncGroup$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.ISurfaceSyncGroup"


# virtual methods
.method public abstract blacklist addToSync(Landroid/window/ISurfaceSyncGroup;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAddedToSyncGroup(Landroid/os/IBinder;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
