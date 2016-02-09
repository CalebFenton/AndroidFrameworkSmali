.class final Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
.super Ljava/lang/Object;
.source "AbstractQueuedLongSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field static final CANCELLED:I = 0x1

.field static final CONDITION:I = -0x2

.field static final EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node; = null

.field static final PROPAGATE:I = -0x3

.field static final SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field static final SIGNAL:I = -0x1


# instance fields
.field volatile next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field volatile prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field volatile thread:Ljava/lang/Thread;

.field volatile waitStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 132
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>()V

    #@5
    sput-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@7
    .line 130
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/lang/Thread;I)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "waitStatus"    # I

    #@0
    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 261
    iput p2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@5
    .line 262
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@7
    .line 260
    return-void
.end method

.method constructor <init>(Ljava/lang/Thread;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "mode"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 256
    iput-object p2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@5
    .line 257
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@7
    .line 255
    return-void
.end method


# virtual methods
.method final isShared()Z
    .locals 2

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method final predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2
    .line 246
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-nez v0, :cond_0

    #@4
    .line 247
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v1

    #@a
    .line 249
    :cond_0
    return-object v0
.end method
