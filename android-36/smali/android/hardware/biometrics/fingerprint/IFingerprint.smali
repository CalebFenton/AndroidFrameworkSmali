.class public interface abstract Landroid/hardware/biometrics/fingerprint/IFingerprint;
.super Ljava/lang/Object;
.source "IFingerprint.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;,
        Landroid/hardware/biometrics/fingerprint/IFingerprint$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "41a730a7a6b5aa9cebebce70ee5b5e509b0af6fb"

.field public static final blacklist VERSION:I = 0x4


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 319
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$biometrics$fingerprint$IFingerprint"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSensorProps()[Landroid/hardware/biometrics/fingerprint/SensorProps;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
