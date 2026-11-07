.class public Lcom/android/ims/internal/uce/presence/IPresenceService$Default;
.super Ljava/lang/Object;
.source "IPresenceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addListener(ILcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 5
    .param p1, "presenceServiceHdl"    # I
    .param p2, "presenceServiceListener"    # Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .param p3, "presenceServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 5
    .param p1, "presenceServiceHdl"    # I
    .param p2, "remoteUri"    # Ljava/lang/String;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 5
    .param p1, "presenceServiceHdl"    # I
    .param p2, "remoteUriList"    # [Ljava/lang/String;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 3
    .param p1, "presenceServiceHdl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist publishMyCap(ILcom/android/ims/internal/uce/presence/PresCapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 5
    .param p1, "presenceServiceHdl"    # I
    .param p2, "myCapInfo"    # Lcom/android/ims/internal/uce/presence/PresCapInfo;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist reenableService(II)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 4
    .param p1, "presenceServiceHdl"    # I
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 4
    .param p1, "presenceServiceHdl"    # I
    .param p2, "presenceServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setNewFeatureTag(ILjava/lang/String;Lcom/android/ims/internal/uce/presence/PresServiceInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .registers 6
    .param p1, "presenceServiceHdl"    # I
    .param p2, "featureTag"    # Ljava/lang/String;
    .param p3, "serviceInfo"    # Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    .param p4, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method
