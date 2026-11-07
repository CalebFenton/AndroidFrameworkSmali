.class public Landroid/hardware/security/keymint/IKeyMintOperation$Default;
.super Ljava/lang/Object;
.source "IKeyMintOperation.java"

# interfaces
.implements Landroid/hardware/security/keymint/IKeyMintOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IKeyMintOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abort()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist finish([B[BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;[B)[B
    .registers 7
    .param p1, "input"    # [B
    .param p2, "signature"    # [B
    .param p3, "authToken"    # Landroid/hardware/security/keymint/HardwareAuthToken;
    .param p4, "timestampToken"    # Landroid/hardware/security/secureclock/TimeStampToken;
    .param p5, "confirmationToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 44
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist update([BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;)[B
    .registers 5
    .param p1, "input"    # [B
    .param p2, "authToken"    # Landroid/hardware/security/keymint/HardwareAuthToken;
    .param p3, "timeStampToken"    # Landroid/hardware/security/secureclock/TimeStampToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist updateAad([BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;)V
    .registers 4
    .param p1, "input"    # [B
    .param p2, "authToken"    # Landroid/hardware/security/keymint/HardwareAuthToken;
    .param p3, "timeStampToken"    # Landroid/hardware/security/secureclock/TimeStampToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
