.class public abstract Landroid/telephony/CarrierMessagingServiceManager;
.super Ljava/lang/Object;
.source "CarrierMessagingServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;
    }
.end annotation


# instance fields
.field private volatile mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carrierPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 59
    iget-object v1, p0, Landroid/telephony/CarrierMessagingServiceManager;->mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    #@4
    if-nez v1, :cond_0

    #@6
    move v1, v2

    #@7
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@a
    .line 61
    new-instance v0, Landroid/content/Intent;

    #@c
    const-string/jumbo v1, "android.service.carrier.CarrierMessagingService"

    #@f
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@12
    .line 62
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@15
    .line 63
    new-instance v1, Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    #@17
    invoke-direct {v1, p0, v3}, Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;-><init>(Landroid/telephony/CarrierMessagingServiceManager;Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;)V

    #@1a
    iput-object v1, p0, Landroid/telephony/CarrierMessagingServiceManager;->mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    #@1c
    .line 64
    iget-object v1, p0, Landroid/telephony/CarrierMessagingServiceManager;->mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    #@1e
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@21
    move-result v1

    #@22
    return v1

    #@23
    .line 59
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    #@24
    goto :goto_0
.end method

.method public disposeConnection(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/telephony/CarrierMessagingServiceManager;->mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    #@2
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 75
    iget-object v0, p0, Landroid/telephony/CarrierMessagingServiceManager;->mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    #@7
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@a
    .line 76
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Landroid/telephony/CarrierMessagingServiceManager;->mCarrierMessagingServiceConnection:Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;

    #@d
    .line 73
    return-void
.end method

.method protected abstract onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
.end method
