.class public interface abstract Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;
.super Ljava/lang/Object;
.source "IUdfpsOverlayControllerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;,
        Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IUdfpsOverlayControllerCallback"


# virtual methods
.method public abstract blacklist onUserCanceled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
