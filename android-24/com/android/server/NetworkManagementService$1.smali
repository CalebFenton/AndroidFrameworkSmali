.class Lcom/android/server/NetworkManagementService$1;
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
    .line 1603
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    #@2
    iput p2, p0, Lcom/android/server/NetworkManagementService$1;->val$type:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 1605
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    #@2
    iget v2, p0, Lcom/android/server/NetworkManagementService$1;->val$type:I

    #@4
    .line 1607
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@7
    move-result-wide v4

    #@8
    .line 1606
    const/4 v3, 0x3

    #@9
    .line 1607
    const/4 v6, -0x1

    #@a
    const/4 v7, 0x0

    #@b
    .line 1605
    invoke-static/range {v1 .. v7}, Lcom/android/server/NetworkManagementService;->-wrap4(Lcom/android/server/NetworkManagementService;IIJIZ)V

    #@e
    .line 1604
    return-void
.end method
