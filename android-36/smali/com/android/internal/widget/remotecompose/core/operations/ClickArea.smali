.class public Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ClickArea.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteComposeOperation;
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ClickArea"

.field private static final blacklist OP_CODE:I = 0x40


# instance fields
.field blacklist mBottom:F

.field blacklist mContentDescription:I

.field blacklist mId:I

.field blacklist mLeft:F

.field blacklist mMetadata:I

.field blacklist mOutBottom:F

.field blacklist mOutLeft:F

.field blacklist mOutRight:F

.field blacklist mOutTop:F

.field blacklist mRight:F

.field blacklist mTop:F


# direct methods
.method public constructor blacklist <init>(IIFFFFI)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "contentDescription"    # I
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .param p7, "metadata"    # I

    .line 70
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 71
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mId:I

    .line 72
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mContentDescription:I

    .line 73
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutLeft:F

    .line 74
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutTop:F

    .line 75
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutRight:F

    .line 76
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutBottom:F

    .line 77
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mMetadata:I

    .line 78
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFFI)V
    .registers 9
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "contentDescription"    # I
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .param p7, "metadata"    # I

    .line 190
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 192
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 193
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 194
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 195
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 196
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 197
    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 198
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 225
    const/16 v0, 0x40

    const-string v1, "ClickArea"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 226
    const-string v1, "Define a region you can click on"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 227
    const/4 v1, 0x1

    const-string v2, "left"

    const-string v3, "The left side of the region"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 228
    const-string/jumbo v2, "top"

    const-string v3, "The top of the region"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 229
    const-string/jumbo v2, "right"

    const-string v3, "The right side of the region"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 230
    const-string v2, "bottom"

    const-string v3, "The bottom of the region"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 231
    const-string v2, "metadata"

    const-string/jumbo v3, "user defined string accessible in callback"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 235
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 163
    const/16 v0, 0x40

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 154
    const-string v0, "ClickArea"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 10
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

    .line 207
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 208
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 209
    .local v2, "contentDescription":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 210
    .local v3, "left":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 211
    .local v4, "top":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 212
    .local v5, "right":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 213
    .local v6, "bottom":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v7

    .line 214
    .local v7, "metadata":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;-><init>(IIFFFFI)V

    .line 216
    .local v0, "clickArea":Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 137
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mContentDescription:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutLeft:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutTop:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutRight:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutBottom:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mMetadata:I

    move-object v0, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v0, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->addClickArea(IIFFFFI)V

    .line 139
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentDescriptionId()Ljava/lang/Integer;
    .registers 2

    .line 168
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mContentDescription:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 82
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 83
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 85
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 86
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 88
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 89
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 91
    :cond_33
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 92
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 94
    :cond_44
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 239
    nop

    .line 240
    const-string v0, "ClickArea"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mId:I

    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mContentDescription:I

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contentDescriptionId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutLeft:F

    .line 243
    const-string v3, "left"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutTop:F

    .line 244
    const-string/jumbo v3, "top"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutRight:F

    .line 245
    const-string/jumbo v3, "right"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutBottom:F

    .line 246
    const-string v3, "bottom"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mMetadata:I

    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "metadata"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 248
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLICK_AREA <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mContentDescription:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mMetadata:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+ ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 98
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutLeft:F

    .line 99
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutTop:F

    .line 100
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_43

    :cond_41
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    :goto_43
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    .line 101
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_5a

    :cond_58
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    :goto_5a
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mOutBottom:F

    .line 102
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 10
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 106
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mContentDescription:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mMetadata:I

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFFI)V

    .line 107
    return-void
.end method
