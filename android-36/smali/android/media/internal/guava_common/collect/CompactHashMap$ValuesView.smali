.class Landroid/media/internal/guava_common/collect/CompactHashMap$ValuesView;
.super Ljava/util/AbstractCollection;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
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

    .line 921
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$ValuesView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 929
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$ValuesView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->clear()V

    return-void
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 934
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$ValuesView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->valuesIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 924
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$ValuesView;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->size()I

    move-result p0

    return p0
.end method
