.class public interface abstract Landroid/hardware/input/IKeyGestureEventListener;
.super Ljava/lang/Object;
.source "IKeyGestureEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IKeyGestureEventListener$Stub;,
        Landroid/hardware/input/IKeyGestureEventListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IKeyGestureEventListener"


# virtual methods
.method public abstract blacklist onKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
