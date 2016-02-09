.class final Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayAdapterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    #@0
    .prologue
    .line 1108
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V
    .locals 1
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "event"    # I

    #@0
    .prologue
    .line 1111
    packed-switch p2, :pswitch_data_0

    #@3
    .line 1110
    :goto_0
    return-void

    #@4
    .line 1113
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@6
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap10(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    #@9
    goto :goto_0

    #@a
    .line 1117
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@c
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap11(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    #@f
    goto :goto_0

    #@10
    .line 1121
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@12
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap12(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    #@15
    goto :goto_0

    #@16
    .line 1111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTraversalRequested()V
    .locals 3

    #@0
    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get5(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayManagerService;->-wrap25(Lcom/android/server/display/DisplayManagerService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 1127
    return-void

    #@f
    .line 1128
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method
