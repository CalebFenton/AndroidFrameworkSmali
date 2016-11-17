.class public final Ljava/util/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    new-instance v0, Ljava/util/Optional;

    #@2
    invoke-direct {v0}, Ljava/util/Optional;-><init>()V

    #@5
    sput-object v0, Ljava/util/Optional;->EMPTY:Ljava/util/Optional;

    #@7
    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@6
    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 90
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@9
    .line 90
    return-void
.end method

.method public static empty()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 80
    sget-object v0, Ljava/util/Optional;->EMPTY:Ljava/util/Optional;

    #@2
    .line 81
    .local v0, "t":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 103
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Optional;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Optional;-><init>(Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 116
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    #@5
    move-result-object v0

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 304
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    if-ne p0, p1, :cond_0

    #@2
    .line 305
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 308
    :cond_0
    instance-of v1, p1, Ljava/util/Optional;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 309
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 312
    nop

    #@c
    nop

    #@d
    .line 313
    .local v0, "other":Ljava/util/Optional;, "Ljava/util/Optional<*>;"
    iget-object v1, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@f
    iget-object v2, v0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@11
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public filter(Ljava/util/function/Predicate;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TT;>;)",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 170
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 171
    return-object p0

    #@a
    .line 173
    :cond_0
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@c
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .end local p0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :goto_0
    return-object p0

    #@13
    .restart local p0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    #@16
    move-result-object p0

    #@17
    goto :goto_0
.end method

.method public flatMap(Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;",
            "Ljava/util/Optional",
            "<TU;>;>;)",
            "Ljava/util/Optional",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 232
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;Ljava/util/Optional<TU;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 233
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 234
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 236
    :cond_0
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@10
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/Optional;

    #@16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/util/Optional;

    #@1c
    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 129
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 130
    new-instance v0, Ljava/util/NoSuchElementException;

    #@6
    const-string/jumbo v1, "No value present"

    #@9
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 132
    :cond_0
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@f
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 324
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public ifPresent(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 153
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 154
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@6
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@9
    .line 152
    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    #@0
    .prologue
    .line 141
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public map(Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/Optional",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 206
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 207
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 208
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 210
    :cond_0
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@10
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 248
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object p1, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@6
    .end local p1    # "other":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p1
.end method

.method public orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 262
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "other":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier",
            "<+TX;>;)TT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TX;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 283
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@6
    return-object v0

    #@7
    .line 285
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/Throwable;

    #@d
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 340
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 341
    const-string/jumbo v0, "Optional[%s]"

    #@7
    const/4 v1, 0x1

    #@8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    iget-object v2, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 340
    :goto_0
    return-object v0

    #@14
    .line 342
    :cond_0
    const-string/jumbo v0, "Optional.empty"

    #@17
    goto :goto_0
.end method
