.class public Landroid/safetycenter/ISafetyCenterManager$Default;
.super Ljava/lang/Object;
.source "ISafetyCenterManager.java"

# interfaces
.implements Landroid/safetycenter/ISafetyCenterManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/ISafetyCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addOnSafetyCenterDataChangedListener(Landroid/safetycenter/IOnSafetyCenterDataChangedListener;Ljava/lang/String;I)V
    .registers 4
    .param p1, "listener"    # Landroid/safetycenter/IOnSafetyCenterDataChangedListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearAllSafetySourceDataForTests()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public blacklist clearSafetyCenterConfigForTests()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    return-void
.end method

.method public blacklist dismissSafetyCenterIssue(Ljava/lang/String;I)V
    .registers 3
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist executeSafetyCenterIssueAction(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "safetyCenterIssueId"    # Ljava/lang/String;
    .param p2, "safetyCenterIssueActionId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public blacklist getSafetyCenterConfig()Landroid/safetycenter/config/SafetyCenterConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSafetyCenterData(Ljava/lang/String;I)Landroid/safetycenter/SafetyCenterData;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSafetySourceData(Ljava/lang/String;Ljava/lang/String;I)Landroid/safetycenter/SafetySourceData;
    .registers 5
    .param p1, "safetySourceId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isSafetyCenterEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist refreshSafetySources(II)V
    .registers 3
    .param p1, "refreshReason"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist refreshSpecificSafetySources(IILjava/util/List;)V
    .registers 4
    .param p1, "refreshReason"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    .local p3, "safetySourceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist removeOnSafetyCenterDataChangedListener(Landroid/safetycenter/IOnSafetyCenterDataChangedListener;I)V
    .registers 3
    .param p1, "listener"    # Landroid/safetycenter/IOnSafetyCenterDataChangedListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public blacklist reportSafetySourceError(Ljava/lang/String;Landroid/safetycenter/SafetySourceErrorDetails;Ljava/lang/String;I)V
    .registers 5
    .param p1, "safetySourceId"    # Ljava/lang/String;
    .param p2, "safetySourceErrorDetails"    # Landroid/safetycenter/SafetySourceErrorDetails;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist setSafetyCenterConfigForTests(Landroid/safetycenter/config/SafetyCenterConfig;)V
    .registers 2
    .param p1, "safetyCenterConfig"    # Landroid/safetycenter/config/SafetyCenterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist setSafetySourceData(Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;Ljava/lang/String;I)V
    .registers 6
    .param p1, "sourceId"    # Ljava/lang/String;
    .param p2, "safetySourceData"    # Landroid/safetycenter/SafetySourceData;
    .param p3, "safetyEvent"    # Landroid/safetycenter/SafetyEvent;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method
