.class Ljava/util/logging/LogManager$Cleaner;
.super Ljava/lang/Thread;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cleaner"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method private constructor <init>(Ljava/util/logging/LogManager;)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    #@0
    .prologue
    .line 221
    iput-object p1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    .line 225
    const/4 v0, 0x0

    #@6
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager$Cleaner;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    #@9
    .line 221
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$Cleaner;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$Cleaner;-><init>(Ljava/util/logging/LogManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 231
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    .line 235
    .local v0, "mgr":Ljava/util/logging/LogManager;
    iget-object v2, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    #@6
    monitor-enter v2

    #@7
    .line 237
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    #@9
    const/4 v3, 0x1

    #@a
    invoke-static {v1, v3}, Ljava/util/logging/LogManager;->-set0(Ljava/util/logging/LogManager;Z)Z

    #@d
    .line 238
    iget-object v1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    #@f
    const/4 v3, 0x1

    #@10
    invoke-static {v1, v3}, Ljava/util/logging/LogManager;->-set1(Ljava/util/logging/LogManager;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 242
    iget-object v1, p0, Ljava/util/logging/LogManager$Cleaner;->this$0:Ljava/util/logging/LogManager;

    #@16
    invoke-virtual {v1}, Ljava/util/logging/LogManager;->reset()V

    #@19
    .line 228
    return-void

    #@1a
    .line 235
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method
