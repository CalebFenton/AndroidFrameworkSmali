.class Landroid/icu/impl/StringRange$1;
.super Ljava/lang/Object;
.source "StringRange.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/StringRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 42
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/StringRange$1;->compare([I[I)I

    move-result p1

    return p1
.end method

.method public blacklist compare([I[I)I
    .registers 7
    .param p1, "o1"    # [I
    .param p2, "o2"    # [I

    .line 45
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 46
    .local v0, "minIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_14

    .line 47
    aget v2, p1, v1

    aget v3, p2, v1

    sub-int/2addr v2, v3

    .line 48
    .local v2, "diff":I
    if-eqz v2, :cond_11

    .line 49
    return v2

    .line 46
    .end local v2    # "diff":I
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 52
    .end local v1    # "i":I
    :cond_14
    array-length v1, p1

    array-length v2, p2

    sub-int/2addr v1, v2

    return v1
.end method
