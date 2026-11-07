.class public Landroid/text/style/BulletSpan;
.super Ljava/lang/Object;
.source "BulletSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final greylist-max-o STANDARD_BULLET_RADIUS:I = 0x4

.field private static final greylist-max-o STANDARD_COLOR:I = 0x0

.field public static final whitelist STANDARD_GAP_WIDTH:I = 0x2


# instance fields
.field private final greylist-max-o mBulletRadius:I

.field private final greylist-max-p mColor:I

.field private final greylist-max-p mGapWidth:I

.field private final greylist-max-p mWantColor:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    .line 89
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "gapWidth"    # I

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    .line 98
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 5
    .param p1, "gapWidth"    # I
    .param p2, "color"    # I

    .line 108
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    .line 109
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 5
    .param p1, "gapWidth"    # I
    .param p2, "color"    # I
    .param p3, "bulletRadius"    # I

    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    .line 121
    return-void
.end method

.method public constructor greylist-max-o <init>(IIZI)V
    .registers 5
    .param p1, "gapWidth"    # I
    .param p2, "color"    # I
    .param p3, "wantColor"    # Z
    .param p4, "bulletRadius"    # I

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 129
    iput p4, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    .line 130
    iput p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 131
    iput-boolean p3, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 132
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    .line 142
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    .line 219
    move/from16 v0, p9

    move-object/from16 v1, p12

    move-object v2, p8

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v2, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v0, :cond_4a

    .line 220
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    .line 221
    .local v2, "style":Landroid/graphics/Paint$Style;
    const/4 v3, 0x0

    .line 223
    .local v3, "oldcolor":I
    iget-boolean v4, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v4, :cond_1f

    .line 224
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    .line 225
    iget v4, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    :cond_1f
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    if-eqz v1, :cond_2f

    .line 234
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 235
    .local v4, "line":I
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineExtra(I)I

    move-result v5

    sub-int/2addr p7, v5

    .line 238
    .end local v4    # "line":I
    :cond_2f
    add-int v4, p5, p7

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 239
    .local v4, "yPosition":F
    iget v5, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    mul-int/2addr v5, p4

    add-int/2addr v5, p3

    int-to-float v5, v5

    .line 241
    .local v5, "xPosition":F
    iget v6, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v4, v6, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 243
    iget-boolean v6, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v6, :cond_47

    .line 244
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    :cond_47
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    .end local v2    # "style":Landroid/graphics/Paint$Style;
    .end local v3    # "oldcolor":I
    .end local v4    # "yPosition":F
    .end local v5    # "xPosition":F
    :cond_4a
    return-void
.end method

.method public whitelist getBulletRadius()I
    .registers 2

    .line 194
    iget v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    return v0
.end method

.method public whitelist getColor()I
    .registers 2

    .line 203
    iget v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    return v0
.end method

.method public whitelist getGapWidth()I
    .registers 2

    .line 185
    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    return v0
.end method

.method public whitelist getLeadingMargin(Z)I
    .registers 4
    .param p1, "first"    # Z

    .line 176
    iget v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 146
    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 152
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getWantColor()Z
    .registers 2

    .line 211
    iget-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BulletSpan{gapWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getGapWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bulletRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getBulletRadius()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 162
    invoke-virtual {p0, p1, p2}, Landroid/text/style/BulletSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 163
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 168
    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    return-void
.end method
