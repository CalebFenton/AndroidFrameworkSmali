.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2314
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #@2
    .line 2315
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 2314
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2320
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 2319
    :goto_0
    return-void

    #@7
    .line 2322
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #@9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b
    check-cast v0, Landroid/location/Location;

    #@d
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@f
    if-ne v3, v1, :cond_0

    #@11
    :goto_1
    invoke-static {v2, v0, v1}, Lcom/android/server/LocationManagerService;->-wrap4(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    #@14
    goto :goto_0

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_1

    #@17
    .line 2320
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
