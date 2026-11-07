.class public interface abstract Landroid/window/IGlobalDragListener;
.super Ljava/lang/Object;
.source "IGlobalDragListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IGlobalDragListener$Stub;,
        Landroid/window/IGlobalDragListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.IGlobalDragListener"


# virtual methods
.method public abstract blacklist onCrossWindowDrop(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUnhandledDrop(Landroid/view/DragEvent;Landroid/window/IUnhandledDragCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
