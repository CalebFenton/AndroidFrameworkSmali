.class public interface abstract Ljava/util/PrimitiveIterator$OfDouble;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"

# interfaces
.implements Ljava/util/PrimitiveIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/PrimitiveIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/PrimitiveIterator$OfDouble$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/PrimitiveIterator",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic -java_util_PrimitiveIterator$OfDouble-mthref-0(Ljava/util/function/Consumer;D)V
    .locals 1

    #@0
    .prologue
    .line 298
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
    .line 259
    .local p0, "this":Ljava/util/PrimitiveIterator$OfDouble;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfDouble;"
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

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
    .line 290
    .local p0, "this":Ljava/util/PrimitiveIterator$OfDouble;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfDouble;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 291
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@6
    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    #@9
    .line 289
    :goto_0
    return-void

    #@a
    .line 295
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 296
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)"

    #@18
    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@1b
    .line 298
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1e
    new-instance v0, Ljava/util/PrimitiveIterator$OfDouble$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;

    #@20
    invoke-direct {v0, p1}, Ljava/util/PrimitiveIterator$OfDouble$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;-><init>(Ljava/util/function/Consumer;)V

    #@23
    invoke-interface {p0, v0}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    #@26
    goto :goto_0
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 260
    .local p0, "this":Ljava/util/PrimitiveIterator$OfDouble;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfDouble;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 261
    :goto_0
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->hasNext()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 262
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    #@c
    move-result-wide v0

    #@d
    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@10
    goto :goto_0

    #@11
    .line 259
    :cond_0
    return-void
.end method

.method public next()Ljava/lang/Double;
    .locals 2

    #@0
    .prologue
    .line 273
    .local p0, "this":Ljava/util/PrimitiveIterator$OfDouble;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfDouble;"
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "{0} calling PrimitiveIterator.OfDouble.nextLong()"

    #@b
    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@e
    .line 275
    :cond_0
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    #@11
    move-result-wide v0

    #@12
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 272
    .local p0, "this":Ljava/util/PrimitiveIterator$OfDouble;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfDouble;"
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract nextDouble()D
.end method
