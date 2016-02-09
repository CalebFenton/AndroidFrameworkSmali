.class Lcom/android/commands/am/Am$MyActivityController$1;
.super Ljava/lang/Thread;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/am/Am$MyActivityController;->waitControllerLocked(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/commands/am/Am$MyActivityController;

.field final synthetic val$converter:Ljava/io/InputStreamReader;


# direct methods
.method constructor <init>(Lcom/android/commands/am/Am$MyActivityController;Ljava/io/InputStreamReader;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/commands/am/Am$MyActivityController;
    .param p2, "val$converter"    # Ljava/io/InputStreamReader;

    #@0
    .prologue
    .line 1497
    iput-object p1, p0, Lcom/android/commands/am/Am$MyActivityController$1;->this$1:Lcom/android/commands/am/Am$MyActivityController;

    #@2
    iput-object p2, p0, Lcom/android/commands/am/Am$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    #@4
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 1500
    new-instance v2, Ljava/io/BufferedReader;

    #@2
    iget-object v4, p0, Lcom/android/commands/am/Am$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    #@4
    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@7
    .line 1502
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    #@8
    .line 1504
    .local v0, "count":I
    :goto_0
    iget-object v5, p0, Lcom/android/commands/am/Am$MyActivityController$1;->this$1:Lcom/android/commands/am/Am$MyActivityController;

    #@a
    monitor-enter v5

    #@b
    .line 1505
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/am/Am$MyActivityController$1;->this$1:Lcom/android/commands/am/Am$MyActivityController;

    #@d
    iget-object v4, v4, Lcom/android/commands/am/Am$MyActivityController;->mGdbThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    if-nez v4, :cond_0

    #@11
    monitor-exit v5

    #@12
    .line 1506
    return-void

    #@13
    .line 1508
    :cond_0
    const/4 v4, 0x2

    #@14
    if-ne v0, v4, :cond_1

    #@16
    .line 1509
    :try_start_1
    iget-object v4, p0, Lcom/android/commands/am/Am$MyActivityController$1;->this$1:Lcom/android/commands/am/Am$MyActivityController;

    #@18
    const/4 v6, 0x1

    #@19
    iput-boolean v6, v4, Lcom/android/commands/am/Am$MyActivityController;->mGotGdbPrint:Z

    #@1b
    .line 1510
    iget-object v4, p0, Lcom/android/commands/am/Am$MyActivityController$1;->this$1:Lcom/android/commands/am/Am$MyActivityController;

    #@1d
    invoke-virtual {v4}, Lcom/android/commands/am/Am$MyActivityController;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    :cond_1
    monitor-exit v5

    #@21
    .line 1514
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@24
    move-result-object v3

    #@25
    .line 1515
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_2

    #@27
    .line 1516
    return-void

    #@28
    .line 1504
    .end local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@29
    monitor-exit v5

    #@2a
    throw v4

    #@2b
    .line 1518
    .restart local v3    # "line":Ljava/lang/String;
    :cond_2
    :try_start_3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "GDB: "

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@44
    .line 1519
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 1520
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@48
    .line 1521
    .local v1, "e":Ljava/io/IOException;
    return-void
.end method
