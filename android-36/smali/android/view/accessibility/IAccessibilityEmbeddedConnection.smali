.class public interface abstract Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
.super Ljava/lang/Object;
.source "IAccessibilityEmbeddedConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;,
        Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityEmbeddedConnection"


# virtual methods
.method public abstract blacklist associateEmbeddedHierarchy(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist disassociateEmbeddedHierarchy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setWindowMatrix([F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
