.class Lcom/android/server/NetworkManagementService$3;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;

.field final synthetic val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "val$params"    # Lcom/android/server/NetworkManagementService$IdleTimerParams;

    #@0
    .prologue
    .line 1607
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$3;->this$0:Lcom/android/server/NetworkManagementService;

    #@2
    iput-object p2, p0, Lcom/android/server/NetworkManagementService$3;->val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 1609
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$3;->this$0:Lcom/android/server/NetworkManagementService;

    #@2
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$3;->val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    #@4
    iget v2, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    #@6
    .line 1610
    sget v3, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@8
    .line 1611
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@b
    move-result-wide v4

    #@c
    const/4 v6, 0x0

    #@d
    .line 1609
    invoke-static/range {v1 .. v6}, Lcom/android/server/NetworkManagementService;->-wrap3(Lcom/android/server/NetworkManagementService;IIJZ)V

    #@10
    .line 1608
    return-void
.end method
