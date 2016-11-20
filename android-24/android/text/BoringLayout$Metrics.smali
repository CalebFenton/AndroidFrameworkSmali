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
.field public width:I


# direct methods
.method static synthetic -wrap0(Landroid/text/BoringLayout$Metrics;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/text/BoringLayout$Metrics;->reset()V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 427
    invoke-direct {p0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    #@3
    return-void
.end method

.method private reset()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 435
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->top:I

    #@3
    .line 436
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->bottom:I

    #@5
    .line 437
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->ascent:I

    #@7
    .line 438
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->descent:I

    #@9
    .line 439
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->width:I

    #@b
    .line 440
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->leading:I

    #@d
    .line 434
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Landroid/graphics/Paint$FontMetricsInt;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, " width="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget v1, p0, Landroid/text/BoringLayout$Metrics;->width:I

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method
