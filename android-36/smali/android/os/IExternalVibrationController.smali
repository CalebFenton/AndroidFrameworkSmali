.class public interface abstract Landroid/os/IExternalVibrationController;
.super Ljava/lang/Object;
.source "IExternalVibrationController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IExternalVibrationController$Stub;,
        Landroid/os/IExternalVibrationController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IExternalVibrationController"


# virtual methods
.method public abstract blacklist mute()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unmute()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
