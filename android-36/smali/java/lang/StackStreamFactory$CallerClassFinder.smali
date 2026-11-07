.class final Ljava/lang/StackStreamFactory$CallerClassFinder;
.super Ljava/lang/StackStreamFactory$AbstractStackWalker;
.source "StackStreamFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StackStreamFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CallerClassFinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/StackStreamFactory$AbstractStackWalker<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private blacklist caller:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 681
    invoke-static {}, Ljava/lang/StackStreamFactory;->-$$Nest$sfgetstackWalkImplClasses()Ljava/util/Set;

    move-result-object v0

    const-class v1, Ljava/lang/StackStreamFactory$CallerClassFinder;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 682
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/StackWalker;)V
    .registers 3
    .param p1, "walker"    # Ljava/lang/StackWalker;

    .line 687
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;-><init>(Ljava/lang/StackWalker;I)V

    .line 688
    return-void
.end method


# virtual methods
.method protected blacklist batchSize(I)I
    .registers 3
    .param p1, "lastBatchFrameCount"    # I

    .line 768
    const/16 v0, 0x8

    return v0
.end method

.method protected blacklist consumeFrames()Ljava/lang/Integer;
    .registers 6

    .line 743
    sget-object v0, Ljava/lang/StackStreamFactory$WalkerState;->OPEN:Ljava/lang/StackStreamFactory$WalkerState;

    invoke-virtual {p0, v0}, Ljava/lang/StackStreamFactory$CallerClassFinder;->checkState(Ljava/lang/StackStreamFactory$WalkerState;)V

    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "n":I
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 750
    .local v2, "frames":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_9
    if-ge v0, v1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$CallerClassFinder;->nextFrame()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Ljava/lang/StackStreamFactory$CallerClassFinder;->caller:Ljava/lang/Class;

    if-eqz v3, :cond_2d

    .line 751
    iget-object v3, p0, Ljava/lang/StackStreamFactory$CallerClassFinder;->caller:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/StackStreamFactory;->-$$Nest$smisMethodHandleFrame(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_9

    .line 752
    :cond_1c
    iget-object v3, p0, Ljava/lang/StackStreamFactory$CallerClassFinder;->caller:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/StackStreamFactory;->-$$Nest$smisReflectionFrame(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_9

    .line 753
    :cond_25
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "n":I
    .local v3, "n":I
    iget-object v4, p0, Ljava/lang/StackStreamFactory$CallerClassFinder;->caller:Ljava/lang/Class;

    aput-object v4, v2, v0

    move v0, v3

    goto :goto_9

    .line 755
    .end local v3    # "n":I
    .restart local v0    # "n":I
    :cond_2d
    const/4 v1, 0x1

    aget-object v1, v2, v1

    if-eqz v1, :cond_37

    .line 758
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 756
    :cond_37
    new-instance v1, Ljava/lang/IllegalCallerException;

    const-string v3, "no caller frame"

    invoke-direct {v1, v3}, Ljava/lang/IllegalCallerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected bridge synthetic blacklist consumeFrames()Ljava/lang/Object;
    .registers 2

    .line 679
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$CallerClassFinder;->consumeFrames()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method blacklist findCaller()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 737
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$CallerClassFinder;->walk()Ljava/lang/Object;

    .line 738
    iget-object v0, p0, Ljava/lang/StackStreamFactory$CallerClassFinder;->caller:Ljava/lang/Class;

    return-object v0
.end method

.method protected blacklist getNextBatchSize()I
    .registers 2

    .line 773
    const/16 v0, 0x8

    return v0
.end method

.method protected blacklist initFrameBuffer()V
    .registers 3

    .line 763
    new-instance v0, Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;

    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$CallerClassFinder;->getNextBatchSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StackStreamFactory$CallerClassFinder$ClassBuffer;-><init>(I)V

    iput-object v0, p0, Ljava/lang/StackStreamFactory$CallerClassFinder;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    .line 764
    return-void
.end method
