.class Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopToBottomLeftToRightComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>(Landroid/widget/RelativeLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o compare(Landroid/view/View;Landroid/view/View;)I
    .registers 8
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .line 1176
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1177
    .local v0, "topDifference":I
    if-eqz v0, :cond_c

    .line 1178
    return v0

    .line 1181
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1182
    .local v1, "leftDifference":I
    if-eqz v1, :cond_18

    .line 1183
    return v1

    .line 1186
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1187
    .local v2, "heightDiference":I
    if-eqz v2, :cond_24

    .line 1188
    return v2

    .line 1191
    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1192
    .local v3, "widthDiference":I
    if-eqz v3, :cond_30

    .line 1193
    return v3

    .line 1195
    :cond_30
    const/4 v4, 0x0

    return v4
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

    .line 1173
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
