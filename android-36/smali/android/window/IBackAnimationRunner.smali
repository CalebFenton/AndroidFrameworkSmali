.class public interface abstract Landroid/window/IBackAnimationRunner;
.super Ljava/lang/Object;
.source "IBackAnimationRunner.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IBackAnimationRunner$Stub;,
        Landroid/window/IBackAnimationRunner$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.IBackAnimationRunner"


# virtual methods
.method public abstract blacklist onAnimationCancelled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAnimationStart([Landroid/view/RemoteAnimationTarget;Landroid/os/IBinder;Landroid/window/IBackAnimationFinishedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
