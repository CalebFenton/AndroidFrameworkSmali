.class Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;
.super Landroid/content/BroadcastReceiver;
.source "NightDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NightDisplayService$CustomAutoMode;-><init>(Lcom/android/server/display/NightDisplayService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/NightDisplayService$CustomAutoMode;


# direct methods
.method constructor <init>(Lcom/android/server/display/NightDisplayService$CustomAutoMode;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/display/NightDisplayService$CustomAutoMode;

    #@0
    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;->this$1:Lcom/android/server/display/NightDisplayService$CustomAutoMode;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;->this$1:Lcom/android/server/display/NightDisplayService$CustomAutoMode;

    #@2
    invoke-static {v0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->-wrap0(Lcom/android/server/display/NightDisplayService$CustomAutoMode;)V

    #@5
    .line 380
    return-void
.end method
