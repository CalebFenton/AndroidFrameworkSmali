.class final Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;
.super Landroid/media/internal/guava_common/collect/AbstractMapEntry;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blacklist key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private blacklist lastKnownIndex:I

.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/CompactHashMap;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 823
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/AbstractMapEntry;-><init>()V

    .line 824
    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->key(I)Ljava/lang/Object;
    invoke-static {p1, p2}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$100(Landroid/media/internal/guava_common/collect/CompactHashMap;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    .line 825
    iput p2, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    return-void
.end method

.method private blacklist updateLastKnownIndex()V
    .registers 4

    .line 835
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    .line 836
    invoke-virtual {v1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    iget v2, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    .line 837
    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->key(I)Ljava/lang/Object;
    invoke-static {v1, v2}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$100(Landroid/media/internal/guava_common/collect/CompactHashMap;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    return-void

    .line 838
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I
    invoke-static {v0, v1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$500(Landroid/media/internal/guava_common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    return-void
.end method


# virtual methods
.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 831
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 845
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 851
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 853
    :cond_13
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->updateLastKnownIndex()V

    .line 862
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    invoke-static {}, Landroid/media/internal/guava_common/collect/NullnessCasts;->unsafeNull()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_20
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->value(I)Ljava/lang/Object;
    invoke-static {p0, v0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$600(Landroid/media/internal/guava_common/collect/CompactHashMap;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 868
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 870
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 872
    :cond_13
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->updateLastKnownIndex()V

    .line 873
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 874
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    invoke-static {}, Landroid/media/internal/guava_common/collect/NullnessCasts;->unsafeNull()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 877
    :cond_27
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->value(I)Ljava/lang/Object;
    invoke-static {v1, v0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$600(Landroid/media/internal/guava_common/collect/CompactHashMap;I)Ljava/lang/Object;

    move-result-object v0

    .line 878
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->setValue(ILjava/lang/Object;)V
    invoke-static {v1, p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$1300(Landroid/media/internal/guava_common/collect/CompactHashMap;ILjava/lang/Object;)V

    return-object v0
.end method
