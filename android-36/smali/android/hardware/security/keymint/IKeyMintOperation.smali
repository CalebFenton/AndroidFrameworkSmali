.class public interface abstract Landroid/hardware/security/keymint/IKeyMintOperation;
.super Ljava/lang/Object;
.source "IKeyMintOperation.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/keymint/IKeyMintOperation$Stub;,
        Landroid/hardware/security/keymint/IKeyMintOperation$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "a05c8079586139db45b0762a528cdd9745ad15ce"

.field public static final blacklist VERSION:I = 0x4


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 354
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$security$keymint$IKeyMintOperation"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/security/keymint/IKeyMintOperation;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist abort()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist finish([B[BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;[B)[B
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

.method public abstract blacklist update([BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateAad([BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
