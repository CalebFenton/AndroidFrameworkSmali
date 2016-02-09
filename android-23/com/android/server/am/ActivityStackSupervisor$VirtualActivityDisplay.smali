.class Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
.super Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VirtualActivityDisplay"
.end annotation


# instance fields
.field mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;III)V
    .locals 11
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4561
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@3
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    #@6
    .line 4562
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    #@9
    move-result-object v0

    #@a
    .line 4563
    .local v0, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@e
    .line 4564
    const-string/jumbo v3, "ActivityViewVirtualDisplay"

    #@11
    .line 4565
    const/16 v8, 0x9

    #@13
    move v4, p2

    #@14
    move v5, p3

    #@15
    move v6, p4

    #@16
    move-object v7, v2

    #@17
    move-object v9, v2

    #@18
    move-object v10, v2

    #@19
    .line 4563
    invoke-virtual/range {v0 .. v10}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    #@1f
    .line 4568
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    #@21
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->init(Landroid/view/Display;)V

    #@28
    .line 4570
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2a
    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    #@2c
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAdded(I)V

    #@2f
    .line 4561
    return-void
.end method


# virtual methods
.method detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4581
    invoke-super {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V

    #@4
    .line 4582
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 4583
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    #@a
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    #@d
    .line 4584
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    #@f
    .line 4580
    :cond_0
    return-void
.end method

.method setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 4574
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4575
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    #@6
    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    #@9
    .line 4573
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 4590
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "VirtualActivityDisplay={"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "}"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method
