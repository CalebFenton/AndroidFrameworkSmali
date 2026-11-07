.class public interface abstract Landroid/view/IPinnedTaskListener;
.super Ljava/lang/Object;
.source "IPinnedTaskListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IPinnedTaskListener$Stub;,
        Landroid/view/IPinnedTaskListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.IPinnedTaskListener"


# virtual methods
.method public abstract blacklist onImeVisibilityChanged(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onMovementBoundsChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
