.class final Landroid/text/TextLine$DecorationInfo;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecorationInfo"
.end annotation


# instance fields
.field public greylist-max-o end:I

.field public greylist-max-o isStrikeThruText:Z

.field public greylist-max-o isUnderlineText:Z

.field public greylist-max-o start:I

.field public greylist-max-o underlineColor:I

.field public greylist-max-o underlineThickness:F


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1535
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/TextLine$DecorationInfo;->start:I

    .line 1536
    iput v0, p0, Landroid/text/TextLine$DecorationInfo;->end:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/text/TextLine-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/text/TextLine$DecorationInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o copyInfo()Landroid/text/TextLine$DecorationInfo;
    .registers 3

    .line 1544
    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    invoke-direct {v0}, Landroid/text/TextLine$DecorationInfo;-><init>()V

    .line 1545
    .local v0, "copy":Landroid/text/TextLine$DecorationInfo;
    iget-boolean v1, p0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    iput-boolean v1, v0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    .line 1546
    iget-boolean v1, p0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    iput-boolean v1, v0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    .line 1547
    iget v1, p0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    .line 1548
    iget v1, p0, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    .line 1549
    return-object v0
.end method

.method public greylist-max-o hasDecoration()Z
    .registers 2

    .line 1539
    iget-boolean v0, p0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-nez v0, :cond_f

    iget v0, p0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
