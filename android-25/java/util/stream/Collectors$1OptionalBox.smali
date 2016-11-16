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
        "Ljava/util/function/Consumer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field present:Z

.field final synthetic val$op:Ljava/util/function/BinaryOperator;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 1

    #@0
    .prologue
    .line 699
    .local p1, "val$op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    iput-object p1, p0, Ljava/util/stream/Collectors$1OptionalBox;->val$op:Ljava/util/function/BinaryOperator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 700
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    #@8
    .line 701
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->present:Z

    #@b
    .line 699
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 705
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->present:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 706
    iget-object v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->val$op:Ljava/util/function/BinaryOperator;

    #@6
    iget-object v1, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    #@8
    invoke-interface {v0, v1, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    #@e
    .line 704
    :goto_0
    return-void

    #@f
    .line 709
    :cond_0
    iput-object p1, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    #@11
    .line 710
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->present:Z

    #@14
    goto :goto_0
.end method
