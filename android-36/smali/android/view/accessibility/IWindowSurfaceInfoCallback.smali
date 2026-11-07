.class public interface abstract Landroid/view/accessibility/IWindowSurfaceInfoCallback;
.super Ljava/lang/Object;
.source "IWindowSurfaceInfoCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IWindowSurfaceInfoCallback$Stub;,
        Landroid/view/accessibility/IWindowSurfaceInfoCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IWindowSurfaceInfoCallback"


# virtual methods
.method public abstract blacklist provideWindowSurfaceInfo(IILandroid/view/SurfaceControl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
