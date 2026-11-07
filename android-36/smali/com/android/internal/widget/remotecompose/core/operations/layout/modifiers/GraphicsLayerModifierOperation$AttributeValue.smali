.class Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;
.super Ljava/lang/Object;
.source "GraphicsLayerModifierOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttributeValue"
.end annotation


# instance fields
.field blacklist mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

.field blacklist mDefaultValue:F

.field blacklist mId:I

.field blacklist mIntDefaultValue:I

.field blacklist mIntValue:I

.field blacklist mName:Ljava/lang/String;

.field blacklist mType:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;F)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mDefaultValue:F

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntValue:I

    .line 129
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntDefaultValue:I

    .line 130
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    .line 133
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mId:I

    .line 134
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mName:Ljava/lang/String;

    .line 135
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mDefaultValue:F

    .line 136
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    .line 137
    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;I)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mDefaultValue:F

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntValue:I

    .line 129
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntDefaultValue:I

    .line 130
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    .line 140
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mId:I

    .line 141
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mName:Ljava/lang/String;

    .line 142
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntDefaultValue:I

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    .line 144
    return-void
.end method


# virtual methods
.method public blacklist evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 169
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F

    .line 172
    :cond_9
    return-void
.end method

.method public blacklist getIntValue()I
    .registers 3

    .line 158
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    if-nez v0, :cond_10

    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    if-eqz v0, :cond_18

    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 162
    :cond_10
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 163
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntValue:I

    return v0

    .line 165
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getObjectValue()Ljava/lang/Object;
    .registers 2

    .line 196
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    if-nez v0, :cond_d

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 199
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getValue()F
    .registers 2

    .line 147
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    if-nez v0, :cond_12

    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    if-eqz v0, :cond_f

    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    return v0

    .line 151
    :cond_f
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mDefaultValue:F

    return v0

    .line 153
    :cond_12
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntValue:I

    int-to-float v0, v0

    return v0
.end method

.method public blacklist needsToWrite()Z
    .registers 5

    .line 175
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 176
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    if-eqz v0, :cond_19

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->getValue()F

    move-result v0

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mDefaultValue:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1

    .line 179
    :cond_19
    return v2

    .line 180
    :cond_1a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    if-ne v0, v1, :cond_27

    .line 181
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntValue:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntDefaultValue:I

    if-eq v0, v3, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    return v1

    .line 183
    :cond_27
    return v2
.end method

.method public blacklist setValue(F)V
    .registers 3
    .param p1, "value"    # F

    .line 203
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mAnimatableValue:Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;

    .line 204
    return-void
.end method

.method public blacklist setValue(I)V
    .registers 2
    .param p1, "value"    # I

    .line 207
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mIntValue:I

    .line 208
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 187
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 188
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    if-nez v0, :cond_11

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    goto :goto_1d

    .line 190
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getIntValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 193
    :cond_1d
    :goto_1d
    return-void
.end method
