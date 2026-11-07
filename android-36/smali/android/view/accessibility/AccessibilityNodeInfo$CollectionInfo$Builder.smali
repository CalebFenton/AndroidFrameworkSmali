.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mColumnCount:I

.field private blacklist mHierarchical:Z

.field private blacklist mImportantForAccessibilityItemCount:I

.field private blacklist mItemCount:I

.field private blacklist mRowCount:I

.field private blacklist mSelectionMode:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 7330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7319
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mRowCount:I

    .line 7320
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mColumnCount:I

    .line 7321
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mHierarchical:Z

    .line 7323
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mItemCount:I

    .line 7324
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mImportantForAccessibilityItemCount:I

    .line 7331
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .registers 5

    .line 7415
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mRowCount:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mColumnCount:I

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mHierarchical:Z

    invoke-direct {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZ)V

    .line 7417
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mSelectionMode:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fputmSelectionMode(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;I)V

    .line 7418
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mItemCount:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fputmItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;I)V

    .line 7419
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mImportantForAccessibilityItemCount:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fputmImportantForAccessibilityItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;I)V

    .line 7421
    return-object v0
.end method

.method public whitelist setColumnCount(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    .registers 2
    .param p1, "columnCount"    # I

    .line 7353
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mColumnCount:I

    .line 7354
    return-object p0
.end method

.method public whitelist setHierarchical(Z)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    .registers 2
    .param p1, "hierarchical"    # Z

    .line 7364
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mHierarchical:Z

    .line 7365
    return-object p0
.end method

.method public whitelist setImportantForAccessibilityItemCount(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    .registers 2
    .param p1, "importantForAccessibilityItemCount"    # I

    .line 7405
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mImportantForAccessibilityItemCount:I

    .line 7406
    return-object p0
.end method

.method public whitelist setItemCount(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    .registers 2
    .param p1, "itemCount"    # I

    .line 7391
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mItemCount:I

    .line 7392
    return-object p0
.end method

.method public whitelist setRowCount(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    .registers 2
    .param p1, "rowCount"    # I

    .line 7341
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mRowCount:I

    .line 7342
    return-object p0
.end method

.method public whitelist setSelectionMode(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    .registers 2
    .param p1, "selectionMode"    # I

    .line 7376
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mSelectionMode:I

    .line 7377
    return-object p0
.end method
