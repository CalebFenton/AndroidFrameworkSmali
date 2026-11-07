.class public Landroid/text/BoringLayout$Metrics;
.super Landroid/graphics/Paint$FontMetricsInt;
.source "BoringLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BoringLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metrics"
.end annotation


# instance fields
.field private final blacklist mDrawingBounds:Landroid/graphics/RectF;

.field public whitelist width:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDrawingBounds(Landroid/text/BoringLayout$Metrics;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Landroid/text/BoringLayout$Metrics;->mDrawingBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreset(Landroid/text/BoringLayout$Metrics;)V
    .registers 1

    invoke-direct {p0}, Landroid/text/BoringLayout$Metrics;->reset()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 761
    invoke-direct {p0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 763
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/text/BoringLayout$Metrics;->mDrawingBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private greylist-max-o reset()V
    .registers 2

    .line 780
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout$Metrics;->top:I

    .line 781
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->bottom:I

    .line 782
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->ascent:I

    .line 783
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->descent:I

    .line 784
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->width:I

    .line 785
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->leading:I

    .line 786
    iget-object v0, p0, Landroid/text/BoringLayout$Metrics;->mDrawingBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 787
    return-void
.end method


# virtual methods
.method public whitelist getDrawingBoundingBox()Landroid/graphics/RectF;
    .registers 2

    .line 772
    iget-object v0, p0, Landroid/text/BoringLayout$Metrics;->mDrawingBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/graphics/Paint$FontMetricsInt;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/BoringLayout$Metrics;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drawingBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/BoringLayout$Metrics;->mDrawingBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
