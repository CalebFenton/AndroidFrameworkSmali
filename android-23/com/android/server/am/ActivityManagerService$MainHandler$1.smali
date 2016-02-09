.class Lcom/android/server/am/ActivityManagerService$MainHandler$1;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

.field final synthetic val$memInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@0
    .prologue
    .line 1779
    .local p2, "val$memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    #@4
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@2
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->reportMemUsage(Ljava/util/ArrayList;)V

    #@9
    .line 1780
    return-void
.end method
