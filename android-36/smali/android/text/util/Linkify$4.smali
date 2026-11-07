.class Landroid/text/util/Linkify$4;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/text/util/LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist compare(Landroid/text/util/LinkSpec;Landroid/text/util/LinkSpec;)I
    .registers 7
    .param p1, "a"    # Landroid/text/util/LinkSpec;
    .param p2, "b"    # Landroid/text/util/LinkSpec;

    .line 740
    iget v0, p1, Landroid/text/util/LinkSpec;->start:I

    iget v1, p2, Landroid/text/util/LinkSpec;->start:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_8

    .line 741
    return v2

    .line 744
    :cond_8
    iget v0, p1, Landroid/text/util/LinkSpec;->start:I

    iget v1, p2, Landroid/text/util/LinkSpec;->start:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_10

    .line 745
    return v3

    .line 748
    :cond_10
    iget v0, p1, Landroid/text/util/LinkSpec;->end:I

    iget v1, p2, Landroid/text/util/LinkSpec;->end:I

    if-ge v0, v1, :cond_17

    .line 749
    return v3

    .line 752
    :cond_17
    iget v0, p1, Landroid/text/util/LinkSpec;->end:I

    iget v1, p2, Landroid/text/util/LinkSpec;->end:I

    if-le v0, v1, :cond_1e

    .line 753
    return v2

    .line 756
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
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

    .line 738
    check-cast p1, Landroid/text/util/LinkSpec;

    check-cast p2, Landroid/text/util/LinkSpec;

    invoke-virtual {p0, p1, p2}, Landroid/text/util/Linkify$4;->compare(Landroid/text/util/LinkSpec;Landroid/text/util/LinkSpec;)I

    move-result p1

    return p1
.end method
