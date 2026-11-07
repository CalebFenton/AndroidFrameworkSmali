.class public final Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtraRenderingInfo"
.end annotation


# static fields
.field private static final blacklist UNDEFINED_VALUE:I = -0x1


# instance fields
.field private blacklist mLayoutSize:Landroid/util/Size;

.field private blacklist mTextSizeInPx:F

.field private blacklist mTextSizeUnit:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmLayoutSize(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/util/Size;)V
    .registers 2

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTextSizeInPx(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;F)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTextSizeUnit(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V
    .registers 3
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    .line 8038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8004
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    .line 8005
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    .line 8039
    if-eqz p1, :cond_18

    .line 8040
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    .line 8041
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    .line 8042
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    .line 8044
    :cond_18
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/view/accessibility/AccessibilityNodeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V

    return-void
.end method

.method private blacklist clear()V
    .registers 2

    .line 8128
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    .line 8129
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    .line 8130
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    .line 8131
    return-void
.end method

.method public static blacklist obtain()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8017
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V

    return-object v0
.end method

.method private static blacklist obtain(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    .registers 2
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8029
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getLayoutSize()Landroid/util/Size;
    .registers 2

    .line 8058
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist getTextSizeInPx()F
    .registers 2

    .line 8080
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    return v0
.end method

.method public whitelist getTextSizeUnit()I
    .registers 2

    .line 8105
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    return v0
.end method

.method blacklist recycle()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8125
    return-void
.end method

.method public blacklist setLayoutSize(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 8069
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    .line 8070
    return-void
.end method

.method public blacklist setTextSizeInPx(F)V
    .registers 2
    .param p1, "textSizeInPx"    # F

    .line 8090
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    .line 8091
    return-void
.end method

.method public blacklist setTextSizeUnit(I)V
    .registers 2
    .param p1, "textSizeUnit"    # I

    .line 8115
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    .line 8116
    return-void
.end method
