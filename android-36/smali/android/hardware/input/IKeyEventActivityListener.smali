.class public interface abstract Landroid/hardware/input/IKeyEventActivityListener;
.super Ljava/lang/Object;
.source "IKeyEventActivityListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IKeyEventActivityListener$Stub;,
        Landroid/hardware/input/IKeyEventActivityListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IKeyEventActivityListener"


# virtual methods
.method public abstract blacklist onKeyEventActivity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
