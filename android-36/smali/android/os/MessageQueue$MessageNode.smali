.class final Landroid/os/MessageQueue$MessageNode;
.super Landroid/os/MessageQueue$StackNode;
.source "MessageQueue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MessageNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/MessageQueue$StackNode;",
        "Ljava/lang/Comparable<",
        "Landroid/os/MessageQueue$MessageNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist sRemovedFromStack:Ljava/lang/invoke/VarHandle;


# instance fields
.field blacklist mBottomOfStack:Landroid/os/MessageQueue$StateNode;

.field final blacklist mInsertSeq:J

.field private final blacklist mMessage:Landroid/os/Message;

.field volatile blacklist mNext:Landroid/os/MessageQueue$StackNode;

.field private volatile blacklist mRemovedFromStackValue:Z

.field blacklist mWokeUp:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Landroid/os/MessageQueue$MessageNode;->mMessage:Landroid/os/Message;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 2525
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 2526
    .local v0, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-class v1, Landroid/os/MessageQueue$MessageNode;

    const-string/jumbo v2, "mRemovedFromStackValue"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v1

    sput-object v1, Landroid/os/MessageQueue$MessageNode;->sRemovedFromStack:Ljava/lang/invoke/VarHandle;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    .line 2531
    .end local v0    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 2532
    return-void

    .line 2528
    :catch_13
    move-exception v0

    .line 2529
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VarHandle lookup failed with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConcurrentMessageQueue"

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor blacklist <init>(Landroid/os/Message;J)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "insertSeq"    # J

    .line 2535
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/MessageQueue$StackNode;-><init>(I)V

    .line 2536
    iput-object p1, p0, Landroid/os/MessageQueue$MessageNode;->mMessage:Landroid/os/Message;

    .line 2537
    iput-wide p2, p0, Landroid/os/MessageQueue$MessageNode;->mInsertSeq:J

    .line 2538
    return-void
.end method


# virtual methods
.method public blacklist compareTo(Landroid/os/MessageQueue$MessageNode;)I
    .registers 8
    .param p1, "messageNode"    # Landroid/os/MessageQueue$MessageNode;

    .line 2558
    iget-object v0, p1, Landroid/os/MessageQueue$MessageNode;->mMessage:Landroid/os/Message;

    .line 2560
    .local v0, "other":Landroid/os/Message;
    iget-object v1, p0, Landroid/os/MessageQueue$MessageNode;->mMessage:Landroid/os/Message;

    iget-wide v1, v1, Landroid/os/Message;->when:J

    iget-wide v3, v0, Landroid/os/Message;->when:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    .line 2561
    .local v1, "compared":I
    if-nez v1, :cond_16

    .line 2562
    iget-wide v2, p0, Landroid/os/MessageQueue$MessageNode;->mInsertSeq:J

    iget-wide v4, p1, Landroid/os/MessageQueue$MessageNode;->mInsertSeq:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    .line 2564
    :cond_16
    return v1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2515
    check-cast p1, Landroid/os/MessageQueue$MessageNode;

    invoke-virtual {p0, p1}, Landroid/os/MessageQueue$MessageNode;->compareTo(Landroid/os/MessageQueue$MessageNode;)I

    move-result p1

    return p1
.end method

.method blacklist getWhen()J
    .registers 3

    .line 2541
    iget-object v0, p0, Landroid/os/MessageQueue$MessageNode;->mMessage:Landroid/os/Message;

    iget-wide v0, v0, Landroid/os/Message;->when:J

    return-wide v0
.end method

.method blacklist isAsync()Z
    .registers 2

    .line 2549
    iget-object v0, p0, Landroid/os/MessageQueue$MessageNode;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v0

    return v0
.end method

.method blacklist isBarrier()Z
    .registers 2

    .line 2553
    iget-object v0, p0, Landroid/os/MessageQueue$MessageNode;->mMessage:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method blacklist removeFromStack()Z
    .registers 4

    .line 2545
    sget-object v0, Landroid/os/MessageQueue$MessageNode;->sRemovedFromStack:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue$MessageNode;ZZ)Z

    move-result v0

    return v0
.end method
