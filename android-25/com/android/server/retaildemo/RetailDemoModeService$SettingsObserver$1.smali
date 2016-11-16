.class Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver$1;
.super Ljava/lang/Object;
.source "RetailDemoModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;

    #@0
    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver$1;->this$1:Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver$1;->this$1:Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;

    #@2
    iget-object v0, v0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@4
    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap1(Lcom/android/server/retaildemo/RetailDemoModeService;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 244
    invoke-static {}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get0()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    const-string/jumbo v1, "Failed to delete preloads folder contents"

    #@11
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 242
    :cond_0
    return-void
.end method
