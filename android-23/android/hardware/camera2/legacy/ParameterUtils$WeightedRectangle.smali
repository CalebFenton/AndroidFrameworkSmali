.class public Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
.super Ljava/lang/Object;
.source "ParameterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/ParameterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeightedRectangle"
.end annotation


# instance fields
.field public final rect:Landroid/graphics/Rect;

.field public final weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "weight"    # I

    #@0
    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 135
    const-string/jumbo v0, "rect must not be null"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/graphics/Rect;

    #@c
    iput-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@e
    .line 136
    iput p2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    #@10
    .line 134
    return-void
.end method

.method private static clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 213
    if-ge p0, p1, :cond_1

    #@2
    .line 214
    const-string/jumbo v0, "ParameterUtils"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "toMetering - Rectangle "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, " "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 215
    const-string/jumbo v2, " too small, clip to "

    #@23
    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 216
    move p0, p1

    #@33
    .line 223
    :cond_0
    :goto_0
    return p0

    #@34
    .line 217
    :cond_1
    if-le p0, p2, :cond_0

    #@36
    .line 218
    const-string/jumbo v0, "ParameterUtils"

    #@39
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v2, "toMetering - Rectangle "

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    const-string/jumbo v2, " "

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 219
    const-string/jumbo v2, " too small, clip to "

    #@57
    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 220
    move p0, p2

    #@67
    goto :goto_0
.end method

.method private static clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "lo"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 209
    const v0, 0x7fffffff

    #@3
    invoke-static {p0, p1, v0, p2, p3}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method


# virtual methods
.method public toFace()Landroid/hardware/camera2/params/Face;
    .locals 6

    #@0
    .prologue
    .line 199
    iget v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    #@2
    .line 202
    iget-object v2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@4
    .line 203
    const-string/jumbo v3, "score"

    #@7
    .line 200
    const/4 v4, 0x1

    #@8
    .line 201
    const/16 v5, 0x64

    #@a
    .line 199
    invoke-static {v1, v4, v5, v2, v3}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    .line 205
    .local v0, "score":I
    new-instance v1, Landroid/hardware/camera2/params/Face;

    #@10
    iget-object v2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@12
    invoke-direct {v1, v2, v0}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;I)V

    #@15
    return-object v1
.end method

.method public toFace(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/hardware/camera2/params/Face;
    .locals 7
    .param p1, "id"    # I
    .param p2, "leftEyePosition"    # Landroid/graphics/Point;
    .param p3, "rightEyePosition"    # Landroid/graphics/Point;
    .param p4, "mouthPosition"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@2
    const-string/jumbo v1, "id"

    #@5
    const/4 v4, 0x0

    #@6
    invoke-static {p1, v4, v0, v1}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    #@9
    move-result v3

    #@a
    .line 178
    .local v3, "idSafe":I
    iget v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    #@c
    .line 181
    iget-object v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@e
    .line 182
    const-string/jumbo v4, "score"

    #@11
    .line 179
    const/4 v5, 0x1

    #@12
    .line 180
    const/16 v6, 0x64

    #@14
    .line 178
    invoke-static {v0, v5, v6, v1, v4}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    #@17
    move-result v2

    #@18
    .line 184
    .local v2, "score":I
    new-instance v0, Landroid/hardware/camera2/params/Face;

    #@1a
    iget-object v1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@1c
    move-object v4, p2

    #@1d
    move-object v5, p3

    #@1e
    move-object v6, p4

    #@1f
    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    #@22
    return-object v0
.end method

.method public toMetering()Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 147
    iget v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->weight:I

    #@3
    .line 150
    iget-object v6, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@5
    .line 151
    const-string/jumbo v7, "weight"

    #@8
    .line 149
    const/16 v8, 0x3e8

    #@a
    .line 147
    invoke-static {v0, v9, v8, v6, v7}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clip(IIILandroid/graphics/Rect;Ljava/lang/String;)I

    #@d
    move-result v5

    #@e
    .line 153
    .local v5, "weight":I
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@10
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@12
    iget-object v6, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@14
    const-string/jumbo v7, "left"

    #@17
    invoke-static {v0, v9, v6, v7}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    #@1a
    move-result v1

    #@1b
    .line 154
    .local v1, "x":I
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@1d
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@1f
    iget-object v6, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@21
    const-string/jumbo v7, "top"

    #@24
    invoke-static {v0, v9, v6, v7}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    #@27
    move-result v2

    #@28
    .line 155
    .local v2, "y":I
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@2a
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@2d
    move-result v0

    #@2e
    iget-object v6, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@30
    const-string/jumbo v7, "width"

    #@33
    invoke-static {v0, v9, v6, v7}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    #@36
    move-result v3

    #@37
    .line 156
    .local v3, "w":I
    iget-object v0, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@39
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@3c
    move-result v0

    #@3d
    iget-object v6, p0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@3f
    const-string/jumbo v7, "height"

    #@42
    invoke-static {v0, v9, v6, v7}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->clipLower(IILandroid/graphics/Rect;Ljava/lang/String;)I

    #@45
    move-result v4

    #@46
    .line 158
    .local v4, "h":I
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    #@48
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    #@4b
    return-object v0
.end method
