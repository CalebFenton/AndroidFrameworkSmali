.class Landroid/net/http/IdleCache$IdleReaper;
.super Ljava/lang/Thread;
.source "IdleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/IdleCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleReaper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/IdleCache;


# direct methods
.method private constructor <init>(Landroid/net/http/IdleCache;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/http/IdleCache;

    #@0
    .prologue
    .line 141
    iput-object p1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/http/IdleCache;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/http/IdleCache$IdleReaper;-><init>(Landroid/net/http/IdleCache;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 144
    const/4 v0, 0x0

    #@1
    .line 146
    .local v0, "check":I
    const-string/jumbo v2, "IdleReaper"

    #@4
    invoke-virtual {p0, v2}, Landroid/net/http/IdleCache$IdleReaper;->setName(Ljava/lang/String;)V

    #@7
    .line 148
    const/16 v2, 0xa

    #@9
    .line 147
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@c
    .line 149
    iget-object v3, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    #@e
    monitor-enter v3

    #@f
    .line 150
    :goto_0
    const/4 v2, 0x5

    #@10
    if-ge v0, v2, :cond_1

    #@12
    .line 152
    :try_start_0
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    #@14
    const-wide/16 v4, 0x7d0

    #@16
    invoke-virtual {v2, v4, v5}, Landroid/net/http/IdleCache;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 155
    :goto_1
    :try_start_1
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    #@1b
    invoke-static {v2}, Landroid/net/http/IdleCache;->-get0(Landroid/net/http/IdleCache;)I

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_0

    #@21
    .line 156
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 158
    :cond_0
    const/4 v0, 0x0

    #@25
    .line 159
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    #@27
    invoke-static {v2}, Landroid/net/http/IdleCache;->-wrap0(Landroid/net/http/IdleCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 149
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit v3

    #@2d
    throw v2

    #@2e
    .line 162
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    #@30
    const/4 v4, 0x0

    #@31
    invoke-static {v2, v4}, Landroid/net/http/IdleCache;->-set0(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)Landroid/net/http/IdleCache$IdleReaper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    monitor-exit v3

    #@35
    .line 143
    return-void

    #@36
    .line 153
    :catch_0
    move-exception v1

    #@37
    .local v1, "ex":Ljava/lang/InterruptedException;
    goto :goto_1
.end method
