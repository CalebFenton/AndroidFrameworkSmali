.class public interface abstract Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;
.super Ljava/lang/Object;
.source "IFaceAuthenticatorsRegisteredCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;,
        Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.face.IFaceAuthenticatorsRegisteredCallback"


# virtual methods
.method public abstract blacklist onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
