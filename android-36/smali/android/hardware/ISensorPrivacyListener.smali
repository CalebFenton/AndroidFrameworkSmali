.class public interface abstract Landroid/hardware/ISensorPrivacyListener;
.super Ljava/lang/Object;
.source "ISensorPrivacyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISensorPrivacyListener$Stub;,
        Landroid/hardware/ISensorPrivacyListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.ISensorPrivacyListener"


# virtual methods
.method public abstract blacklist onSensorPrivacyChanged(IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSensorPrivacyStateChanged(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
