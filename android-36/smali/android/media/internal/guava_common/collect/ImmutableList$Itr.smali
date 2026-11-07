.class Landroid/media/internal/guava_common/collect/ImmutableList$Itr;
.super Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final blacklist list:Landroid/media/internal/guava_common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/ImmutableList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;I)V"
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;-><init>(II)V

    .line 403
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableList$Itr;->list:Landroid/media/internal/guava_common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method protected blacklist get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 408
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$Itr;->list:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
