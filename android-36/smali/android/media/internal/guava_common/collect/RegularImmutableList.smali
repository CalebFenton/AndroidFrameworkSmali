.class Landroid/media/internal/guava_common/collect/RegularImmutableList;
.super Landroid/media/internal/guava_common/collect/ImmutableList;
.source "RegularImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final blacklist EMPTY:Landroid/media/internal/guava_common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient blacklist array:[Ljava/lang/Object;

.field private final transient blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 37
    new-instance v0, Landroid/media/internal/guava_common/collect/RegularImmutableList;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Landroid/media/internal/guava_common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Landroid/media/internal/guava_common/collect/RegularImmutableList;->EMPTY:Landroid/media/internal/guava_common/collect/ImmutableList;

    return-void
.end method

.method constructor blacklist <init>([Ljava/lang/Object;I)V
    .registers 3

    .line 43
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    .line 45
    iput p2, p0, Landroid/media/internal/guava_common/collect/RegularImmutableList;->size:I

    return-void
.end method


# virtual methods
.method blacklist copyIntoArray([Ljava/lang/Object;I)I
    .registers 6

    .line 76
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/internal/guava_common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableList;->size:I

    add-int/2addr p2, p0

    return p2
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 84
    iget v0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkElementIndex(II)I

    .line 86
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method blacklist internalArray()[Ljava/lang/Object;
    .registers 1

    .line 61
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    return-object p0
.end method

.method blacklist internalArrayEnd()I
    .registers 1

    .line 71
    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableList;->size:I

    return p0
.end method

.method blacklist internalArrayStart()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 50
    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableList;->size:I

    return p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 1

    .line 97
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
