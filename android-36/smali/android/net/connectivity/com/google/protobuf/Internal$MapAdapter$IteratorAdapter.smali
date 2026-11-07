.class Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final blacklist realIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;>;)V"
        }
    .end annotation

    .line 502
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;, "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.IteratorAdapter;"
    .local p2, "realIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TRealValue;>;>;"
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;->this$0:Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p2, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;->realIterator:Ljava/util/Iterator;

    .line 504
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 508
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;, "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.IteratorAdapter;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;->realIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 499
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;, "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.IteratorAdapter;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 513
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;, "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.IteratorAdapter;"
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$EntryAdapter;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;->this$0:Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;->realIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$EntryAdapter;-><init>(Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 518
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;, "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.IteratorAdapter;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;->realIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 519
    return-void
.end method
