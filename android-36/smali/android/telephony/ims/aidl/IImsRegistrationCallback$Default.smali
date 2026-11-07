.class public Landroid/telephony/ims/aidl/IImsRegistrationCallback$Default;
.super Ljava/lang/Object;
.source "IImsRegistrationCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRegistrationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRegistrationCallback;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 4
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "suggestedAction"    # I
    .param p3, "imsRadioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onDeregisteredWithDetails(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V
    .registers 5
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "suggestedAction"    # I
    .param p3, "imsRadioTech"    # I
    .param p4, "detail"    # Landroid/telephony/ims/SipDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 2
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 2
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 2
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
