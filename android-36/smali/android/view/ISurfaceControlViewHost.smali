.class public interface abstract Landroid/view/ISurfaceControlViewHost;
.super Ljava/lang/Object;
.source "ISurfaceControlViewHost.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ISurfaceControlViewHost$Stub;,
        Landroid/view/ISurfaceControlViewHost$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.ISurfaceControlViewHost"


# virtual methods
.method public abstract blacklist attachParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSurfaceSyncGroup()Landroid/window/ISurfaceSyncGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDispatchDetachedFromWindow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
