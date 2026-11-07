.class final Landroid/inputmethodservice/navigationbar/NavigationBarUtils;
.super Ljava/lang/Object;
.source "NavigationBarUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static blacklist dpToPx(FLandroid/content/res/Resources;)I
    .registers 4
    .param p0, "dpValue"    # F
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
