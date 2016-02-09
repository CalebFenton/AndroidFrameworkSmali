.class Lcom/android/server/DropBoxManagerService$1$1;
.super Ljava/lang/Thread;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DropBoxManagerService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DropBoxManagerService$1;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/DropBoxManagerService$1;

    #@0
    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    #@2
    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    #@4
    invoke-static {v1}, Lcom/android/server/DropBoxManagerService;->-wrap1(Lcom/android/server/DropBoxManagerService;)V

    #@7
    .line 121
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    #@9
    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    #@b
    invoke-static {v1}, Lcom/android/server/DropBoxManagerService;->-wrap0(Lcom/android/server/DropBoxManagerService;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 118
    :goto_0
    return-void

    #@f
    .line 122
    :catch_0
    move-exception v0

    #@10
    .line 123
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "DropBoxManagerService"

    #@13
    const-string/jumbo v2, "Can\'t init"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_0
.end method
