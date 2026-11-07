.class public interface abstract Landroid/hardware/camera2/ICameraOfflineSession;
.super Ljava/lang/Object;
.source "ICameraOfflineSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraOfflineSession$Stub;,
        Landroid/hardware/camera2/ICameraOfflineSession$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraOfflineSession"


# virtual methods
.method public abstract blacklist disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
