.class public interface abstract Landroid/hardware/input/IStickyModifierStateListener;
.super Ljava/lang/Object;
.source "IStickyModifierStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IStickyModifierStateListener$Stub;,
        Landroid/hardware/input/IStickyModifierStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IStickyModifierStateListener"


# virtual methods
.method public abstract blacklist onStickyModifierStateChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
