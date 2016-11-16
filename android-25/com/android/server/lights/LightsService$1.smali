.class Lcom/android/server/lights/LightsService$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
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
    .line 191
    iput-object p1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    #@2
    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 194
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    #@3
    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    #@5
    aget-object v0, v2, v3

    #@7
    .line 195
    .local v0, "l":Lcom/android/server/lights/LightsService$LightImpl;
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    #@9
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-wrap0(Lcom/android/server/lights/LightsService;)I

    #@c
    move-result v1

    #@d
    .line 198
    .local v1, "vrDisplayMode":I
    if-eqz p1, :cond_1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 199
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    #@13
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-get2(Lcom/android/server/lights/LightsService;)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    .line 202
    invoke-virtual {v0}, Lcom/android/server/lights/LightsService$LightImpl;->enableLowPersistence()V

    #@1c
    .line 203
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    #@1e
    const/4 v3, 0x1

    #@1f
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->-set0(Lcom/android/server/lights/LightsService;Z)Z

    #@22
    .line 193
    :cond_0
    :goto_0
    return-void

    #@23
    .line 206
    :cond_1
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    #@25
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-get2(Lcom/android/server/lights/LightsService;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_0

    #@2b
    .line 208
    invoke-virtual {v0}, Lcom/android/server/lights/LightsService$LightImpl;->disableLowPersistence()V

    #@2e
    .line 209
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    #@30
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->-set0(Lcom/android/server/lights/LightsService;Z)Z

    #@33
    goto :goto_0
.end method
