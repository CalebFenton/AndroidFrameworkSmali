.class Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandQueueImpl"
.end annotation


# instance fields
.field private final queuedEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/commands/monkey/MonkeyEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 497
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;->queuedEvents:Ljava/util/Queue;

    #@a
    .line 496
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V
    .locals 1
    .param p1, "e"    # Lcom/android/commands/monkey/MonkeyEvent;

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;->queuedEvents:Ljava/util/Queue;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    #@5
    .line 499
    return-void
.end method

.method public getNextQueuedEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 1

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;->queuedEvents:Ljava/util/Queue;

    #@2
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/commands/monkey/MonkeyEvent;

    #@8
    return-object v0
.end method
