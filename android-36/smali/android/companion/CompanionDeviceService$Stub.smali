.class Landroid/companion/CompanionDeviceService$Stub;
.super Landroid/companion/ICompanionDeviceService$Stub;
.source "CompanionDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stub"
.end annotation


# instance fields
.field final blacklist mMainHandler:Landroid/os/Handler;

.field final blacklist mService:Landroid/companion/CompanionDeviceService;

.field final synthetic blacklist this$0:Landroid/companion/CompanionDeviceService;


# direct methods
.method public static synthetic blacklist $r8$lambda$_PToNIwkn8qIb7_5mA2pDh0ujm0(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceService$Stub;->lambda$onDeviceDisappeared$1(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ak1Y5EIsPkG9Ip-N37Wca-oP6mI(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceService$Stub;->lambda$onDeviceAppeared$0(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$f4QlPLzTpJh_CFx2pTDRMt5iopc(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/DevicePresenceEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceService$Stub;->lambda$onDevicePresenceEvent$2(Landroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/companion/CompanionDeviceService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 322
    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->this$0:Landroid/companion/CompanionDeviceService;

    invoke-direct {p0}, Landroid/companion/ICompanionDeviceService$Stub;-><init>()V

    .line 323
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    .line 324
    iget-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->this$0:Landroid/companion/CompanionDeviceService;

    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/companion/CompanionDeviceService;Landroid/companion/CompanionDeviceService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceService$Stub;-><init>(Landroid/companion/CompanionDeviceService;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDeviceAppeared$0(Landroid/companion/AssociationInfo;)V
    .registers 3
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 328
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceService;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDeviceDisappeared$1(Landroid/companion/AssociationInfo;)V
    .registers 3
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 333
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceService;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDevicePresenceEvent$2(Landroid/companion/DevicePresenceEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/companion/DevicePresenceEvent;

    .line 339
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceService;->onDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V

    return-void
.end method


# virtual methods
.method public blacklist onDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .registers 4
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 328
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda2;-><init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 329
    return-void
.end method

.method public blacklist onDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .registers 4
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 333
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 334
    return-void
.end method

.method public blacklist onDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/companion/DevicePresenceEvent;

    .line 338
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 339
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/DevicePresenceEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 341
    :cond_10
    return-void
.end method
