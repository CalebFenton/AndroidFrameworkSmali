.class Landroid/text/Layout$HorizontalMeasurementProvider;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalMeasurementProvider"
.end annotation


# instance fields
.field private greylist-max-o mHorizontals:[F

.field private final greylist-max-o mLine:I

.field private greylist-max-o mLineStartOffset:I

.field private final greylist-max-o mPrimary:Z

.field final synthetic blacklist this$0:Landroid/text/Layout;


# direct methods
.method constructor blacklist <init>(Landroid/text/Layout;IZ)V
    .registers 4
    .param p2, "line"    # I
    .param p3, "primary"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2366
    iput-object p1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2367
    iput p2, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    .line 2368
    iput-boolean p3, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mPrimary:Z

    .line 2369
    invoke-direct {p0}, Landroid/text/Layout$HorizontalMeasurementProvider;->init()V

    .line 2370
    return-void
.end method

.method private greylist-max-o init()V
    .registers 6

    .line 2373
    iget-object v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 2374
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_d

    .line 2375
    return-void

    .line 2378
    :cond_d
    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget v2, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mPrimary:Z

    invoke-static {v1, v2, v3, v4}, Landroid/text/Layout;->-$$Nest$mgetLineHorizontals(Landroid/text/Layout;IZZ)[F

    move-result-object v1

    iput-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    .line 2379
    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget v2, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    iput v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLineStartOffset:I

    .line 2380
    return-void
.end method


# virtual methods
.method greylist-max-o get(I)F
    .registers 5
    .param p1, "offset"    # I

    .line 2383
    iget v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLineStartOffset:I

    sub-int v0, p1, v0

    .line 2384
    .local v0, "index":I
    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    if-eqz v1, :cond_15

    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    array-length v1, v1

    if-lt v0, v1, :cond_10

    goto :goto_15

    .line 2387
    :cond_10
    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    aget v1, v1, v0

    return v1

    .line 2385
    :cond_15
    :goto_15
    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget-boolean v2, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mPrimary:Z

    invoke-static {v1, p1, v2}, Landroid/text/Layout;->-$$Nest$mgetHorizontal(Landroid/text/Layout;IZ)F

    move-result v1

    return v1
.end method
