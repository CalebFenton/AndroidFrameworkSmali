.class public interface abstract Landroid/hardware/biometrics/IInvalidationCallback;
.super Ljava/lang/Object;
.source "IInvalidationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IInvalidationCallback$Stub;,
        Landroid/hardware/biometrics/IInvalidationCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.biometrics.IInvalidationCallback"


# virtual methods
.method public abstract blacklist onCompleted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
