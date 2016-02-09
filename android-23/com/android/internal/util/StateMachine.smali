.class public Lcom/android/internal/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$LogRec;,
        Lcom/android/internal/util/StateMachine$LogRecords;,
        Lcom/android/internal/util/StateMachine$SmHandler;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    #@2
    return-object p1
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1250
    new-instance v1, Landroid/os/HandlerThread;

    #@5
    invoke-direct {v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@8
    iput-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    #@a
    .line 1251
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    #@c
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    #@f
    .line 1252
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    #@11
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@14
    move-result-object v0

    #@15
    .line 1254
    .local v0, "looper":Landroid/os/Looper;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    #@18
    .line 1249
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1272
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    #@a
    .line 1271
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1263
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    #@6
    .line 1262
    return-void
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1240
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    #@2
    .line 1241
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {v0, p2, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)V

    #@8
    iput-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@a
    .line 1239
    return-void
.end method


# virtual methods
.method protected addLogRec(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1473
    iget-object v7, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1474
    .local v7, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v7, :cond_0

    #@4
    return-void

    #@5
    .line 1475
    :cond_0
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->-get3(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    #@8
    move-result-object v0

    #@9
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap0(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    #@c
    move-result-object v2

    #@d
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap3(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    #@10
    move-result-object v4

    #@11
    .line 1476
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->-get5(Lcom/android/internal/util/StateMachine$SmHandler;)[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@14
    move-result-object v1

    #@15
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->-get6(Lcom/android/internal/util/StateMachine$SmHandler;)I

    #@18
    move-result v3

    #@19
    aget-object v1, v1, v3

    #@1b
    iget-object v5, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    #@1d
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->-get1(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/State;

    #@20
    move-result-object v6

    #@21
    move-object v1, p0

    #@22
    move-object v3, p1

    #@23
    .line 1475
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    #@26
    .line 1471
    return-void
.end method

.method protected final addState(Lcom/android/internal/util/State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/util/State;

    #@0
    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap4(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@6
    .line 1288
    return-void
.end method

.method protected final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "parent"    # Lcom/android/internal/util/State;

    #@0
    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap4(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@5
    .line 1280
    return-void
.end method

.method public final copyLogRecs()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1456
    new-instance v3, Ljava/util/Vector;

    #@2
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@5
    .line 1457
    .local v3, "vlr":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/internal/util/StateMachine$LogRec;>;"
    iget-object v2, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@7
    .line 1458
    .local v2, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-eqz v2, :cond_0

    #@9
    .line 1459
    invoke-static {v2}, Lcom/android/internal/util/StateMachine$SmHandler;->-get3(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    #@c
    move-result-object v4

    #@d
    invoke-static {v4}, Lcom/android/internal/util/StateMachine$LogRecords;->-get0(Lcom/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;

    #@10
    move-result-object v4

    #@11
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "lr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/internal/util/StateMachine$LogRec;

    #@21
    .line 1460
    .local v0, "lr":Lcom/android/internal/util/StateMachine$LogRec;
    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 1463
    .end local v0    # "lr":Lcom/android/internal/util/StateMachine$LogRec;
    .end local v1    # "lr$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v3
.end method

.method protected final deferMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap6(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V

    #@5
    .line 1360
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1946
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, ":"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b
    .line 1947
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, " total records="

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getLogRecCount()I

    #@2a
    move-result v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 1948
    const/4 v0, 0x0

    #@37
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getLogRecSize()I

    #@3a
    move-result v1

    #@3b
    if-ge v0, v1, :cond_0

    #@3d
    .line 1949
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v2, " rec["

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    const-string/jumbo v2, "]: "

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine$LogRec;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@67
    .line 1950
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@6a
    .line 1948
    add-int/lit8 v0, v0, 0x1

    #@6c
    goto :goto_0

    #@6d
    .line 1952
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v2, "curState="

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    #@7c
    move-result-object v2

    #@7d
    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@80
    move-result-object v2

    #@81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8c
    .line 1943
    return-void
.end method

.method protected final getCurrentMessage()Landroid/os/Message;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1307
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@3
    .line 1308
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 1309
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap0(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method protected final getCurrentState()Lcom/android/internal/util/IState;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1317
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@3
    .line 1318
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 1319
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap3(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 1508
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    return-object v0
.end method

.method public final getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1447
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@3
    .line 1448
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 1449
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-get3(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->get(I)Lcom/android/internal/util/StateMachine$LogRec;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public final getLogRecCount()I
    .locals 2

    #@0
    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1438
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 1439
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-get3(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->count()I

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public final getLogRecSize()I
    .locals 2

    #@0
    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1428
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 1429
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-get3(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->size()I

    #@d
    move-result v1

    #@e
    return v1
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1494
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1401
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 1501
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1377
    return-void
.end method

.method public isDbg()Z
    .locals 2

    #@0
    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1906
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 1908
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap1(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    #@9
    move-result v1

    #@a
    return v1
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1873
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_1

    #@4
    iget v1, p1, Landroid/os/Message;->what:I

    #@6
    const/4 v2, -0x1

    #@7
    if-ne v1, v2, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0

    #@d
    .line 1875
    :cond_1
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap2(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z

    #@10
    move-result v1

    #@11
    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 1980
    return-void
.end method

.method protected logAndAddLogRec(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1971
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addLogRec(Ljava/lang/String;)V

    #@3
    .line 1972
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@6
    .line 1970
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 1989
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2026
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 2025
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 2036
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    #@2
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5
    .line 2035
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2008
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 2007
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 1998
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2017
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 2016
    return-void
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    #@0
    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    #@0
    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    #@0
    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1554
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onHalting()V
    .locals 0

    #@0
    .prologue
    .line 1385
    return-void
.end method

.method protected onQuitting()V
    .locals 0

    #@0
    .prologue
    .line 1394
    return-void
.end method

.method protected final quit()V
    .locals 1

    #@0
    .prologue
    .line 1883
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1884
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1886
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap8(Lcom/android/internal/util/StateMachine$SmHandler;)V

    #@8
    .line 1881
    return-void
.end method

.method protected final quitNow()V
    .locals 1

    #@0
    .prologue
    .line 1894
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1895
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1897
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap7(Lcom/android/internal/util/StateMachine$SmHandler;)V

    #@8
    .line 1892
    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1483
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected final removeMessages(I)V
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1861
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1863
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->removeMessages(I)V

    #@8
    .line 1858
    return-void
.end method

.method public final sendMessage(I)V
    .locals 2
    .param p1, "what"    # I

    #@0
    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1620
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1622
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 1617
    return-void
.end method

.method public final sendMessage(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    #@0
    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1646
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1648
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 1643
    return-void
.end method

.method public final sendMessage(III)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    #@0
    .prologue
    .line 1658
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1659
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1661
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 1656
    return-void
.end method

.method public final sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1672
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1674
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 1669
    return-void
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1632
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1633
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1635
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 1630
    return-void
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1685
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1687
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    #@8
    .line 1682
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 2
    .param p1, "what"    # I

    #@0
    .prologue
    .line 1777
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1778
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1780
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@c
    .line 1775
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    #@0
    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1806
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1808
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@c
    .line 1803
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(III)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    #@0
    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1821
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1823
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@c
    .line 1818
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1835
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1837
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@c
    .line 1832
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1791
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1792
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1794
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@c
    .line 1789
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1849
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1851
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@8
    .line 1846
    return-void
.end method

.method public final sendMessageDelayed(IIIJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "delayMillis"    # J

    #@0
    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1737
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1739
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1, p4, p5}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c
    .line 1734
    return-void
.end method

.method public final sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMillis"    # J

    #@0
    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1751
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1753
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1, p5, p6}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c
    .line 1748
    return-void
.end method

.method public final sendMessageDelayed(IIJ)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "delayMillis"    # J

    #@0
    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1724
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1726
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c
    .line 1721
    return-void
.end method

.method public final sendMessageDelayed(IJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    #@0
    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1698
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1700
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c
    .line 1695
    return-void
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    #@0
    .prologue
    .line 1710
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1711
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1713
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c
    .line 1708
    return-void
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    #@0
    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1764
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1766
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@8
    .line 1761
    return-void
.end method

.method public setDbg(Z)V
    .locals 1
    .param p1, "dbg"    # Z

    #@0
    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1919
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1921
    :cond_0
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap9(Lcom/android/internal/util/StateMachine$SmHandler;Z)V

    #@8
    .line 1916
    return-void
.end method

.method protected final setInitialState(Lcom/android/internal/util/State;)V
    .locals 1
    .param p1, "initialState"    # Lcom/android/internal/util/State;

    #@0
    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap10(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V

    #@5
    .line 1298
    return-void
.end method

.method public final setLogOnlyTransitions(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-get3(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    #@9
    .line 1418
    return-void
.end method

.method public final setLogRecSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    #@0
    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-get3(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setSize(I)V

    #@9
    .line 1409
    return-void
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 1929
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    .line 1930
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1933
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap5(Lcom/android/internal/util/StateMachine$SmHandler;)V

    #@8
    .line 1927
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1957
    new-instance v1, Ljava/io/StringWriter;

    #@3
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    #@6
    .line 1958
    .local v1, "sr":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    #@8
    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@b
    .line 1959
    .local v0, "pr":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@e
    .line 1960
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    #@11
    .line 1961
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    #@14
    .line 1962
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    return-object v2
.end method

.method protected final transitionTo(Lcom/android/internal/util/IState;)V
    .locals 1
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap11(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    #@5
    .line 1336
    return-void
.end method

.method protected final transitionToHaltingState()V
    .locals 2

    #@0
    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@4
    invoke-static {v1}, Lcom/android/internal/util/StateMachine$SmHandler;->-get2(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->-wrap11(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    #@b
    .line 1347
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #@2
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->-get0(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, " - unhandledMessage: msg.what="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget v1, p1, Landroid/os/Message;->what:I

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    #@21
    .line 1369
    :cond_0
    return-void
.end method
