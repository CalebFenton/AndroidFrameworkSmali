.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper<",
        "TK;TV;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
        "TK;TV;>;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 421
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    invoke-direct {v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;-><init>()V

    sput-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->INSTANCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist instance()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    .line 425
    sget-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->INSTANCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic blacklist copy(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 4
    .param p3    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 418
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    check-cast p3, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->copy(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist copy(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .registers 6
    .param p3    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 452
    iget-object v0, p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;->key:Ljava/lang/Object;

    iget v1, p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;->hash:I

    .line 453
    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object p0

    .line 454
    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->access$200(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Ljava/lang/Object;

    move-result-object p1

    # setter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->access$202(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist keyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 1

    .line 430
    sget-object p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->STRONG:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    return-object p0
.end method

.method public bridge synthetic blacklist newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 5
    .param p4    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 418
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p4, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .registers 5
    .param p4    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;TK;I",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p4, :cond_9

    .line 473
    new-instance p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;-><init>(Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$1;)V

    return-object p0

    .line 474
    :cond_9
    new-instance p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$LinkedStrongKeyStrongValueEntry;

    invoke-direct {p0, p2, p3, p4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$LinkedStrongKeyStrongValueEntry;-><init>(Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)V

    return-object p0
.end method

.method public bridge synthetic blacklist newSegment(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 418
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->newSegment(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newSegment(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;>;I)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 444
    new-instance p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)V

    return-object p0
.end method

.method public bridge synthetic blacklist setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 418
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 463
    # setter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;
    invoke-static {p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->access$202(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist valueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 1

    .line 435
    sget-object p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->STRONG:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    return-object p0
.end method
