.class public Landroid/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActionBar;
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


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 1361
    const/4 v0, -0x2

    #@1
    const/4 v1, -0x1

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    #@5
    .line 1360
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 1350
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@3
    .line 1336
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    #@6
    .line 1351
    const v0, 0x800013

    #@9
    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    #@b
    .line 1349
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    #@0
    .prologue
    .line 1355
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@3
    .line 1336
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    #@6
    .line 1357
    iput p3, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    #@8
    .line 1354
    return-void
.end method

.method public constructor <init>(Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/app/ActionBar$LayoutParams;

    #@0
    .prologue
    .line 1365
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    .line 1336
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    #@6
    .line 1366
    iget v0, p1, Landroid/app/ActionBar$LayoutParams;->gravity:I

    #@8
    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    #@a
    .line 1364
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1339
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 1336
    iput v2, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    #@6
    .line 1342
    sget-object v1, Lcom/android/internal/R$styleable;->ActionBar_LayoutParams:[I

    #@8
    .line 1341
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 1343
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@f
    move-result v1

    #@10
    iput v1, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    #@12
    .line 1346
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@15
    .line 1338
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1370
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 1336
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    #@6
    .line 1369
    return-void
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1386
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 1388
    const-string/jumbo v0, "gravity"

    #@6
    iget v1, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@b
    .line 1385
    return-void
.end method
