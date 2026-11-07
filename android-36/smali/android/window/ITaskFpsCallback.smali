.class public interface abstract Landroid/window/ITaskFpsCallback;
.super Ljava/lang/Object;
.source "ITaskFpsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskFpsCallback$Stub;,
        Landroid/window/ITaskFpsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.ITaskFpsCallback"


# virtual methods
.method public abstract blacklist onFpsReported(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
