.class public interface abstract Landroid/view/IDecorViewGestureListener;
.super Ljava/lang/Object;
.source "IDecorViewGestureListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDecorViewGestureListener$Stub;,
        Landroid/view/IDecorViewGestureListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.IDecorViewGestureListener"


# virtual methods
.method public abstract blacklist onInterceptionChanged(Landroid/os/IBinder;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
