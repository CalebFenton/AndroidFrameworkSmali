.class Lcom/android/server/lights/LightsService$2;
.super Landroid/os/Handler;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;

    #@0
    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 157
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v0, Lcom/android/server/lights/LightsService$LightImpl;

    #@4
    .line 158
    .local v0, "light":Lcom/android/server/lights/LightsService$LightImpl;
    invoke-static {v0}, Lcom/android/server/lights/LightsService$LightImpl;->-wrap0(Lcom/android/server/lights/LightsService$LightImpl;)V

    #@7
    .line 156
    return-void
.end method
