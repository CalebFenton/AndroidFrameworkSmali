.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist SELECTION_MODE_MULTIPLE:I = 0x2

.field public static final whitelist SELECTION_MODE_NONE:I = 0x0

.field public static final whitelist SELECTION_MODE_SINGLE:I = 0x1

.field public static final whitelist UNDEFINED:I = -0x1


# instance fields
.field private greylist-max-o mColumnCount:I

.field private greylist-max-o mHierarchical:Z

.field private blacklist mImportantForAccessibilityItemCount:I

.field private blacklist mItemCount:I

.field private greylist-max-o mRowCount:I

.field private greylist-max-o mSelectionMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmColumnCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHierarchical(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImportantForAccessibilityItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRowCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionMode(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImportantForAccessibilityItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelectionMode(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    return-void
.end method

.method public constructor whitelist <init>(IIZ)V
    .registers 5
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "hierarchical"    # Z

    .line 7184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    .line 7185
    return-void
.end method

.method public constructor whitelist <init>(IIZI)V
    .registers 6
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "hierarchical"    # Z
    .param p4, "selectionMode"    # I

    .line 7196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7197
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    .line 7198
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    .line 7199
    iput-boolean p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    .line 7200
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    .line 7201
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    .line 7202
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    .line 7203
    return-void
.end method

.method public constructor blacklist <init>(IIZIII)V
    .registers 7
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "hierarchical"    # Z
    .param p4, "selectionMode"    # I
    .param p5, "itemCount"    # I
    .param p6, "importantForAccessibilityItemCount"    # I

    .line 7224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7225
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    .line 7226
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    .line 7227
    iput-boolean p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    .line 7228
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    .line 7229
    iput p5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    .line 7230
    iput p6, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    .line 7231
    return-void
.end method

.method private greylist-max-o clear()V
    .registers 2

    .line 7305
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    .line 7306
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    .line 7307
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    .line 7308
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    .line 7309
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    .line 7310
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    .line 7311
    return-void
.end method

.method public static whitelist obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .registers 5
    .param p0, "rowCount"    # I
    .param p1, "columnCount"    # I
    .param p2, "hierarchical"    # Z

    .line 7150
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    return-object v0
.end method

.method public static whitelist obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .registers 5
    .param p0, "rowCount"    # I
    .param p1, "columnCount"    # I
    .param p2, "hierarchical"    # Z
    .param p3, "selectionMode"    # I

    .line 7173
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    return-object v0
.end method

.method public static greylist-max-o obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .registers 8
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 7131
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    iget v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZIII)V

    return-object v0
.end method


# virtual methods
.method public whitelist getColumnCount()I
    .registers 2

    .line 7248
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    return v0
.end method

.method public whitelist getImportantForAccessibilityItemCount()I
    .registers 2

    .line 7292
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    return v0
.end method

.method public whitelist getItemCount()I
    .registers 2

    .line 7281
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    return v0
.end method

.method public whitelist getRowCount()I
    .registers 2

    .line 7239
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    return v0
.end method

.method public whitelist getSelectionMode()I
    .registers 2

    .line 7271
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    return v0
.end method

.method public whitelist isHierarchical()Z
    .registers 2

    .line 7257
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    return v0
.end method

.method greylist-max-o recycle()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7302
    return-void
.end method
