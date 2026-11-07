.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ComponentStart.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;


# static fields
.field public static final blacklist BUTTON:I = 0x5

.field public static final blacklist CHECKBOX:I = 0x6

.field public static final blacklist CURVED_TEXT:I = 0x8

.field public static final blacklist CUSTOM:I = 0xa

.field public static final blacklist DEFAULT:I = 0x0

.field public static final blacklist IMAGE:I = 0xc

.field public static final blacklist LAYOUT:I = 0x2

.field public static final blacklist LAYOUT_BOX:I = 0xe

.field public static final blacklist LAYOUT_COLUMN:I = 0x10

.field public static final blacklist LAYOUT_CONTENT:I = 0x3

.field public static final blacklist LAYOUT_ROW:I = 0xf

.field public static final blacklist LOTTIE:I = 0xb

.field public static final blacklist ROOT_LAYOUT:I = 0x1

.field public static final blacklist SCROLL_CONTENT:I = 0x4

.field public static final blacklist STATE_BOX_CONTENT:I = 0xd

.field public static final blacklist STATE_HOST:I = 0x9

.field public static final blacklist TEXT:I = 0x7

.field public static final blacklist UNKNOWN:I = -0x1


# instance fields
.field blacklist mComponentId:I

.field blacklist mHeight:F

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mType:I

.field blacklist mWidth:F

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method public constructor blacklist <init>(IIFF)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "componentId"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 67
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mType:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mList:Ljava/util/ArrayList;

    .line 68
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mType:I

    .line 69
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mComponentId:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mX:F

    .line 71
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mY:F

    .line 72
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mWidth:F

    .line 73
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mHeight:F

    .line 74
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V
    .registers 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "type"    # I
    .param p2, "componentId"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 199
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 201
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 202
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 203
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 204
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 235
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 236
    const-string v1, "Basic component encapsulating draw commands.This is not resizable."

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 238
    const/4 v1, 0x0

    const-string v2, "TYPE"

    const-string v3, "Type of components"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 239
    const-string v2, "COMPONENT_ID"

    const-string/jumbo v3, "unique id for this component"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 240
    const/4 v1, 0x1

    const-string v2, "WIDTH"

    const-string/jumbo v3, "width of the component"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 241
    const-string v2, "HEIGHT"

    const-string v3, "height of the component"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 242
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 185
    const/4 v0, 0x2

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 176
    const-string v0, "ComponentStart"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 7
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

    .line 222
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 223
    .local v0, "type":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 224
    .local v1, "componentId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 225
    .local v2, "width":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 226
    .local v3, "height":F
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;-><init>(IIFF)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method public static blacklist size()I
    .registers 1

    .line 212
    const/16 v0, 0xd

    return v0
.end method

.method public static blacklist typeDescription(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 137
    packed-switch p0, :pswitch_data_2e

    .line 165
    const-string v0, "UNKNOWN"

    return-object v0

    .line 163
    :pswitch_6
    const-string v0, "IMAGE"

    return-object v0

    .line 159
    :pswitch_9
    const-string v0, "LOTTIE"

    return-object v0

    .line 161
    :pswitch_c
    const-string v0, "CUSTOM"

    return-object v0

    .line 157
    :pswitch_f
    const-string v0, "STATE_HOST"

    return-object v0

    .line 155
    :pswitch_12
    const-string v0, "CURVED_TEXT"

    return-object v0

    .line 153
    :pswitch_15
    const-string v0, "TEXT"

    return-object v0

    .line 151
    :pswitch_18
    const-string v0, "CHECKBOX"

    return-object v0

    .line 149
    :pswitch_1b
    const-string v0, "BUTTON"

    return-object v0

    .line 147
    :pswitch_1e
    const-string v0, "SCROLL_CONTENT"

    return-object v0

    .line 145
    :pswitch_21
    const-string v0, "CONTENT"

    return-object v0

    .line 143
    :pswitch_24
    const-string v0, "LAYOUT"

    return-object v0

    .line 141
    :pswitch_27
    const-string v0, "ROOT_LAYOUT"

    return-object v0

    .line 139
    :pswitch_2a
    const-string v0, "DEFAULT"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 108
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_9

    move-object v1, p1

    goto :goto_b

    :cond_9
    const-string v1, ""

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getComponentId()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mComponentId:I

    return v0
.end method

.method public blacklist getHeight()F
    .registers 2

    .line 60
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mHeight:F

    return v0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mType:I

    return v0
.end method

.method public blacklist getWidth()F
    .registers 2

    .line 56
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mWidth:F

    return v0
.end method

.method public blacklist getX()F
    .registers 2

    .line 48
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mX:F

    return v0
.end method

.method public blacklist getY()F
    .registers 2

    .line 52
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mY:F

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMPONENT_START (type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mType:I

    .line 87
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->typeDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 78
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mType:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mComponentId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mWidth:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->mHeight:F

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    .line 79
    return-void
.end method
