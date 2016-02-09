.class final Landroid/view/ViewDebug$2;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/ViewDebug$ViewOperation",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "val$view"    # Landroid/view/View;

    #@0
    .prologue
    .line 531
    iput-object p1, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method private forceLayout(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 538
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    #@3
    .line 539
    instance-of v3, p1, Landroid/view/ViewGroup;

    #@5
    if-eqz v3, :cond_0

    #@7
    move-object v1, p1

    #@8
    .line 540
    check-cast v1, Landroid/view/ViewGroup;

    #@a
    .line 541
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@d
    move-result v0

    #@e
    .line 542
    .local v0, "count":I
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@11
    .line 543
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v3

    #@15
    invoke-direct {p0, v3}, Landroid/view/ViewDebug$2;->forceLayout(Landroid/view/View;)V

    #@18
    .line 542
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 537
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic post([Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 552
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "data":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/ViewDebug$2;->post([Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method public varargs post([Ljava/lang/Void;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 552
    return-void
.end method

.method public bridge synthetic pre()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 532
    invoke-virtual {p0}, Landroid/view/ViewDebug$2;->pre()[Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public pre()[Ljava/lang/Void;
    .locals 1

    #@0
    .prologue
    .line 533
    iget-object v0, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    #@2
    invoke-direct {p0, v0}, Landroid/view/ViewDebug$2;->forceLayout(Landroid/view/View;)V

    #@5
    .line 534
    const/4 v0, 0x0

    #@6
    return-object v0
.end method

.method public bridge synthetic run([Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 548
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "data":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/ViewDebug$2;->run([Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method public varargs run([Ljava/lang/Void;)V
    .locals 3
    .param p1, "data"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 549
    iget-object v0, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    #@2
    iget-object v1, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    #@4
    iget v1, v1, Landroid/view/View;->mOldWidthMeasureSpec:I

    #@6
    iget-object v2, p0, Landroid/view/ViewDebug$2;->val$view:Landroid/view/View;

    #@8
    iget v2, v2, Landroid/view/View;->mOldHeightMeasureSpec:I

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    #@d
    .line 548
    return-void
.end method
