.class Lcom/android/server/vr/VrManagerService$4;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$PendingEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;

.field final synthetic val$c:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;
    .param p2, "val$c"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/vr/VrManagerService$4;->val$c:Landroid/content/ComponentName;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public runEvent(Landroid/os/IInterface;)V
    .locals 2
    .param p1, "service"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 575
    check-cast v0, Landroid/service/vr/IVrListener;

    #@3
    .line 576
    .local v0, "l":Landroid/service/vr/IVrListener;
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->val$c:Landroid/content/ComponentName;

    #@5
    invoke-interface {v0, v1}, Landroid/service/vr/IVrListener;->focusedActivityChanged(Landroid/content/ComponentName;)V

    #@8
    .line 574
    return-void
.end method
