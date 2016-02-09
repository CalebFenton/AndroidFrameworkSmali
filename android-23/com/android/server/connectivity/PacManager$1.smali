.class Lcom/android/server/connectivity/PacManager$1;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PacManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/PacManager;

    #@0
    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 102
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    #@2
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-get4(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 103
    :try_start_0
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@9
    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    #@b
    invoke-static {v4}, Lcom/android/server/connectivity/PacManager;->-get3(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    monitor-exit v3

    #@16
    return-void

    #@17
    .line 105
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    #@19
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-get3(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-wrap1(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result-object v0

    #@21
    :goto_0
    monitor-exit v3

    #@22
    .line 111
    if-eqz v0, :cond_2

    #@24
    .line 112
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    #@26
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-get4(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    monitor-enter v3

    #@2b
    .line 113
    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    #@2d
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-get0(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_1

    #@37
    .line 114
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    #@39
    invoke-static {v2, v0}, Lcom/android/server/connectivity/PacManager;->-wrap0(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3c
    :cond_1
    monitor-exit v3

    #@3d
    .line 117
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    #@3f
    const/4 v3, 0x1

    #@40
    invoke-static {v2, v3}, Lcom/android/server/connectivity/PacManager;->-set0(Lcom/android/server/connectivity/PacManager;Z)Z

    #@43
    .line 118
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    #@45
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-wrap4(Lcom/android/server/connectivity/PacManager;)V

    #@48
    .line 119
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    #@4a
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-wrap2(Lcom/android/server/connectivity/PacManager;)V

    #@4d
    .line 100
    :goto_1
    return-void

    #@4e
    .line 106
    :catch_0
    move-exception v1

    #@4f
    .line 107
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v0, 0x0

    #@50
    .line 108
    .local v0, "file":Ljava/lang/String;
    :try_start_3
    const-string/jumbo v2, "PacManager"

    #@53
    new-instance v4, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v5, "Failed to load PAC file: "

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6a
    goto :goto_0

    #@6b
    .line 102
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@6c
    monitor-exit v3

    #@6d
    throw v2

    #@6e
    .line 112
    :catchall_1
    move-exception v2

    #@6f
    monitor-exit v3

    #@70
    throw v2

    #@71
    .line 121
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    #@73
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-wrap3(Lcom/android/server/connectivity/PacManager;)V

    #@76
    goto :goto_1
.end method
