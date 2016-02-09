.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionItemInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x14

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColumnIndex:I

.field private mColumnSpan:I

.field private mHeading:Z

.field private mRowIndex:I

.field private mRowSpan:I

.field private mSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 3944
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0x14

    #@4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    .line 3943
    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    .line 3940
    return-void
.end method

.method private constructor <init>(IIIIZZ)V
    .locals 0
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z
    .param p6, "selected"    # Z

    #@0
    .prologue
    .line 4014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4016
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    #@5
    .line 4017
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    #@7
    .line 4018
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    #@9
    .line 4019
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    #@b
    .line 4020
    iput-boolean p5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    #@d
    .line 4021
    iput-boolean p6, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    #@f
    .line 4015
    return-void
.end method

.method private clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4088
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    #@3
    .line 4089
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    #@5
    .line 4090
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    #@7
    .line 4091
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    #@9
    .line 4092
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    #@b
    .line 4093
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    #@d
    .line 4087
    return-void
.end method

.method public static obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 6
    .param p0, "rowIndex"    # I
    .param p1, "rowSpan"    # I
    .param p2, "columnIndex"    # I
    .param p3, "columnSpan"    # I
    .param p4, "heading"    # Z

    #@0
    .prologue
    .line 3968
    const/4 v5, 0x0

    #@1
    move v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 8
    .param p0, "rowIndex"    # I
    .param p1, "rowSpan"    # I
    .param p2, "columnIndex"    # I
    .param p3, "columnSpan"    # I
    .param p4, "heading"    # Z
    .param p5, "selected"    # Z

    #@0
    .prologue
    .line 3983
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v7

    #@6
    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@8
    .line 3984
    .local v7, "info":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    if-nez v7, :cond_0

    #@a
    .line 3985
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@c
    move v1, p0

    #@d
    move v2, p1

    #@e
    move v3, p2

    #@f
    move v4, p3

    #@10
    move v5, p4

    #@11
    move v6, p5

    #@12
    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    #@15
    return-object v0

    #@16
    .line 3989
    :cond_0
    iput p0, v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    #@18
    .line 3990
    iput p1, v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    #@1a
    .line 3991
    iput p2, v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    #@1c
    .line 3992
    iput p3, v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    #@1e
    .line 3993
    iput-boolean p4, v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    #@20
    .line 3994
    iput-boolean p5, v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    #@22
    .line 3995
    return-object v7
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 6
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@0
    .prologue
    .line 3953
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    #@2
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    #@4
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    #@6
    .line 3954
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    #@8
    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    #@a
    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    #@c
    .line 3953
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method


# virtual methods
.method public getColumnIndex()I
    .locals 1

    #@0
    .prologue
    .line 4030
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    #@2
    return v0
.end method

.method public getColumnSpan()I
    .locals 1

    #@0
    .prologue
    .line 4048
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    #@2
    return v0
.end method

.method public getRowIndex()I
    .locals 1

    #@0
    .prologue
    .line 4039
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    #@2
    return v0
.end method

.method public getRowSpan()I
    .locals 1

    #@0
    .prologue
    .line 4057
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    #@2
    return v0
.end method

.method public isHeading()Z
    .locals 1

    #@0
    .prologue
    .line 4067
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    #@2
    return v0
.end method

.method public isSelected()Z
    .locals 1

    #@0
    .prologue
    .line 4076
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    #@2
    return v0
.end method

.method recycle()V
    .locals 1

    #@0
    .prologue
    .line 4083
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->clear()V

    #@3
    .line 4084
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 4082
    return-void
.end method
