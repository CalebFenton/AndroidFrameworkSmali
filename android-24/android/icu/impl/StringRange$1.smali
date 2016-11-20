.class final Landroid/icu/impl/StringRange$1;
.super Ljava/lang/Object;
.source "StringRange.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/StringRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 38
    check-cast p1, [I

    #@2
    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, [I

    #@4
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/StringRange$1;->compare([I[I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare([I[I)I
    .locals 5
    .param p1, "o1"    # [I
    .param p2, "o2"    # [I

    #@0
    .prologue
    .line 39
    array-length v3, p1

    #@1
    array-length v4, p2

    #@2
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v2

    #@6
    .line 40
    .local v2, "minIndex":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@9
    .line 41
    aget v3, p1, v1

    #@b
    aget v4, p2, v1

    #@d
    sub-int v0, v3, v4

    #@f
    .line 42
    .local v0, "diff":I
    if-eqz v0, :cond_0

    #@11
    .line 43
    return v0

    #@12
    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 46
    .end local v0    # "diff":I
    :cond_1
    array-length v3, p1

    #@16
    array-length v4, p2

    #@17
    sub-int/2addr v3, v4

    #@18
    return v3
.end method
