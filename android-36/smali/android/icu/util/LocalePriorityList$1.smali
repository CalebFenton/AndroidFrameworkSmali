.class Landroid/icu/util/LocalePriorityList$1;
.super Ljava/lang/Object;
.source "LocalePriorityList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocalePriorityList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Ljava/lang/Double;Ljava/lang/Double;)I
    .registers 5
    .param p1, "o1"    # Ljava/lang/Double;
    .param p2, "o2"    # Ljava/lang/Double;

    .line 402
    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    .line 403
    .local v0, "result":I
    if-lez v0, :cond_8

    const/4 v1, -0x1

    goto :goto_d

    :cond_8
    if-gez v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
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

    .line 399
    check-cast p1, Ljava/lang/Double;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/LocalePriorityList$1;->compare(Ljava/lang/Double;Ljava/lang/Double;)I

    move-result p1

    return p1
.end method
