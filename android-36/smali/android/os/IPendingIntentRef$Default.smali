.class public Landroid/os/IPendingIntentRef$Default;
.super Ljava/lang/Object;
.source "IPendingIntentRef.java"

# interfaces
.implements Landroid/os/IPendingIntentRef;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPendingIntentRef;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendActiveConfigsChangedBroadcast([J)V
    .registers 2
    .param p1, "configIds"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist sendDataBroadcast(J)V
    .registers 3
    .param p1, "lastReportTimeNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist sendRestrictedMetricsChangedBroadcast([J)V
    .registers 2
    .param p1, "metricIds"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist sendSubscriberBroadcast(JJJJ[Ljava/lang/String;Landroid/os/StatsDimensionsValueParcel;)V
    .registers 11
    .param p1, "configUid"    # J
    .param p3, "configId"    # J
    .param p5, "subscriptionId"    # J
    .param p7, "subscriptionRuleId"    # J
    .param p9, "cookies"    # [Ljava/lang/String;
    .param p10, "dimensionsValueParcel"    # Landroid/os/StatsDimensionsValueParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method
