.class abstract Landroid/net/dhcp/DhcpClient$LoggingState;
.super Lcom/android/internal/util/State;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LoggingState"
.end annotation


# instance fields
.field private mEnterTimeMs:J

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 498
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method private messageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "what"    # I

    #@0
    .prologue
    .line 514
    invoke-static {}, Landroid/net/dhcp/DhcpClient;->-get24()Landroid/util/SparseArray;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/String;

    #@e
    return-object v0
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 518
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 519
    .local v2, "now":J
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    const-string/jumbo v1, " "

    #@9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    .line 520
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    #@f
    move-result-wide v4

    #@10
    sub-long/2addr v4, v2

    #@11
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@14
    .line 521
    const-string/jumbo v1, " "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget v4, p1, Landroid/os/Message;->what:I

    #@1d
    invoke-direct {p0, v4}, Landroid/net/dhcp/DhcpClient$LoggingState;->messageName(I)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 522
    const-string/jumbo v4, " "

    #@28
    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 522
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@2e
    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 523
    const-string/jumbo v4, " "

    #@35
    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 523
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@3b
    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 524
    const-string/jumbo v4, " "

    #@42
    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 524
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@48
    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    .line 525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    return-object v1
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->mEnterTimeMs:J

    #@6
    .line 502
    return-void
.end method

.method public exit()V
    .locals 6

    #@0
    .prologue
    .line 509
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    iget-wide v4, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->mEnterTimeMs:J

    #@6
    sub-long v0, v2, v4

    #@8
    .line 510
    .local v0, "durationMs":J
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@a
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->getName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    long-to-int v4, v0

    #@f
    invoke-static {v2, v3, v4}, Landroid/net/dhcp/DhcpClient;->-wrap11(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;I)V

    #@12
    .line 508
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 540
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 533
    const/4 v0, 0x0

    #@1
    return v0
.end method
