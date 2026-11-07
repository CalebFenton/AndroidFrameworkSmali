.class public interface abstract Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
.super Ljava/lang/Object;
.source "IFingerprintAuthenticatorsRegisteredCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;,
        Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintAuthenticatorsRegisteredCallback"


# virtual methods
.method public abstract blacklist onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
