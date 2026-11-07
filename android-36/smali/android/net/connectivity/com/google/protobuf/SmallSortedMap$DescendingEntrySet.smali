.class Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;
.super Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<",
        "TK;TV;>.EntrySet;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 521
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.DescendingEntrySet;"
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;-><init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;
    .param p2, "x1"    # Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;

    .line 521
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.DescendingEntrySet;"
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 524
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.DescendingEntrySet;"
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;-><init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;)V

    return-object v0
.end method
