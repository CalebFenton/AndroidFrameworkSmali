.class public Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "FloatExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/ComponentData;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "FloatExpression"

.field public static final blacklist MAX_EXPRESSION_SIZE:I = 0x20

.field private static final blacklist OP_CODE:I = 0x51


# instance fields
.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field public blacklist mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

.field public blacklist mId:I

.field blacklist mLastAnimatedValue:F

.field private blacklist mLastCalculatedValue:F

.field private blacklist mLastChange:F

.field public blacklist mPreCalcValue:[F

.field private blacklist mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

.field public blacklist mSrcAnimation:[F

.field public blacklist mSrcValue:[F


# direct methods
.method public constructor blacklist <init>(I[F[F)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "value"    # [F
    .param p3, "animation"    # [F

    .line 63
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 58
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    .line 59
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    .line 60
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 149
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    .line 64
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    .line 65
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    .line 66
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    if-eqz v0, :cond_3f

    .line 68
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    array-length v0, v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_36

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_36

    .line 69
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;-><init>([F)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    goto :goto_3f

    .line 71
    :cond_36
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>([F)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    .line 74
    :cond_3f
    :goto_3f
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V
    .registers 9
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "value"    # [F
    .param p3, "animation"    # [F

    .line 274
    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 277
    array-length v0, p2

    .line 278
    .local v0, "len":I
    const/16 v1, 0x20

    if-gt v0, v1, :cond_31

    .line 281
    if-eqz p3, :cond_13

    .line 282
    array-length v1, p3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 284
    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 286
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_23

    aget v4, p2, v3

    .line 287
    .local v4, "v":F
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 286
    .end local v4    # "v":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 289
    :cond_23
    if-eqz p3, :cond_30

    .line 290
    array-length v1, p3

    :goto_26
    if-ge v2, v1, :cond_30

    aget v3, p3, v2

    .line 291
    .local v3, "v":F
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 290
    .end local v3    # "v":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 294
    :cond_30
    return-void

    .line 279
    :cond_31
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-static {p2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to long"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 8
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 333
    const/16 v0, 0x51

    const-string v1, "FloatExpression"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 334
    const-string v1, "A Float expression"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 335
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "The id of the Color"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 336
    const/16 v2, 0x9

    const-string v3, "expression_length"

    const-string v4, "expression length"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 337
    const-string v4, "animation_length"

    const-string v5, "animation description length"

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 338
    const/16 v2, 0xa

    const-string v5, "expression"

    const-string v6, "Sequence of Floats representing and expression"

    invoke-virtual {v0, v2, v5, v3, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 343
    const-string v3, "AnimationSpec"

    const-string v5, "Sequence of Floats representing animation curve"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 348
    const/4 v3, 0x1

    const-string v4, "duration"

    const-string v5, "> time in sec"

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 349
    const-string v4, "bits"

    const-string v5, "> WRAP|INITALVALUE | TYPE "

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 350
    const-string/jumbo v1, "spec"

    const-string v4, "> [SPEC PARAMETERS] "

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 351
    const-string v1, "initialValue"

    const-string v2, "> [Initial value] "

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 352
    const-string/jumbo v1, "wrapValue"

    const-string v2, "> [Wrap value] "

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 353
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 258
    const/16 v0, 0x51

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 249
    const-string v0, "FloatExpression"

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

    .line 303
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 304
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 305
    .local v1, "len":I
    const v2, 0xffff

    and-int v3, v1, v2

    .line 306
    .local v3, "valueLen":I
    const/16 v4, 0x20

    if-gt v3, v4, :cond_3f

    .line 309
    shr-int/lit8 v4, v1, 0x10

    and-int/2addr v2, v4

    .line 310
    .local v2, "animLen":I
    new-array v4, v3, [F

    .line 311
    .local v4, "values":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    array-length v6, v4

    if-ge v5, v6, :cond_23

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    aput v6, v4, v5

    .line 311
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 316
    .end local v5    # "i":I
    :cond_23
    if-eqz v2, :cond_35

    .line 317
    new-array v5, v2, [F

    .line 318
    .local v5, "animation":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_28
    array-length v7, v5

    if-ge v6, v7, :cond_34

    .line 319
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    aput v7, v5, v6

    .line 318
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .end local v6    # "i":I
    :cond_34
    goto :goto_36

    .line 322
    .end local v5    # "animation":[F
    :cond_35
    const/4 v5, 0x0

    .line 324
    .restart local v5    # "animation":[F
    :goto_36
    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    invoke-direct {v6, v0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;-><init>(I[F[F)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    return-void

    .line 307
    .end local v2    # "animLen":I
    .end local v4    # "values":[F
    .end local v5    # "animation":[F
    :cond_3f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Float expression too long"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 153
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    .line 154
    .local v0, "t":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 155
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    .line 157
    :cond_e
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const-string v2, " len = "

    if-eqz v1, :cond_89

    .line 158
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 160
    :try_start_1c
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 162
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v5, v5

    .line 161
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    .line 165
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 166
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getInitialValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 167
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_47} :catch_48

    .line 172
    :cond_47
    goto :goto_6b

    .line 169
    :catch_48
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6b
    :goto_6b
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v1

    .line 175
    .local v1, "lastComputedValue":F
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_88

    .line 176
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    .line 177
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 178
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->markDirty()V

    .line 181
    .end local v1    # "lastComputedValue":F
    :cond_88
    goto :goto_be

    :cond_89
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    if-eqz v1, :cond_a8

    .line 182
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->get(F)F

    move-result v1

    .line 183
    .restart local v1    # "lastComputedValue":F
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_a7

    .line 184
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    .line 185
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 186
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 188
    .end local v1    # "lastComputedValue":F
    :cond_a7
    goto :goto_be

    .line 189
    :cond_a8
    const/4 v1, 0x0

    .line 191
    .local v1, "v":F
    :try_start_a9
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v2
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b8} :catch_bf

    .line 194
    .end local v1    # "v":F
    .local v2, "v":F
    nop

    .line 195
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 197
    .end local v2    # "v":F
    :goto_be
    return-void

    .line 192
    .restart local v1    # "v":F
    :catch_bf
    move-exception v3

    .line 193
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 207
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    .line 208
    .local v0, "t":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 209
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    .line 211
    :cond_11
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v1

    return v1
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_24

    aget v3, v0, v2

    .line 138
    .local v3, "v":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 139
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v4

    if-nez v4, :cond_21

    .line 140
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v4

    if-nez v4, :cond_21

    .line 141
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 137
    .end local v3    # "v":F
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 144
    :cond_24
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 363
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->EXPRESSION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 364
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 365
    const-string v1, "FloatExpression"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    .line 366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    .line 367
    const-string/jumbo v2, "srcValues"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addFloatExpressionSrc(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    .line 368
    const-string v2, "animation"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 369
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 223
    .local v0, "labels":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v2, v2

    if-ge v1, v2, :cond_3b

    .line 224
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v3, v3, v1

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 223
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 228
    .end local v1    # "i":I
    :cond_3b
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    const-string v2, ")"

    const-string v3, "] = ("

    const-string v4, "FloatExpression["

    if-nez v1, :cond_6b

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    .line 232
    invoke-static {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    return-object v1

    .line 235
    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    .line 238
    invoke-static {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    return-object v1
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 78
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v1, v1

    if-eq v0, v1, :cond_13

    .line 79
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    .line 82
    :cond_13
    const/4 v0, 0x0

    .line 83
    .local v0, "value_changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v2, v2

    if-ge v1, v2, :cond_7b

    .line 84
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v2, v2, v1

    .line 85
    .local v2, "v":F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 86
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-nez v3, :cond_70

    .line 87
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v3

    if-nez v3, :cond_70

    .line 88
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    .line 89
    .local v3, "id":I
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v4

    .line 92
    .local v4, "newValue":F
    const/16 v5, 0x1b

    if-ne v3, v5, :cond_47

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_47

    .line 93
    const/high16 v4, 0x3f800000    # 1.0f

    .line 95
    :cond_47
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    if-eqz v5, :cond_59

    .line 96
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aget v5, v5, v1

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_6f

    .line 97
    const/4 v0, 0x1

    .line 98
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aput v4, v5, v1

    goto :goto_6f

    .line 100
    :cond_59
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    if-eqz v5, :cond_6b

    .line 101
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aget v5, v5, v1

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_6f

    .line 102
    const/4 v0, 0x1

    .line 103
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aput v4, v5, v1

    goto :goto_6f

    .line 106
    :cond_6b
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aput v4, v5, v1

    .line 108
    .end local v3    # "id":I
    .end local v4    # "newValue":F
    :cond_6f
    :goto_6f
    goto :goto_78

    .line 109
    :cond_70
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v4, v4, v1

    aput v4, v3, v1

    .line 83
    .end local v2    # "v":F
    :goto_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 112
    .end local v1    # "i":I
    :cond_7b
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    .line 113
    .local v1, "v":F
    if-eqz v0, :cond_9d

    .line 114
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v4, v4

    const/4 v5, 0x0

    new-array v5, v5, [F

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v1

    .line 115
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_9c

    .line 116
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    .line 117
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    goto :goto_9d

    .line 119
    :cond_9c
    const/4 v0, 0x0

    .line 123
    :cond_9d
    :goto_9d
    if-eqz v0, :cond_c6

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    if-eqz v2, :cond_c6

    .line 124
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getTargetValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 125
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    goto :goto_c0

    .line 127
    :cond_b5
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getTargetValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    .line 129
    :goto_c0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    goto :goto_d1

    .line 130
    :cond_c6
    if-eqz v0, :cond_d1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    if-eqz v2, :cond_d1

    .line 131
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->setTargetValue(F)V

    .line 133
    :cond_d1
    :goto_d1
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 216
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    .line 217
    return-void
.end method
