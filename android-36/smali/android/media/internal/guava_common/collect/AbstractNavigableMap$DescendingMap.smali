.class final Landroid/media/internal/guava_common/collect/AbstractNavigableMap$DescendingMap;
.super Landroid/media/internal/guava_common/collect/Maps$DescendingMap;
.source "AbstractNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/AbstractNavigableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DescendingMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/Maps$DescendingMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/AbstractNavigableMap;


# direct methods
.method private constructor blacklist <init>(Landroid/media/internal/guava_common/collect/AbstractNavigableMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractNavigableMap$DescendingMap;->this$0:Landroid/media/internal/guava_common/collect/AbstractNavigableMap;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/internal/guava_common/collect/AbstractNavigableMap;Landroid/media/internal/guava_common/collect/AbstractNavigableMap$1;)V
    .registers 3

    .line 175
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/AbstractNavigableMap$DescendingMap;-><init>(Landroid/media/internal/guava_common/collect/AbstractNavigableMap;)V

    return-void
.end method


# virtual methods
.method blacklist entryIterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 183
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractNavigableMap$DescendingMap;->this$0:Landroid/media/internal/guava_common/collect/AbstractNavigableMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractNavigableMap;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method blacklist forward()Ljava/util/NavigableMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 178
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractNavigableMap$DescendingMap;->this$0:Landroid/media/internal/guava_common/collect/AbstractNavigableMap;

    return-object p0
.end method
