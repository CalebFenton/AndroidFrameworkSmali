.class Ljava/util/Collections$CopiesList;
.super Ljava/util/AbstractList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopiesList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final whitelist serialVersionUID:J = 0x26033c45b17003f8L


# instance fields
.field final greylist-max-o element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final greylist-max-o n:I


# direct methods
.method public static synthetic blacklist $r8$lambda$EdJqK2rOrvukCYH1vYqLzS8rHHI(Ljava/util/Collections$CopiesList;I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/Collections$CopiesList;->lambda$stream$0(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$syijQGtBDJXNH-FXWZ1zdF0yEjs(Ljava/util/Collections$CopiesList;I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/Collections$CopiesList;->lambda$parallelStream$1(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5448
    const-class v0, Ljava/util/Collections;

    return-void
.end method

.method constructor greylist-max-o <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 5459
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 5460
    nop

    .line 5461
    iput p1, p0, Ljava/util/Collections$CopiesList;->n:I

    .line 5462
    iput-object p2, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    .line 5463
    return-void
.end method

.method private synthetic blacklist lambda$parallelStream$1(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .line 5587
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method private synthetic blacklist lambda$stream$0(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .line 5582
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 5597
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 5598
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaObjectInputStreamAccess()Ljdk/internal/access/JavaObjectInputStreamAccess;

    move-result-object v0

    const-class v1, [Ljava/lang/Object;

    iget v2, p0, Ljava/util/Collections$CopiesList;->n:I

    invoke-interface {v0, p1, v1, v2}, Ljdk/internal/access/JavaObjectInputStreamAccess;->checkArray(Ljava/io/ObjectInputStream;Ljava/lang/Class;I)V

    .line 5599
    return-void
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 5470
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 5551
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 5552
    return v0

    .line 5555
    :cond_4
    instance-of v1, p1, Ljava/util/Collections$CopiesList;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 5556
    move-object v1, p1

    check-cast v1, Ljava/util/Collections$CopiesList;

    .line 5557
    .local v1, "other":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<*>;"
    iget v3, p0, Ljava/util/Collections$CopiesList;->n:I

    iget v4, v1, Ljava/util/Collections$CopiesList;->n:I

    if-ne v3, v4, :cond_21

    iget v3, p0, Ljava/util/Collections$CopiesList;->n:I

    if-eqz v3, :cond_20

    iget-object v3, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    iget-object v4, v1, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_20
    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0

    .line 5559
    .end local v1    # "other":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<*>;"
    :cond_23
    instance-of v1, p1, Ljava/util/List;

    if-nez v1, :cond_28

    .line 5560
    return v2

    .line 5562
    :cond_28
    iget v1, p0, Ljava/util/Collections$CopiesList;->n:I

    .line 5563
    .local v1, "remaining":I
    iget-object v3, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    .line 5564
    .local v3, "e":Ljava/lang/Object;, "TE;"
    move-object v4, p1

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 5565
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez v3, :cond_4a

    .line 5566
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    add-int/lit8 v5, v1, -0x1

    .end local v1    # "remaining":I
    .local v5, "remaining":I
    if-lez v1, :cond_48

    .line 5567
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 5568
    return v2

    .line 5567
    :cond_46
    move v1, v5

    goto :goto_35

    .line 5566
    :cond_48
    move v1, v5

    goto :goto_62

    .line 5571
    .end local v5    # "remaining":I
    .restart local v1    # "remaining":I
    :cond_4a
    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    add-int/lit8 v5, v1, -0x1

    .end local v1    # "remaining":I
    .restart local v5    # "remaining":I
    if-lez v1, :cond_61

    .line 5572
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 5573
    return v2

    .line 5572
    :cond_5f
    move v1, v5

    goto :goto_4a

    .line 5571
    :cond_61
    move v1, v5

    .line 5576
    .end local v5    # "remaining":I
    .restart local v1    # "remaining":I
    :cond_62
    :goto_62
    if-nez v1, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6b

    goto :goto_6c

    :cond_6b
    move v0, v2

    :goto_6c
    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 5488
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5489
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    .line 5490
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    .line 5491
    .local v1, "element":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_10

    .line 5492
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5491
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5494
    .end local v2    # "i":I
    :cond_10
    return-void
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 5482
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 5483
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 5532
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 5536
    :cond_6
    const/16 v0, 0x1f

    .line 5537
    .local v0, "pow":I
    const/4 v2, 0x1

    .line 5538
    .local v2, "sum":I
    iget v3, p0, Ljava/util/Collections$CopiesList;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    add-int/2addr v3, v1

    .local v3, "i":I
    :goto_10
    const/16 v4, 0x20

    if-ge v3, v4, :cond_26

    .line 5539
    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v2, v4

    .line 5540
    mul-int/2addr v0, v0

    .line 5541
    iget v4, p0, Ljava/util/Collections$CopiesList;->n:I

    shl-int/2addr v4, v3

    if-gez v4, :cond_23

    .line 5542
    mul-int/lit8 v0, v0, 0x1f

    .line 5543
    mul-int/lit8 v4, v2, 0x1f

    add-int/2addr v4, v1

    move v2, v4

    .line 5538
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 5546
    .end local v3    # "i":I
    :cond_26
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    if-nez v1, :cond_2c

    const/4 v1, 0x0

    goto :goto_32

    :cond_2c
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_32
    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 5474
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CopiesList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 5478
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CopiesList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public whitelist test-api parallelStream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 5587
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    const/4 v0, 0x0

    iget v1, p0, Ljava/util/Collections$CopiesList;->n:I

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/Collections$CopiesList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljava/util/Collections$CopiesList$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collections$CopiesList;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 5466
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 5592
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    invoke-virtual {p0}, Ljava/util/Collections$CopiesList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 5582
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    const/4 v0, 0x0

    iget v1, p0, Ljava/util/Collections$CopiesList;->n:I

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/Collections$CopiesList$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ljava/util/Collections$CopiesList$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collections$CopiesList;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 5520
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    if-ltz p1, :cond_54

    .line 5522
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    if-gt p2, v0, :cond_3b

    .line 5524
    if-gt p1, p2, :cond_12

    .line 5527
    new-instance v0, Ljava/util/Collections$CopiesList;

    sub-int v1, p2, p1

    iget-object v2, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CopiesList;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 5525
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5523
    :cond_3b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5521
    :cond_54
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 5

    .line 5497
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 5498
    .local v0, "a":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    if-eqz v1, :cond_10

    .line 5499
    iget v1, p0, Ljava/util/Collections$CopiesList;->n:I

    iget-object v2, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 5500
    :cond_10
    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 5505
    .local p0, "this":Ljava/util/Collections$CopiesList;, "Ljava/util/Collections$CopiesList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    .line 5506
    .local v0, "n":I
    array-length v1, p1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_20

    .line 5507
    nop

    .line 5508
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 5509
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    if-eqz v1, :cond_2b

    .line 5510
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    invoke-static {p1, v2, v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_2b

    .line 5512
    :cond_20
    iget-object v1, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    invoke-static {p1, v2, v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 5513
    array-length v1, p1

    if-le v1, v0, :cond_2b

    .line 5514
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 5516
    :cond_2b
    :goto_2b
    return-object p1
.end method
