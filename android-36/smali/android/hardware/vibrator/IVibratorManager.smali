.class public interface abstract Landroid/hardware/vibrator/IVibratorManager;
.super Ljava/lang/Object;
.source "IVibratorManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/vibrator/IVibratorManager$Stub;,
        Landroid/hardware/vibrator/IVibratorManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist CAP_MIXED_TRIGGER_COMPOSE:I = 0x40

.field public static final blacklist CAP_MIXED_TRIGGER_ON:I = 0x10

.field public static final blacklist CAP_MIXED_TRIGGER_PERFORM:I = 0x20

.field public static final blacklist CAP_PREPARE_COMPOSE:I = 0x8

.field public static final blacklist CAP_PREPARE_ON:I = 0x2

.field public static final blacklist CAP_PREPARE_PERFORM:I = 0x4

.field public static final blacklist CAP_START_SESSIONS:I = 0x100

.field public static final blacklist CAP_SYNC:I = 0x1

.field public static final blacklist CAP_TRIGGER_CALLBACK:I = 0x80

.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "720a16b521507c378f14c516749ae178a60dfc44"

.field public static final blacklist VERSION:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 408
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$vibrator$IVibratorManager"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/vibrator/IVibratorManager;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist cancelSynced()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist clearSessions()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCapabilities()I
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

.method public abstract blacklist getVibrator(I)Landroid/hardware/vibrator/IVibrator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getVibratorIds()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist prepareSynced([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startSession([ILandroid/hardware/vibrator/VibrationSessionConfig;Landroid/hardware/vibrator/IVibratorCallback;)Landroid/hardware/vibrator/IVibrationSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist triggerSynced(Landroid/hardware/vibrator/IVibratorCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
