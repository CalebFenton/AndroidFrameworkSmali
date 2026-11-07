.class abstract Ljava/util/EnumMap$EnumMapIterator;
.super Ljava/lang/Object;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "EnumMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field greylist-max-o index:I

.field greylist-max-o lastReturnedIndex:I

.field final synthetic blacklist this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/EnumMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 515
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    const/4 p1, 0x0

    iput p1, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    .line 520
    const/4 p1, -0x1

    iput p1, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/EnumMap;Ljava/util/EnumMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method

.method private greylist-max-o checkLastReturnedIndex()V
    .registers 2

    .line 539
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    if-ltz v0, :cond_5

    .line 541
    return-void

    .line 540
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 4

    .line 523
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    nop

    :goto_1
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1f

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1f

    .line 524
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    goto :goto_1

    .line 525
    :cond_1f
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    return v2
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 529
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TT;>;"
    invoke-direct {p0}, Ljava/util/EnumMap$EnumMapIterator;->checkLastReturnedIndex()V

    .line 531
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_25

    .line 532
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 533
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-$$Nest$fgetsize(Ljava/util/EnumMap;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/util/EnumMap;->-$$Nest$fputsize(Ljava/util/EnumMap;I)V

    .line 535
    :cond_25
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    .line 536
    return-void
.end method
