.class Landroid/media/internal/guava_common/collect/Maps$DescendingMap$1EntrySetImpl;
.super Landroid/media/internal/guava_common/collect/Maps$EntrySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/Maps$DescendingMap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/Maps$DescendingMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4336
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/Maps$DescendingMap$1EntrySetImpl;->this$0:Landroid/media/internal/guava_common/collect/Maps$DescendingMap;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/Maps$EntrySet;-><init>()V

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

    .line 4344
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Maps$DescendingMap$1EntrySetImpl;->this$0:Landroid/media/internal/guava_common/collect/Maps$DescendingMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method blacklist map()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4339
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Maps$DescendingMap$1EntrySetImpl;->this$0:Landroid/media/internal/guava_common/collect/Maps$DescendingMap;

    return-object p0
.end method
