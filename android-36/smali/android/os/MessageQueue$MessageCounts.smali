.class final Landroid/os/MessageQueue$MessageCounts;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageCounts"
.end annotation


# static fields
.field private static final blacklist AWAKE:J = 0x7fffffffffffffffL

.field private static final blacklist MESSAGE_FLUSH_THRESHOLD:I = 0xa

.field private static blacklist sCounts:Ljava/lang/invoke/VarHandle;


# instance fields
.field private volatile blacklist mCountsValue:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 2644
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 2645
    .local v0, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-class v1, Landroid/os/MessageQueue$MessageCounts;

    const-string/jumbo v2, "mCountsValue"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v1

    sput-object v1, Landroid/os/MessageQueue$MessageCounts;->sCounts:Ljava/lang/invoke/VarHandle;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    .line 2650
    .end local v0    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 2651
    return-void

    .line 2647
    :catch_13
    move-exception v0

    .line 2648
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

    .line 2649
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 2639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2641
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/MessageQueue-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/MessageQueue$MessageCounts;-><init>()V

    return-void
.end method

.method private static blacklist combineCounts(II)J
    .registers 6
    .param p0, "queued"    # I
    .param p1, "cancelled"    # I

    .line 2670
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist numCancelled(J)I
    .registers 3
    .param p0, "val"    # J

    .line 2666
    long-to-int v0, p0

    return v0
.end method

.method private static blacklist numQueued(J)I
    .registers 4
    .param p0, "val"    # J

    .line 2662
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public blacklist clearCounts()V
    .registers 3

    .line 2713
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    .line 2714
    return-void
.end method

.method public blacklist incrementCancelled()Z
    .registers 10

    .line 2690
    nop

    :goto_1
    iget-wide v2, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    .line 2691
    .local v2, "oldVal":J
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 2692
    return v1

    .line 2694
    :cond_e
    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numQueued(J)I

    move-result v6

    .line 2695
    .local v6, "queued":I
    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numCancelled(J)I

    move-result v7

    .line 2696
    .local v7, "cancelled":I
    const/16 v0, 0xa

    if-le v6, v0, :cond_1f

    shr-int/lit8 v0, v6, 0x1

    if-ge v0, v7, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    move v8, v1

    .line 2699
    .local v8, "needsPurge":Z
    if-eqz v8, :cond_29

    .line 2700
    const-wide v0, 0x7fffffffffffffffL

    move-wide v4, v0

    .local v0, "newVal":J
    goto :goto_34

    .line 2702
    .end local v0    # "newVal":J
    :cond_29
    add-int/lit8 v0, v7, 0x1

    .line 2703
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2702
    invoke-static {v6, v0}, Landroid/os/MessageQueue$MessageCounts;->combineCounts(II)J

    move-result-wide v0

    move-wide v4, v0

    .line 2706
    .local v4, "newVal":J
    :goto_34
    sget-object v0, Landroid/os/MessageQueue$MessageCounts;->sCounts:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue$MessageCounts;JJ)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2707
    return v8

    .line 2709
    .end local v2    # "oldVal":J
    .end local v4    # "newVal":J
    .end local v6    # "queued":I
    .end local v7    # "cancelled":I
    .end local v8    # "needsPurge":Z
    :cond_3f
    goto :goto_1
.end method

.method public blacklist incrementQueued()V
    .registers 9

    .line 2675
    nop

    :goto_1
    iget-wide v2, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    .line 2676
    .local v2, "oldVal":J
    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numQueued(J)I

    move-result v6

    .line 2677
    .local v6, "queued":I
    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numCancelled(J)I

    move-result v7

    .line 2679
    .local v7, "cancelled":I
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v7}, Landroid/os/MessageQueue$MessageCounts;->combineCounts(II)J

    move-result-wide v4

    .line 2682
    .local v4, "newVal":J
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2a

    sget-object v0, Landroid/os/MessageQueue$MessageCounts;->sCounts:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue$MessageCounts;JJ)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2683
    goto :goto_2a

    .line 2685
    .end local v2    # "oldVal":J
    .end local v4    # "newVal":J
    .end local v6    # "queued":I
    .end local v7    # "cancelled":I
    :cond_29
    goto :goto_1

    .line 2686
    :cond_2a
    :goto_2a
    return-void
.end method
