.class final Landroid/app/Instrumentation$InstrumentationThread;
.super Ljava/lang/Thread;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InstrumentationThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Instrumentation;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1866
    iput-object p1, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    #@2
    .line 1867
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@5
    .line 1866
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 1871
    const/4 v1, -0x8

    #@1
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 1876
    :goto_0
    iget-object v1, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    #@6
    invoke-static {v1}, Landroid/app/Instrumentation;->-get0(Landroid/app/Instrumentation;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1877
    iget-object v1, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    #@e
    invoke-virtual {v1}, Landroid/app/Instrumentation;->startPerformanceSnapshot()V

    #@11
    .line 1879
    :cond_0
    iget-object v1, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    #@13
    invoke-virtual {v1}, Landroid/app/Instrumentation;->onStart()V

    #@16
    .line 1869
    return-void

    #@17
    .line 1872
    :catch_0
    move-exception v0

    #@18
    .line 1873
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "Instrumentation"

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Exception setting priority of instrumentation thread "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 1874
    invoke-static {}, Landroid/os/Process;->myTid()I

    #@2a
    move-result v3

    #@2b
    .line 1873
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    goto :goto_0
.end method
