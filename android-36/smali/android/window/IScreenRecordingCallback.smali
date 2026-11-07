.class public interface abstract Landroid/window/IScreenRecordingCallback;
.super Ljava/lang/Object;
.source "IScreenRecordingCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IScreenRecordingCallback$Stub;,
        Landroid/window/IScreenRecordingCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.IScreenRecordingCallback"


# virtual methods
.method public abstract blacklist onScreenRecordingStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
