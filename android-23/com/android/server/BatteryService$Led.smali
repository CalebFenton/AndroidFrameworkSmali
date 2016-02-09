.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    #@0
    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 724
    const/4 v0, 0x3

    #@6
    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    #@c
    .line 726
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v0

    #@10
    .line 727
    const v1, 0x10e0053

    #@13
    .line 726
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    #@19
    .line 728
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object v0

    #@1d
    .line 729
    const v1, 0x10e0054

    #@20
    .line 728
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@23
    move-result v0

    #@24
    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    #@26
    .line 730
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@29
    move-result-object v0

    #@2a
    .line 731
    const v1, 0x10e0055

    #@2d
    .line 730
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@30
    move-result v0

    #@31
    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    #@33
    .line 732
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@36
    move-result-object v0

    #@37
    .line 733
    const v1, 0x10e0056

    #@3a
    .line 732
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@3d
    move-result v0

    #@3e
    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    #@40
    .line 734
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@43
    move-result-object v0

    #@44
    .line 735
    const v1, 0x10e0057

    #@47
    .line 734
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@4a
    move-result v0

    #@4b
    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    #@4d
    .line 723
    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x5

    #@1
    const/4 v3, 0x2

    #@2
    .line 742
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #@4
    invoke-static {v2}, Lcom/android/server/BatteryService;->-get1(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    #@7
    move-result-object v2

    #@8
    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    #@a
    .line 743
    .local v0, "level":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #@c
    invoke-static {v2}, Lcom/android/server/BatteryService;->-get1(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    #@f
    move-result-object v2

    #@10
    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    #@12
    .line 744
    .local v1, "status":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #@14
    invoke-static {v2}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)I

    #@17
    move-result v2

    #@18
    if-ge v0, v2, :cond_1

    #@1a
    .line 745
    if-ne v1, v3, :cond_0

    #@1c
    .line 747
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    #@1e
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    #@20
    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    #@23
    .line 741
    :goto_0
    return-void

    #@24
    .line 750
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    #@26
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    #@28
    .line 751
    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    #@2a
    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    #@2c
    .line 750
    const/4 v6, 0x1

    #@2d
    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    #@30
    goto :goto_0

    #@31
    .line 753
    :cond_1
    if-eq v1, v3, :cond_2

    #@33
    .line 754
    if-ne v1, v4, :cond_5

    #@35
    .line 755
    :cond_2
    if-eq v1, v4, :cond_3

    #@37
    const/16 v2, 0x5a

    #@39
    if-lt v0, v2, :cond_4

    #@3b
    .line 757
    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    #@3d
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    #@3f
    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    #@42
    goto :goto_0

    #@43
    .line 760
    :cond_4
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    #@45
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    #@47
    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    #@4a
    goto :goto_0

    #@4b
    .line 764
    :cond_5
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    #@4d
    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    #@50
    goto :goto_0
.end method
