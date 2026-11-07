.class public Lcom/android/internal/telephony/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/StateMachine$SmHandler;,
        Lcom/android/internal/telephony/StateMachine$LogRecords;,
        Lcom/android/internal/telephony/StateMachine$LogRec;
    }
.end annotation


# static fields
.field public static final blacklist HANDLED:Z = true

.field public static final blacklist NOT_HANDLED:Z = false


# instance fields
.field private blacklist mName:Ljava/lang/String;

.field private blacklist mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

.field private blacklist mSmThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmName(Lcom/android/internal/telephony/StateMachine;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmThread(Lcom/android/internal/telephony/StateMachine;)Landroid/os/HandlerThread;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmHandler(Lcom/android/internal/telephony/StateMachine;Lcom/android/internal/telephony/StateMachine$SmHandler;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmThread(Lcom/android/internal/telephony/StateMachine;Landroid/os/HandlerThread;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 1305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1306
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    .line 1307
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1308
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1310
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .registers 3

    .line 1329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1330
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 3

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1320
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method private blacklist initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 4

    .line 1295
    iput-object p1, p0, Lcom/android/internal/telephony/StateMachine;->mName:Ljava/lang/String;

    .line 1296
    new-instance p1, Lcom/android/internal/telephony/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/android/internal/telephony/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/StateMachine;Lcom/android/internal/telephony/StateMachine-IA;)V

    iput-object p1, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    return-void
.end method


# virtual methods
.method public blacklist addLogRec(Ljava/lang/String;)V
    .registers 10

    .line 1568
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1570
    :cond_5
    invoke-static {v0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/StateMachine$LogRecords;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$mgetCurrentMessage(Lcom/android/internal/telephony/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$mgetCurrentState(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/IState;

    move-result-object v5

    invoke-static {v0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmStateStack(Lcom/android/internal/telephony/StateMachine$SmHandler;)[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmStateStackTopIndex(Lcom/android/internal/telephony/StateMachine$SmHandler;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v6, v2, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    invoke-static {v0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmDestState(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/State;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/StateMachine$LogRecords;->add(Lcom/android/internal/telephony/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method public final blacklist addState(Lcom/android/internal/telephony/State;)V
    .registers 3

    .line 1363
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$maddState(Lcom/android/internal/telephony/StateMachine$SmHandler;Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method public final blacklist addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V
    .registers 3

    .line 1354
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$maddState(Lcom/android/internal/telephony/StateMachine$SmHandler;Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method public final blacklist copyLogRecs()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/StateMachine$LogRec;",
            ">;"
        }
    .end annotation

    .line 1551
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1552
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-eqz p0, :cond_25

    .line 1554
    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/StateMachine$LogRecords;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$LogRecords;->-$$Nest$fgetmLogRecVector(Lcom/android/internal/telephony/StateMachine$LogRecords;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/StateMachine$LogRec;

    .line 1555
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_25
    return-object v0
.end method

.method public final blacklist deferMessage(Landroid/os/Message;)V
    .registers 2

    .line 1445
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$mdeferMessage(Lcom/android/internal/telephony/StateMachine$SmHandler;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 2089
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " total records="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getLogRecCount()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2091
    :goto_31
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getLogRecSize()I

    move-result p3

    if-ge p1, p3, :cond_5d

    .line 2092
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " rec["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->getLogRec(I)Lcom/android/internal/telephony/StateMachine$LogRec;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    .line 2095
    :cond_5d
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    .line 2096
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "curState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_70

    const-string p0, "<QUIT>"

    goto :goto_74

    :cond_70
    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_74
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final blacklist getCurrentMessage()Landroid/os/Message;
    .registers 1

    .line 1390
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1392
    :cond_6
    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$mgetCurrentMessage(Lcom/android/internal/telephony/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist getCurrentState()Lcom/android/internal/telephony/IState;
    .registers 1

    .line 1400
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1402
    :cond_6
    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$mgetCurrentState(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/IState;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist getHandler()Landroid/os/Handler;
    .registers 1

    .line 1603
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    return-object p0
.end method

.method public final blacklist getLogRec(I)Lcom/android/internal/telephony/StateMachine$LogRec;
    .registers 2

    .line 1542
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1544
    :cond_6
    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/StateMachine$LogRecords;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine$LogRecords;->get(I)Lcom/android/internal/telephony/StateMachine$LogRec;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist getLogRecCount()I
    .registers 1

    .line 1532
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1534
    :cond_6
    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/StateMachine$LogRecords;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine$LogRecords;->count()I

    move-result p0

    return p0
.end method

.method public final blacklist getLogRecMaxSize()I
    .registers 1

    .line 1522
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1524
    :cond_6
    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/StateMachine$LogRecords;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$LogRecords;->-$$Nest$fgetmMaxSize(Lcom/android/internal/telephony/StateMachine$LogRecords;)I

    move-result p0

    return p0
.end method

.method public final blacklist getLogRecSize()I
    .registers 1

    .line 1511
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1513
    :cond_6
    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/StateMachine$LogRecords;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine$LogRecords;->size()I

    move-result p0

    return p0
.end method

.method protected blacklist getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 2

    .line 1589
    const-string p0, ""

    return-object p0
.end method

.method public final blacklist getName()Ljava/lang/String;
    .registers 1

    .line 1485
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mName:Ljava/lang/String;

    return-object p0
.end method

.method protected blacklist getWhatToString(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected blacklist haltedProcessMessage(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method protected final blacklist hasDeferredMessages(I)Z
    .registers 6

    .line 1986
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 1989
    :cond_6
    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmDeferredMessages(Lcom/android/internal/telephony/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :cond_f
    if-ge v2, v1, :cond_1f

    .line 1991
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/os/Message;

    .line 1992
    iget v3, v3, Landroid/os/Message;->what:I

    if-ne v3, p1, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v0
.end method

.method protected final blacklist hasMessages(I)Z
    .registers 2

    .line 2003
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2006
    :cond_6
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isDbg()Z
    .registers 1

    .line 2048
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2051
    :cond_6
    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$misDbg(Lcom/android/internal/telephony/StateMachine$SmHandler;)Z

    move-result p0

    return p0
.end method

.method protected final blacklist isQuit(Landroid/os/Message;)Z
    .registers 2

    .line 2015
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_d

    .line 2016
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0

    .line 2018
    :cond_d
    invoke-static {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$misQuit(Lcom/android/internal/telephony/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 2126
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logAndAddLogRec(Ljava/lang/String;)V
    .registers 2

    .line 2116
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->addLogRec(Ljava/lang/String;)V

    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 2135
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 2171
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 2181
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected blacklist logi(Ljava/lang/String;)V
    .registers 2

    .line 2153
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logv(Ljava/lang/String;)V
    .registers 2

    .line 2144
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logw(Ljava/lang/String;)V
    .registers 2

    .line 2162
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final blacklist obtainMessage()Landroid/os/Message;
    .registers 1

    .line 1617
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist obtainMessage(I)Landroid/os/Message;
    .registers 2

    .line 1632
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist obtainMessage(II)Landroid/os/Message;
    .registers 4

    .line 1667
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist obtainMessage(III)Landroid/os/Message;
    .registers 4

    .line 1686
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {p0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 5

    .line 1706
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 3

    .line 1649
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist onHalting()V
    .registers 1

    .line 0
    return-void
.end method

.method protected blacklist onPostHandleMessage(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method protected blacklist onPreHandleMessage(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method protected blacklist onQuitting()V
    .registers 1

    .line 0
    return-void
.end method

.method public final blacklist quit()V
    .registers 1

    .line 2026
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_5

    return-void

    .line 2029
    :cond_5
    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$mquit(Lcom/android/internal/telephony/StateMachine$SmHandler;)V

    return-void
.end method

.method public final blacklist quitNow()V
    .registers 1

    .line 2037
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_5

    return-void

    .line 2040
    :cond_5
    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$mquitNow(Lcom/android/internal/telephony/StateMachine$SmHandler;)V

    return-void
.end method

.method protected blacklist recordLogRec(Landroid/os/Message;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected final blacklist removeDeferredMessages(I)V
    .registers 3

    .line 1972
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_5

    goto :goto_21

    .line 1975
    :cond_5
    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmDeferredMessages(Lcom/android/internal/telephony/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1976
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1977
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 1978
    iget v0, v0, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :cond_21
    :goto_21
    return-void
.end method

.method protected final blacklist removeMessages(I)V
    .registers 2

    .line 1962
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_5

    return-void

    .line 1965
    :cond_5
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final blacklist removeState(Lcom/android/internal/telephony/State;)V
    .registers 2

    .line 1371
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$mremoveState(Lcom/android/internal/telephony/StateMachine$SmHandler;Lcom/android/internal/telephony/State;)V

    return-void
.end method

.method public blacklist sendMessage(I)V
    .registers 3

    .line 1717
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1720
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist sendMessage(II)V
    .registers 4

    .line 1745
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1748
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist sendMessage(III)V
    .registers 5

    .line 1758
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1761
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist sendMessage(IIILjava/lang/Object;)V
    .registers 6

    .line 1772
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1775
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist sendMessage(ILjava/lang/Object;)V
    .registers 4

    .line 1731
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1734
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist sendMessage(Landroid/os/Message;)V
    .registers 2

    .line 1786
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_5

    return-void

    .line 1789
    :cond_5
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(I)V
    .registers 3

    .line 1879
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1882
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(II)V
    .registers 4

    .line 1907
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1910
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(III)V
    .registers 5

    .line 1922
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1925
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .registers 6

    .line 1936
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1939
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .registers 4

    .line 1893
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1896
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final blacklist sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .registers 2

    .line 1950
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_5

    return-void

    .line 1953
    :cond_5
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist sendMessageDelayed(IIIJ)V
    .registers 7

    .line 1838
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1841
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public blacklist sendMessageDelayed(IIILjava/lang/Object;J)V
    .registers 8

    .line 1852
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1855
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public blacklist sendMessageDelayed(IIJ)V
    .registers 6

    .line 1825
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1828
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public blacklist sendMessageDelayed(IJ)V
    .registers 5

    .line 1799
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1802
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public blacklist sendMessageDelayed(ILjava/lang/Object;J)V
    .registers 6

    .line 1812
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez v0, :cond_5

    return-void

    .line 1815
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public blacklist sendMessageDelayed(Landroid/os/Message;J)V
    .registers 4

    .line 1865
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_5

    return-void

    .line 1868
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public blacklist setDbg(Z)V
    .registers 2

    .line 2061
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_5

    return-void

    .line 2064
    :cond_5
    invoke-static {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$msetDbg(Lcom/android/internal/telephony/StateMachine$SmHandler;Z)V

    return-void
.end method

.method public final blacklist setInitialState(Lcom/android/internal/telephony/State;)V
    .registers 2

    .line 1382
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$msetInitialState(Lcom/android/internal/telephony/StateMachine$SmHandler;Lcom/android/internal/telephony/State;)V

    return-void
.end method

.method public final blacklist setLogOnlyTransitions(Z)V
    .registers 2

    .line 1503
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/StateMachine$LogRecords;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    return-void
.end method

.method public final blacklist setLogRecSize(I)V
    .registers 2

    .line 1494
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/StateMachine$LogRecords;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine$LogRecords;->setSize(I)V

    return-void
.end method

.method public blacklist start()V
    .registers 1

    .line 2073
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    if-nez p0, :cond_5

    return-void

    .line 2077
    :cond_5
    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$mcompleteConstruction(Lcom/android/internal/telephony/StateMachine$SmHandler;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2103
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$mgetCurrentState(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_11

    .line 2104
    :catch_f
    const-string v0, "null"

    .line 2107
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " state="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist transitionTo(Lcom/android/internal/telephony/IState;)V
    .registers 2

    .line 1421
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$mtransitionTo(Lcom/android/internal/telephony/StateMachine$SmHandler;Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method public final blacklist transitionToHaltingState()V
    .registers 2

    .line 1432
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmHaltingState(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/StateMachine$SmHandler$HaltingState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$mtransitionTo(Lcom/android/internal/telephony/StateMachine$SmHandler;Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method protected blacklist unhandledMessage(Landroid/os/Message;)V
    .registers 4

    .line 1454
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine;->mSmHandler:Lcom/android/internal/telephony/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->-$$Nest$fgetmDbg(Lcom/android/internal/telephony/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->loge(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method
