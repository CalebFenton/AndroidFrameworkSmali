.class Landroid/media/internal/guava_common/collect/ImmutableSortedMap$SerializedForm;
.super Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# instance fields
.field private final blacklist comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/ImmutableSortedMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1188
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableMap$SerializedForm;-><init>(Landroid/media/internal/guava_common/collect/ImmutableMap;)V

    .line 1189
    invoke-virtual {p1}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method bridge synthetic blacklist makeBuilder(I)Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1183
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$SerializedForm;->makeBuilder(I)Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;

    move-result-object p0

    return-object p0
.end method

.method blacklist makeBuilder(I)Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1194
    new-instance p1, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-direct {p1, p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object p1
.end method
