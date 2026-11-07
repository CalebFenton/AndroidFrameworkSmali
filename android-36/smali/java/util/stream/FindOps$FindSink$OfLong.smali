.class final Ljava/util/stream/FindOps$FindSink$OfLong;
.super Ljava/util/stream/FindOps$FindSink;
.source "FindOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/FindOps$FindSink<",
        "Ljava/lang/Long;",
        "Ljava/util/OptionalLong;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# static fields
.field static final blacklist OP_FIND_ANY:Ljava/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava/util/OptionalLong;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist OP_FIND_FIRST:Ljava/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava/util/OptionalLong;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 242
    new-instance v0, Ljava/util/stream/FindOps$FindOp;

    sget-object v2, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 243
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v3

    new-instance v4, Ljava/util/stream/FindOps$FindSink$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/util/stream/FindOps$FindSink$OfLong$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Ljava/util/stream/FindOps$FindSink$OfLong$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljava/util/stream/FindOps$FindSink$OfLong$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v0, Ljava/util/stream/FindOps$FindSink$OfLong;->OP_FIND_FIRST:Ljava/util/stream/TerminalOp;

    .line 245
    new-instance v1, Ljava/util/stream/FindOps$FindOp;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 246
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v4

    new-instance v5, Ljava/util/stream/FindOps$FindSink$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/util/stream/FindOps$FindSink$OfLong$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Ljava/util/stream/FindOps$FindSink$OfLong$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Ljava/util/stream/FindOps$FindSink$OfLong$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v1, Ljava/util/stream/FindOps$FindSink$OfLong;->OP_FIND_ANY:Ljava/util/stream/TerminalOp;

    .line 245
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 229
    invoke-direct {p0}, Ljava/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 4
    .param p1, "value"    # J

    .line 234
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/FindOps$FindSink$OfLong;->accept(Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public bridge synthetic blacklist accept(Ljava/lang/Long;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 229
    invoke-super {p0, p1}, Ljava/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 229
    invoke-virtual {p0}, Ljava/util/stream/FindOps$FindSink$OfLong;->get()Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get()Ljava/util/OptionalLong;
    .registers 3

    .line 239
    iget-boolean v0, p0, Ljava/util/stream/FindOps$FindSink$OfLong;->hasValue:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljava/util/stream/FindOps$FindSink$OfLong;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method
