.class Lcom/android/server/retaildemo/RetailDemoModeService$4;
.super Ljava/lang/Object;
.source "RetailDemoModeService.java"

# interfaces
.implements Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;->showInactivityCountdownDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/RetailDemoModeService;


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/retaildemo/RetailDemoModeService;

    #@0
    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$4;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCountDownExpired()V
    .locals 2

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$4;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@2
    iget-object v0, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    #@4
    const/4 v1, 0x2

    #@5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@8
    .line 279
    return-void
.end method
