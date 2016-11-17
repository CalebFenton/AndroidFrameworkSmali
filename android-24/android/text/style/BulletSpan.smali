.class public Landroid/text/style/BulletSpan;
.super Ljava/lang/Object;
.source "BulletSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final BULLET_RADIUS:I = 0x3

.field public static final STANDARD_GAP_WIDTH:I = 0x2

.field private static sBulletPath:Landroid/graphics/Path;


# instance fields
.field private final mColor:I

.field private final mGapWidth:I

.field private final mWantColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    const/4 v0, 0x0

    #@1
    sput-object v0, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    #@3
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 39
    const/4 v0, 0x2

    #@5
    iput v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    #@7
    .line 40
    iput-boolean v1, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    #@9
    .line 41
    iput v1, p0, Landroid/text/style/BulletSpan;->mColor:I

    #@b
    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "gapWidth"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 45
    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    #@6
    .line 46
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    #@8
    .line 47
    iput v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    #@a
    .line 44
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "gapWidth"    # I
    .param p2, "color"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    #@5
    .line 52
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    #@8
    .line 53
    iput p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    #@a
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    #@a
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    #@13
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    #@19
    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "l"    # Landroid/text/Layout;

    #@0
    .prologue
    .line 94
    check-cast p8, Landroid/text/Spanned;

    #@2
    .end local p8    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p8

    #@4
    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@7
    move-result v3

    #@8
    move/from16 v0, p9

    #@a
    if-ne v3, v0, :cond_3

    #@c
    .line 95
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    #@f
    move-result-object v2

    #@10
    .line 96
    .local v2, "style":Landroid/graphics/Paint$Style;
    const/4 v1, 0x0

    #@11
    .line 98
    .local v1, "oldcolor":I
    iget-boolean v3, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 99
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    #@18
    move-result v1

    #@19
    .line 100
    iget v3, p0, Landroid/text/style/BulletSpan;->mColor:I

    #@1b
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    #@1e
    .line 103
    :cond_0
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@20
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@23
    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_4

    #@29
    .line 106
    sget-object v3, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    #@2b
    if-nez v3, :cond_1

    #@2d
    .line 107
    new-instance v3, Landroid/graphics/Path;

    #@2f
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    #@32
    sput-object v3, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    #@34
    .line 109
    sget-object v3, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    #@36
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@38
    const/4 v5, 0x0

    #@39
    const/4 v6, 0x0

    #@3a
    const v7, 0x40666667    # 3.6000001f

    #@3d
    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    #@40
    .line 112
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@43
    .line 113
    mul-int/lit8 v3, p4, 0x3

    #@45
    add-int/2addr v3, p3

    #@46
    int-to-float v3, v3

    #@47
    add-int v4, p5, p7

    #@49
    int-to-float v4, v4

    #@4a
    const/high16 v5, 0x40000000    # 2.0f

    #@4c
    div-float/2addr v4, v5

    #@4d
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@50
    .line 114
    sget-object v3, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    #@52
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@55
    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@58
    .line 120
    :goto_0
    iget-boolean v3, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    #@5a
    if-eqz v3, :cond_2

    #@5c
    .line 121
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@5f
    .line 124
    :cond_2
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@62
    .line 93
    .end local v1    # "oldcolor":I
    .end local v2    # "style":Landroid/graphics/Paint$Style;
    :cond_3
    return-void

    #@63
    .line 117
    .restart local v1    # "oldcolor":I
    .restart local v2    # "style":Landroid/graphics/Paint$Style;
    :cond_4
    mul-int/lit8 v3, p4, 0x3

    #@65
    add-int/2addr v3, p3

    #@66
    int-to-float v3, v3

    #@67
    add-int v4, p5, p7

    #@69
    int-to-float v4, v4

    #@6a
    const/high16 v5, 0x40000000    # 2.0f

    #@6c
    div-float/2addr v4, v5

    #@6d
    const/high16 v5, 0x40400000    # 3.0f

    #@6f
    invoke-virtual {p1, v3, v4, v5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@72
    goto :goto_0
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    #@0
    .prologue
    .line 87
    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    #@2
    add-int/lit8 v0, v0, 0x6

    #@4
    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 68
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Landroid/text/style/BulletSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 75
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 81
    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 82
    iget-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 83
    iget v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 80
    return-void

    #@13
    .line 82
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method
