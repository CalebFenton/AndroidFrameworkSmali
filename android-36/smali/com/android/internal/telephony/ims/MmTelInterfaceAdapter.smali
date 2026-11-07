.class public Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
.super Ljava/lang/Object;
.source "MmTelInterfaceAdapter.java"


# instance fields
.field protected blacklist mBinder:Landroid/os/IBinder;

.field protected blacklist mSlotId:I


# direct methods
.method public constructor blacklist <init>(ILandroid/os/IBinder;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mBinder:Landroid/os/IBinder;

    .line 45
    iput p1, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mSlotId:I

    return-void
.end method

.method private blacklist getInterface()Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mBinder:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    .line 124
    :cond_9
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Binder not Available"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method

.method public blacklist createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsMMTelFeature;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist endSession(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->endSession(I)V

    return-void
.end method

.method public blacklist getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFeatureState()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->getFeatureStatus()I

    move-result p0

    return p0
.end method

.method public blacklist getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUtInterface()Lcom/android/ims/internal/IImsUt;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isConnected(II)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->isConnected(II)Z

    move-result p0

    return p0
.end method

.method public blacklist isOpened()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->isOpened()Z

    move-result p0

    return p0
.end method

.method public blacklist removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method

.method public blacklist setUiTTYMode(ILandroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->setUiTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result p0

    return p0
.end method

.method public blacklist turnOffIms()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->turnOffIms()V

    return-void
.end method

.method public blacklist turnOnIms()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->turnOnIms()V

    return-void
.end method
