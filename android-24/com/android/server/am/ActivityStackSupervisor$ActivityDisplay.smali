.class Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityDisplay"
.end annotation


# instance fields
.field mDisplay:Landroid/view/Display;

.field mDisplayId:I

.field mDisplayInfo:Landroid/view/DisplayInfo;

.field final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;

    #@0
    .prologue
    .line 4289
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4281
    new-instance v0, Landroid/view/DisplayInfo;

    #@7
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@c
    .line 4285
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@13
    .line 4289
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "displayId"    # I

    #@0
    .prologue
    .line 4294
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4281
    new-instance v1, Landroid/view/DisplayInfo;

    #@7
    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    #@a
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@c
    .line 4285
    new-instance v1, Ljava/util/ArrayList;

    #@e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@13
    .line 4295
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@15
    invoke-virtual {v1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@18
    move-result-object v0

    #@19
    .line 4296
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_0

    #@1b
    .line 4297
    return-void

    #@1c
    .line 4299
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->init(Landroid/view/Display;)V

    #@1f
    .line 4294
    return-void
.end method


# virtual methods
.method attachActivities(Lcom/android/server/am/ActivityStack;Z)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "onTop"    # Z

    #@0
    .prologue
    .line 4312
    if-eqz p2, :cond_0

    #@2
    .line 4313
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7
    .line 4308
    :goto_0
    return-void

    #@8
    .line 4315
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@e
    goto :goto_0
.end method

.method detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    .line 4322
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 4319
    return-void
.end method

.method hasVisibleBehindActivity()Z
    .locals 1

    #@0
    .prologue
    .line 4330
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method init(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    #@0
    .prologue
    .line 4303
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    #@2
    .line 4304
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    #@8
    .line 4305
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    #@a
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@c
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    #@f
    .line 4302
    return-void
.end method

.method setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 4326
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    #@2
    .line 4325
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 4335
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ActivityDisplay={"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " numStacks="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, "}"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method
