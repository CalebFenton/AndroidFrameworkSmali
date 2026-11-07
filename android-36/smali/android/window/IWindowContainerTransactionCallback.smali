.class public interface abstract Landroid/window/IWindowContainerTransactionCallback;
.super Ljava/lang/Object;
.source "IWindowContainerTransactionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IWindowContainerTransactionCallback$Stub;,
        Landroid/window/IWindowContainerTransactionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.IWindowContainerTransactionCallback"


# virtual methods
.method public abstract blacklist onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
