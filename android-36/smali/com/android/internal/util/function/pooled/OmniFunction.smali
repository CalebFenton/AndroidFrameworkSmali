.class abstract Lcom/android/internal/util/function/pooled/OmniFunction;
.super Ljava/lang/Object;
.source "OmniFunction.java"

# interfaces
.implements Ljava/util/function/BiFunction;
.implements Lcom/android/internal/util/function/TriFunction;
.implements Lcom/android/internal/util/function/QuadFunction;
.implements Lcom/android/internal/util/function/QuintFunction;
.implements Lcom/android/internal/util/function/HexFunction;
.implements Lcom/android/internal/util/function/HeptFunction;
.implements Lcom/android/internal/util/function/OctFunction;
.implements Lcom/android/internal/util/function/NonaFunction;
.implements Lcom/android/internal/util/function/DecFunction;
.implements Lcom/android/internal/util/function/UndecFunction;
.implements Ljava/util/function/BiConsumer;
.implements Lcom/android/internal/util/function/TriConsumer;
.implements Lcom/android/internal/util/function/QuadConsumer;
.implements Lcom/android/internal/util/function/QuintConsumer;
.implements Lcom/android/internal/util/function/HexConsumer;
.implements Lcom/android/internal/util/function/HeptConsumer;
.implements Lcom/android/internal/util/function/OctConsumer;
.implements Lcom/android/internal/util/function/NonaConsumer;
.implements Lcom/android/internal/util/function/DecConsumer;
.implements Lcom/android/internal/util/function/UndecConsumer;
.implements Lcom/android/internal/util/function/pooled/PooledPredicate;
.implements Ljava/util/function/BiPredicate;
.implements Lcom/android/internal/util/function/TriPredicate;
.implements Lcom/android/internal/util/function/QuadPredicate;
.implements Lcom/android/internal/util/function/QuintPredicate;
.implements Lcom/android/internal/util/function/pooled/PooledSupplier;
.implements Lcom/android/internal/util/function/pooled/PooledRunnable;
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;
.implements Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
.implements Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
.implements Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "G:",
        "Ljava/lang/Object;",
        "H:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        "J:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "TA;TB;TR;>;",
        "Lcom/android/internal/util/function/TriFunction<",
        "TA;TB;TC;TR;>;",
        "Lcom/android/internal/util/function/QuadFunction<",
        "TA;TB;TC;TD;TR;>;",
        "Lcom/android/internal/util/function/QuintFunction<",
        "TA;TB;TC;TD;TE;TR;>;",
        "Lcom/android/internal/util/function/HexFunction<",
        "TA;TB;TC;TD;TE;TF;TR;>;",
        "Lcom/android/internal/util/function/HeptFunction<",
        "TA;TB;TC;TD;TE;TF;TG;TR;>;",
        "Lcom/android/internal/util/function/OctFunction<",
        "TA;TB;TC;TD;TE;TF;TG;TH;TR;>;",
        "Lcom/android/internal/util/function/NonaFunction<",
        "TA;TB;TC;TD;TE;TF;TG;TH;TI;TR;>;",
        "Lcom/android/internal/util/function/DecFunction<",
        "TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TR;>;",
        "Lcom/android/internal/util/function/UndecFunction<",
        "TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;",
        "Ljava/util/function/BiConsumer<",
        "TA;TB;>;",
        "Lcom/android/internal/util/function/TriConsumer<",
        "TA;TB;TC;>;",
        "Lcom/android/internal/util/function/QuadConsumer<",
        "TA;TB;TC;TD;>;",
        "Lcom/android/internal/util/function/QuintConsumer<",
        "TA;TB;TC;TD;TE;>;",
        "Lcom/android/internal/util/function/HexConsumer<",
        "TA;TB;TC;TD;TE;TF;>;",
        "Lcom/android/internal/util/function/HeptConsumer<",
        "TA;TB;TC;TD;TE;TF;TG;>;",
        "Lcom/android/internal/util/function/OctConsumer<",
        "TA;TB;TC;TD;TE;TF;TG;TH;>;",
        "Lcom/android/internal/util/function/NonaConsumer<",
        "TA;TB;TC;TD;TE;TF;TG;TH;TI;>;",
        "Lcom/android/internal/util/function/DecConsumer<",
        "TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;>;",
        "Lcom/android/internal/util/function/UndecConsumer<",
        "TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;>;",
        "Lcom/android/internal/util/function/pooled/PooledPredicate<",
        "TA;>;",
        "Ljava/util/function/BiPredicate<",
        "TA;TB;>;",
        "Lcom/android/internal/util/function/TriPredicate<",
        "TA;TB;TC;>;",
        "Lcom/android/internal/util/function/QuadPredicate<",
        "TA;TB;TC;TD;>;",
        "Lcom/android/internal/util/function/QuintPredicate<",
        "TA;TB;TC;TD;TE;>;",
        "Lcom/android/internal/util/function/pooled/PooledSupplier<",
        "TR;>;",
        "Lcom/android/internal/util/function/pooled/PooledRunnable;",
        "Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;",
        "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
        "TR;>;",
        "Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;",
        "Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;",
        "Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TA;"
    .local p2, "o2":Ljava/lang/Object;, "TB;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "o":Ljava/lang/Object;, "TA;"
    .end local p2    # "o2":Ljava/lang/Object;, "TB;"
    .local v1, "o":Ljava/lang/Object;, "TA;"
    .local v2, "o2":Ljava/lang/Object;, "TB;"
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "a":Ljava/lang/Object;, "TA;"
    .end local p2    # "b":Ljava/lang/Object;, "TB;"
    .end local p3    # "c":Ljava/lang/Object;, "TC;"
    .local v1, "a":Ljava/lang/Object;, "TA;"
    .local v2, "b":Ljava/lang/Object;, "TB;"
    .local v3, "c":Ljava/lang/Object;, "TC;"
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;)V"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method public blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;)V"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    .local p7, "g":Ljava/lang/Object;, "TG;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;TH;)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    .local p7, "g":Ljava/lang/Object;, "TG;"
    .local p8, "h":Ljava/lang/Object;, "TH;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;TH;TI;)V"
        }
    .end annotation

    .line 202
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    .local p7, "g":Ljava/lang/Object;, "TG;"
    .local p8, "h":Ljava/lang/Object;, "TH;"
    .local p9, "i":Ljava/lang/Object;, "TI;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;)V"
        }
    .end annotation

    .line 207
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    .local p7, "g":Ljava/lang/Object;, "TG;"
    .local p8, "h":Ljava/lang/Object;, "TH;"
    .local p9, "i":Ljava/lang/Object;, "TI;"
    .local p10, "j":Ljava/lang/Object;, "TJ;"
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;)V"
        }
    .end annotation

    .line 212
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    .local p7, "g":Ljava/lang/Object;, "TG;"
    .local p8, "h":Ljava/lang/Object;, "TH;"
    .local p9, "i":Ljava/lang/Object;, "TI;"
    .local p10, "j":Ljava/lang/Object;, "TJ;"
    .local p11, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p0 .. p11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public abstract blacklist andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TR;+TV;>;)",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/OmniFunction;->andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)TR;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TA;"
    .local p2, "o2":Ljava/lang/Object;, "TB;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "o":Ljava/lang/Object;, "TA;"
    .end local p2    # "o2":Ljava/lang/Object;, "TB;"
    .local v1, "o":Ljava/lang/Object;, "TA;"
    .local v2, "o2":Ljava/lang/Object;, "TB;"
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;)TR;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "a":Ljava/lang/Object;, "TA;"
    .end local p2    # "b":Ljava/lang/Object;, "TB;"
    .end local p3    # "c":Ljava/lang/Object;, "TC;"
    .local v1, "a":Ljava/lang/Object;, "TA;"
    .local v2, "b":Ljava/lang/Object;, "TB;"
    .local v3, "c":Ljava/lang/Object;, "TC;"
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;)TR;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method public blacklist apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;)TR;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6
.end method

.method public blacklist apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;)TR;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method

.method public blacklist apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;)TR;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    .local p7, "g":Ljava/lang/Object;, "TG;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8
.end method

.method public blacklist apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;TH;)TR;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    .local p7, "g":Ljava/lang/Object;, "TG;"
    .local p8, "h":Ljava/lang/Object;, "TH;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9
.end method

.method public blacklist apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;TH;TI;)TR;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    .local p7, "g":Ljava/lang/Object;, "TG;"
    .local p8, "h":Ljava/lang/Object;, "TH;"
    .local p9, "i":Ljava/lang/Object;, "TI;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10
.end method

.method public blacklist apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;)TR;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    .local p7, "g":Ljava/lang/Object;, "TG;"
    .local p8, "h":Ljava/lang/Object;, "TH;"
    .local p9, "i":Ljava/lang/Object;, "TI;"
    .local p10, "j":Ljava/lang/Object;, "TJ;"
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    return-object v11
.end method

.method public blacklist apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;)TR;"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    .local p6, "f":Ljava/lang/Object;, "TF;"
    .local p7, "g":Ljava/lang/Object;, "TG;"
    .local p8, "h":Ljava/lang/Object;, "TH;"
    .local p9, "i":Ljava/lang/Object;, "TI;"
    .local p10, "j":Ljava/lang/Object;, "TJ;"
    .local p11, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p0 .. p11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist asRunnable()Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 1

    .line 122
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    return-object p0
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getOrThrow()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;)TR;"
        }
    .end annotation
.end method

.method public abstract blacklist negate()Lcom/android/internal/util/function/pooled/OmniFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api negate()Ljava/util/function/BiPredicate;
    .registers 2

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api negate()Ljava/util/function/Predicate;
    .registers 2

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
        }
    .end annotation
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .registers 2

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledPredicate;
    .registers 2

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 2

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
    .registers 2

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
    .registers 2

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
    .registers 2

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;
    .registers 2

    .line 53
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api run()V
    .registers 13

    .line 87
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public blacklist runOrThrow()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->run()V

    .line 218
    return-void
.end method

.method public whitelist test-api test(Ljava/lang/Object;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TA;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "o":Ljava/lang/Object;, "TA;"
    .local v1, "o":Ljava/lang/Object;, "TA;"
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public whitelist test-api test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)Z"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TA;"
    .local p2, "o2":Ljava/lang/Object;, "TB;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "o":Ljava/lang/Object;, "TA;"
    .end local p2    # "o2":Ljava/lang/Object;, "TB;"
    .local v1, "o":Ljava/lang/Object;, "TA;"
    .local v2, "o2":Ljava/lang/Object;, "TB;"
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public blacklist test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;)Z"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TA;"
    .local p2, "o2":Ljava/lang/Object;, "TB;"
    .local p3, "o3":Ljava/lang/Object;, "TC;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "o":Ljava/lang/Object;, "TA;"
    .end local p2    # "o2":Ljava/lang/Object;, "TB;"
    .end local p3    # "o3":Ljava/lang/Object;, "TC;"
    .local v1, "o":Ljava/lang/Object;, "TA;"
    .local v2, "o2":Ljava/lang/Object;, "TB;"
    .local v3, "o3":Ljava/lang/Object;, "TC;"
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public blacklist test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;)Z"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TA;"
    .local p2, "o2":Ljava/lang/Object;, "TB;"
    .local p3, "o3":Ljava/lang/Object;, "TC;"
    .local p4, "o4":Ljava/lang/Object;, "TD;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;)Z"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/android/internal/util/function/pooled/OmniFunction;, "Lcom/android/internal/util/function/pooled/OmniFunction<TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TR;>;"
    .local p1, "o":Ljava/lang/Object;, "TA;"
    .local p2, "o2":Ljava/lang/Object;, "TB;"
    .local p3, "o3":Ljava/lang/Object;, "TC;"
    .local p4, "o4":Ljava/lang/Object;, "TD;"
    .local p5, "o5":Ljava/lang/Object;, "TE;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
