.class Ljava/util/stream/WhileOps$2$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/WhileOps$2;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist take:Z

.field final synthetic blacklist this$0:Ljava/util/stream/WhileOps$2;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/WhileOps$2;Ljava/util/stream/Sink;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/stream/WhileOps$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 151
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/WhileOps$2$1;->this$0:Ljava/util/stream/WhileOps$2;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$2$1;->take:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 3
    .param p1, "t"    # I

    .line 161
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$2$1;->take:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/util/stream/WhileOps$2$1;->this$0:Ljava/util/stream/WhileOps$2;

    iget-object v0, v0, Ljava/util/stream/WhileOps$2;->val$predicate:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/stream/WhileOps$2$1;->take:Z

    if-eqz v0, :cond_15

    .line 162
    iget-object v0, p0, Ljava/util/stream/WhileOps$2$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(I)V

    .line 164
    :cond_15
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 156
    iget-object v0, p0, Ljava/util/stream/WhileOps$2$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 157
    return-void
.end method

.method public blacklist cancellationRequested()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Ljava/util/stream/WhileOps$2$1;->take:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljava/util/stream/WhileOps$2$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
