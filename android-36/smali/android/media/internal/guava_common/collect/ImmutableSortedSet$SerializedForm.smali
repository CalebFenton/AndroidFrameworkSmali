.class Landroid/media/internal/guava_common/collect/ImmutableSortedSet$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableSortedSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# instance fields
.field final blacklist comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final blacklist elements:[Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Comparator;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet$SerializedForm;->comparator:Ljava/util/Comparator;

    .line 774
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet$SerializedForm;->elements:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method whitelist readResolve()Ljava/lang/Object;
    .registers 3

    .line 779
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder;->build()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method
