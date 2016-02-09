.class Lcom/android/server/NetworkManagementService$2;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "val$type"    # I

    #@0
    .prologue
    .line 1578
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$2;->this$0:Lcom/android/server/NetworkManagementService;

    #@2
    iput p2, p0, Lcom/android/server/NetworkManagementService$2;->val$type:I

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
    .line 1580
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$2;->this$0:Lcom/android/server/NetworkManagementService;

    #@2
    iget v2, p0, Lcom/android/server/NetworkManagementService$2;->val$type:I

    #@4
    .line 1581
    sget v3, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    #@6
    .line 1582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@9
    move-result-wide v4

    #@a
    const/4 v6, 0x0

    #@b
    .line 1580
    invoke-static/range {v1 .. v6}, Lcom/android/server/NetworkManagementService;->-wrap3(Lcom/android/server/NetworkManagementService;IIJZ)V

    #@e
    .line 1579
    return-void
.end method
