.class public Lcom/android/wifi/x/com/android/internal/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;,
        Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;,
        Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRec;
    }
.end annotation


# static fields
.field public static final blacklist HANDLED:Z = true

.field public static final blacklist NOT_HANDLED:Z = false

.field private static final blacklist SM_INIT_CMD:I = -0x2

.field private static final blacklist SM_QUIT_CMD:I = -0x1


# instance fields
.field private blacklist mName:Ljava/lang/String;

.field private blacklist mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

.field private blacklist mSmThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmName(Lcom/android/wifi/x/com/android/internal/util/StateMachine;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmThread(Lcom/android/wifi/x/com/android/internal/util/StateMachine;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmHandler(Lcom/android/wifi/x/com/android/internal/util/StateMachine;Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmThread(Lcom/android/wifi/x/com/android/internal/util/StateMachine;Landroid/os/HandlerThread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1306
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    .line 1307
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1308
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1310
    .local v0, "looper":Landroid/os/Looper;
    invoke-direct {p0, p1, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1311
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1330
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1331
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1320
    invoke-direct {p0, p1, p2}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1321
    return-void
.end method

.method private blacklist initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1295
    iput-object p1, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    .line 1296
    new-instance v0, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/wifi/x/com/android/internal/util/StateMachine;Lcom/android/wifi/x/com/android/internal/util/StateMachine-IA;)V

    iput-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1297
    return-void
.end method


# virtual methods
.method public blacklist addLogRec(Ljava/lang/String;)V
    .registers 10
    .param p1, "string"    # Ljava/lang/String;

    .line 1568
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1569
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1570
    :cond_5
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentMessage(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentState(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Lcom/android/wifi/x/com/android/internal/util/IState;

    move-result-object v5

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmStateStack(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)[Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v2

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmStateStackTopIndex(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v6, v2, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/wifi/x/com/android/internal/util/State;

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmDestState(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Lcom/android/wifi/x/com/android/internal/util/State;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    .end local p1    # "string":Ljava/lang/String;
    .local v4, "string":Ljava/lang/String;
    invoke-virtual/range {v1 .. v7}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/wifi/x/com/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/wifi/x/com/android/internal/util/IState;Lcom/android/wifi/x/com/android/internal/util/IState;Lcom/android/wifi/x/com/android/internal/util/IState;)V

    .line 1572
    return-void
.end method

.method public final blacklist addState(Lcom/android/wifi/x/com/android/internal/util/State;)V
    .registers 4
    .param p1, "state"    # Lcom/android/wifi/x/com/android/internal/util/State;

    .line 1363
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$maddState(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;Lcom/android/wifi/x/com/android/internal/util/State;Lcom/android/wifi/x/com/android/internal/util/State;)Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1364
    return-void
.end method

.method public final blacklist addState(Lcom/android/wifi/x/com/android/internal/util/State;Lcom/android/wifi/x/com/android/internal/util/State;)V
    .registers 4
    .param p1, "state"    # Lcom/android/wifi/x/com/android/internal/util/State;
    .param p2, "parent"    # Lcom/android/wifi/x/com/android/internal/util/State;

    .line 1354
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$maddState(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;Lcom/android/wifi/x/com/android/internal/util/State;Lcom/android/wifi/x/com/android/internal/util/State;)Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1355
    return-void
.end method

.method public final blacklist copyLogRecs()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation

    .line 1551
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1552
    .local v0, "vlr":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRec;>;"
    iget-object v1, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1553
    .local v1, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-eqz v1, :cond_25

    .line 1554
    invoke-static {v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;->-$$Nest$fgetmLogRecVector(Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRec;

    .line 1555
    .local v3, "lr":Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRec;
    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1556
    .end local v3    # "lr":Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRec;
    goto :goto_15

    .line 1558
    :cond_25
    return-object v0
.end method

.method public final blacklist deferMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1445
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$mdeferMessage(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V

    .line 1446
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " total records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getLogRecCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_35
    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getLogRecSize()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 2092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rec["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getLogRec(I)Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRec;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2091
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 2095
    .end local v0    # "i":I
    :cond_65
    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->getCurrentState()Lcom/android/wifi/x/com/android/internal/util/IState;

    move-result-object v0

    .line 2096
    .local v0, "curState":Lcom/android/wifi/x/com/android/internal/util/IState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_79

    const-string v2, "<QUIT>"

    goto :goto_7d

    :cond_79
    invoke-interface {v0}, Lcom/android/wifi/x/com/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2097
    return-void
.end method

.method public final blacklist getCurrentMessage()Landroid/os/Message;
    .registers 3

    .line 1390
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1391
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return-object v1

    .line 1392
    :cond_6
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentMessage(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist getCurrentState()Lcom/android/wifi/x/com/android/internal/util/IState;
    .registers 3

    .line 1400
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1401
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return-object v1

    .line 1402
    :cond_6
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentState(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Lcom/android/wifi/x/com/android/internal/util/IState;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 1603
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    return-object v0
.end method

.method public final blacklist getLogRec(I)Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRec;
    .registers 4
    .param p1, "index"    # I

    .line 1542
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1543
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return-object v1

    .line 1544
    :cond_6
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;->get(I)Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRec;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist getLogRecCount()I
    .registers 3

    .line 1532
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1533
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return v1

    .line 1534
    :cond_6
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;->count()I

    move-result v1

    return v1
.end method

.method public final blacklist getLogRecMaxSize()I
    .registers 3

    .line 1522
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1523
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return v1

    .line 1524
    :cond_6
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;->-$$Nest$fgetmMaxSize(Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;)I

    move-result v1

    return v1
.end method

.method public final blacklist getLogRecSize()I
    .registers 3

    .line 1511
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1512
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return v1

    .line 1513
    :cond_6
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;->size()I

    move-result v1

    return v1
.end method

.method protected blacklist getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1589
    const-string v0, ""

    return-object v0
.end method

.method public final blacklist getName()Ljava/lang/String;
    .registers 2

    .line 1485
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getWhatToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "what"    # I

    .line 1596
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist haltedProcessMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1462
    return-void
.end method

.method protected final blacklist hasDeferredMessages(I)Z
    .registers 7
    .param p1, "what"    # I

    .line 1986
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1987
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1989
    :cond_6
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmDeferredMessages(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1990
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1991
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 1992
    .local v3, "msg":Landroid/os/Message;
    iget v4, v3, Landroid/os/Message;->what:I

    if-ne v4, p1, :cond_20

    const/4 v1, 0x1

    return v1

    .line 1993
    .end local v3    # "msg":Landroid/os/Message;
    :cond_20
    goto :goto_e

    .line 1995
    :cond_21
    return v1
.end method

.method protected final blacklist hasMessages(I)Z
    .registers 4
    .param p1, "what"    # I

    .line 2003
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 2004
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return v1

    .line 2006
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->hasMessages(I)Z

    move-result v1

    return v1
.end method

.method public blacklist isDbg()Z
    .registers 3

    .line 2048
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 2049
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return v1

    .line 2051
    :cond_6
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$misDbg(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Z

    move-result v1

    return v1
.end method

.method protected final blacklist isQuit(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2015
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 2016
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_d

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1

    .line 2018
    :cond_d
    invoke-static {v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$misQuit(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2126
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    return-void
.end method

.method protected blacklist logAndAddLogRec(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2116
    invoke-virtual {p0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->addLogRec(Ljava/lang/String;)V

    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 2118
    return-void
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2135
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2171
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 2181
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2182
    return-void
.end method

.method protected blacklist logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2153
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    return-void
.end method

.method protected blacklist logv(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2144
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    return-void
.end method

.method protected blacklist logw(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2162
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    return-void
.end method

.method public final blacklist obtainMessage()Landroid/os/Message;
    .registers 2

    .line 1617
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist obtainMessage(I)Landroid/os/Message;
    .registers 3
    .param p1, "what"    # I

    .line 1632
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist obtainMessage(II)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 1667
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist obtainMessage(III)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1686
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1706
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1649
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist onHalting()V
    .registers 1

    .line 1470
    return-void
.end method

.method protected blacklist onPostHandleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1346
    return-void
.end method

.method protected blacklist onPreHandleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1338
    return-void
.end method

.method protected blacklist onQuitting()V
    .registers 1

    .line 1479
    return-void
.end method

.method public final blacklist quit()V
    .registers 2

    .line 2026
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 2027
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 2029
    :cond_5
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$mquit(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)V

    .line 2030
    return-void
.end method

.method public final blacklist quitNow()V
    .registers 2

    .line 2037
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 2038
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 2040
    :cond_5
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$mquitNow(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)V

    .line 2041
    return-void
.end method

.method protected blacklist recordLogRec(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1578
    const/4 v0, 0x1

    return v0
.end method

.method protected final blacklist removeDeferredMessages(I)V
    .registers 6
    .param p1, "what"    # I

    .line 1972
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1973
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1975
    :cond_5
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmDeferredMessages(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1976
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1977
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1978
    .local v2, "msg":Landroid/os/Message;
    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p1, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1979
    .end local v2    # "msg":Landroid/os/Message;
    :cond_20
    goto :goto_d

    .line 1980
    :cond_21
    return-void
.end method

.method protected final blacklist removeMessages(I)V
    .registers 3
    .param p1, "what"    # I

    .line 1962
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1963
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1965
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->removeMessages(I)V

    .line 1966
    return-void
.end method

.method public final blacklist removeState(Lcom/android/wifi/x/com/android/internal/util/State;)V
    .registers 3
    .param p1, "state"    # Lcom/android/wifi/x/com/android/internal/util/State;

    .line 1371
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$mremoveState(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;Lcom/android/wifi/x/com/android/internal/util/State;)V

    .line 1372
    return-void
.end method

.method public blacklist sendMessage(I)V
    .registers 4
    .param p1, "what"    # I

    .line 1717
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1718
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1720
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1721
    return-void
.end method

.method public blacklist sendMessage(II)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 1745
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1746
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1748
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1749
    return-void
.end method

.method public blacklist sendMessage(III)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1758
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1759
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1761
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1762
    return-void
.end method

.method public blacklist sendMessage(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1772
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1773
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1775
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1776
    return-void
.end method

.method public blacklist sendMessage(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1731
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1732
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1734
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1735
    return-void
.end method

.method public blacklist sendMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1786
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1787
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1789
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1790
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(I)V
    .registers 4
    .param p1, "what"    # I

    .line 1879
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1880
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1882
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1883
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(II)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 1907
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1908
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1910
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1911
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(III)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 1922
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1923
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1925
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1926
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1936
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1937
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1939
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1940
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1893
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1894
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1896
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1897
    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1950
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1951
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1953
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1954
    return-void
.end method

.method public blacklist sendMessageDelayed(IIIJ)V
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "delayMillis"    # J

    .line 1838
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1839
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1841
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1842
    return-void
.end method

.method public blacklist sendMessageDelayed(IIILjava/lang/Object;J)V
    .registers 9
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMillis"    # J

    .line 1852
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1853
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1855
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p5, p6}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1856
    return-void
.end method

.method public blacklist sendMessageDelayed(IIJ)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "delayMillis"    # J

    .line 1825
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1826
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1828
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1829
    return-void
.end method

.method public blacklist sendMessageDelayed(IJ)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .line 1799
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1800
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1802
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1803
    return-void
.end method

.method public blacklist sendMessageDelayed(ILjava/lang/Object;J)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .line 1812
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1813
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1815
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1816
    return-void
.end method

.method public blacklist sendMessageDelayed(Landroid/os/Message;J)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .line 1865
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 1866
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 1868
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1869
    return-void
.end method

.method public blacklist setDbg(Z)V
    .registers 3
    .param p1, "dbg"    # Z

    .line 2061
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 2062
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 2064
    :cond_5
    invoke-static {v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$msetDbg(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;Z)V

    .line 2065
    return-void
.end method

.method public final blacklist setInitialState(Lcom/android/wifi/x/com/android/internal/util/State;)V
    .registers 3
    .param p1, "initialState"    # Lcom/android/wifi/x/com/android/internal/util/State;

    .line 1382
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$msetInitialState(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;Lcom/android/wifi/x/com/android/internal/util/State;)V

    .line 1383
    return-void
.end method

.method public final blacklist setLogOnlyTransitions(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 1503
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    .line 1504
    return-void
.end method

.method public final blacklist setLogRecSize(I)V
    .registers 3
    .param p1, "maxSize"    # I

    .line 1494
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$LogRecords;->setSize(I)V

    .line 1495
    return-void
.end method

.method public blacklist start()V
    .registers 2

    .line 2073
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    .line 2074
    .local v0, "smh":Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    return-void

    .line 2077
    :cond_5
    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$mcompleteConstruction(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)V

    .line 2078
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2101
    const-string v0, "null"

    .line 2103
    .local v0, "state":Ljava/lang/String;
    :try_start_2
    iget-object v1, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$mgetCurrentState(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Lcom/android/wifi/x/com/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/wifi/x/com/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_12
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_10} :catch_12

    move-object v0, v1

    .line 2106
    goto :goto_13

    .line 2104
    :catch_12
    move-exception v1

    .line 2107
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist transitionTo(Lcom/android/wifi/x/com/android/internal/util/IState;)V
    .registers 3
    .param p1, "destState"    # Lcom/android/wifi/x/com/android/internal/util/IState;

    .line 1421
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$mtransitionTo(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;Lcom/android/wifi/x/com/android/internal/util/IState;)V

    .line 1422
    return-void
.end method

.method public final blacklist transitionToHaltingState()V
    .registers 3

    .line 1432
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    iget-object v1, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmHaltingState(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler$HaltingState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$mtransitionTo(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;Lcom/android/wifi/x/com/android/internal/util/IState;)V

    .line 1433
    return-void
.end method

.method protected blacklist unhandledMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1454
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->mSmHandler:Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;->-$$Nest$fgetmDbg(Lcom/android/wifi/x/com/android/internal/util/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wifi/x/com/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    .line 1455
    :cond_20
    return-void
.end method
