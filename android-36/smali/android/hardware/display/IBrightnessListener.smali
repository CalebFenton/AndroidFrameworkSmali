.class public interface abstract Landroid/hardware/display/IBrightnessListener;
.super Ljava/lang/Object;
.source "IBrightnessListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IBrightnessListener$Stub;,
        Landroid/hardware/display/IBrightnessListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IBrightnessListener"


# virtual methods
.method public abstract blacklist onBrightnessChanged(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
