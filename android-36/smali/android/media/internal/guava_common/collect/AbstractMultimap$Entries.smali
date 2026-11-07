.class Landroid/media/internal/guava_common/collect/AbstractMultimap$Entries;
.super Landroid/media/internal/guava_common/collect/Multimaps$Entries;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/Multimaps$Entries<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/AbstractMultimap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/AbstractMultimap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 123
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMultimap$Entries;->this$0:Landroid/media/internal/guava_common/collect/AbstractMultimap;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/Multimaps$Entries;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 131
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMultimap$Entries;->this$0:Landroid/media/internal/guava_common/collect/AbstractMultimap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method blacklist multimap()Landroid/media/internal/guava_common/collect/Multimap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMultimap$Entries;->this$0:Landroid/media/internal/guava_common/collect/AbstractMultimap;

    return-object p0
.end method
