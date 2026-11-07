.class Ljava/util/stream/Collectors$1OptionalBox;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionalBox"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist present:Z

.field final synthetic blacklist val$op:Ljava/util/function/BinaryOperator;

.field blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/function/BinaryOperator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 947
    iput-object p1, p0, Ljava/util/stream/Collectors$1OptionalBox;->val$op:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    const/4 p1, 0x0

    iput-object p1, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    .line 949
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/stream/Collectors$1OptionalBox;->present:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 953
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_f

    .line 954
    iget-object v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->val$op:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    goto :goto_14

    .line 957
    :cond_f
    iput-object p1, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->present:Z

    .line 960
    :goto_14
    return-void
.end method
