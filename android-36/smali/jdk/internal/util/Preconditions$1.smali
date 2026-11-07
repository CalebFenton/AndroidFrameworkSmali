.class Ljdk/internal/util/Preconditions$1;
.super Ljava/lang/Object;
.source "Preconditions.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljdk/internal/util/Preconditions;->outOfBoundsExceptionFormatter(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljava/lang/Number;",
        ">;TX;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$f:Ljava/util/function/Function;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Function;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Ljdk/internal/util/Preconditions$1;->val$f:Ljava/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 174
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Ljdk/internal/util/Preconditions$1;->apply(Ljava/lang/String;Ljava/util/List;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Ljava/lang/String;Ljava/util/List;)Ljava/lang/RuntimeException;
    .registers 5
    .param p1, "checkKind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)TX;"
        }
    .end annotation

    .line 177
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    iget-object v0, p0, Ljdk/internal/util/Preconditions$1;->val$f:Ljava/util/function/Function;

    invoke-static {p1, p2}, Ljdk/internal/util/Preconditions;->-$$Nest$smoutOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    return-object v0
.end method
