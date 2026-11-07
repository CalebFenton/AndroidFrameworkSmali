.class Landroid/media/internal/guava_common/collect/AbstractMultimap$EntrySet;
.super Landroid/media/internal/guava_common/collect/AbstractMultimap$Entries;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/AbstractMultimap<",
        "TK;TV;>.Entries;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
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

    .line 136
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMultimap$EntrySet;->this$0:Landroid/media/internal/guava_common/collect/AbstractMultimap;

    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/AbstractMultimap$Entries;-><init>(Landroid/media/internal/guava_common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 144
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 139
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result p0

    return p0
.end method
