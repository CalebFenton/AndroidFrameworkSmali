.class Lcom/android/server/audio/AudioService$StreamOverride;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamOverride"
.end annotation


# static fields
.field private static final DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x0

.field private static final TOUCH_EXPLORE_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x3e8

.field static sDelayMs:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    #@0
    .prologue
    .line 5611
    const-string/jumbo v1, "accessibility"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    #@9
    .line 5613
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@c
    move-result v1

    #@d
    .line 5612
    invoke-static {v1}, Lcom/android/server/audio/AudioService$StreamOverride;->updateDefaultStreamOverrideDelay(Z)V

    #@10
    .line 5615
    new-instance v1, Lcom/android/server/audio/AudioService$StreamOverride;

    #@12
    invoke-direct {v1}, Lcom/android/server/audio/AudioService$StreamOverride;-><init>()V

    #@15
    .line 5614
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    #@18
    .line 5609
    return-void
.end method

.method private static updateDefaultStreamOverrideDelay(Z)V
    .locals 3
    .param p0, "touchExploreEnabled"    # Z

    #@0
    .prologue
    .line 5624
    if-eqz p0, :cond_1

    #@2
    .line 5625
    const/16 v0, 0x3e8

    #@4
    sput v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    #@6
    .line 5629
    :goto_0
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    const-string/jumbo v0, "AudioService"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Touch exploration enabled="

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 5630
    const-string/jumbo v2, " stream override delay is now "

    #@20
    .line 5629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 5630
    sget v2, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    #@26
    .line 5629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 5630
    const-string/jumbo v2, " ms"

    #@2d
    .line 5629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 5623
    :cond_0
    return-void

    #@39
    .line 5627
    :cond_1
    const/4 v0, 0x0

    #@3a
    sput v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    #@3c
    goto :goto_0
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 5620
    invoke-static {p1}, Lcom/android/server/audio/AudioService$StreamOverride;->updateDefaultStreamOverrideDelay(Z)V

    #@3
    .line 5619
    return-void
.end method
