.class public Landroid/service/carrier/CarrierMessagingClientService;
.super Landroid/app/Service;
.source "CarrierMessagingClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;
    }
.end annotation


# instance fields
.field private final blacklist mImpl:Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    new-instance v0, Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;-><init>(Landroid/service/carrier/CarrierMessagingClientService;Landroid/service/carrier/CarrierMessagingClientService-IA;)V

    iput-object v0, p0, Landroid/service/carrier/CarrierMessagingClientService;->mImpl:Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;

    .line 73
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingClientService;->mImpl:Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;

    invoke-virtual {v0}, Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
