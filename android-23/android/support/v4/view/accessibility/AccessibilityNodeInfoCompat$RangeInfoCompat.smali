.class public Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeInfoCompat"
.end annotation


# static fields
.field public static final RANGE_TYPE_FLOAT:I = 0x1

.field public static final RANGE_TYPE_INT:I = 0x0

.field public static final RANGE_TYPE_PERCENT:I = 0x2


# instance fields
.field private final mInfo:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 467
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    #@5
    .line 466
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;-><init>(Ljava/lang/Object;)V

    #@3
    return-void
.end method


# virtual methods
.method public getCurrent()F
    .locals 1

    #@0
    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;->getCurrent(Ljava/lang/Object;)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMax()F
    .locals 1

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;->getMax(Ljava/lang/Object;)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMin()F
    .locals 1

    #@0
    .prologue
    .line 479
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;->getMin(Ljava/lang/Object;)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 483
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;->getType(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
