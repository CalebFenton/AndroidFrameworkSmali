.class public interface abstract Landroid/window/IBackAnimationHandoffHandler;
.super Ljava/lang/Object;
.source "IBackAnimationHandoffHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IBackAnimationHandoffHandler$Stub;,
        Landroid/window/IBackAnimationHandoffHandler$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.IBackAnimationHandoffHandler"


# virtual methods
.method public abstract blacklist handOffAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/window/WindowAnimationState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
