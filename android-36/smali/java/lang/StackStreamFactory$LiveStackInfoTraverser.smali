.class final Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;
.super Ljava/lang/StackStreamFactory$StackFrameTraverser;
.source "StackStreamFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StackStreamFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LiveStackInfoTraverser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/StackStreamFactory$StackFrameTraverser<",
        "TT;>;"
    }
.end annotation


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 779
    invoke-static {}, Ljava/lang/StackStreamFactory;->-$$Nest$sfgetstackWalkImplClasses()Ljava/util/Set;

    move-result-object v0

    const-class v1, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 780
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/StackWalker;Ljava/util/function/Function;)V
    .registers 4
    .param p1, "walker"    # Ljava/lang/StackWalker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StackWalker;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/StackWalker$StackFrame;",
            ">;+TT;>;)V"
        }
    .end annotation

    .line 839
    .local p0, "this":Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;, "Ljava/lang/StackStreamFactory$LiveStackInfoTraverser<TT;>;"
    .local p2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/util/stream/Stream<Ljava/lang/StackWalker$StackFrame;>;+TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/StackStreamFactory$StackFrameTraverser;-><init>(Ljava/lang/StackWalker;Ljava/util/function/Function;I)V

    .line 840
    return-void
.end method


# virtual methods
.method protected blacklist initFrameBuffer()V
    .registers 3

    .line 844
    .local p0, "this":Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;, "Ljava/lang/StackStreamFactory$LiveStackInfoTraverser<TT;>;"
    new-instance v0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;

    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;->getNextBatchSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;-><init>(Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;I)V

    iput-object v0, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    .line 845
    return-void
.end method
