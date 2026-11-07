.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$MatchDeliverableMessages;,
        Landroid/os/MessageQueue$MatchHandlerWhatAndObject;,
        Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;,
        Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;,
        Landroid/os/MessageQueue$MatchHandler;,
        Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;,
        Landroid/os/MessageQueue$MatchHandlerAndObject;,
        Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;,
        Landroid/os/MessageQueue$MatchAllMessages;,
        Landroid/os/MessageQueue$MatchAllFutureMessages;,
        Landroid/os/MessageQueue$TimedParkStateNode;,
        Landroid/os/MessageQueue$StateNode;,
        Landroid/os/MessageQueue$StackNode;,
        Landroid/os/MessageQueue$MessageCounts;,
        Landroid/os/MessageQueue$MessageCompare;,
        Landroid/os/MessageQueue$MessageNode;,
        Landroid/os/MessageQueue$IdleHandler;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$MatchBarrierToken;,
        Landroid/os/MessageQueue$StackNodeType;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist STACK_NODE_ACTIVE:I = 0x1

.field private static final blacklist STACK_NODE_MESSAGE:I = 0x0

.field private static final blacklist STACK_NODE_PARKED:I = 0x2

.field private static final blacklist STACK_NODE_TIMEDPARK:I = 0x3

.field private static final blacklist TAG_C:Ljava/lang/String; = "ConcurrentMessageQueue"

.field private static final blacklist TAG_L:Ljava/lang/String; = "LegacyMessageQueue"

.field private static final blacklist TRACE:Z = false

.field private static final blacklist mMessagesDelivered:Ljava/util/concurrent/atomic/AtomicLong;

.field private static blacklist sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

.field private static final blacklist sNextFrontInsertSeq:Ljava/lang/invoke/VarHandle;

.field private static final blacklist sNextInsertSeq:Ljava/lang/invoke/VarHandle;

.field private static final blacklist sQuitting:Ljava/lang/invoke/VarHandle;

.field private static final blacklist sStackStateActive:Landroid/os/MessageQueue$StateNode;

.field private static final blacklist sStackStateParked:Landroid/os/MessageQueue$StateNode;

.field private static final blacklist sState:Ljava/lang/invoke/VarHandle;


# instance fields
.field private blacklist mAsyncMessageCount:I

.field private final blacklist mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBlocked:Z

.field private final blacklist mDrainCompleted:Ljava/util/concurrent/locks/Condition;

.field private final blacklist mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private greylist-max-o mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFileDescriptorRecordsLock:Ljava/lang/Object;

.field private final greylist mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIdleHandlersLock:Ljava/lang/Object;

.field private blacklist mLast:Landroid/os/Message;

.field private final blacklist mMatchAllFutureMessages:Landroid/os/MessageQueue$MatchAllFutureMessages;

.field private final blacklist mMatchAllMessages:Landroid/os/MessageQueue$MatchAllMessages;

.field private final blacklist mMatchDeliverableMessages:Landroid/os/MessageQueue$MatchDeliverableMessages;

.field private final blacklist mMatchHandler:Landroid/os/MessageQueue$MatchHandler;

.field private final blacklist mMatchHandlerAndObject:Landroid/os/MessageQueue$MatchHandlerAndObject;

.field private final blacklist mMatchHandlerAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;

.field private final blacklist mMatchHandlerRunnableAndObject:Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

.field private final blacklist mMatchHandlerRunnableAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;

.field private final blacklist mMatchHandlerWhatAndObject:Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

.field private final blacklist mMatchHandlerWhatAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

.field private final blacklist mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

.field private blacklist mMessageDirectlyQueued:Z

.field greylist mMessages:Landroid/os/Message;

.field private greylist mNextBarrierToken:I

.field private final blacklist mNextBarrierTokenAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile blacklist mNextFrontInsertSeqValue:J

.field private volatile blacklist mNextInsertSeqValue:J

.field private blacklist mNextIsDrainingStack:Z

.field private blacklist mNextPollTimeoutMillis:I

.field private greylist-max-o mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private final blacklist mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPtr:J

.field private final greylist mQuitAllowed:Z

.field private greylist-max-o mQuitting:Z

.field private blacklist mQuittingValue:Z

.field private final blacklist mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

.field private volatile blacklist mStateValue:Landroid/os/MessageQueue$StackNode;

.field private final blacklist mThreadName:Ljava/lang/String;

.field private final blacklist mTid:J

.field private final blacklist mUseConcurrent:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 115
    const-string v0, "VarHandle lookup failed with exception: "

    const-string v1, "ConcurrentMessageQueue"

    const-class v2, Landroid/os/MessageQueue;

    const/4 v3, 0x0

    sput-object v3, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    .line 637
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v3, Landroid/os/MessageQueue;->mMessagesDelivered:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2582
    new-instance v3, Landroid/os/MessageQueue$StateNode;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/os/MessageQueue$StateNode;-><init>(I)V

    sput-object v3, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    .line 2583
    new-instance v3, Landroid/os/MessageQueue$StateNode;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/os/MessageQueue$StateNode;-><init>(I)V

    sput-object v3, Landroid/os/MessageQueue;->sStackStateParked:Landroid/os/MessageQueue$StateNode;

    .line 2590
    :try_start_20
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    .line 2591
    .local v3, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string/jumbo v4, "mStateValue"

    const-class v5, Landroid/os/MessageQueue$StackNode;

    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v4

    sput-object v4, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2f} :catch_92

    .line 2596
    .end local v3    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 2621
    :try_start_30
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    .line 2622
    .restart local v3    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string/jumbo v4, "mNextInsertSeqValue"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v4

    sput-object v4, Landroid/os/MessageQueue;->sNextInsertSeq:Ljava/lang/invoke/VarHandle;

    .line 2624
    const-string/jumbo v4, "mNextFrontInsertSeqValue"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v4

    sput-object v4, Landroid/os/MessageQueue;->sNextFrontInsertSeq:Ljava/lang/invoke/VarHandle;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4a} :catch_77

    .line 2629
    .end local v3    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 2726
    :try_start_4b
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    .line 2727
    .restart local v3    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string/jumbo v4, "mQuittingValue"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5a} :catch_5c

    .line 2731
    .end local v3    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 2732
    return-void

    .line 2728
    :catch_5c
    move-exception v2

    .line 2729
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2626
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_77
    move-exception v2

    .line 2627
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2593
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_92
    move-exception v2

    .line 2594
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method constructor greylist-max-o <init>(Z)V
    .registers 6
    .param p1, "quitAllowed"    # Z

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 275
    new-instance v0, Landroid/os/MessageQueue$MatchDeliverableMessages;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchDeliverableMessages;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchDeliverableMessages:Landroid/os/MessageQueue$MatchDeliverableMessages;

    .line 1520
    new-instance v0, Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerWhatAndObject;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObject:Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

    .line 1563
    new-instance v0, Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

    .line 1606
    new-instance v0, Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObject:Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

    .line 1646
    new-instance v0, Landroid/os/MessageQueue$MatchHandler;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandler;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandler:Landroid/os/MessageQueue$MatchHandler;

    .line 1868
    new-instance v0, Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;

    .line 1943
    new-instance v0, Landroid/os/MessageQueue$MatchHandlerAndObject;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerAndObject;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerAndObject:Landroid/os/MessageQueue$MatchHandlerAndObject;

    .line 2016
    new-instance v0, Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchHandlerAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;

    .line 2134
    new-instance v0, Landroid/os/MessageQueue$MatchAllMessages;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchAllMessages;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchAllMessages:Landroid/os/MessageQueue$MatchAllMessages;

    .line 2150
    new-instance v0, Landroid/os/MessageQueue$MatchAllFutureMessages;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MatchAllFutureMessages;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMatchAllFutureMessages:Landroid/os/MessageQueue$MatchAllFutureMessages;

    .line 2584
    new-instance v0, Landroid/os/MessageQueue$TimedParkStateNode;

    invoke-direct {v0}, Landroid/os/MessageQueue$TimedParkStateNode;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    .line 2599
    sget-object v0, Landroid/os/MessageQueue;->sStackStateParked:Landroid/os/MessageQueue$StateNode;

    iput-object v0, p0, Landroid/os/MessageQueue;->mStateValue:Landroid/os/MessageQueue$StackNode;

    .line 2600
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 2602
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 2611
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/MessageQueue;->mNextInsertSeqValue:J

    .line 2618
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/os/MessageQueue;->mNextFrontInsertSeqValue:J

    .line 2717
    new-instance v0, Landroid/os/MessageQueue$MessageCounts;

    invoke-direct {v0, v1}, Landroid/os/MessageQueue$MessageCounts;-><init>(Landroid/os/MessageQueue-IA;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    .line 2719
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    .line 2720
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    .line 2723
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuittingValue:Z

    .line 2736
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/os/MessageQueue;->mNextBarrierTokenAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2743
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2744
    iput-boolean v0, p0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    .line 2745
    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MessageQueue;->mDrainCompleted:Ljava/util/concurrent/locks/Condition;

    .line 132
    invoke-static {}, Landroid/os/MessageQueue;->initIsProcessAllowedToUseConcurrent()V

    .line 133
    sget-object v0, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    .line 134
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 135
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MessageQueue;->mThreadName:Ljava/lang/String;

    .line 137
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mTid:J

    .line 138
    return-void
.end method

.method private blacklist addIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 331
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    iget-object v1, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    monitor-exit v0

    .line 334
    return-void

    .line 333
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist addIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 337
    monitor-enter p0

    .line 338
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    monitor-exit p0

    .line 340
    return-void

    .line 339
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private blacklist addOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 429
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 431
    monitor-exit v0

    .line 432
    return-void

    .line 431
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private blacklist addOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 437
    monitor-enter p0

    .line 438
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 439
    monitor-exit p0

    .line 440
    return-void

    .line 439
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method private blacklist decAndTraceMessageCount()V
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 231
    invoke-direct {p0}, Landroid/os/MessageQueue;->traceMessageCount()V

    .line 232
    return-void
.end method

.method private greylist-max-r dispatchEvents(II)I
    .registers 11
    .param p1, "fd"    # I
    .param p2, "events"    # I

    .line 565
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 566
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_8
    iget-object v2, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 568
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-nez v2, :cond_14

    .line 569
    monitor-exit v0

    return v1

    .line 572
    :cond_14
    iget v1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 573
    .local v1, "oldWatchedEvents":I
    and-int/2addr p2, v1

    .line 574
    if-nez p2, :cond_1b

    .line 575
    monitor-exit v0

    return v1

    .line 578
    :cond_1b
    iget-object v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 579
    .local v3, "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    iget v4, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 580
    .local v4, "seq":I
    monitor-exit v0

    goto :goto_41

    .end local v1    # "oldWatchedEvents":I
    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .end local v3    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    .end local v4    # "seq":I
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v1

    .line 582
    :cond_24
    monitor-enter p0

    .line 583
    :try_start_25
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$FileDescriptorRecord;

    move-object v2, v0

    .line 584
    .restart local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-nez v2, :cond_32

    .line 585
    monitor-exit p0

    return v1

    .line 588
    :cond_32
    iget v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    move v1, v0

    .line 589
    .restart local v1    # "oldWatchedEvents":I
    and-int/2addr p2, v1

    .line 590
    if-nez p2, :cond_3a

    .line 591
    monitor-exit p0

    return v1

    .line 594
    :cond_3a
    iget-object v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    move-object v3, v0

    .line 595
    .restart local v3    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    iget v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    move v4, v0

    .line 596
    .restart local v4    # "seq":I
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_9a

    .line 599
    :goto_41
    iget-object v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v3, v0, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result v0

    .line 601
    .local v0, "newWatchedEvents":I
    if-eqz v0, :cond_4b

    .line 602
    or-int/lit8 v0, v0, 0x4

    .line 607
    :cond_4b
    if-eq v0, v1, :cond_99

    .line 608
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v5, :cond_76

    .line 609
    iget-object v5, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 610
    :try_start_54
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    .line 611
    .local v6, "index":I
    if-ltz v6, :cond_71

    iget-object v7, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_71

    iget v7, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v7, v4, :cond_71

    .line 613
    iput v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 614
    if-nez v0, :cond_71

    .line 615
    iget-object v7, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 618
    .end local v6    # "index":I
    :cond_71
    monitor-exit v5

    goto :goto_99

    :catchall_73
    move-exception v6

    monitor-exit v5
    :try_end_75
    .catchall {:try_start_54 .. :try_end_75} :catchall_73

    throw v6

    .line 620
    :cond_76
    monitor-enter p0

    .line 621
    :try_start_77
    iget-object v5, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    .line 622
    .local v5, "index":I
    if-ltz v5, :cond_94

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_94

    iget v6, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v6, v4, :cond_94

    .line 624
    iput v0, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 625
    if-nez v0, :cond_94

    .line 626
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 629
    .end local v5    # "index":I
    :cond_94
    monitor-exit p0

    goto :goto_99

    :catchall_96
    move-exception v5

    monitor-exit p0
    :try_end_98
    .catchall {:try_start_77 .. :try_end_98} :catchall_96

    throw v5

    .line 634
    :cond_99
    :goto_99
    return v0

    .line 596
    .end local v0    # "newWatchedEvents":I
    .end local v1    # "oldWatchedEvents":I
    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .end local v3    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    .end local v4    # "seq":I
    :catchall_9a
    move-exception v0

    :try_start_9b
    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v0
.end method

.method private greylist-max-o dispose()V
    .registers 5

    .line 262
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 263
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 264
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 266
    :cond_f
    return-void
.end method

.method private blacklist drainStack(Landroid/os/MessageQueue$StackNode;)V
    .registers 5
    .param p1, "oldTop"    # Landroid/os/MessageQueue$StackNode;

    .line 2425
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2426
    move-object v0, p1

    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    .line 2427
    .local v0, "oldTopMessageNode":Landroid/os/MessageQueue$MessageNode;
    invoke-virtual {v0}, Landroid/os/MessageQueue$MessageNode;->removeFromStack()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2428
    invoke-direct {p0, v0}, Landroid/os/MessageQueue;->insertIntoPriorityQueue(Landroid/os/MessageQueue$MessageNode;)V

    .line 2430
    :cond_13
    move-object v1, v0

    .line 2431
    .local v1, "inserted":Landroid/os/MessageQueue$MessageNode;
    iget-object p1, v0, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2438
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2439
    .end local v0    # "oldTopMessageNode":Landroid/os/MessageQueue$MessageNode;
    .end local v1    # "inserted":Landroid/os/MessageQueue$MessageNode;
    goto :goto_1

    .line 2440
    :cond_1a
    return-void
.end method

.method private blacklist dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;I)I
    .registers 14
    .param p2, "pw"    # Landroid/util/Printer;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "h"    # Landroid/os/Handler;
    .param p5, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;",
            "Landroid/util/Printer;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "I)I"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2171
    .local p1, "queue":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Landroid/os/MessageQueue$MessageNode;>;"
    const/4 v0, 0x0

    .line 2172
    .local v0, "count":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2174
    .local v1, "now":J
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/MessageQueue$MessageNode;

    .line 2175
    .local v4, "msgNode":Landroid/os/MessageQueue$MessageNode;
    invoke-static {v4}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v5

    .line 2176
    .local v5, "msg":Landroid/os/Message;
    if-eqz p4, :cond_1f

    iget-object v6, v5, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p4, v6, :cond_49

    .line 2177
    :cond_1f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v7, p5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v1, v2}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2179
    :cond_49
    nop

    .end local v4    # "msgNode":Landroid/os/MessageQueue$MessageNode;
    .end local v5    # "msg":Landroid/os/Message;
    add-int/lit8 v0, v0, 0x1

    .line 2180
    goto :goto_9

    .line 2181
    :cond_4d
    return v0
.end method

.method private blacklist dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/proto/ProtoOutputStream;)I
    .registers 9
    .param p2, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;",
            "Landroid/util/proto/ProtoOutputStream;",
            ")I"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2235
    .local p1, "queue":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Landroid/os/MessageQueue$MessageNode;>;"
    const/4 v0, 0x0

    .line 2237
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageQueue$MessageNode;

    .line 2238
    .local v2, "msgNode":Landroid/os/MessageQueue$MessageNode;
    invoke-static {v2}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    .line 2239
    .local v3, "msg":Landroid/os/Message;
    const-wide v4, 0x20b00000001L

    invoke-virtual {v3, p2, v4, v5}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2240
    nop

    .end local v2    # "msgNode":Landroid/os/MessageQueue$MessageNode;
    .end local v3    # "msg":Landroid/os/Message;
    add-int/lit8 v0, v0, 0x1

    .line 2241
    goto :goto_5

    .line 2242
    :cond_21
    return v0
.end method

.method private blacklist enqueueMessageConcurrent(Landroid/os/Message;J)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 1277
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1281
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->enqueueMessageUnchecked(Landroid/os/Message;J)Z

    move-result v0

    return v0

    .line 1278
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " This message is already in use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist enqueueMessageLegacy(Landroid/os/Message;J)Z
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 1285
    monitor-enter p0

    .line 1286
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_df

    .line 1290
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 1291
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sending message to a Handler on a dead thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "LegacyMessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 1295
    monitor-exit p0

    return v1

    .line 1298
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_34
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 1299
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 1300
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->incAndTraceMessageCount(Landroid/os/Message;J)V

    .line 1302
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1304
    .local v0, "p":Landroid/os/Message;
    const/4 v2, 0x1

    if-eqz v0, :cond_bf

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_bf

    iget-wide v3, v0, Landroid/os/Message;->when:J

    cmp-long v3, p2, v3

    if-gez v3, :cond_4f

    goto/16 :goto_bf

    .line 1316
    :cond_4f
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v3, :cond_5f

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_5f

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5f

    move v3, v2

    goto :goto_60

    :cond_5f
    move v3, v1

    .line 1321
    .local v3, "needWake":Z
    :goto_60
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->messageQueueTailTracking()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a0

    .line 1322
    iget-object v4, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iget-wide v6, v4, Landroid/os/Message;->when:J

    cmp-long v4, p2, v6

    if-ltz v4, :cond_7f

    .line 1323
    if-eqz v3, :cond_76

    iget v4, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    if-nez v4, :cond_76

    move v1, v2

    .line 1324
    .end local v3    # "needWake":Z
    .local v1, "needWake":Z
    :cond_76
    iput-object v5, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1325
    iget-object v3, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1326
    iput-object p1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_cb

    .line 1331
    .end local v1    # "needWake":Z
    .restart local v3    # "needWake":Z
    :cond_7f
    :goto_7f
    move-object v1, v0

    .line 1332
    .local v1, "prev":Landroid/os/Message;
    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v4

    .line 1333
    if-eqz v0, :cond_96

    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, p2, v4

    if-gez v4, :cond_8c

    .line 1334
    goto :goto_96

    .line 1336
    :cond_8c
    if-eqz v3, :cond_7f

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 1337
    const/4 v3, 0x0

    goto :goto_7f

    .line 1340
    :cond_96
    :goto_96
    if-nez v0, :cond_9a

    .line 1342
    iput-object p1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1344
    :cond_9a
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1345
    iput-object p1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1346
    .end local v1    # "prev":Landroid/os/Message;
    move v1, v3

    goto :goto_cb

    .line 1350
    :cond_a0
    :goto_a0
    move-object v1, v0

    .line 1351
    .restart local v1    # "prev":Landroid/os/Message;
    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v4

    .line 1352
    if-eqz v0, :cond_b7

    iget-wide v6, v0, Landroid/os/Message;->when:J

    cmp-long v4, p2, v6

    if-gez v4, :cond_ad

    .line 1353
    goto :goto_b7

    .line 1355
    :cond_ad
    if-eqz v3, :cond_a0

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 1356
    const/4 v3, 0x0

    goto :goto_a0

    .line 1359
    :cond_b7
    :goto_b7
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1360
    iput-object p1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1376
    iput-object v5, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    move v1, v3

    goto :goto_cb

    .line 1306
    .end local v1    # "prev":Landroid/os/Message;
    .end local v3    # "needWake":Z
    :cond_bf
    :goto_bf
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1307
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1308
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 1309
    .local v1, "needWake":Z
    if-nez v0, :cond_cb

    .line 1310
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1380
    :cond_cb
    :goto_cb
    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 1381
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1385
    :cond_d6
    if-eqz v1, :cond_dd

    .line 1386
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 1388
    .end local v0    # "p":Landroid/os/Message;
    .end local v1    # "needWake":Z
    :cond_dd
    monitor-exit p0

    .line 1389
    return v2

    .line 1287
    :cond_df
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " This message is already in use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/MessageQueue;
    .end local p1    # "msg":Landroid/os/Message;
    .end local p2    # "when":J
    throw v0

    .line 1388
    .restart local p0    # "this":Landroid/os/MessageQueue;
    .restart local p1    # "msg":Landroid/os/Message;
    .restart local p2    # "when":J
    :catchall_f8
    move-exception v0

    monitor-exit p0
    :try_end_fa
    .catchall {:try_start_1 .. :try_end_fa} :catchall_f8

    throw v0
.end method

.method private blacklist enqueueMessageUnchecked(Landroid/os/Message;J)Z
    .registers 22
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 2748
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    sget-object v4, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, v0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_37

    .line 2749
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sending message to a Handler on a dead thread"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2751
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string v6, "ConcurrentMessageQueue"

    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2752
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 2753
    return v5

    .line 2756
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :cond_37
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    const-wide/16 v6, 0x1

    if-eqz v4, :cond_48

    sget-object v4, Landroid/os/MessageQueue;->sNextInsertSeq:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, v0, v6, v7}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;J)J

    move-result-wide v8

    add-long/2addr v8, v6

    goto :goto_52

    .line 2757
    :cond_48
    sget-object v4, Landroid/os/MessageQueue;->sNextFrontInsertSeq:Ljava/lang/invoke/VarHandle;

    const-wide/16 v8, -0x1

    invoke-polymorphic {v4, v0, v8, v9}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;J)J

    move-result-wide v8

    sub-long/2addr v8, v6

    :goto_52
    nop

    .line 2759
    .local v8, "seq":J
    new-instance v4, Landroid/os/MessageQueue$MessageNode;

    invoke-direct {v4, v1, v8, v9}, Landroid/os/MessageQueue$MessageNode;-><init>(Landroid/os/Message;J)V

    .line 2760
    .local v4, "node":Landroid/os/MessageQueue$MessageNode;
    iput-wide v2, v1, Landroid/os/Message;->when:J

    .line 2761
    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    .line 2762
    invoke-direct/range {p0 .. p3}, Landroid/os/MessageQueue;->incAndTraceMessageCount(Landroid/os/Message;J)V

    .line 2770
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    .line 2772
    .local v6, "myLooper":Landroid/os/Looper;
    const/4 v7, 0x1

    if-eqz v6, :cond_7f

    invoke-virtual {v6}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v10

    if-ne v10, v0, :cond_7f

    .line 2773
    invoke-virtual {v4}, Landroid/os/MessageQueue$MessageNode;->removeFromStack()Z

    .line 2774
    invoke-direct {v0, v4}, Landroid/os/MessageQueue;->insertIntoPriorityQueue(Landroid/os/MessageQueue$MessageNode;)V

    .line 2779
    iget-boolean v5, v0, Landroid/os/MessageQueue;->mMessageDirectlyQueued:Z

    if-nez v5, :cond_7e

    .line 2780
    iput-boolean v7, v0, Landroid/os/MessageQueue;->mMessageDirectlyQueued:Z

    .line 2781
    iget-wide v10, v0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v10, v11}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 2783
    :cond_7e
    return v7

    .line 2787
    :cond_7f
    :goto_7f
    sget-object v10, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v10, v0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v10

    .line 2791
    .local v10, "old":Landroid/os/MessageQueue$StackNode;
    iput-object v10, v4, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2792
    invoke-virtual {v10}, Landroid/os/MessageQueue$StackNode;->getNodeType()I

    move-result v11

    packed-switch v11, :pswitch_data_10e

    .line 2819
    move-object v11, v10

    check-cast v11, Landroid/os/MessageQueue$MessageNode;

    .line 2821
    .local v11, "oldMessage":Landroid/os/MessageQueue$MessageNode;
    iget-object v12, v11, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    iput-object v12, v4, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    .line 2822
    iget-object v12, v4, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    invoke-virtual {v12}, Landroid/os/MessageQueue$StateNode;->getNodeType()I

    move-result v12

    .line 2823
    .local v12, "bottomType":I
    const/4 v13, 0x2

    if-lt v12, v13, :cond_cd

    move v13, v7

    goto :goto_ce

    .line 2812
    .end local v11    # "oldMessage":Landroid/os/MessageQueue$MessageNode;
    .end local v12    # "bottomType":I
    :pswitch_a1
    move-object v11, v10

    check-cast v11, Landroid/os/MessageQueue$StateNode;

    iput-object v11, v4, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    .line 2813
    const/4 v11, 0x1

    .line 2814
    .local v11, "inactive":Z
    iget-object v12, v0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    iget-wide v12, v12, Landroid/os/MessageQueue$TimedParkStateNode;->mWhenToWake:J

    invoke-virtual {v4}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-ltz v12, :cond_b5

    move v12, v7

    goto :goto_b6

    :cond_b5
    move v12, v5

    .line 2815
    .local v12, "wakeNeeded":Z
    :goto_b6
    iput-boolean v12, v4, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    .line 2816
    goto :goto_f2

    .line 2805
    .end local v11    # "inactive":Z
    .end local v12    # "wakeNeeded":Z
    :pswitch_b9
    move-object v11, v10

    check-cast v11, Landroid/os/MessageQueue$StateNode;

    iput-object v11, v4, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    .line 2806
    const/4 v11, 0x1

    .line 2807
    .restart local v11    # "inactive":Z
    iput-boolean v7, v4, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    .line 2808
    const/4 v12, 0x1

    .line 2809
    .restart local v12    # "wakeNeeded":Z
    goto :goto_f2

    .line 2798
    .end local v11    # "inactive":Z
    .end local v12    # "wakeNeeded":Z
    :pswitch_c3
    move-object v11, v10

    check-cast v11, Landroid/os/MessageQueue$StateNode;

    iput-object v11, v4, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    .line 2799
    const/4 v11, 0x0

    .line 2800
    .restart local v11    # "inactive":Z
    iput-boolean v7, v4, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    .line 2801
    const/4 v12, 0x0

    .line 2802
    .restart local v12    # "wakeNeeded":Z
    goto :goto_f2

    .line 2823
    .local v11, "oldMessage":Landroid/os/MessageQueue$MessageNode;
    .local v12, "bottomType":I
    :cond_cd
    move v13, v5

    .line 2824
    .local v13, "inactive":Z
    :goto_ce
    const/4 v14, 0x3

    if-ne v12, v14, :cond_e3

    iget-object v14, v0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    iget-wide v14, v14, Landroid/os/MessageQueue$TimedParkStateNode;->mWhenToWake:J

    .line 2825
    invoke-virtual {v4}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-ltz v14, :cond_e3

    iget-boolean v14, v11, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    if-nez v14, :cond_e3

    move v14, v7

    goto :goto_e4

    :cond_e3
    move v14, v5

    .line 2827
    .local v14, "wakeNeeded":Z
    :goto_e4
    iget-boolean v15, v11, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    if-nez v15, :cond_ed

    if-eqz v14, :cond_eb

    goto :goto_ed

    :cond_eb
    move v15, v5

    goto :goto_ee

    :cond_ed
    :goto_ed
    move v15, v7

    :goto_ee
    iput-boolean v15, v4, Landroid/os/MessageQueue$MessageNode;->mWokeUp:Z

    move v11, v13

    move v12, v14

    .line 2830
    .end local v13    # "inactive":Z
    .end local v14    # "wakeNeeded":Z
    .local v11, "inactive":Z
    .local v12, "wakeNeeded":Z
    :goto_f2
    sget-object v13, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v13, v0, v10, v4}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;Landroid/os/MessageQueue$StackNode;Landroid/os/MessageQueue$MessageNode;)Z

    move-result v13

    if-eqz v13, :cond_10b

    .line 2831
    if-eqz v11, :cond_10a

    .line 2832
    if-eqz v12, :cond_105

    .line 2833
    iget-wide v13, v0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v13, v14}, Landroid/os/MessageQueue;->nativeWake(J)V

    goto :goto_10a

    .line 2835
    :cond_105
    iget-object v5, v0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    invoke-virtual {v5}, Landroid/os/MessageQueue$MessageCounts;->incrementQueued()V

    .line 2838
    :cond_10a
    :goto_10a
    return v7

    .line 2840
    .end local v10    # "old":Landroid/os/MessageQueue$StackNode;
    .end local v11    # "inactive":Z
    .end local v12    # "wakeNeeded":Z
    :cond_10b
    goto/16 :goto_7f

    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_b9
        :pswitch_a1
    .end packed-switch
.end method

.method private blacklist findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z
    .registers 21
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "r"    # Ljava/lang/Runnable;
    .param p5, "when"    # J
    .param p7, "compare"    # Landroid/os/MessageQueue$MessageCompare;
    .param p8, "removeMatches"    # Z

    .line 2942
    invoke-direct/range {p0 .. p8}, Landroid/os/MessageQueue;->stackHasMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result v10

    .line 2943
    .local v10, "foundInStack":Z
    iget-object v1, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/os/MessageQueue;->priorityQueueHasMessage(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result v11

    .line 2945
    .local v11, "foundInQueue":Z
    iget-object v1, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct/range {v0 .. v9}, Landroid/os/MessageQueue;->priorityQueueHasMessage(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result v1

    or-int v0, v11, v1

    .line 2948
    .end local v11    # "foundInQueue":Z
    .local v0, "foundInQueue":Z
    if-nez v10, :cond_25

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v1, 0x1

    :goto_26
    return v1
.end method

.method private blacklist getStateNode(Landroid/os/MessageQueue$StackNode;)Landroid/os/MessageQueue$StateNode;
    .registers 3
    .param p1, "node"    # Landroid/os/MessageQueue$StackNode;

    .line 2454
    invoke-virtual {p1}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2455
    move-object v0, p1

    check-cast v0, Landroid/os/MessageQueue$MessageNode;

    iget-object v0, v0, Landroid/os/MessageQueue$MessageNode;->mBottomOfStack:Landroid/os/MessageQueue$StateNode;

    return-object v0

    .line 2457
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/os/MessageQueue$StateNode;

    return-object v0
.end method

.method private blacklist hasEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 13
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1567
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v2, "what":I
    .local v3, "object":Ljava/lang/Object;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p1

    return p1
.end method

.method private blacklist hasEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1572
    monitor-enter p0

    .line 1573
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1574
    .local v0, "p":Landroid/os/Message;
    :goto_3
    if-eqz v0, :cond_1e

    .line 1575
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1a

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_1a

    if-eqz p3, :cond_17

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1576
    :cond_17
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 1578
    :cond_1a
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v1

    goto :goto_3

    .line 1580
    :cond_1e
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 1581
    .end local v0    # "p":Landroid/os/Message;
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method private blacklist hasMessagesConcurrent(Landroid/os/Handler;)Z
    .registers 11
    .param p1, "h"    # Landroid/os/Handler;

    .line 1649
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandler:Landroid/os/MessageQueue$MatchHandler;

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "h":Landroid/os/Handler;
    .local v1, "h":Landroid/os/Handler;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p1

    return p1
.end method

.method private blacklist hasMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 13
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1524
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObject:Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v2, "what":I
    .local v3, "object":Ljava/lang/Object;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p1

    return p1
.end method

.method private blacklist hasMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .registers 13
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1610
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObject:Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

    const/4 v8, 0x0

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "r":Ljava/lang/Runnable;
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v3, "object":Ljava/lang/Object;
    .local v4, "r":Ljava/lang/Runnable;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result p1

    return p1
.end method

.method private blacklist hasMessagesLegacy(Landroid/os/Handler;)Z
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;

    .line 1653
    monitor-enter p0

    .line 1654
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1655
    .local v0, "p":Landroid/os/Message;
    :goto_3
    if-eqz v0, :cond_10

    .line 1656
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_c

    .line 1657
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 1659
    :cond_c
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v1

    goto :goto_3

    .line 1661
    :cond_10
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 1662
    .end local v0    # "p":Landroid/os/Message;
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private blacklist hasMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1529
    monitor-enter p0

    .line 1530
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1531
    .local v0, "p":Landroid/os/Message;
    :goto_3
    if-eqz v0, :cond_1a

    .line 1532
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_16

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_16

    if-eqz p3, :cond_13

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_16

    .line 1533
    :cond_13
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 1535
    :cond_16
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v1

    goto :goto_3

    .line 1537
    :cond_1a
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 1538
    .end local v0    # "p":Landroid/os/Message;
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private blacklist hasMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1615
    monitor-enter p0

    .line 1616
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1617
    .local v0, "p":Landroid/os/Message;
    :goto_3
    if-eqz v0, :cond_1a

    .line 1618
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_16

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_16

    if-eqz p3, :cond_13

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_16

    .line 1619
    :cond_13
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 1621
    :cond_16
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v1

    goto :goto_3

    .line 1623
    :cond_1a
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 1624
    .end local v0    # "p":Landroid/os/Message;
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private blacklist incAndTraceMessageCount(Landroid/os/Message;J)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 235
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->mSendingThreadName:Ljava/lang/String;

    .line 237
    iget-object v0, p1, Landroid/os/Message;->mEventId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/PerfettoTrace;->getFlowId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 239
    invoke-direct {p0}, Landroid/os/MessageQueue;->traceMessageCount()V

    .line 240
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    const-string/jumbo v1, "message_queue_send"

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace;->instant(Landroid/os/PerfettoTrace$Category;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->mEventId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 241
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;->setFlow(J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->beginProto()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 243
    const-wide/16 v1, 0x7d4

    invoke-virtual {v0, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;->beginNested(J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/MessageQueue;->mThreadName:Ljava/lang/String;

    .line 244
    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    int-to-long v1, v1

    .line 245
    const-wide/16 v3, 0x3

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JJ)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, p2, v1

    const-wide/16 v3, 0x4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JJ)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->endNested()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->endProto()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->emit()V

    .line 250
    return-void
.end method

.method private static blacklist initIsProcessAllowedToUseConcurrent()V
    .registers 4

    .line 141
    sget-object v0, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 142
    return-void

    .line 146
    :cond_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->messageQueueForceLegacy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 147
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    .line 148
    return-void

    .line 151
    :cond_13
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->forceConcurrentMessageQueue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    .line 155
    :try_start_1a
    const-string/jumbo v0, "org.robolectric.Robolectric"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_20} :catch_21

    .line 160
    goto :goto_29

    .line 156
    :catch_21
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    .line 159
    return-void

    .line 165
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_29
    :goto_29
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "processName":Ljava/lang/String;
    if-nez v0, :cond_36

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    .line 169
    return-void

    .line 175
    :cond_36
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    .line 177
    sget-object v3, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 180
    const-string/jumbo v2, "test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    const-string v2, "Test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 181
    :cond_5d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    goto :goto_7c

    .line 187
    :cond_64
    nop

    .line 188
    const-string v3, "com.android.systemui"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 189
    const-string v3, "com.android.systemui:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    :cond_75
    move v1, v2

    .line 188
    :cond_76
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/os/MessageQueue;->sIsProcessAllowedToUseConcurrent:Ljava/lang/Boolean;

    .line 196
    :cond_7c
    :goto_7c
    return-void
.end method

.method private blacklist insertIntoPriorityQueue(Landroid/os/MessageQueue$MessageNode;)V
    .registers 3
    .param p1, "msgNode"    # Landroid/os/MessageQueue$MessageNode;

    .line 2386
    invoke-virtual {p1}, Landroid/os/MessageQueue$MessageNode;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2387
    iget-object v0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 2389
    :cond_c
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 2391
    :goto_11
    return-void
.end method

.method private blacklist isIdleConcurrent()Z
    .registers 11

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 281
    .local v6, "now":J
    iget-object v8, p0, Landroid/os/MessageQueue;->mMatchDeliverableMessages:Landroid/os/MessageQueue$MatchDeliverableMessages;

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/os/MessageQueue;->stackHasMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 282
    return v2

    .line 285
    :cond_14
    const/4 v3, 0x0

    .line 286
    .local v3, "msgNode":Landroid/os/MessageQueue$MessageNode;
    const/4 v4, 0x0

    .line 288
    .local v4, "asyncMsgNode":Landroid/os/MessageQueue$MessageNode;
    iget-object v0, v1, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 290
    :try_start_1e
    iget-object v0, v1, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$MessageNode;
    :try_end_26
    .catch Ljava/util/NoSuchElementException; {:try_start_1e .. :try_end_26} :catch_28

    move-object v3, v0

    .line 291
    :goto_27
    goto :goto_2a

    :catch_28
    move-exception v0

    goto :goto_27

    .line 294
    :cond_2a
    :goto_2a
    iget-object v0, v1, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 296
    :try_start_32
    iget-object v0, v1, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$MessageNode;
    :try_end_3a
    .catch Ljava/util/NoSuchElementException; {:try_start_32 .. :try_end_3a} :catch_3c

    move-object v4, v0

    .line 297
    :goto_3b
    goto :goto_3e

    :catch_3c
    move-exception v0

    goto :goto_3b

    .line 300
    :cond_3e
    :goto_3e
    if-eqz v3, :cond_48

    invoke-virtual {v3}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-lez v0, :cond_52

    :cond_48
    if-eqz v4, :cond_53

    .line 301
    invoke-virtual {v4}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-gtz v0, :cond_53

    .line 302
    :cond_52
    return v2

    .line 305
    :cond_53
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isIdleLegacy()Z
    .registers 5

    .line 309
    monitor-enter p0

    .line 310
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 311
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v2, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v2, 0x1

    :goto_15
    monitor-exit p0

    return v2

    .line 312
    .end local v0    # "now":J
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private blacklist isPollingConcurrent()Z
    .registers 3

    .line 393
    sget-object v0, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private blacklist isPollingLegacy()Z
    .registers 2

    .line 397
    monitor-enter p0

    .line 398
    :try_start_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 399
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private greylist-max-o isPollingLocked()Z
    .registers 3

    .line 424
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_e

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist iterateNext(Ljava/util/Iterator;)Landroid/os/MessageQueue$MessageNode;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;)",
            "Landroid/os/MessageQueue$MessageNode;"
        }
    .end annotation

    .line 2413
    .local p1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2415
    :try_start_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$MessageNode;
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 2416
    :catch_d
    move-exception v0

    .line 2420
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist legacyPeekOrPoll(Z)Landroid/os/Message;
    .registers 9
    .param p1, "peek"    # Z

    .line 1405
    monitor-enter p0

    .line 1407
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1408
    .local v0, "now":J
    const/4 v2, 0x0

    .line 1409
    .local v2, "prevMsg":Landroid/os/Message;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1410
    .local v3, "msg":Landroid/os/Message;
    if-eqz v3, :cond_1a

    iget-object v4, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v4, :cond_1a

    .line 1413
    :cond_e
    move-object v2, v3

    .line 1414
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    .line 1415
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1417
    :cond_1a
    const/4 v4, 0x0

    if-eqz v3, :cond_57

    .line 1418
    if-eqz p1, :cond_21

    .line 1419
    monitor-exit p0

    return-object v3

    .line 1421
    :cond_21
    iget-wide v5, v3, Landroid/os/Message;->when:J

    cmp-long v5, v0, v5

    if-ltz v5, :cond_2a

    .line 1423
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 1425
    :cond_2a
    if-eqz v2, :cond_37

    .line 1426
    iget-object v5, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v5, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1427
    iget-object v5, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v5, :cond_41

    .line 1428
    iput-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_41

    .line 1431
    :cond_37
    iget-object v5, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v5, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1432
    iget-object v5, v3, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v5, :cond_41

    .line 1433
    iput-object v4, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1436
    :cond_41
    :goto_41
    iput-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1437
    invoke-virtual {v3}, Landroid/os/Message;->markInUse()V

    .line 1438
    invoke-virtual {v3}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1439
    iget v4, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1441
    :cond_52
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1445
    monitor-exit p0

    return-object v3

    .line 1447
    .end local v0    # "now":J
    .end local v2    # "prevMsg":Landroid/os/Message;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_57
    monitor-exit p0

    .line 1448
    return-object v4

    .line 1447
    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_59

    throw v0
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeInit()J
.end method

.method private static native greylist-max-o nativeIsPolling(J)Z
.end method

.method private native greylist nativePollOnce(JI)V
.end method

.method private static native greylist-max-o nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native greylist-max-o nativeWake(J)V
.end method

.method private blacklist nextConcurrent()Landroid/os/Message;
    .registers 13

    .line 823
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 824
    .local v0, "ptr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    .line 825
    return-object v3

    .line 828
    :cond_a
    const/4 v2, 0x0

    iput v2, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    .line 829
    const/4 v4, -0x1

    .line 831
    .local v4, "pendingIdleHandlerCount":I
    :goto_e
    iget v5, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    if-eqz v5, :cond_15

    .line 832
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 835
    :cond_15
    iput-boolean v2, p0, Landroid/os/MessageQueue;->mMessageDirectlyQueued:Z

    .line 836
    iget v5, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    invoke-direct {p0, v0, v1, v5}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 838
    invoke-direct {p0, v2, v2}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    move-result-object v5

    .line 839
    .local v5, "msg":Landroid/os/Message;
    if-eqz v5, :cond_29

    .line 840
    invoke-virtual {v5}, Landroid/os/Message;->markInUse()V

    .line 841
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 842
    return-object v5

    .line 845
    :cond_29
    sget-object v6, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v6, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 846
    return-object v3

    .line 849
    :cond_33
    iget-object v6, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v6

    .line 853
    if-gez v4, :cond_48

    .line 854
    :try_start_38
    invoke-virtual {p0}, Landroid/os/MessageQueue;->isIdle()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 855
    iget-object v7, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .end local v4    # "pendingIdleHandlerCount":I
    .local v7, "pendingIdleHandlerCount":I
    goto :goto_48

    .line 866
    .end local v7    # "pendingIdleHandlerCount":I
    .restart local v4    # "pendingIdleHandlerCount":I
    :catchall_46
    move-exception v2

    goto :goto_97

    .line 857
    :cond_48
    :goto_48
    if-gtz v4, :cond_4c

    .line 859
    monitor-exit v6

    goto :goto_e

    .line 862
    :cond_4c
    iget-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v7, :cond_59

    .line 863
    const/4 v7, 0x4

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v7, v7, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 865
    :cond_59
    iget-object v7, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 866
    monitor-exit v6
    :try_end_66
    .catchall {:try_start_38 .. :try_end_66} :catchall_46

    .line 870
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_67
    if-ge v6, v4, :cond_92

    .line 871
    iget-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v7, v7, v6

    .line 872
    .local v7, "idler":Landroid/os/MessageQueue$IdleHandler;
    iget-object v8, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aput-object v3, v8, v6

    .line 874
    const/4 v8, 0x0

    .line 876
    .local v8, "keep":Z
    :try_start_72
    invoke-interface {v7}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v9
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_78

    move v8, v9

    .line 879
    goto :goto_80

    .line 877
    :catchall_78
    move-exception v9

    .line 878
    .local v9, "t":Ljava/lang/Throwable;
    const-string v10, "ConcurrentMessageQueue"

    const-string v11, "IdleHandler threw exception"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 881
    .end local v9    # "t":Ljava/lang/Throwable;
    :goto_80
    if-nez v8, :cond_8f

    .line 882
    iget-object v9, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v9

    .line 883
    :try_start_85
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 884
    monitor-exit v9

    goto :goto_8f

    :catchall_8c
    move-exception v2

    monitor-exit v9
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_8c

    throw v2

    .line 870
    .end local v7    # "idler":Landroid/os/MessageQueue$IdleHandler;
    .end local v8    # "keep":Z
    :cond_8f
    :goto_8f
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 889
    .end local v6    # "i":I
    :cond_92
    const/4 v4, 0x0

    .line 893
    iput v2, p0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    .line 894
    .end local v5    # "msg":Landroid/os/Message;
    goto/16 :goto_e

    .line 866
    .restart local v5    # "msg":Landroid/os/Message;
    :goto_97
    :try_start_97
    monitor-exit v6
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_46

    throw v2
.end method

.method private blacklist nextLegacy()Landroid/os/Message;
    .registers 15

    .line 901
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 902
    .local v0, "ptr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    .line 903
    return-object v3

    .line 906
    :cond_a
    const/4 v2, -0x1

    .line 907
    .local v2, "pendingIdleHandlerCount":I
    const/4 v4, 0x0

    .line 909
    .local v4, "nextPollTimeoutMillis":I
    :goto_c
    if-eqz v4, :cond_11

    .line 910
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 913
    :cond_11
    invoke-direct {p0, v0, v1, v4}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 915
    monitor-enter p0

    .line 917
    :try_start_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 918
    .local v5, "now":J
    const/4 v7, 0x0

    .line 919
    .local v7, "prevMsg":Landroid/os/Message;
    iget-object v8, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 920
    .local v8, "msg":Landroid/os/Message;
    if-eqz v8, :cond_2e

    iget-object v9, v8, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v9, :cond_2e

    .line 923
    :cond_22
    move-object v7, v8

    .line 924
    iget-object v9, v8, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v8, v9

    .line 925
    if-eqz v8, :cond_2e

    invoke-virtual {v8}, Landroid/os/Message;->isAsynchronous()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 927
    :cond_2e
    const/4 v9, 0x1

    if-eqz v8, :cond_72

    .line 928
    iget-wide v10, v8, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_43

    .line 930
    iget-wide v10, v8, Landroid/os/Message;->when:J

    sub-long/2addr v10, v5

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v4, v10

    goto :goto_73

    .line 933
    :cond_43
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 934
    if-eqz v7, :cond_53

    .line 935
    iget-object v10, v8, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, v7, Landroid/os/Message;->next:Landroid/os/Message;

    .line 936
    iget-object v10, v7, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v10, :cond_5d

    .line 937
    iput-object v7, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_5d

    .line 940
    :cond_53
    iget-object v10, v8, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 941
    iget-object v10, v8, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v10, :cond_5d

    .line 942
    iput-object v3, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 945
    :cond_5d
    :goto_5d
    iput-object v3, v8, Landroid/os/Message;->next:Landroid/os/Message;

    .line 947
    invoke-virtual {v8}, Landroid/os/Message;->markInUse()V

    .line 948
    invoke-virtual {v8}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 949
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    sub-int/2addr v3, v9

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 951
    :cond_6d
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 955
    monitor-exit p0

    return-object v8

    .line 959
    :cond_72
    const/4 v4, -0x1

    .line 963
    :goto_73
    iget-boolean v10, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v10, :cond_7c

    .line 964
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V

    .line 965
    monitor-exit p0

    return-object v3

    .line 971
    :cond_7c
    if-gez v2, :cond_91

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v10, :cond_8a

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v10, v10, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_91

    .line 973
    :cond_8a
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v2, v10

    .line 975
    :cond_91
    if-gtz v2, :cond_98

    .line 977
    iput-boolean v9, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 978
    monitor-exit p0

    goto/16 :goto_c

    .line 981
    :cond_98
    iget-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v9, :cond_a5

    .line 982
    const/4 v9, 0x4

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 984
    :cond_a5
    iget-object v9, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 985
    .end local v5    # "now":J
    .end local v7    # "prevMsg":Landroid/os/Message;
    .end local v8    # "msg":Landroid/os/Message;
    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_15 .. :try_end_b2} :catchall_e0

    .line 989
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b3
    if-ge v5, v2, :cond_dc

    .line 990
    iget-object v6, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v6, v6, v5

    .line 991
    .local v6, "idler":Landroid/os/MessageQueue$IdleHandler;
    iget-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aput-object v3, v7, v5

    .line 993
    const/4 v7, 0x0

    .line 995
    .local v7, "keep":Z
    :try_start_be
    invoke-interface {v6}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v8
    :try_end_c2
    .catchall {:try_start_be .. :try_end_c2} :catchall_c4

    move v7, v8

    .line 998
    goto :goto_cc

    .line 996
    :catchall_c4
    move-exception v8

    .line 997
    .local v8, "t":Ljava/lang/Throwable;
    const-string v9, "LegacyMessageQueue"

    const-string v10, "IdleHandler threw exception"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1000
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_cc
    if-nez v7, :cond_d9

    .line 1001
    monitor-enter p0

    .line 1002
    :try_start_cf
    iget-object v8, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1003
    monitor-exit p0

    goto :goto_d9

    :catchall_d6
    move-exception v3

    monitor-exit p0
    :try_end_d8
    .catchall {:try_start_cf .. :try_end_d8} :catchall_d6

    throw v3

    .line 989
    .end local v6    # "idler":Landroid/os/MessageQueue$IdleHandler;
    .end local v7    # "keep":Z
    :cond_d9
    :goto_d9
    add-int/lit8 v5, v5, 0x1

    goto :goto_b3

    .line 1008
    .end local v5    # "i":I
    :cond_dc
    const/4 v2, 0x0

    .line 1012
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 985
    :catchall_e0
    move-exception v3

    :try_start_e1
    monitor-exit p0
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    throw v3
.end method

.method private blacklist nextMessage(ZZ)Landroid/os/Message;
    .registers 21
    .param p1, "peek"    # Z
    .param p2, "returnEarliest"    # Z

    .line 643
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 651
    .local v1, "i":I
    :goto_3
    iget-object v2, v0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 652
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    .line 653
    iget-object v2, v0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 659
    invoke-direct {v0}, Landroid/os/MessageQueue;->swapAndSetStackStateActive()Landroid/os/MessageQueue$StackNode;

    move-result-object v2

    .line 660
    .local v2, "oldTop":Landroid/os/MessageQueue$StackNode;
    invoke-direct {v0, v2}, Landroid/os/MessageQueue;->drainStack(Landroid/os/MessageQueue$StackNode;)V

    .line 662
    iget-object v3, v0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 663
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    .line 664
    iget-object v4, v0, Landroid/os/MessageQueue;->mDrainCompleted:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 665
    iget-object v4, v0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 681
    iget-object v4, v0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 682
    .local v4, "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    invoke-direct {v0, v4}, Landroid/os/MessageQueue;->iterateNext(Ljava/util/Iterator;)Landroid/os/MessageQueue$MessageNode;

    move-result-object v5

    .line 683
    .local v5, "msgNode":Landroid/os/MessageQueue$MessageNode;
    iget-object v6, v0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 684
    .local v6, "asyncQueueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    invoke-direct {v0, v6}, Landroid/os/MessageQueue;->iterateNext(Ljava/util/Iterator;)Landroid/os/MessageQueue$MessageNode;

    move-result-object v7

    .line 705
    .local v7, "asyncMsgNode":Landroid/os/MessageQueue$MessageNode;
    const/4 v8, 0x0

    .line 712
    .local v8, "found":Landroid/os/MessageQueue$MessageNode;
    const/4 v9, 0x0

    .line 714
    .local v9, "next":Landroid/os/MessageQueue$MessageNode;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 718
    .local v10, "now":J
    if-eqz v5, :cond_5b

    invoke-virtual {v5}, Landroid/os/MessageQueue$MessageNode;->isBarrier()Z

    move-result v12

    if-eqz v12, :cond_5b

    .line 719
    if-eqz v7, :cond_59

    if-nez p2, :cond_57

    invoke-virtual {v7}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-ltz v12, :cond_59

    .line 720
    :cond_57
    move-object v8, v7

    goto :goto_6f

    .line 722
    :cond_59
    move-object v9, v7

    goto :goto_6f

    .line 730
    :cond_5b
    invoke-direct {v0, v5, v7}, Landroid/os/MessageQueue;->pickEarliestNode(Landroid/os/MessageQueue$MessageNode;Landroid/os/MessageQueue$MessageNode;)Landroid/os/MessageQueue$MessageNode;

    move-result-object v12

    .line 732
    .local v12, "earliest":Landroid/os/MessageQueue$MessageNode;
    if-eqz v12, :cond_6f

    .line 733
    if-nez p2, :cond_6e

    invoke-virtual {v12}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v13

    cmp-long v13, v10, v13

    if-ltz v13, :cond_6c

    goto :goto_6e

    .line 736
    :cond_6c
    move-object v9, v12

    goto :goto_6f

    .line 734
    :cond_6e
    :goto_6e
    move-object v8, v12

    .line 768
    .end local v12    # "earliest":Landroid/os/MessageQueue$MessageNode;
    :cond_6f
    :goto_6f
    sget-object v12, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    .line 769
    .local v12, "nextOp":Landroid/os/MessageQueue$StateNode;
    if-nez v8, :cond_ac

    .line 770
    if-nez v9, :cond_80

    .line 772
    const/4 v3, -0x1

    iput v3, v0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    .line 773
    sget-object v12, Landroid/os/MessageQueue;->sStackStateParked:Landroid/os/MessageQueue$StateNode;

    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    goto :goto_b1

    .line 779
    :cond_80
    invoke-virtual {v9}, Landroid/os/MessageQueue$MessageNode;->getWhen()J

    move-result-wide v13

    .line 780
    .local v13, "nextMessageWhen":J
    cmp-long v15, v13, v10

    if-lez v15, :cond_9a

    .line 781
    move v15, v1

    move-object/from16 v16, v2

    .end local v1    # "i":I
    .end local v2    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .local v15, "i":I
    .local v16, "oldTop":Landroid/os/MessageQueue$StackNode;
    sub-long v1, v13, v10

    move-object/from16 v17, v4

    .end local v4    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .local v17, "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    const-wide/32 v3, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    goto :goto_a1

    .line 784
    .end local v15    # "i":I
    .end local v16    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .end local v17    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .restart local v1    # "i":I
    .restart local v2    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .restart local v4    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    :cond_9a
    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v1    # "i":I
    .end local v2    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .end local v4    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .restart local v15    # "i":I
    .restart local v16    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .restart local v17    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    iput v3, v0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    .line 787
    :goto_a1
    iget-object v1, v0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    iget v2, v0, Landroid/os/MessageQueue;->mNextPollTimeoutMillis:I

    int-to-long v2, v2

    add-long/2addr v2, v10

    iput-wide v2, v1, Landroid/os/MessageQueue$TimedParkStateNode;->mWhenToWake:J

    .line 788
    iget-object v12, v0, Landroid/os/MessageQueue;->mStackStateTimedPark:Landroid/os/MessageQueue$TimedParkStateNode;

    goto :goto_b1

    .line 769
    .end local v13    # "nextMessageWhen":J
    .end local v15    # "i":I
    .end local v16    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .end local v17    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .restart local v1    # "i":I
    .restart local v2    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .restart local v4    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    :cond_ac
    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .line 801
    .end local v1    # "i":I
    .end local v2    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .end local v4    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .restart local v15    # "i":I
    .restart local v16    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .restart local v17    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    :goto_b1
    sget-object v1, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    sget-object v2, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    invoke-polymorphic {v1, v0, v2, v12}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;Landroid/os/MessageQueue$StateNode;Landroid/os/MessageQueue$StateNode;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 802
    iget-object v1, v0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    invoke-virtual {v1}, Landroid/os/MessageQueue$MessageCounts;->clearCounts()V

    .line 803
    if-eqz v8, :cond_d3

    .line 804
    if-nez p1, :cond_ce

    invoke-direct {v0, v8}, Landroid/os/MessageQueue;->removeFromPriorityQueue(Landroid/os/MessageQueue$MessageNode;)Z

    move-result v1

    if-nez v1, :cond_ce

    .line 809
    move v1, v15

    goto/16 :goto_3

    .line 815
    :cond_ce
    invoke-static {v8}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v1

    return-object v1

    .line 817
    :cond_d3
    const/4 v1, 0x0

    return-object v1

    .line 819
    .end local v5    # "msgNode":Landroid/os/MessageQueue$MessageNode;
    .end local v6    # "asyncQueueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .end local v7    # "asyncMsgNode":Landroid/os/MessageQueue$MessageNode;
    .end local v8    # "found":Landroid/os/MessageQueue$MessageNode;
    .end local v9    # "next":Landroid/os/MessageQueue$MessageNode;
    .end local v10    # "now":J
    .end local v12    # "nextOp":Landroid/os/MessageQueue$StateNode;
    .end local v16    # "oldTop":Landroid/os/MessageQueue$StackNode;
    .end local v17    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    :cond_d5
    move v1, v15

    goto/16 :goto_3
.end method

.method private blacklist pickEarliestNode(Landroid/os/MessageQueue$MessageNode;Landroid/os/MessageQueue$MessageNode;)Landroid/os/MessageQueue$MessageNode;
    .registers 4
    .param p1, "nodeA"    # Landroid/os/MessageQueue$MessageNode;
    .param p2, "nodeB"    # Landroid/os/MessageQueue$MessageNode;

    .line 2402
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 2403
    invoke-virtual {p1, p2}, Landroid/os/MessageQueue$MessageNode;->compareTo(Landroid/os/MessageQueue$MessageNode;)I

    move-result v0

    if-gez v0, :cond_b

    .line 2404
    return-object p1

    .line 2406
    :cond_b
    return-object p2

    .line 2409
    :cond_c
    if-eqz p1, :cond_10

    move-object v0, p1

    goto :goto_11

    :cond_10
    move-object v0, p2

    :goto_11
    return-object v0
.end method

.method private greylist-max-o postSyncBarrier(J)I
    .registers 9
    .param p1, "when"    # J

    .line 1111
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_27

    .line 1112
    iget-object v0, p0, Landroid/os/MessageQueue;->mNextBarrierTokenAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 1116
    .local v0, "token":I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 1118
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1120
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    .line 1121
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1123
    invoke-direct {p0, v1, p1, p2}, Landroid/os/MessageQueue;->enqueueMessageUnchecked(Landroid/os/Message;J)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1124
    const-string v2, "ConcurrentMessageQueue"

    const-string v3, "Unexpected error while adding sync barrier!"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const/4 v2, -0x1

    return v2

    .line 1128
    :cond_26
    return v0

    .line 1131
    .end local v0    # "token":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_27
    monitor-enter p0

    .line 1132
    :try_start_28
    iget v0, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 1133
    .restart local v0    # "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1134
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    .line 1135
    iput-wide p1, v1, Landroid/os/Message;->when:J

    .line 1136
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1138
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->messageQueueTailTracking()Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    if-eqz v2, :cond_56

    iget-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_56

    .line 1140
    iget-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1141
    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1142
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1143
    monitor-exit p0

    return v0

    .line 1146
    :cond_56
    const/4 v2, 0x0

    .line 1147
    .local v2, "prev":Landroid/os/Message;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1148
    .local v3, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_6c

    .line 1149
    :goto_5f
    if-eqz v3, :cond_6c

    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_6c

    .line 1150
    move-object v2, v3

    .line 1151
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    goto :goto_5f

    .line 1155
    :cond_6c
    if-nez v3, :cond_70

    .line 1157
    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1160
    :cond_70
    if-eqz v2, :cond_77

    .line 1161
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1162
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_7b

    .line 1164
    :cond_77
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1165
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1167
    :goto_7b
    monitor-exit p0

    return v0

    .line 1168
    .end local v0    # "token":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "prev":Landroid/os/Message;
    .end local v3    # "p":Landroid/os/Message;
    :catchall_7d
    move-exception v0

    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_28 .. :try_end_7f} :catchall_7d

    throw v0
.end method

.method private blacklist postSyncBarrierConcurrent()I
    .registers 3

    .line 1067
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method private blacklist postSyncBarrierLegacy()I
    .registers 3

    .line 1072
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method private blacklist printPriorityQueueNodes()V
    .registers 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2158
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2160
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    const-string v1, "* Dump priority queue"

    const-string v2, "ConcurrentMessageQueue"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 2162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MessageQueue$MessageNode;

    .line 2163
    .local v1, "msgNode":Landroid/os/MessageQueue$MessageNode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** MessageNode what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v4

    iget v4, v4, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v4

    iget-wide v4, v4, Landroid/os/Message;->when:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/os/MessageQueue$MessageNode;->mInsertSeq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    .end local v1    # "msgNode":Landroid/os/MessageQueue$MessageNode;
    goto :goto_d

    .line 2166
    :cond_52
    return-void
.end method

.method private blacklist priorityQueueHasMessage(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z
    .registers 21
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "r"    # Ljava/lang/Runnable;
    .param p6, "when"    # J
    .param p8, "compare"    # Landroid/os/MessageQueue$MessageCompare;
    .param p9, "removeMatches"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/os/MessageQueue$MessageNode;",
            ">;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            "J",
            "Landroid/os/MessageQueue$MessageCompare;",
            "Z)Z"
        }
    .end annotation

    .line 2917
    .local p1, "queue":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Landroid/os/MessageQueue$MessageNode;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2918
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    const/4 v1, 0x0

    .line 2920
    .local v1, "found":Z
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2921
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/MessageQueue$MessageNode;

    .line 2923
    .local v4, "msg":Landroid/os/MessageQueue$MessageNode;
    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v3, p8

    invoke-virtual/range {v3 .. v10}, Landroid/os/MessageQueue$MessageCompare;->compareMessage(Landroid/os/MessageQueue$MessageNode;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2924
    if-eqz p9, :cond_35

    .line 2925
    const/4 v1, 0x1

    .line 2926
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2927
    invoke-static {v4}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 2928
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    goto :goto_37

    .line 2931
    :cond_35
    const/4 v2, 0x1

    return v2

    .line 2934
    .end local v4    # "msg":Landroid/os/MessageQueue$MessageNode;
    :cond_37
    :goto_37
    goto :goto_5

    .line 2935
    :cond_38
    return v1
.end method

.method private blacklist removeAllFutureMessages()V
    .registers 10

    .line 2152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchAllFutureMessages:Landroid/os/MessageQueue$MatchAllFutureMessages;

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 2154
    return-void
.end method

.method private greylist-max-o removeAllFutureMessagesLocked()V
    .registers 7

    .line 2094
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2095
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2096
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_3d

    .line 2097
    iget-wide v3, v2, Landroid/os/Message;->when:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_12

    .line 2098
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    goto :goto_3d

    .line 2102
    :cond_12
    :goto_12
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2103
    .local v3, "n":Landroid/os/Message;
    if-nez v3, :cond_17

    .line 2104
    return-void

    .line 2106
    :cond_17
    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_3b

    .line 2107
    nop

    .line 2111
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2112
    iput-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 2115
    :cond_23
    move-object v2, v3

    .line 2116
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2117
    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2118
    iget v4, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2120
    :cond_32
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 2121
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2122
    if-nez v3, :cond_23

    goto :goto_3d

    .line 2109
    :cond_3b
    move-object v2, v3

    goto :goto_12

    .line 2125
    .end local v3    # "n":Landroid/os/Message;
    :cond_3d
    :goto_3d
    return-void
.end method

.method private blacklist removeAllMessages()V
    .registers 10

    .line 2136
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchAllMessages:Landroid/os/MessageQueue$MatchAllMessages;

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 2137
    return-void
.end method

.method private greylist-max-o removeAllMessagesLocked()V
    .registers 5

    .line 2080
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2081
    .local v0, "p":Landroid/os/Message;
    :goto_2
    if-eqz v0, :cond_b

    .line 2082
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2083
    .local v1, "n":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 2084
    move-object v0, v1

    .line 2085
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_2

    .line 2086
    :cond_b
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2087
    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 2088
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2089
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2090
    invoke-direct {p0}, Landroid/os/MessageQueue;->traceMessageCount()V

    .line 2091
    return-void
.end method

.method private blacklist removeCallbacksAndMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 12
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1946
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerAndObject:Landroid/os/MessageQueue$MatchHandlerAndObject;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v3, "object":Ljava/lang/Object;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 1947
    return-void
.end method

.method private blacklist removeCallbacksAndMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1950
    monitor-enter p0

    .line 1951
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1954
    .local v0, "p":Landroid/os/Message;
    :goto_3
    if-eqz v0, :cond_27

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_27

    if-eqz p2, :cond_f

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p2, :cond_27

    .line 1956
    :cond_f
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1957
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1958
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1959
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1961
    :cond_1f
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1962
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1963
    move-object v0, v1

    .line 1964
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_3

    .line 1966
    :cond_27
    if-nez v0, :cond_2d

    .line 1967
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1971
    :cond_2d
    :goto_2d
    if-eqz v0, :cond_5c

    .line 1972
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1973
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_5a

    .line 1974
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_5a

    if-eqz p2, :cond_3d

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p2, :cond_5a

    .line 1975
    :cond_3d
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1976
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1977
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1979
    :cond_4b
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1980
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1981
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1982
    iget-object v3, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_2d

    .line 1983
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_2d

    .line 1988
    .end local v2    # "nn":Landroid/os/Message;
    :cond_5a
    move-object v0, v1

    .line 1989
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_2d

    .line 1990
    .end local v0    # "p":Landroid/os/Message;
    :cond_5c
    monitor-exit p0

    .line 1991
    return-void

    .line 1990
    :catchall_5e
    move-exception v0

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_1 .. :try_end_60} :catchall_5e

    throw v0
.end method

.method private blacklist removeEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 13
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1737
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerWhatAndObjectEquals;

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v2, "what":I
    .local v3, "object":Ljava/lang/Object;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 1738
    return-void
.end method

.method private blacklist removeEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 13
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1872
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerRunnableAndObjectEquals;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "r":Ljava/lang/Runnable;
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v3, "object":Ljava/lang/Object;
    .local v4, "r":Ljava/lang/Runnable;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 1873
    return-void
.end method

.method private blacklist removeEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 8
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1741
    monitor-enter p0

    .line 1742
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1745
    .local v0, "p":Landroid/os/Message;
    :goto_3
    if-eqz v0, :cond_2c

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2c

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_2c

    if-eqz p3, :cond_17

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1746
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1747
    :cond_17
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1748
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1749
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1750
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1752
    :cond_27
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1753
    move-object v0, v1

    .line 1754
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_3

    .line 1756
    :cond_2c
    if-nez v0, :cond_32

    .line 1757
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1761
    :cond_32
    :goto_32
    if-eqz v0, :cond_69

    .line 1762
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1763
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_67

    .line 1764
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_67

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_67

    if-eqz p3, :cond_4a

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1765
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1766
    :cond_4a
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1767
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 1768
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1770
    :cond_58
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1771
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1772
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1773
    iget-object v3, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_32

    .line 1774
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_32

    .line 1779
    .end local v2    # "nn":Landroid/os/Message;
    :cond_67
    move-object v0, v1

    .line 1780
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_32

    .line 1781
    .end local v0    # "p":Landroid/os/Message;
    :cond_69
    monitor-exit p0

    .line 1782
    return-void

    .line 1781
    :catchall_6b
    move-exception v0

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_6b

    throw v0
.end method

.method private blacklist removeEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 8
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1876
    monitor-enter p0

    .line 1877
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1880
    .local v0, "p":Landroid/os/Message;
    :goto_3
    if-eqz v0, :cond_2f

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2f

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2f

    if-eqz p3, :cond_17

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1881
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1882
    :cond_17
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1883
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1884
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1885
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1887
    :cond_27
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1888
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1889
    move-object v0, v1

    .line 1890
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_3

    .line 1892
    :cond_2f
    if-nez v0, :cond_35

    .line 1893
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1897
    :cond_35
    :goto_35
    if-eqz v0, :cond_6c

    .line 1898
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1899
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_6a

    .line 1900
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_6a

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_6a

    if-eqz p3, :cond_4d

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1901
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1902
    :cond_4d
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1903
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 1904
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1906
    :cond_5b
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1907
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1908
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1909
    iget-object v3, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_35

    .line 1910
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_35

    .line 1915
    .end local v2    # "nn":Landroid/os/Message;
    :cond_6a
    move-object v0, v1

    .line 1916
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_35

    .line 1917
    .end local v0    # "p":Landroid/os/Message;
    :cond_6c
    monitor-exit p0

    .line 1918
    return-void

    .line 1917
    :catchall_6e
    move-exception v0

    monitor-exit p0
    :try_end_70
    .catchall {:try_start_1 .. :try_end_70} :catchall_6e

    throw v0
.end method

.method private blacklist removeFromPriorityQueue(Landroid/os/MessageQueue$MessageNode;)Z
    .registers 3
    .param p1, "msgNode"    # Landroid/os/MessageQueue$MessageNode;

    .line 2394
    invoke-virtual {p1}, Landroid/os/MessageQueue$MessageNode;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2395
    iget-object v0, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2397
    :cond_d
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist removeIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 363
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_3
    iget-object v1, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 365
    monitor-exit v0

    .line 366
    return-void

    .line 365
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist removeIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 368
    monitor-enter p0

    .line 369
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 370
    monitor-exit p0

    .line 371
    return-void

    .line 370
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private blacklist removeMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 13
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1677
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerWhatAndObject:Landroid/os/MessageQueue$MatchHandlerWhatAndObject;

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v2, "what":I
    .local v3, "object":Ljava/lang/Object;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 1678
    return-void
.end method

.method private blacklist removeMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 13
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1797
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerRunnableAndObject:Landroid/os/MessageQueue$MatchHandlerRunnableAndObject;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v3, p3

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "r":Ljava/lang/Runnable;
    .end local p3    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v3, "object":Ljava/lang/Object;
    .local v4, "r":Ljava/lang/Runnable;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 1798
    return-void
.end method

.method private blacklist removeMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 8
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1681
    monitor-enter p0

    .line 1682
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1685
    .local v0, "p":Landroid/os/Message;
    :goto_3
    if-eqz v0, :cond_2b

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2b

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_2b

    if-eqz p3, :cond_13

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2b

    .line 1687
    :cond_13
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1688
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1689
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1690
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1692
    :cond_23
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1693
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1694
    move-object v0, v1

    .line 1695
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_3

    .line 1697
    :cond_2b
    if-nez v0, :cond_31

    .line 1698
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1702
    :cond_31
    :goto_31
    if-eqz v0, :cond_64

    .line 1703
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1704
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_62

    .line 1705
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_62

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_62

    if-eqz p3, :cond_45

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_62

    .line 1707
    :cond_45
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1708
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1709
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1711
    :cond_53
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1712
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1713
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1714
    iget-object v3, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_31

    .line 1715
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_31

    .line 1720
    .end local v2    # "nn":Landroid/os/Message;
    :cond_62
    move-object v0, v1

    .line 1721
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_31

    .line 1722
    .end local v0    # "p":Landroid/os/Message;
    :cond_64
    monitor-exit p0

    .line 1723
    return-void

    .line 1722
    :catchall_66
    move-exception v0

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_66

    throw v0
.end method

.method private blacklist removeMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 8
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1801
    monitor-enter p0

    .line 1802
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1805
    .local v0, "p":Landroid/os/Message;
    :goto_3
    if-eqz v0, :cond_2b

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2b

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2b

    if-eqz p3, :cond_13

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2b

    .line 1807
    :cond_13
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1808
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1809
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1810
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1812
    :cond_23
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 1813
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1814
    move-object v0, v1

    .line 1815
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_3

    .line 1817
    :cond_2b
    if-nez v0, :cond_31

    .line 1818
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1822
    :cond_31
    :goto_31
    if-eqz v0, :cond_64

    .line 1823
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1824
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_62

    .line 1825
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_62

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_62

    if-eqz p3, :cond_45

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_62

    .line 1827
    :cond_45
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1828
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1829
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 1831
    :cond_53
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1832
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1833
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1834
    iget-object v3, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_31

    .line 1835
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_31

    .line 1840
    .end local v2    # "nn":Landroid/os/Message;
    :cond_62
    move-object v0, v1

    .line 1841
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_31

    .line 1842
    .end local v0    # "p":Landroid/os/Message;
    :cond_64
    monitor-exit p0

    .line 1843
    return-void

    .line 1842
    :catchall_66
    move-exception v0

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_66

    throw v0
.end method

.method private blacklist removeOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 484
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecordsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 486
    monitor-exit v0

    .line 487
    return-void

    .line 486
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist removeOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 490
    monitor-enter p0

    .line 491
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 492
    monitor-exit p0

    .line 493
    return-void

    .line 492
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private blacklist removeSyncBarrierConcurrent(I)V
    .registers 12
    .param p1, "token"    # I

    .line 1193
    new-instance v0, Landroid/os/MessageQueue$MatchBarrierToken;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue$MatchBarrierToken;-><init>(I)V

    move-object v8, v0

    .line 1197
    .local v8, "matchBarrierToken":Landroid/os/MessageQueue$MatchBarrierToken;
    :try_start_6
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$MessageNode;
    :try_end_e
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_e} :catch_f

    .line 1201
    .local v0, "first":Landroid/os/MessageQueue$MessageNode;
    goto :goto_12

    .line 1198
    .end local v0    # "first":Landroid/os/MessageQueue$MessageNode;
    :catch_f
    move-exception v0

    .line 1200
    .local v0, "e":Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 1203
    .local v0, "first":Landroid/os/MessageQueue$MessageNode;
    :goto_12
    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    move-result v2

    .line 1204
    .local v2, "removed":Z
    if-eqz v2, :cond_34

    if-eqz v0, :cond_34

    .line 1205
    invoke-static {v0}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    .line 1206
    .local v3, "m":Landroid/os/Message;
    iget-object v4, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v4, :cond_36

    iget v4, v3, Landroid/os/Message;->arg1:I

    if-ne v4, p1, :cond_36

    .line 1208
    iget-wide v4, v1, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5}, Landroid/os/MessageQueue;->nativeWake(J)V

    goto :goto_36

    .line 1210
    .end local v3    # "m":Landroid/os/Message;
    :cond_34
    if-eqz v2, :cond_38

    :cond_36
    :goto_36
    nop

    .line 1214
    return-void

    .line 1211
    :cond_38
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private blacklist removeSyncBarrierLegacy(I)V
    .registers 7
    .param p1, "token"    # I

    .line 1217
    monitor-enter p0

    .line 1218
    const/4 v0, 0x0

    .line 1219
    .local v0, "prev":Landroid/os/Message;
    :try_start_2
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1220
    .local v1, "p":Landroid/os/Message;
    :goto_4
    if-eqz v1, :cond_13

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v2, :cond_e

    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eq v2, p1, :cond_13

    .line 1221
    :cond_e
    move-object v0, v1

    .line 1222
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_4

    .line 1224
    :cond_13
    if-eqz v1, :cond_4f

    .line 1229
    if-eqz v0, :cond_23

    .line 1230
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 1231
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v2, :cond_21

    .line 1232
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1234
    :cond_21
    const/4 v2, 0x0

    .local v2, "needWake":Z
    goto :goto_3c

    .line 1236
    .end local v2    # "needWake":Z
    :cond_23
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1237
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-nez v2, :cond_2e

    .line 1238
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 1240
    :cond_2e
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v2, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v2, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v2, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v2, 0x1

    .line 1242
    .restart local v2    # "needWake":Z
    :goto_3c
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 1243
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 1247
    if-eqz v2, :cond_4d

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_4d

    .line 1248
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 1250
    .end local v0    # "prev":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v2    # "needWake":Z
    :cond_4d
    monitor-exit p0

    .line 1251
    return-void

    .line 1225
    .restart local v0    # "prev":Landroid/os/Message;
    .restart local v1    # "p":Landroid/os/Message;
    :cond_4f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/MessageQueue;
    .end local p1    # "token":I
    throw v2

    .line 1250
    .end local v0    # "prev":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .restart local p0    # "this":Landroid/os/MessageQueue;
    .restart local p1    # "token":I
    :catchall_57
    move-exception v0

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_2 .. :try_end_59} :catchall_57

    throw v0
.end method

.method private blacklist stackHasMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z
    .registers 21
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "r"    # Ljava/lang/Runnable;
    .param p5, "when"    # J
    .param p7, "compare"    # Landroid/os/MessageQueue$MessageCompare;
    .param p8, "removeMatches"    # Z

    .line 2853
    const/4 v0, 0x0

    .line 2854
    .local v0, "found":Z
    sget-object v1, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v1

    .line 2855
    .local v1, "top":Landroid/os/MessageQueue$StackNode;
    invoke-direct {p0, v1}, Landroid/os/MessageQueue;->getStateNode(Landroid/os/MessageQueue$StackNode;)Landroid/os/MessageQueue$StateNode;

    move-result-object v2

    .line 2861
    .local v2, "bottom":Landroid/os/MessageQueue$StateNode;
    if-ne v1, v2, :cond_13

    .line 2862
    invoke-direct {p0}, Landroid/os/MessageQueue;->waitForDrainCompleted()V

    .line 2863
    const/4 v3, 0x0

    return v3

    .line 2873
    :cond_13
    move-object v3, v1

    check-cast v3, Landroid/os/MessageQueue$MessageNode;

    move-object v4, v3

    .line 2876
    .local v4, "p":Landroid/os/MessageQueue$MessageNode;
    :goto_17
    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v3, p7

    invoke-virtual/range {v3 .. v10}, Landroid/os/MessageQueue$MessageCompare;->compareMessage(Landroid/os/MessageQueue$MessageNode;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 2877
    const/4 v0, 0x1

    .line 2881
    if-eqz p8, :cond_52

    .line 2882
    invoke-virtual {v4}, Landroid/os/MessageQueue$MessageNode;->removeFromStack()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 2883
    invoke-static {v4}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->recycleUnchecked()V

    .line 2884
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2885
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessageCounts:Landroid/os/MessageQueue$MessageCounts;

    invoke-virtual {v3}, Landroid/os/MessageQueue$MessageCounts;->incrementCancelled()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 2886
    iget-wide v5, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v5, v6}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 2894
    :cond_46
    iget-object v3, v4, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2895
    .local v3, "n":Landroid/os/MessageQueue$StackNode;
    if-nez v3, :cond_4b

    .line 2900
    goto :goto_52

    .line 2902
    :cond_4b
    invoke-virtual {v3}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v5

    if-nez v5, :cond_56

    .line 2904
    nop

    .line 2909
    .end local v3    # "n":Landroid/os/MessageQueue$StackNode;
    :cond_52
    :goto_52
    invoke-direct {p0}, Landroid/os/MessageQueue;->waitForDrainCompleted()V

    .line 2911
    return v0

    .line 2906
    .restart local v3    # "n":Landroid/os/MessageQueue$StackNode;
    :cond_56
    move-object v4, v3

    check-cast v4, Landroid/os/MessageQueue$MessageNode;

    .line 2907
    .end local v3    # "n":Landroid/os/MessageQueue$StackNode;
    goto :goto_17
.end method

.method private blacklist swapAndSetStackStateActive()Landroid/os/MessageQueue$StackNode;
    .registers 4

    .line 2446
    nop

    :goto_1
    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v0

    .line 2447
    .local v0, "current":Landroid/os/MessageQueue$StackNode;
    sget-object v1, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    if-eq v0, v1, :cond_19

    sget-object v1, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    sget-object v2, Landroid/os/MessageQueue;->sStackStateActive:Landroid/os/MessageQueue$StateNode;

    .line 2448
    invoke-polymorphic {v1, p0, v0, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;Landroid/os/MessageQueue$StackNode;Landroid/os/MessageQueue$StateNode;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_19

    .line 2451
    .end local v0    # "current":Landroid/os/MessageQueue$StackNode;
    :cond_18
    goto :goto_1

    .line 2449
    .restart local v0    # "current":Landroid/os/MessageQueue$StackNode;
    :cond_19
    :goto_19
    return-object v0
.end method

.method private static blacklist throwIfNotTest()V
    .registers 4

    .line 200
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 201
    .local v0, "activityThread":Landroid/app/ActivityThread;
    if-nez v0, :cond_7

    .line 203
    return-void

    .line 205
    :cond_7
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 206
    .local v1, "instrumentation":Landroid/app/Instrumentation;
    if-nez v1, :cond_e

    .line 208
    return-void

    .line 210
    :cond_e
    invoke-virtual {v1}, Landroid/app/Instrumentation;->isInstrumenting()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 211
    return-void

    .line 213
    :cond_15
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Test-only API called not from a test!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist throwIfNotTest$ravenwood()V
    .registers 0

    .line 217
    return-void
.end method

.method private blacklist traceMessageCount()V
    .registers 5

    .line 254
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessageCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/os/PerfettoTrace;->counter(Landroid/os/PerfettoTrace$Category;J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/MessageQueue;->mTid:J

    iget-object v3, p0, Landroid/os/MessageQueue;->mThreadName:Ljava/lang/String;

    .line 255
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingThreadCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->emit()V

    .line 257
    return-void
.end method

.method private greylist-max-o updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 522
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 524
    .local v0, "fdNum":I
    const/4 v1, -0x1

    .line 525
    .local v1, "index":I
    const/4 v2, 0x0

    .line 526
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-eqz v3, :cond_22

    .line 527
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 528
    if-ltz v1, :cond_22

    .line 529
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 530
    if-eqz v2, :cond_22

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_22

    .line 531
    return-void

    .line 536
    :cond_22
    if-eqz p2, :cond_4f

    .line 537
    or-int/lit8 p2, p2, 0x4

    .line 538
    if-nez v2, :cond_3f

    .line 539
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v3, :cond_33

    .line 540
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 542
    :cond_33
    new-instance v3, Landroid/os/MessageQueue$FileDescriptorRecord;

    invoke-direct {v3, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 543
    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .local v3, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v2, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, v3

    goto :goto_49

    .line 545
    .end local v3    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .restart local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    :cond_3f
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 546
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 547
    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 549
    :goto_49
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    goto :goto_5e

    .line 550
    :cond_4f
    if-eqz v2, :cond_5e

    .line 551
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 552
    iget-object v4, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 553
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5, v0, v3}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    .line 555
    :cond_5e
    :goto_5e
    return-void
.end method

.method private blacklist waitForDrainCompleted()V
    .registers 2

    .line 2461
    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2462
    :goto_5
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mNextIsDrainingStack:Z

    if-eqz v0, :cond_f

    .line 2463
    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainCompleted:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_5

    .line 2465
    :cond_f
    iget-object v0, p0, Landroid/os/MessageQueue;->mDrainingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2466
    return-void
.end method


# virtual methods
.method public whitelist addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 353
    if-eqz p1, :cond_e

    .line 356
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_a

    .line 357
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->addIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_d

    .line 359
    :cond_a
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->addIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V

    .line 361
    :goto_d
    return-void

    .line 354
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 469
    if-eqz p1, :cond_19

    .line 472
    if-eqz p3, :cond_10

    .line 476
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_c

    .line 477
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    goto :goto_f

    .line 479
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 481
    :goto_f
    return-void

    .line 473
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 15
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "h"    # Landroid/os/Handler;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2186
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_108

    .line 2187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2188
    .local v7, "now":J
    const/4 v0, 0x0

    .line 2190
    .local v0, "n":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "(MessageQueue is using Concurrent implementation)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2192
    sget-object v2, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v2, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v2

    move v6, v0

    move-object v0, v2

    .line 2193
    .local v0, "node":Landroid/os/MessageQueue$StackNode;
    .local v6, "n":I
    :goto_28
    if-eqz v0, :cond_89

    .line 2194
    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 2195
    move-object v2, v0

    check-cast v2, Landroid/os/MessageQueue$MessageNode;

    invoke-static {v2}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v2

    .line 2196
    .local v2, "msg":Landroid/os/Message;
    if-eqz p3, :cond_3d

    iget-object v9, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, v9, :cond_65

    .line 2197
    :cond_3d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v7, v8}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2199
    :cond_65
    move-object v9, v0

    check-cast v9, Landroid/os/MessageQueue$MessageNode;

    iget-object v0, v9, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2200
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_86

    .line 2201
    :cond_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "State: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2202
    const/4 v0, 0x0

    .line 2204
    :goto_86
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 2207
    :cond_89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "PriorityQueue Messages: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2208
    iget-object v2, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;I)I

    move-result v2

    add-int/2addr v6, v2

    .line 2209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "AsyncPriorityQueue Messages: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2210
    iget-object v2, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;I)I

    move-result v2

    add-int/2addr v6, v2

    .line 2212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "(Total messages: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", polling="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/MessageQueue;->isPolling()Z

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", quitting="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v9, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    .line 2213
    invoke-polymorphic {v9, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2212
    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2214
    return-void

    .line 2217
    .end local v0    # "node":Landroid/os/MessageQueue$StackNode;
    .end local v6    # "n":I
    .end local v7    # "now":J
    :cond_108
    monitor-enter p0

    .line 2218
    :try_start_109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(MessageQueue is using Legacy implementation)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2220
    .local v6, "now":J
    const/4 v0, 0x0

    .line 2221
    .local v0, "n":I
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .restart local v2    # "msg":Landroid/os/Message;
    :goto_126
    if-eqz v2, :cond_15c

    .line 2222
    if-eqz p3, :cond_12e

    iget-object v8, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, v8, :cond_156

    .line 2223
    :cond_12e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2, v6, v7}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2225
    :cond_156
    add-int/lit8 v0, v0, 0x1

    .line 2221
    iget-object v8, v2, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v2, v8

    goto :goto_126

    .line 2227
    .end local v2    # "msg":Landroid/os/Message;
    :cond_15c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "(Total messages: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", polling="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", quitting="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v8, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2229
    .end local v0    # "n":I
    .end local v6    # "now":J
    monitor-exit p0

    .line 2230
    return-void

    .line 2229
    :catchall_198
    move-exception v0

    monitor-exit p0
    :try_end_19a
    .catchall {:try_start_109 .. :try_end_19a} :catchall_198

    throw v0
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 15
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2247
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const-wide v1, 0x20b00000001L

    const-wide v3, 0x10800000003L

    const-wide v5, 0x10800000002L

    if-eqz v0, :cond_53

    .line 2248
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2250
    .local v7, "messageQueueToken":J
    sget-object v0, Landroid/os/MessageQueue;->sState:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Landroid/os/MessageQueue$StackNode;

    move-result-object v0

    .line 2251
    .local v0, "node":Landroid/os/MessageQueue$StackNode;
    :goto_1e
    invoke-virtual {v0}, Landroid/os/MessageQueue$StackNode;->isMessageNode()Z

    move-result v9

    if-eqz v9, :cond_34

    .line 2252
    move-object v9, v0

    check-cast v9, Landroid/os/MessageQueue$MessageNode;

    invoke-static {v9}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object v9

    .line 2253
    .local v9, "msg":Landroid/os/Message;
    invoke-virtual {v9, p1, v1, v2}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2254
    move-object v10, v0

    check-cast v10, Landroid/os/MessageQueue$MessageNode;

    iget-object v0, v10, Landroid/os/MessageQueue$MessageNode;->mNext:Landroid/os/MessageQueue$StackNode;

    .line 2255
    .end local v9    # "msg":Landroid/os/Message;
    goto :goto_1e

    .line 2257
    :cond_34
    iget-object v1, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p0, v1, p1}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/proto/ProtoOutputStream;)I

    .line 2258
    iget-object v1, p0, Landroid/os/MessageQueue;->mAsyncPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p0, v1, p1}, Landroid/os/MessageQueue;->dumpPriorityQueue(Ljava/util/concurrent/ConcurrentSkipListSet;Landroid/util/proto/ProtoOutputStream;)I

    .line 2260
    invoke-virtual {p0}, Landroid/os/MessageQueue;->isPolling()Z

    move-result v1

    invoke-virtual {p1, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2261
    sget-object v1, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, p0}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/os/MessageQueue;)Z

    move-result v1

    invoke-virtual {p1, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2262
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2263
    return-void

    .line 2266
    .end local v0    # "node":Landroid/os/MessageQueue$StackNode;
    .end local v7    # "messageQueueToken":J
    :cond_53
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2267
    .restart local v7    # "messageQueueToken":J
    monitor-enter p0

    .line 2268
    :try_start_58
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v0, "msg":Landroid/os/Message;
    :goto_5a
    if-eqz v0, :cond_63

    .line 2269
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2268
    iget-object v9, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v9

    goto :goto_5a

    .line 2271
    .end local v0    # "msg":Landroid/os/Message;
    :cond_63
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2272
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2273
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_74

    .line 2274
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2275
    return-void

    .line 2273
    :catchall_74
    move-exception v0

    :try_start_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v0
.end method

.method greylist-max-o enqueueMessage(Landroid/os/Message;J)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 1393
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 1397
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1398
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->enqueueMessageConcurrent(Landroid/os/Message;J)Z

    move-result v0

    return v0

    .line 1400
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->enqueueMessageLegacy(Landroid/os/Message;J)Z

    move-result v0

    return v0

    .line 1394
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message must have a target."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 223
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 225
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 226
    nop

    .line 227
    return-void

    .line 225
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 226
    throw v0
.end method

.method blacklist hasEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1585
    if-nez p1, :cond_4

    .line 1586
    const/4 v0, 0x0

    return v0

    .line 1588
    :cond_4
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1589
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0

    .line 1591
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o hasMessages(Landroid/os/Handler;)Z
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 1666
    if-nez p1, :cond_4

    .line 1667
    const/4 v0, 0x0

    return v0

    .line 1669
    :cond_4
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1670
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->hasMessagesConcurrent(Landroid/os/Handler;)Z

    move-result v0

    return v0

    .line 1672
    :cond_d
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->hasMessagesLegacy(Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1542
    if-nez p1, :cond_4

    .line 1543
    const/4 v0, 0x0

    return v0

    .line 1545
    :cond_4
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1546
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0

    .line 1548
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method greylist-max-r hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1629
    if-nez p1, :cond_4

    .line 1630
    const/4 v0, 0x0

    return v0

    .line 1632
    :cond_4
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1633
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1635
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->hasMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method blacklist isBlockedOnSyncBarrier()Z
    .registers 6

    .line 1494
    invoke-static {}, Landroid/os/MessageQueue;->throwIfNotTest()V

    .line 1495
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 1497
    invoke-direct {p0, v2, v1}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    .line 1499
    iget-object v0, p0, Landroid/os/MessageQueue;->mPriorityQueue:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1500
    .local v0, "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    invoke-direct {p0, v0}, Landroid/os/MessageQueue;->iterateNext(Ljava/util/Iterator;)Landroid/os/MessageQueue$MessageNode;

    move-result-object v3

    .line 1502
    .local v3, "queueNode":Landroid/os/MessageQueue$MessageNode;
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Landroid/os/MessageQueue$MessageNode;->isBarrier()Z

    move-result v4

    if-eqz v4, :cond_1f

    move v1, v2

    :cond_1f
    return v1

    .line 1504
    .end local v0    # "queueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/MessageQueue$MessageNode;>;"
    .end local v3    # "queueNode":Landroid/os/MessageQueue$MessageNode;
    :cond_20
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 1505
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_29

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_29

    move v1, v2

    :cond_29
    return v1
.end method

.method public whitelist isIdle()Z
    .registers 2

    .line 323
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_9

    .line 324
    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdleConcurrent()Z

    move-result v0

    return v0

    .line 326
    :cond_9
    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdleLegacy()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isPolling()Z
    .registers 2

    .line 414
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_9

    .line 415
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingConcurrent()Z

    move-result v0

    return v0

    .line 417
    :cond_9
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLegacy()Z

    move-result v0

    return v0
.end method

.method greylist next()Landroid/os/Message;
    .registers 2

    .line 1022
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_9

    .line 1023
    invoke-direct {p0}, Landroid/os/MessageQueue;->nextConcurrent()Landroid/os/Message;

    move-result-object v0

    return-object v0

    .line 1025
    :cond_9
    invoke-direct {p0}, Landroid/os/MessageQueue;->nextLegacy()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method blacklist peekWhenForTest()Ljava/lang/Long;
    .registers 4

    .line 1459
    invoke-static {}, Landroid/os/MessageQueue;->throwIfNotTest()V

    .line 1461
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 1462
    invoke-direct {p0, v1, v1}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    move-result-object v0

    .local v0, "ret":Landroid/os/Message;
    goto :goto_11

    .line 1464
    .end local v0    # "ret":Landroid/os/Message;
    :cond_d
    invoke-direct {p0, v1}, Landroid/os/MessageQueue;->legacyPeekOrPoll(Z)Landroid/os/Message;

    move-result-object v0

    .line 1466
    .restart local v0    # "ret":Landroid/os/Message;
    :goto_11
    if-eqz v0, :cond_1a

    iget-wide v1, v0, Landroid/os/Message;->when:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method blacklist pollForTest()Landroid/os/Message;
    .registers 3

    .line 1478
    invoke-static {}, Landroid/os/MessageQueue;->throwIfNotTest()V

    .line 1479
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1480
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/MessageQueue;->nextMessage(ZZ)Landroid/os/Message;

    move-result-object v0

    return-object v0

    .line 1482
    :cond_e
    invoke-direct {p0, v1}, Landroid/os/MessageQueue;->legacyPeekOrPoll(Z)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public greylist postSyncBarrier()I
    .registers 2

    .line 1101
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_9

    .line 1102
    invoke-direct {p0}, Landroid/os/MessageQueue;->postSyncBarrierConcurrent()I

    move-result v0

    return v0

    .line 1104
    :cond_9
    invoke-direct {p0}, Landroid/os/MessageQueue;->postSyncBarrierLegacy()I

    move-result v0

    return v0
.end method

.method greylist-max-o quit(Z)V
    .registers 6
    .param p1, "safe"    # Z

    .line 1030
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-eqz v0, :cond_45

    .line 1034
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    .line 1035
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1036
    :try_start_c
    sget-object v2, Landroid/os/MessageQueue;->sQuitting:Ljava/lang/invoke/VarHandle;

    const/4 v3, 0x0

    invoke-polymorphic {v2, p0, v3, v1}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue;ZZ)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1037
    if-eqz p1, :cond_1c

    .line 1038
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessages()V

    goto :goto_1f

    .line 1040
    :cond_1c
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessages()V

    .line 1044
    :goto_1f
    iget-wide v1, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v1, v2}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 1046
    :cond_24
    monitor-exit v0

    goto :goto_41

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_26

    throw v1

    .line 1048
    :cond_29
    monitor-enter p0

    .line 1049
    :try_start_2a
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_30

    .line 1050
    monitor-exit p0

    return-void

    .line 1052
    :cond_30
    iput-boolean v1, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 1054
    if-eqz p1, :cond_38

    .line 1055
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    goto :goto_3b

    .line 1057
    :cond_38
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 1061
    :goto_3b
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 1062
    monitor-exit p0

    .line 1064
    :goto_41
    return-void

    .line 1062
    :catchall_42
    move-exception v0

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_42

    throw v0

    .line 1031
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist removeCallbacksAndEqualMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 2068
    if-nez p1, :cond_3

    .line 2069
    return-void

    .line 2072
    :cond_3
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_b

    .line 2073
    invoke-virtual {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V

    goto :goto_e

    .line 2075
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 2077
    :goto_e
    return-void
.end method

.method blacklist removeCallbacksAndEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 12
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 2020
    iget-object v7, p0, Landroid/os/MessageQueue;->mMatchHandlerAndObjectEquals:Landroid/os/MessageQueue$MatchHandlerAndObjectEquals;

    const/4 v8, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "object":Ljava/lang/Object;
    .local v1, "h":Landroid/os/Handler;
    .local v3, "object":Ljava/lang/Object;
    invoke-direct/range {v0 .. v8}, Landroid/os/MessageQueue;->findOrRemoveMessages(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;JLandroid/os/MessageQueue$MessageCompare;Z)Z

    .line 2021
    return-void
.end method

.method blacklist removeCallbacksAndEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 2024
    monitor-enter p0

    .line 2025
    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2028
    .local v0, "p":Landroid/os/Message;
    :goto_3
    if-eqz v0, :cond_2b

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2b

    if-eqz p2, :cond_13

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2029
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2030
    :cond_13
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2031
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2032
    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2033
    iget v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2035
    :cond_23
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 2036
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2037
    move-object v0, v1

    .line 2038
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_3

    .line 2040
    :cond_2b
    if-nez v0, :cond_31

    .line 2041
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    .line 2045
    :cond_31
    :goto_31
    if-eqz v0, :cond_64

    .line 2046
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2047
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_62

    .line 2048
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_62

    if-eqz p2, :cond_45

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2049
    :cond_45
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2050
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 2051
    iget v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/os/MessageQueue;->mAsyncMessageCount:I

    .line 2053
    :cond_53
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 2054
    invoke-direct {p0}, Landroid/os/MessageQueue;->decAndTraceMessageCount()V

    .line 2055
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 2056
    iget-object v3, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_31

    .line 2057
    iput-object v0, p0, Landroid/os/MessageQueue;->mLast:Landroid/os/Message;

    goto :goto_31

    .line 2062
    .end local v2    # "nn":Landroid/os/Message;
    :cond_62
    move-object v0, v1

    .line 2063
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_31

    .line 2064
    .end local v0    # "p":Landroid/os/Message;
    :cond_64
    monitor-exit p0

    .line 2065
    return-void

    .line 2064
    :catchall_66
    move-exception v0

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_66

    throw v0
.end method

.method greylist-max-o removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1994
    if-nez p1, :cond_3

    .line 1995
    return-void

    .line 1998
    :cond_3
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_b

    .line 1999
    invoke-direct {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Object;)V

    goto :goto_e

    .line 2001
    :cond_b
    invoke-direct {p0, p1, p2}, Landroid/os/MessageQueue;->removeCallbacksAndMessagesLegacy(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 2003
    :goto_e
    return-void
.end method

.method blacklist removeEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1785
    if-nez p1, :cond_3

    .line 1786
    return-void

    .line 1789
    :cond_3
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_b

    .line 1790
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_e

    .line 1792
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1794
    :goto_e
    return-void
.end method

.method blacklist removeEqualMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1921
    if-eqz p1, :cond_11

    if-nez p2, :cond_5

    goto :goto_11

    .line 1925
    :cond_5
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1926
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_10

    .line 1928
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeEqualMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1930
    :goto_10
    return-void

    .line 1922
    :cond_11
    :goto_11
    return-void
.end method

.method public whitelist removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 383
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_8

    .line 384
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeIdleHandlerConcurrent(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_b

    .line 386
    :cond_8
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeIdleHandlerLegacy(Landroid/os/MessageQueue$IdleHandler;)V

    .line 388
    :goto_b
    return-void
.end method

.method greylist-max-o removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 1726
    if-nez p1, :cond_3

    .line 1727
    return-void

    .line 1729
    :cond_3
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_b

    .line 1730
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesConcurrent(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_e

    .line 1732
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesLegacy(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1734
    :goto_e
    return-void
.end method

.method greylist-max-o removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 1846
    if-eqz p1, :cond_11

    if-nez p2, :cond_5

    goto :goto_11

    .line 1850
    :cond_5
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_d

    .line 1851
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesConcurrent(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_10

    .line 1853
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->removeMessagesLegacy(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1855
    :goto_10
    return-void

    .line 1847
    :cond_11
    :goto_11
    return-void
.end method

.method public whitelist removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 509
    if-eqz p1, :cond_e

    .line 512
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_a

    .line 513
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListenerConcurrent(Ljava/io/FileDescriptor;)V

    goto :goto_d

    .line 515
    :cond_a
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListenerLegacy(Ljava/io/FileDescriptor;)V

    .line 517
    :goto_d
    return-void

    .line 510
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removeSyncBarrier(I)V
    .registers 3
    .param p1, "token"    # I

    .line 1268
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mUseConcurrent:Z

    if-eqz v0, :cond_8

    .line 1269
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeSyncBarrierConcurrent(I)V

    goto :goto_b

    .line 1271
    :cond_8
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->removeSyncBarrierLegacy(I)V

    .line 1274
    :goto_b
    return-void
.end method
