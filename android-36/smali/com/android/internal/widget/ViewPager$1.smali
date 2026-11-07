.class Lcom/android/internal/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/widget/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/widget/ViewPager$ItemInfo;Lcom/android/internal/widget/ViewPager$ItemInfo;)I
    .registers 5
    .param p1, "lhs"    # Lcom/android/internal/widget/ViewPager$ItemInfo;
    .param p2, "rhs"    # Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 103
    iget v0, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v1, p2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

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

    .line 100
    check-cast p1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    check-cast p2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ViewPager$1;->compare(Lcom/android/internal/widget/ViewPager$ItemInfo;Lcom/android/internal/widget/ViewPager$ItemInfo;)I

    move-result p1

    return p1
.end method
