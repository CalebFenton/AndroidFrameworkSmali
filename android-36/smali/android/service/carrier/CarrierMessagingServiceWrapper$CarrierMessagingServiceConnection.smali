.class final Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;
.super Ljava/lang/Object;
.source "CarrierMessagingServiceWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierMessagingServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/carrier/CarrierMessagingServiceWrapper;


# direct methods
.method private constructor blacklist <init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 311
    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;->this$0:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 314
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;->this$0:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    invoke-static {p2}, Landroid/service/carrier/ICarrierMessagingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->-$$Nest$monServiceReady(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/ICarrierMessagingService;)V

    .line 315
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 319
    return-void
.end method
