.class final Ljava/util/ImmutableCollections$List12;
.super Ljava/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "List12"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableList<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final blacklist e0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private final blacklist e1:Ljava/lang/Object;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 569
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 570
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    .line 573
    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    .line 574
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 576
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    .local p1, "e0":Ljava/lang/Object;, "TE;"
    .local p2, "e1":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    .line 577
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    .line 578
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    .line 579
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 628
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 5

    .line 633
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_15

    .line 634
    new-instance v0, Ljava/util/CollSer;

    iget-object v1, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    .line 636
    :cond_15
    new-instance v0, Ljava/util/CollSer;

    iget-object v1, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 594
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    if-nez p1, :cond_5

    .line 595
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    return-object v0

    .line 596
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_13

    .line 597
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    return-object v0

    .line 599
    :cond_13
    invoke-virtual {p0, p1}, Ljava/util/ImmutableCollections$List12;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 604
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 606
    const/4 v0, 0x0

    return v0

    .line 607
    :cond_d
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 608
    const/4 v0, 0x1

    return v0

    .line 610
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 588
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 616
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 618
    const/4 v0, 0x1

    return v0

    .line 619
    :cond_15
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 620
    const/4 v0, 0x0

    return v0

    .line 622
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 583
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 642
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_f

    .line 643
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 645
    :cond_f
    iget-object v0, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 652
    .local p0, "this":Ljava/util/ImmutableCollections$List12;, "Ljava/util/ImmutableCollections$List12<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$List12;->size()I

    move-result v0

    .line 653
    .local v0, "size":I
    array-length v1, p1

    if-lt v1, v0, :cond_9

    move-object v1, p1

    goto :goto_17

    .line 654
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    :goto_17
    nop

    .line 655
    .local v1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 656
    const/4 v2, 0x2

    if-ne v0, v2, :cond_25

    .line 657
    const/4 v2, 0x1

    iget-object v3, p0, Ljava/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 659
    :cond_25
    array-length v2, v1

    if-le v2, v0, :cond_2b

    .line 660
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 662
    :cond_2b
    return-object v1
.end method
