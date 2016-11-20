.class Lcom/android/server/retaildemo/RetailDemoModeService$5;
.super Ljava/lang/Object;
.source "RetailDemoModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;->onSwitchUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/retaildemo/RetailDemoModeService;
    .param p2, "val$userId"    # I

    #@0
    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$5;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@2
    iput p2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$5;->val$userId:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$5;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@2
    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get1(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/retaildemo/PreloadAppsInstaller;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$5;->val$userId:I

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->installApps(I)V

    #@b
    .line 549
    return-void
.end method
