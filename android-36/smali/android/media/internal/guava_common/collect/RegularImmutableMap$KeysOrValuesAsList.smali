.class final Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeysOrValuesAsList;
.super Landroid/media/internal/guava_common/collect/ImmutableList;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeysOrValuesAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/ImmutableList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient blacklist alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient blacklist offset:I

.field private final transient blacklist size:I


# direct methods
.method constructor blacklist <init>([Ljava/lang/Object;II)V
    .registers 4

    .line 494
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;-><init>()V

    .line 495
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeysOrValuesAsList;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 496
    iput p2, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeysOrValuesAsList;->offset:I

    .line 497
    iput p3, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeysOrValuesAsList;->size:I

    return-void
.end method


# virtual methods
.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3

    .line 502
    iget v0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeysOrValuesAsList;->size:I

    invoke-static {p1, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkElementIndex(II)I

    .line 504
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeysOrValuesAsList;->alternatingKeysAndValues:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeysOrValuesAsList;->offset:I

    add-int/2addr p1, p0

    aget-object p0, v0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 514
    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$KeysOrValuesAsList;->size:I

    return p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 1

    .line 521
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
