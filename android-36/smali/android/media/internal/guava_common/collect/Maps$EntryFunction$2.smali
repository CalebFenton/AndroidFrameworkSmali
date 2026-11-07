.class final enum Landroid/media/internal/guava_common/collect/Maps$EntryFunction$2;
.super Landroid/media/internal/guava_common/collect/Maps$EntryFunction;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Maps$EntryFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
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

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, v0}, Landroid/media/internal/guava_common/collect/Maps$EntryFunction;-><init>(Ljava/lang/String;ILandroid/media/internal/guava_common/collect/Maps$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 101
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/Maps$EntryFunction$2;->apply(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist apply(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 105
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
