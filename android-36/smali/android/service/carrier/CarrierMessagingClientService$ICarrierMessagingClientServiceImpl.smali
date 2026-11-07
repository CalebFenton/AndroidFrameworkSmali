.class Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;
.super Landroid/service/carrier/ICarrierMessagingClientService$Stub;
.source "CarrierMessagingClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ICarrierMessagingClientServiceImpl"
.end annotation


# direct methods
.method private constructor blacklist <init>(Landroid/service/carrier/CarrierMessagingClientService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingClientService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/carrier/CarrierMessagingClientService;Landroid/service/carrier/CarrierMessagingClientService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;-><init>(Landroid/service/carrier/CarrierMessagingClientService;)V

    return-void
.end method
