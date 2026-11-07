.class public interface abstract Landroid/hardware/camera2/ICameraInjectionSession;
.super Ljava/lang/Object;
.source "ICameraInjectionSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraInjectionSession$Stub;,
        Landroid/hardware/camera2/ICameraInjectionSession$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraInjectionSession"


# virtual methods
.method public abstract blacklist stopInjection()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
