.class Landroid/media/internal/guava_common/collect/CompactHashMap$KeySetView;
.super Ljava/util/AbstractSet;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/CompactHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 685
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$KeySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 711
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$KeySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 693
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$KeySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 706
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$KeySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->keySetIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 698
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$KeySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 700
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 701
    :cond_11
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$KeySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    # invokes: Landroid/media/internal/guava_common/collect/CompactHashMap;->removeHelper(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$200(Landroid/media/internal/guava_common/collect/CompactHashMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    # getter for: Landroid/media/internal/guava_common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;
    invoke-static {}, Landroid/media/internal/guava_common/collect/CompactHashMap;->access$300()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 688
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$KeySetView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->size()I

    move-result p0

    return p0
.end method
