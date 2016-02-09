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


# static fields
.field private static final MAX_POOL_SIZE:I = 0x14

.field public static final SELECTION_MODE_MULTIPLE:I = 0x2

.field public static final SELECTION_MODE_NONE:I = 0x0

.field public static final SELECTION_MODE_SINGLE:I = 0x1

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColumnCount:I

.field private mHierarchical:Z

.field private mRowCount:I

.field private mSelectionMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 3798
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0x14

    #@4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    .line 3797
    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    .line 3785
    return-void
.end method

.method private constructor <init>(IIZI)V
    .locals 0
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "hierarchical"    # Z
    .param p4, "selectionMode"    # I

    #@0
    .prologue
    .line 3863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3865
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    #@5
    .line 3866
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    #@7
    .line 3867
    iput-boolean p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    #@9
    .line 3868
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    #@b
    .line 3864
    return-void
.end method

.method private clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3921
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    #@3
    .line 3922
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    #@5
    .line 3923
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    #@7
    .line 3924
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    #@9
    .line 3920
    return-void
.end method

.method public static obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 1
    .param p0, "rowCount"    # I
    .param p1, "columnCount"    # I
    .param p2, "hierarchical"    # Z

    #@0
    .prologue
    .line 3825
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 2
    .param p0, "rowCount"    # I
    .param p1, "columnCount"    # I
    .param p2, "hierarchical"    # Z
    .param p3, "selectionMode"    # I

    #@0
    .prologue
    .line 3843
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@8
    .line 3844
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    if-nez v0, :cond_0

    #@a
    .line 3845
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@c
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    #@f
    return-object v1

    #@10
    .line 3848
    :cond_0
    iput p0, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    #@12
    .line 3849
    iput p1, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    #@14
    .line 3850
    iput-boolean p2, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    #@16
    .line 3851
    iput p3, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    #@18
    .line 3852
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 4
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@0
    .prologue
    .line 3812
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    #@2
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    #@4
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    #@6
    .line 3813
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    #@8
    .line 3812
    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    #@0
    .prologue
    .line 3886
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    #@2
    return v0
.end method

.method public getRowCount()I
    .locals 1

    #@0
    .prologue
    .line 3877
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    #@2
    return v0
.end method

.method public getSelectionMode()I
    .locals 1

    #@0
    .prologue
    .line 3909
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    #@2
    return v0
.end method

.method public isHierarchical()Z
    .locals 1

    #@0
    .prologue
    .line 3895
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    #@2
    return v0
.end method

.method recycle()V
    .locals 1

    #@0
    .prologue
    .line 3916
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->clear()V

    #@3
    .line 3917
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 3915
    return-void
.end method
