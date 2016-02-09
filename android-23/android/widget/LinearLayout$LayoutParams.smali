.class public Landroid/widget/LinearLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "LinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x30
                to = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x50
                to = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x800003
                to = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x800005
                to = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x70
                to = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x77
                to = "FILL"
            .end subannotation
        }
    .end annotation
.end field

.field public weight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 1925
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@3
    .line 1905
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@6
    .line 1926
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@9
    .line 1924
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "weight"    # F

    #@0
    .prologue
    .line 1940
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@3
    .line 1905
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@6
    .line 1941
    iput p3, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@8
    .line 1939
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1911
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 1905
    iput v3, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@6
    .line 1913
    sget-object v1, Lcom/android/internal/R$styleable;->LinearLayout_Layout:[I

    #@8
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 1915
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x3

    #@e
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@11
    move-result v1

    #@12
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@14
    .line 1916
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@18
    move-result v1

    #@19
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@1b
    .line 1918
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 1910
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1948
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 1905
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@6
    .line 1947
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    #@0
    .prologue
    .line 1955
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    .line 1905
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@6
    .line 1954
    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/LinearLayout$LayoutParams;

    #@0
    .prologue
    .line 1965
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    .line 1905
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@6
    .line 1967
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@8
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@a
    .line 1968
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@c
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@e
    .line 1964
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "LinearLayout.LayoutParams={width="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@12
    invoke-static {v1}, Landroid/widget/LinearLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 1974
    const-string/jumbo v1, ", height="

    #@1d
    .line 1973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 1974
    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@23
    invoke-static {v1}, Landroid/widget/LinearLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 1973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 1974
    const-string/jumbo v1, " weight="

    #@2e
    .line 1973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 1974
    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@34
    .line 1973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 1974
    const-string/jumbo v1, "}"

    #@3b
    .line 1973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1980
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 1982
    const-string/jumbo v0, "layout:weight"

    #@6
    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    #@b
    .line 1983
    const-string/jumbo v0, "layout:gravity"

    #@e
    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@13
    .line 1979
    return-void
.end method
