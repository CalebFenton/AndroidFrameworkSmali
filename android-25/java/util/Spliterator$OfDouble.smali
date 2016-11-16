.class public interface abstract Ljava/util/Spliterator$OfDouble;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterator$OfDouble$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;,
        Ljava/util/Spliterator$OfDouble$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "Ljava/util/Spliterator$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic -java_util_Spliterator$OfDouble-mthref-0(Ljava/util/function/Consumer;D)V
    .locals 1

    #@0
    .prologue
    .line 804
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@7
    return-void
.end method

.method public static synthetic -java_util_Spliterator$OfDouble-mthref-1(Ljava/util/function/Consumer;D)V
    .locals 1

    #@0
    .prologue
    .line 828
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 781
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 821
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 822
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@6
    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    #@9
    .line 820
    :goto_0
    return-void

    #@a
    .line 825
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    :cond_0
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 826
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    .line 827
    const-string/jumbo v1, "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)"

    #@15
    .line 826
    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@18
    .line 828
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    new-instance v0, Ljava/util/Spliterator$OfDouble$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;

    #@1d
    invoke-direct {v0, p1}, Ljava/util/Spliterator$OfDouble$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;-><init>(Ljava/util/function/Consumer;)V

    #@20
    invoke-interface {p0, v0}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    #@23
    goto :goto_0
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 782
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 781
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 778
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 797
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 798
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@6
    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 801
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    :cond_0
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 802
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@12
    move-result-object v0

    #@13
    .line 803
    const-string/jumbo v1, "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)"

    #@16
    .line 802
    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@19
    .line 804
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1c
    new-instance v0, Ljava/util/Spliterator$OfDouble$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;

    #@1e
    invoke-direct {v0, p1}, Ljava/util/Spliterator$OfDouble$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;-><init>(Ljava/util/function/Consumer;)V

    #@21
    invoke-interface {p0, v0}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    #@24
    move-result v0

    #@25
    return v0
.end method

.method public abstract tryAdvance(Ljava/util/function/DoubleConsumer;)Z
.end method

.method public abstract trySplit()Ljava/util/Spliterator$OfDouble;
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 775
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    invoke-interface {p0}, Ljava/util/Spliterator$OfDouble;->trySplit()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 775
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    invoke-interface {p0}, Ljava/util/Spliterator$OfDouble;->trySplit()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
