.class public interface abstract Landroid/window/IUnhandledDragCallback;
.super Ljava/lang/Object;
.source "IUnhandledDragCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IUnhandledDragCallback$Stub;,
        Landroid/window/IUnhandledDragCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.IUnhandledDragCallback"


# virtual methods
.method public abstract blacklist notifyUnhandledDropComplete(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
