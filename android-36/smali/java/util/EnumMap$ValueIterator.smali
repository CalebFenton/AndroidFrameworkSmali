.class Ljava/util/EnumMap$ValueIterator;
.super Ljava/util/EnumMap$EnumMapIterator;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "TK;TV;>.EnumMapIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/EnumMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 553
    .local p0, "this":Ljava/util/EnumMap$ValueIterator;, "Ljava/util/EnumMap<TK;TV;>.ValueIterator;"
    iput-object p1, p0, Ljava/util/EnumMap$ValueIterator;->this$0:Ljava/util/EnumMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/EnumMap;Ljava/util/EnumMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/EnumMap$ValueIterator;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 555
    .local p0, "this":Ljava/util/EnumMap$ValueIterator;, "Ljava/util/EnumMap<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Ljava/util/EnumMap$ValueIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 557
    iget v0, p0, Ljava/util/EnumMap$ValueIterator;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/EnumMap$ValueIterator;->index:I

    iput v0, p0, Ljava/util/EnumMap$ValueIterator;->lastReturnedIndex:I

    .line 558
    iget-object v0, p0, Ljava/util/EnumMap$ValueIterator;->this$0:Ljava/util/EnumMap;

    iget-object v1, p0, Ljava/util/EnumMap$ValueIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$ValueIterator;->lastReturnedIndex:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumMap;->-$$Nest$munmaskNull(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 556
    :cond_1f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
