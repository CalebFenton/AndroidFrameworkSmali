.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;
.source "DrawCircle.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawCircle"

.field private static final blacklist OP_CODE:I = 0x2e


# direct methods
.method public constructor blacklist <init>(FFF)V
    .registers 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;-><init>(FFF)V

    .line 90
    const-string v0, "DrawCircle"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->mName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F

    .line 107
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 109
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 110
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 111
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 70
    const/16 v0, 0x2e

    const-string v1, "DrawCircle"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 71
    const-string v1, "Draw a Circle"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 72
    const/4 v1, 0x1

    const-string v2, "centerX"

    const-string v3, "The x-coordinate of the center of the circle to be drawn"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 76
    const-string v2, "centerY"

    const-string v3, "The y-coordinate of the center of the circle to be drawn"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 80
    const-string/jumbo v2, "radius"

    const-string v3, "The radius of the circle to be drawn"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 81
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 51
    const/16 v0, 0x2e

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 61
    const-string v0, "DrawCircle"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 3
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle$$ExternalSyntheticLambda0;-><init>()V

    .line 42
    .local v0, "m":Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;
    invoke-static {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 95
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->mV1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->mV2:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->mV3:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawCircle(FFF)V

    .line 96
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 115
    const-string v0, "cy"

    const-string/jumbo v1, "radius"

    const-string v2, "cx"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    const-string v1, "DrawCircle"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 116
    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p2, "v1"    # F
    .param p3, "v2"    # F
    .param p4, "v3"    # F

    .line 85
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    .line 86
    return-void
.end method
