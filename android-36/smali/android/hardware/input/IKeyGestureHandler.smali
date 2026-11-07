.class public interface abstract Landroid/hardware/input/IKeyGestureHandler;
.super Ljava/lang/Object;
.source "IKeyGestureHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IKeyGestureHandler$Stub;,
        Landroid/hardware/input/IKeyGestureHandler$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IKeyGestureHandler"


# virtual methods
.method public abstract blacklist handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
