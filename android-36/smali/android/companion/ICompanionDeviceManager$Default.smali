.class public Landroid/companion/ICompanionDeviceManager$Default;
.super Ljava/lang/Object;
.source "ICompanionDeviceManager.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .registers 3
    .param p1, "listener"    # Landroid/companion/IOnAssociationsChangedListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public blacklist addOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .registers 3
    .param p1, "messageType"    # I
    .param p2, "listener"    # Landroid/companion/IOnMessageReceivedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public blacklist addOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/companion/IOnTransportsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist applyRestoredPayload([BI)V
    .registers 3
    .param p1, "payload"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V
    .registers 5
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "callback"    # Landroid/companion/IAssociationRequestCallback;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist attachSystemDataTransport(Ljava/lang/String;IILandroid/os/ParcelFileDescriptor;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "associationId"    # I
    .param p4, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist buildPermissionTransferUserConsentIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceMacAddress"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "certificate"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist detachSystemDataTransport(Ljava/lang/String;II)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public blacklist disablePermissionsSync(I)V
    .registers 2
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public blacklist disableSystemDataSync(II)V
    .registers 3
    .param p1, "associationId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public blacklist disassociate(I)V
    .registers 2
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist enablePermissionsSync(I)V
    .registers 2
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public blacklist enableSecureTransport(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public blacklist enableSystemDataSync(II)V
    .registers 3
    .param p1, "associationId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public blacklist getAllAssociationsForUser(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAssociations(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBackupPayload(I)[B
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;
    .registers 3
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasNotificationAccess(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCompanionApplicationBound(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPermissionTransferUserConsented(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "deviceMacAddress"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist legacyStartObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist legacyStopObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist notifySelfManagedDeviceAppeared(I)V
    .registers 2
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public blacklist notifySelfManagedDeviceDisappeared(I)V
    .registers 2
    .param p1, "associationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public blacklist removeBond(ILjava/lang/String;I)Z
    .registers 5
    .param p1, "associationId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .registers 3
    .param p1, "listener"    # Landroid/companion/IOnAssociationsChangedListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist removeOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .registers 3
    .param p1, "messageType"    # I
    .param p2, "listener"    # Landroid/companion/IOnMessageReceivedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    return-void
.end method

.method public blacklist removeOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/companion/IOnTransportsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public blacklist requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendMessage(I[B[I)V
    .registers 4
    .param p1, "messageType"    # I
    .param p2, "data"    # [B
    .param p3, "associationIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist setDeviceId(ILandroid/companion/DeviceId;)V
    .registers 3
    .param p1, "associationId"    # I
    .param p2, "deviceId"    # Landroid/companion/DeviceId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    return-void
.end method

.method public blacklist startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    .registers 4
    .param p1, "request"    # Landroid/companion/ObservingDevicePresenceRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "associationId"    # I
    .param p4, "callback"    # Landroid/companion/ISystemDataTransferCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public blacklist stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    .registers 4
    .param p1, "request"    # Landroid/companion/ObservingDevicePresenceRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method
