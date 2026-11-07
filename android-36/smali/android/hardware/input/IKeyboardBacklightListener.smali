.class public interface abstract Landroid/hardware/input/IKeyboardBacklightListener;
.super Ljava/lang/Object;
.source "IKeyboardBacklightListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IKeyboardBacklightListener$Stub;,
        Landroid/hardware/input/IKeyboardBacklightListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IKeyboardBacklightListener"


# virtual methods
.method public abstract blacklist onBrightnessChanged(ILandroid/hardware/input/IKeyboardBacklightState;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
