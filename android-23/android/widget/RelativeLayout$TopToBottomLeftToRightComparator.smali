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
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RelativeLayout;

    #@0
    .prologue
    .line 1142
    iput-object p1, p0, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;->this$0:Landroid/widget/RelativeLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RelativeLayout;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;)V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 7
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1145
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@4
    move-result v4

    #@5
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@8
    move-result v5

    #@9
    sub-int v2, v4, v5

    #@b
    .line 1146
    .local v2, "topDifference":I
    if-eqz v2, :cond_0

    #@d
    .line 1147
    return v2

    #@e
    .line 1150
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@11
    move-result v4

    #@12
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@15
    move-result v5

    #@16
    sub-int v1, v4, v5

    #@18
    .line 1151
    .local v1, "leftDifference":I
    if-eqz v1, :cond_1

    #@1a
    .line 1152
    return v1

    #@1b
    .line 1155
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@1e
    move-result v4

    #@1f
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    #@22
    move-result v5

    #@23
    sub-int v0, v4, v5

    #@25
    .line 1156
    .local v0, "heightDiference":I
    if-eqz v0, :cond_2

    #@27
    .line 1157
    return v0

    #@28
    .line 1160
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@2b
    move-result v4

    #@2c
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    #@2f
    move-result v5

    #@30
    sub-int v3, v4, v5

    #@32
    .line 1161
    .local v3, "widthDiference":I
    if-eqz v3, :cond_3

    #@34
    .line 1162
    return v3

    #@35
    .line 1164
    :cond_3
    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "first"    # Ljava/lang/Object;
    .param p2, "second"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1143
    check-cast p1, Landroid/view/View;

    #@2
    .end local p1    # "first":Ljava/lang/Object;
    check-cast p2, Landroid/view/View;

    #@4
    .end local p2    # "second":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
