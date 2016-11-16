.class public interface abstract Ljava/util/PrimitiveIterator$OfInt;
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
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/PrimitiveIterator$OfInt$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/PrimitiveIterator",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic -java_util_PrimitiveIterator$OfInt-mthref-0(Ljava/util/function/Consumer;I)V
    .locals 1

    #@0
    .prologue
    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 112
    .local p0, "this":Ljava/util/PrimitiveIterator$OfInt;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfInt;"
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 142
    .local p0, "this":Ljava/util/PrimitiveIterator$OfInt;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfInt;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 143
    check-cast p1, Ljava/util/function/IntConsumer;

    #@6
    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@9
    .line 141
    :goto_0
    return-void

    #@a
    .line 147
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 148
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)"

    #@18
    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@1b
    .line 150
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1e
    new-instance v0, Ljava/util/PrimitiveIterator$OfInt$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;

    #@20
    invoke-direct {v0, p1}, Ljava/util/PrimitiveIterator$OfInt$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;-><init>(Ljava/util/function/Consumer;)V

    #@23
    invoke-interface {p0, v0}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@26
    goto :goto_0
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 113
    .local p0, "this":Ljava/util/PrimitiveIterator$OfInt;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfInt;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 114
    :goto_0
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->hasNext()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 115
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    #@c
    move-result v0

    #@d
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    #@10
    goto :goto_0

    #@11
    .line 112
    :cond_0
    return-void
.end method

.method public next()Ljava/lang/Integer;
    .locals 2

    #@0
    .prologue
    .line 126
    .local p0, "this":Ljava/util/PrimitiveIterator$OfInt;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfInt;"
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "{0} calling PrimitiveIterator.OfInt.nextInt()"

    #@b
    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@e
    .line 128
    :cond_0
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    #@11
    move-result v0

    #@12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 125
    .local p0, "this":Ljava/util/PrimitiveIterator$OfInt;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfInt;"
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract nextInt()I
.end method
