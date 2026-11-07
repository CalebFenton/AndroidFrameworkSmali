.class public interface abstract Landroid/view/ISurfaceControlViewHostParent;
.super Ljava/lang/Object;
.source "ISurfaceControlViewHostParent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ISurfaceControlViewHostParent$Stub;,
        Landroid/view/ISurfaceControlViewHostParent$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.ISurfaceControlViewHostParent"


# virtual methods
.method public abstract blacklist forwardBackKeyToParent(Landroid/view/KeyEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateParams([Landroid/view/WindowManager$LayoutParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
