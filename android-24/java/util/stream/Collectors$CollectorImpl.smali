.class Ljava/util/stream/Collectors$CollectorImpl;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/stream/Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollectorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Collector",
        "<TT;TA;TR;>;"
    }
.end annotation


# instance fields
.field private final accumulator:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final characteristics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final combiner:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final finisher:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<TA;TR;>;"
        }
    .end annotation
.end field

.field private final supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<TA;>;",
            "Ljava/util/function/BiConsumer",
            "<TA;TT;>;",
            "Ljava/util/function/BinaryOperator",
            "<TA;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 170
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;TT;>;"
    .local p3, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .local p4, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    invoke-static {}, Ljava/util/stream/Collectors;->-wrap0()Ljava/util/function/Function;

    #@3
    move-result-object v4

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object v5, p4

    #@9
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    #@c
    .line 169
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<TA;>;",
            "Ljava/util/function/BiConsumer",
            "<TA;TT;>;",
            "Ljava/util/function/BinaryOperator",
            "<TA;>;",
            "Ljava/util/function/Function",
            "<TA;TR;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 154
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;TT;>;"
    .local p3, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .local p4, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TR;>;"
    .local p5, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 159
    iput-object p1, p0, Ljava/util/stream/Collectors$CollectorImpl;->supplier:Ljava/util/function/Supplier;

    #@5
    .line 160
    iput-object p2, p0, Ljava/util/stream/Collectors$CollectorImpl;->accumulator:Ljava/util/function/BiConsumer;

    #@7
    .line 161
    iput-object p3, p0, Ljava/util/stream/Collectors$CollectorImpl;->combiner:Ljava/util/function/BinaryOperator;

    #@9
    .line 162
    iput-object p4, p0, Ljava/util/stream/Collectors$CollectorImpl;->finisher:Ljava/util/function/Function;

    #@b
    .line 163
    iput-object p5, p0, Ljava/util/stream/Collectors$CollectorImpl;->characteristics:Ljava/util/Set;

    #@d
    .line 158
    return-void
.end method


# virtual methods
.method public accumulator()Ljava/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiConsumer",
            "<TA;TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 175
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->accumulator:Ljava/util/function/BiConsumer;

    #@2
    return-object v0
.end method

.method public characteristics()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 195
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->characteristics:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public combiner()Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator",
            "<TA;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 185
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->combiner:Ljava/util/function/BinaryOperator;

    #@2
    return-object v0
.end method

.method public finisher()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function",
            "<TA;TR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 190
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->finisher:Ljava/util/function/Function;

    #@2
    return-object v0
.end method

.method public supplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier",
            "<TA;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 180
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->supplier:Ljava/util/function/Supplier;

    #@2
    return-object v0
.end method
