.class Lcom/android/server/MountService$3;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->mountAppFuse(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$pid:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/MountService;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "val$uid"    # I
    .param p3, "val$pid"    # I
    .param p4, "val$name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2946
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #@2
    iput p2, p0, Lcom/android/server/MountService$3;->val$uid:I

    #@4
    iput p3, p0, Lcom/android/server/MountService$3;->val$pid:I

    #@6
    iput-object p4, p0, Lcom/android/server/MountService$3;->val$name:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onClose(Ljava/io/IOException;)V
    .locals 7
    .param p1, "e"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 2950
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    #@2
    invoke-static {v2}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@5
    move-result-object v2

    #@6
    .line 2951
    const-string/jumbo v3, "appfuse"

    #@9
    .line 2950
    const/4 v4, 0x4

    #@a
    new-array v4, v4, [Ljava/lang/Object;

    #@c
    .line 2951
    const-string/jumbo v5, "unmount"

    #@f
    const/4 v6, 0x0

    #@10
    aput-object v5, v4, v6

    #@12
    iget v5, p0, Lcom/android/server/MountService$3;->val$uid:I

    #@14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v5

    #@18
    const/4 v6, 0x1

    #@19
    aput-object v5, v4, v6

    #@1b
    iget v5, p0, Lcom/android/server/MountService$3;->val$pid:I

    #@1d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v5

    #@21
    const/4 v6, 0x2

    #@22
    aput-object v5, v4, v6

    #@24
    iget-object v5, p0, Lcom/android/server/MountService$3;->val$name:Ljava/lang/String;

    #@26
    const/4 v6, 0x3

    #@27
    aput-object v5, v4, v6

    #@29
    .line 2950
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v0

    #@2d
    .line 2948
    :goto_0
    return-void

    #@2e
    .line 2952
    :catch_0
    move-exception v1

    #@2f
    .line 2953
    .local v1, "unmountException":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v2, "MountService"

    #@32
    const-string/jumbo v3, "Failed to unmount appfuse."

    #@35
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    goto :goto_0
.end method
