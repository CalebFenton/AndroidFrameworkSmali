.class final Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeySet;
.super Landroid/media/internal/guava_common/collect/ImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient blacklist list:Landroid/media/internal/guava_common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient blacklist map:Landroid/media/internal/guava_common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableMap<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/ImmutableMap;Landroid/media/internal/guava_common/collect/ImmutableList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/ImmutableMap<",
            "TK;*>;",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TK;>;)V"
        }
    .end annotation

    .line 529
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;-><init>()V

    .line 530
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeySet;->map:Landroid/media/internal/guava_common/collect/ImmutableMap;

    .line 531
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeySet;->list:Landroid/media/internal/guava_common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public blacklist asList()Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TK;>;"
        }
    .end annotation

    .line 546
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeySet;->list:Landroid/media/internal/guava_common/collect/ImmutableList;

    return-object p0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 551
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeySet;->map:Landroid/media/internal/guava_common/collect/ImmutableMap;

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method blacklist copyIntoArray([Ljava/lang/Object;I)I
    .registers 3

    .line 541
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeySet;->asList()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public blacklist iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/UnmodifiableIterator<",
            "TK;>;"
        }
    .end annotation

    .line 536
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeySet;->asList()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1

    .line 525
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeySet;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 561
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeySet;->map:Landroid/media/internal/guava_common/collect/ImmutableMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 1

    .line 570
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
