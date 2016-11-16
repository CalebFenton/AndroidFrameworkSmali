.class public interface abstract Ljava/util/Comparator;
.super Ljava/lang/Object;
.source "Comparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Comparator$-java_util_Comparator_comparingDouble_java_util_function_ToDoubleFunction_keyExtractor_LambdaImpl0;,
        Ljava/util/Comparator$-java_util_Comparator_comparingInt_java_util_function_ToIntFunction_keyExtractor_LambdaImpl0;,
        Ljava/util/Comparator$-java_util_Comparator_comparingLong_java_util_function_ToLongFunction_keyExtractor_LambdaImpl0;,
        Ljava/util/Comparator$-java_util_Comparator_comparing_java_util_function_Function_keyExtractor_LambdaImpl0;,
        Ljava/util/Comparator$-java_util_Comparator_comparing_java_util_function_Function_keyExtractor_java_util_Comparator_keyComparator_LambdaImpl0;,
        Ljava/util/Comparator$-java_util_Comparator_thenComparing_java_util_Comparator_other_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic -java_util_Comparator_lambda$2(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "keyComparator"    # Ljava/util/Comparator;
    .param p1, "keyExtractor"    # Ljava/util/function/Function;
    .param p2, "c1"    # Ljava/lang/Object;
    .param p3, "c2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 436
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 437
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    .line 436
    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static synthetic -java_util_Comparator_lambda$3(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "keyExtractor"    # Ljava/util/function/Function;
    .param p1, "c1"    # Ljava/lang/Object;
    .param p2, "c2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 469
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/Comparable;

    #@6
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public static synthetic -java_util_Comparator_lambda$4(Ljava/util/function/ToIntFunction;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "keyExtractor"    # Ljava/util/function/ToIntFunction;
    .param p1, "c1"    # Ljava/lang/Object;
    .param p2, "c2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 490
    invoke-interface {p0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static synthetic -java_util_Comparator_lambda$5(Ljava/util/function/ToLongFunction;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p0, "keyExtractor"    # Ljava/util/function/ToLongFunction;
    .param p1, "c1"    # Ljava/lang/Object;
    .param p2, "c2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 511
    invoke-interface {p0, p1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    #@3
    move-result-wide v0

    #@4
    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    #@7
    move-result-wide v2

    #@8
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static synthetic -java_util_Comparator_lambda$6(Ljava/util/function/ToDoubleFunction;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p0, "keyExtractor"    # Ljava/util/function/ToDoubleFunction;
    .param p1, "c1"    # Ljava/lang/Object;
    .param p2, "c2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 532
    invoke-interface {p0, p1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    #@3
    move-result-wide v0

    #@4
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    #@7
    move-result-wide v2

    #@8
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static comparing(Ljava/util/function/Function;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/lang/Comparable",
            "<-TU;>;>(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 467
    .local p0, "keyExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 469
    new-instance v0, Ljava/util/Comparator$-java_util_Comparator_comparing_java_util_function_Function_keyExtractor_LambdaImpl0;

    #@5
    invoke-direct {v0, p0}, Ljava/util/Comparator$-java_util_Comparator_comparing_java_util_function_Function_keyExtractor_LambdaImpl0;-><init>(Ljava/util/function/Function;)V

    #@8
    .line 468
    check-cast v0, Ljava/io/Serializable;

    #@a
    return-object v0
.end method

.method public static comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/Comparator",
            "<-TU;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 433
    .local p0, "keyExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TU;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 434
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 436
    new-instance v0, Ljava/util/Comparator$-java_util_Comparator_comparing_java_util_function_Function_keyExtractor_java_util_Comparator_keyComparator_LambdaImpl0;

    #@8
    invoke-direct {v0, p1, p0}, Ljava/util/Comparator$-java_util_Comparator_comparing_java_util_function_Function_keyExtractor_java_util_Comparator_keyComparator_LambdaImpl0;-><init>(Ljava/util/Comparator;Ljava/util/function/Function;)V

    #@b
    .line 435
    check-cast v0, Ljava/io/Serializable;

    #@d
    return-object v0
.end method

.method public static comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 530
    .local p0, "keyExtractor":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 532
    new-instance v0, Ljava/util/Comparator$-java_util_Comparator_comparingDouble_java_util_function_ToDoubleFunction_keyExtractor_LambdaImpl0;

    #@5
    invoke-direct {v0, p0}, Ljava/util/Comparator$-java_util_Comparator_comparingDouble_java_util_function_ToDoubleFunction_keyExtractor_LambdaImpl0;-><init>(Ljava/util/function/ToDoubleFunction;)V

    #@8
    .line 531
    check-cast v0, Ljava/io/Serializable;

    #@a
    return-object v0
.end method

.method public static comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 488
    .local p0, "keyExtractor":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 490
    new-instance v0, Ljava/util/Comparator$-java_util_Comparator_comparingInt_java_util_function_ToIntFunction_keyExtractor_LambdaImpl0;

    #@5
    invoke-direct {v0, p0}, Ljava/util/Comparator$-java_util_Comparator_comparingInt_java_util_function_ToIntFunction_keyExtractor_LambdaImpl0;-><init>(Ljava/util/function/ToIntFunction;)V

    #@8
    .line 489
    check-cast v0, Ljava/io/Serializable;

    #@a
    return-object v0
.end method

.method public static comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 509
    .local p0, "keyExtractor":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 511
    new-instance v0, Ljava/util/Comparator$-java_util_Comparator_comparingLong_java_util_function_ToLongFunction_keyExtractor_LambdaImpl0;

    #@5
    invoke-direct {v0, p0}, Ljava/util/Comparator$-java_util_Comparator_comparingLong_java_util_function_ToLongFunction_keyExtractor_LambdaImpl0;-><init>(Ljava/util/function/ToLongFunction;)V

    #@8
    .line 510
    check-cast v0, Ljava/io/Serializable;

    #@a
    return-object v0
.end method

.method public static naturalOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 357
    sget-object v0, Ljava/util/Comparators$NaturalOrderComparator;->INSTANCE:Ljava/util/Comparators$NaturalOrderComparator;

    #@2
    return-object v0
.end method

.method public static nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 378
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Ljava/util/Comparators$NullComparator;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1, p0}, Ljava/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    #@6
    return-object v0
.end method

.method public static nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 399
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Ljava/util/Comparators$NullComparator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, p0}, Ljava/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    #@6
    return-object v0
.end method

.method public static reverseOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 339
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public synthetic -java_util_Comparator_lambda$1(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/util/Comparator;
    .param p2, "c1"    # Ljava/lang/Object;
    .param p3, "c2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 216
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-interface {p0, p2, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 217
    .local v0, "res":I
    if-eqz v0, :cond_0

    #@6
    .end local v0    # "res":I
    :goto_0
    return v0

    #@7
    .restart local v0    # "res":I
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public reversed()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 185
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 214
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 215
    new-instance v0, Ljava/util/Comparator$-java_util_Comparator_thenComparing_java_util_Comparator_other_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/Comparator$-java_util_Comparator_thenComparing_java_util_Comparator_other_LambdaImpl0;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    #@8
    check-cast v0, Ljava/io/Serializable;

    #@a
    return-object v0
.end method

.method public thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/lang/Comparable",
            "<-TU;>;>(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 265
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "keyExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p0, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/Comparator",
            "<-TU;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 242
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "keyExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TU;>;"
    invoke-static {p1, p2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p0, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToDoubleFunction",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 322
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "keyExtractor":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    invoke-static {p1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p0, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 284
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "keyExtractor":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p0, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToLongFunction",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 303
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "keyExtractor":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    invoke-static {p1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p0, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
