.class public interface abstract Landroid/window/IWindowlessStartingSurfaceCallback;
.super Ljava/lang/Object;
.source "IWindowlessStartingSurfaceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IWindowlessStartingSurfaceCallback$Stub;,
        Landroid/window/IWindowlessStartingSurfaceCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.IWindowlessStartingSurfaceCallback"


# virtual methods
.method public abstract blacklist onSurfaceAdded(Landroid/view/SurfaceControl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
