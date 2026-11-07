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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo$RangeType;
    }
.end annotation


# static fields
.field public static final whitelist INDETERMINATE:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

.field public static final whitelist RANGE_TYPE_FLOAT:I = 0x1

.field public static final whitelist RANGE_TYPE_INDETERMINATE:I = 0x3

.field public static final whitelist RANGE_TYPE_INT:I = 0x0

.field public static final whitelist RANGE_TYPE_PERCENT:I = 0x2


# instance fields
.field private greylist-max-o mCurrent:F

.field private greylist-max-o mMax:F

.field private greylist-max-o mMin:F

.field private greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrent(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMax(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMin(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 6982
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->INDETERMINATE:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    return-void
.end method

.method public constructor whitelist <init>(IFFF)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "min"    # F
    .param p3, "max"    # F
    .param p4, "current"    # F

    .line 7018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7019
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    .line 7020
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    .line 7021
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    .line 7022
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    .line 7023
    return-void
.end method

.method private greylist-max-o clear()V
    .registers 2

    .line 7076
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    .line 7077
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    .line 7078
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    .line 7079
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    .line 7080
    return-void
.end method

.method public static whitelist obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .registers 5
    .param p0, "type"    # I
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "current"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7005
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    return-object v0
.end method


# virtual methods
.method public whitelist getCurrent()F
    .registers 2

    .line 7063
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    return v0
.end method

.method public whitelist getMax()F
    .registers 2

    .line 7054
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    return v0
.end method

.method public whitelist getMin()F
    .registers 2

    .line 7045
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 7036
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    return v0
.end method

.method greylist-max-o recycle()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7073
    return-void
.end method
