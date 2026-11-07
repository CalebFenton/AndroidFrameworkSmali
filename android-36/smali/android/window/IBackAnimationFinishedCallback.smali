.class public interface abstract Landroid/window/IBackAnimationFinishedCallback;
.super Ljava/lang/Object;
.source "IBackAnimationFinishedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IBackAnimationFinishedCallback$Stub;,
        Landroid/window/IBackAnimationFinishedCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.IBackAnimationFinishedCallback"


# virtual methods
.method public abstract blacklist onAnimationFinished(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
