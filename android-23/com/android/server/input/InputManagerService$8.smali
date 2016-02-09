.class Lcom/android/server/input/InputManagerService$8;
.super Landroid/database/ContentObserver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1265
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$8;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$8;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    #@5
    .line 1267
    return-void
.end method
