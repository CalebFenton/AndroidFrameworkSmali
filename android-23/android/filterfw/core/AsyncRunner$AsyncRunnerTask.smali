.class Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;
.super Landroid/os/AsyncTask;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/AsyncRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRunnerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/filterfw/core/SyncRunner;",
        "Ljava/lang/Void;",
        "Landroid/filterfw/core/AsyncRunner$RunnerResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncRunnerTask"


# instance fields
.field final synthetic this$0:Landroid/filterfw/core/AsyncRunner;


# direct methods
.method private constructor <init>(Landroid/filterfw/core/AsyncRunner;)V
    .locals 0
    .param p1, "this$0"    # Landroid/filterfw/core/AsyncRunner;

    #@0
    .prologue
    .line 43
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;)V
    .locals 0
    .param p1, "this$0"    # Landroid/filterfw/core/AsyncRunner;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;-><init>(Landroid/filterfw/core/AsyncRunner;)V

    #@3
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;
    .locals 6
    .param p1, "runner"    # [Landroid/filterfw/core/SyncRunner;

    #@0
    .prologue
    const/4 v5, 0x6

    #@1
    const/4 v4, 0x1

    #@2
    .line 49
    new-instance v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    #@4
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v1, v2, v3}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    #@a
    .line 51
    .local v1, "result":Landroid/filterfw/core/AsyncRunner$RunnerResult;
    :try_start_0
    array-length v2, p1

    #@b
    if-le v2, v4, :cond_2

    #@d
    .line 52
    new-instance v2, Ljava/lang/RuntimeException;

    #@f
    const-string/jumbo v3, "More than one runner received!"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 82
    :catch_0
    move-exception v0

    #@17
    .line 83
    .local v0, "exception":Ljava/lang/Exception;
    iput-object v0, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    #@19
    .line 84
    iput v5, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    #@1b
    .line 89
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@1d
    invoke-virtual {v2}, Landroid/filterfw/core/AsyncRunner;->deactivateGlContext()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    .line 95
    :goto_1
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@22
    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_1

    #@28
    const-string/jumbo v2, "AsyncRunnerTask"

    #@2b
    const-string/jumbo v3, "Done with background graph processing."

    #@2e
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 96
    :cond_1
    return-object v1

    #@32
    .line 55
    :cond_2
    const/4 v2, 0x0

    #@33
    :try_start_2
    aget-object v2, p1, v2

    #@35
    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->assertReadyToStep()V

    #@38
    .line 58
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@3a
    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_3

    #@40
    const-string/jumbo v2, "AsyncRunnerTask"

    #@43
    const-string/jumbo v3, "Starting background graph processing."

    #@46
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 59
    :cond_3
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@4b
    invoke-virtual {v2}, Landroid/filterfw/core/AsyncRunner;->activateGlContext()Z

    #@4e
    .line 61
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@50
    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    #@53
    move-result v2

    #@54
    if-eqz v2, :cond_4

    #@56
    const-string/jumbo v2, "AsyncRunnerTask"

    #@59
    const-string/jumbo v3, "Preparing filter graph for processing."

    #@5c
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 62
    :cond_4
    const/4 v2, 0x0

    #@60
    aget-object v2, p1, v2

    #@62
    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->beginProcessing()V

    #@65
    .line 64
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@67
    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_5

    #@6d
    const-string/jumbo v2, "AsyncRunnerTask"

    #@70
    const-string/jumbo v3, "Running graph."

    #@73
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 67
    :cond_5
    const/4 v2, 0x1

    #@77
    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    #@79
    .line 68
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    #@7c
    move-result v2

    #@7d
    if-nez v2, :cond_7

    #@7f
    iget v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    #@81
    if-ne v2, v4, :cond_7

    #@83
    .line 69
    const/4 v2, 0x0

    #@84
    aget-object v2, p1, v2

    #@86
    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->performStep()Z

    #@89
    move-result v2

    #@8a
    if-nez v2, :cond_6

    #@8c
    .line 70
    const/4 v2, 0x0

    #@8d
    aget-object v2, p1, v2

    #@8f
    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->determinePostRunState()I

    #@92
    move-result v2

    #@93
    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    #@95
    .line 71
    iget v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    #@97
    const/4 v3, 0x3

    #@98
    if-ne v2, v3, :cond_6

    #@9a
    .line 72
    const/4 v2, 0x0

    #@9b
    aget-object v2, p1, v2

    #@9d
    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->waitUntilWake()V

    #@a0
    .line 73
    const/4 v2, 0x1

    #@a1
    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    #@a3
    goto :goto_2

    #@a4
    .line 79
    :cond_7
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    #@a7
    move-result v2

    #@a8
    if-eqz v2, :cond_0

    #@aa
    .line 80
    const/4 v2, 0x5

    #@ab
    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@ad
    goto/16 :goto_0

    #@af
    .line 90
    :catch_1
    move-exception v0

    #@b0
    .line 91
    .restart local v0    # "exception":Ljava/lang/Exception;
    iput-object v0, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    #@b2
    .line 92
    iput v5, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    #@b4
    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "runner"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 48
    check-cast p1, [Landroid/filterfw/core/SyncRunner;

    #@2
    .end local p1    # "runner":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .locals 0
    .param p1, "result"    # Landroid/filterfw/core/AsyncRunner$RunnerResult;

    #@0
    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    #@3
    .line 100
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 100
    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    #@2
    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    #@5
    return-void
.end method

.method protected onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .locals 6
    .param p1, "result"    # Landroid/filterfw/core/AsyncRunner$RunnerResult;

    #@0
    .prologue
    const/4 v5, 0x6

    #@1
    const/4 v4, 0x5

    #@2
    const/4 v3, 0x0

    #@3
    .line 106
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@5
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    const-string/jumbo v1, "AsyncRunnerTask"

    #@e
    const-string/jumbo v2, "Starting post-execute."

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 107
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@16
    const/4 v2, 0x0

    #@17
    invoke-static {v1, v2}, Landroid/filterfw/core/AsyncRunner;->-wrap1(Landroid/filterfw/core/AsyncRunner;Z)V

    #@1a
    .line 108
    if-nez p1, :cond_1

    #@1c
    .line 110
    new-instance p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    #@1e
    .end local p1    # "result":Landroid/filterfw/core/AsyncRunner$RunnerResult;
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@20
    invoke-direct {p1, v1, v3}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    #@23
    .line 111
    .restart local p1    # "result":Landroid/filterfw/core/AsyncRunner$RunnerResult;
    iput v4, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    #@25
    .line 113
    :cond_1
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@27
    iget-object v2, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    #@29
    invoke-static {v1, v2}, Landroid/filterfw/core/AsyncRunner;->-wrap0(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    #@2c
    .line 114
    iget v1, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    #@2e
    if-eq v1, v4, :cond_2

    #@30
    iget v1, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    #@32
    if-ne v1, v5, :cond_4

    #@34
    .line 115
    :cond_2
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@36
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_3

    #@3c
    const-string/jumbo v1, "AsyncRunnerTask"

    #@3f
    const-string/jumbo v2, "Closing filters."

    #@42
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 117
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@47
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get2(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/SyncRunner;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Landroid/filterfw/core/SyncRunner;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 123
    :cond_4
    :goto_0
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@50
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get0(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    #@53
    move-result-object v1

    #@54
    if-eqz v1, :cond_6

    #@56
    .line 124
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@58
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_5

    #@5e
    const-string/jumbo v1, "AsyncRunnerTask"

    #@61
    const-string/jumbo v2, "Calling graph done callback."

    #@64
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 125
    :cond_5
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@69
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get0(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    #@6c
    move-result-object v1

    #@6d
    iget v2, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    #@6f
    invoke-interface {v1, v2}, Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;->onRunnerDone(I)V

    #@72
    .line 127
    :cond_6
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@74
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    #@77
    move-result v1

    #@78
    if-eqz v1, :cond_7

    #@7a
    const-string/jumbo v1, "AsyncRunnerTask"

    #@7d
    const-string/jumbo v2, "Completed post-execute."

    #@80
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 105
    :cond_7
    return-void

    #@84
    .line 118
    :catch_0
    move-exception v0

    #@85
    .line 119
    .local v0, "exception":Ljava/lang/Exception;
    iput v5, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    #@87
    .line 120
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    #@89
    invoke-static {v1, v0}, Landroid/filterfw/core/AsyncRunner;->-wrap0(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    #@8c
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 105
    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    #@2
    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    #@5
    return-void
.end method
