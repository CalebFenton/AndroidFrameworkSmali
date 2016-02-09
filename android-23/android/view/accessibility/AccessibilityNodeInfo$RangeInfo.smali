.class public final Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RangeInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final RANGE_TYPE_FLOAT:I = 0x1

.field public static final RANGE_TYPE_INT:I = 0x0

.field public static final RANGE_TYPE_PERCENT:I = 0x2

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrent:F

.field private mMax:F

.field private mMin:F

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 3671
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0xa

    #@4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    .line 3670
    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    .line 3660
    return-void
.end method

.method private constructor <init>(IFFF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "min"    # F
    .param p3, "max"    # F
    .param p4, "current"    # F

    #@0
    .prologue
    .line 3710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3711
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    #@5
    .line 3712
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    #@7
    .line 3713
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    #@9
    .line 3714
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    #@b
    .line 3710
    return-void
.end method

.method private clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3766
    const/4 v0, 0x0

    #@2
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    #@4
    .line 3767
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    #@6
    .line 3768
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    #@8
    .line 3769
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    #@a
    .line 3765
    return-void
.end method

.method public static obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .locals 2
    .param p0, "type"    # I
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "current"    # F

    #@0
    .prologue
    .line 3698
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@8
    .line 3699
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    if-eqz v0, :cond_0

    #@a
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@d
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    #@10
    goto :goto_0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .locals 4
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@0
    .prologue
    .line 3686
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    #@2
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    #@4
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    #@6
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    #@8
    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method


# virtual methods
.method public getCurrent()F
    .locals 1

    #@0
    .prologue
    .line 3754
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    #@2
    return v0
.end method

.method public getMax()F
    .locals 1

    #@0
    .prologue
    .line 3745
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    #@2
    return v0
.end method

.method public getMin()F
    .locals 1

    #@0
    .prologue
    .line 3736
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 3727
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    #@2
    return v0
.end method

.method recycle()V
    .locals 1

    #@0
    .prologue
    .line 3761
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->clear()V

    #@3
    .line 3762
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 3760
    return-void
.end method
