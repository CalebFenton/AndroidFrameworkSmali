.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "AnimationSpec.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

.field public static final blacklist DISABLED:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;


# instance fields
.field blacklist mAnimationId:I

.field blacklist mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field blacklist mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field blacklist mMotionDuration:F

.field blacklist mMotionEasingType:I

.field blacklist mVisibilityDuration:F

.field blacklist mVisibilityEasingType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 38
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DISABLED:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 9

    .line 65
    sget-object v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    sget-object v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    const/4 v1, -0x1

    const/high16 v2, 0x44160000    # 600.0f

    const/4 v3, 0x1

    const/high16 v4, 0x43fa0000    # 500.0f

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>(IFIFILcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)V

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 76
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>()V

    .line 77
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(IFIFILcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)V
    .registers 10
    .param p1, "animationId"    # I
    .param p2, "motionDuration"    # F
    .param p3, "motionEasingType"    # I
    .param p4, "visibilityDuration"    # F
    .param p5, "visibilityEasingType"    # I
    .param p6, "enterAnimation"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .param p7, "exitAnimation"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    .line 40
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    .line 41
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionEasingType:I

    .line 42
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityDuration:F

    .line 43
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityEasingType:I

    .line 44
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 45
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 55
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    .line 56
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    .line 57
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionEasingType:I

    .line 58
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityDuration:F

    .line 59
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityEasingType:I

    .line 60
    iput-object p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 61
    iput-object p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 62
    return-void
.end method

.method public static blacklist animationToInt(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)I
    .registers 2
    .param p0, "animation"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ordinal()I

    move-result v0

    return v0
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFIFILcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)V
    .registers 9
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "animationId"    # I
    .param p2, "motionDuration"    # F
    .param p3, "motionEasingType"    # I
    .param p4, "visibilityDuration"    # F
    .param p5, "visibilityEasingType"    # I
    .param p6, "enterAnimation"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .param p7, "exitAnimation"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 267
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 269
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 270
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 271
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 272
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 273
    invoke-static {p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->animationToInt(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 274
    invoke-static {p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->animationToInt(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 275
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 309
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 310
    const-string v1, "define the animation"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 311
    const/4 v1, 0x0

    const-string v2, "animationId"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 312
    const-string v2, "motionDuration"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 313
    const-string v2, "motionEasingType"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 314
    const-string/jumbo v2, "visibilityDuration"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 315
    const-string/jumbo v2, "visibilityEasingType"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 316
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 203
    const/16 v0, 0xe

    return v0
.end method

.method public static blacklist intToAnimation(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .registers 2
    .param p0, "value"    # I

    .line 224
    packed-switch p0, :pswitch_data_1e

    .line 242
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0

    .line 240
    :pswitch_6
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->PARTICLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0

    .line 238
    :pswitch_9
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ROTATE:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0

    .line 236
    :pswitch_c
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_BOTTOM:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0

    .line 234
    :pswitch_f
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_TOP:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0

    .line 232
    :pswitch_12
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_RIGHT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0

    .line 230
    :pswitch_15
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_LEFT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0

    .line 228
    :pswitch_18
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0

    .line 226
    :pswitch_1b
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
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

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 194
    const-string v0, "AnimationSpec"

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

    .line 284
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 285
    .local v1, "animationId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 286
    .local v2, "motionDuration":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 287
    .local v3, "motionEasingType":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 288
    .local v4, "visibilityDuration":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 289
    .local v5, "visibilityEasingType":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->intToAnimation(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v6

    .line 290
    .local v6, "enterAnimation":Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->intToAnimation(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v7

    .line 291
    .local v7, "exitAnimation":Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>(IFIFILcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)V

    .line 300
    .local v0, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 179
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 184
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAnimationId()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    return v0
.end method

.method public blacklist getEnterAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0
.end method

.method public blacklist getExitAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0
.end method

.method public blacklist getMotionDuration()F
    .registers 2

    .line 89
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    return v0
.end method

.method public blacklist getMotionEasingType()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionEasingType:I

    return v0
.end method

.method public blacklist getVisibilityDuration()F
    .registers 2

    .line 97
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityDuration:F

    return v0
.end method

.method public blacklist getVisibilityEasingType()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityEasingType:I

    return v0
.end method

.method public blacklist isAnimationEnabled()Z
    .registers 2

    .line 81
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 141
    nop

    .line 142
    const-string v0, "AnimationSpec"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "animationId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionDuration()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "motionDuration"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionEasingType()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "motionEasingType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityDuration()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "visibilityDuration"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityEasingType()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "visibilityEasingType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getEnterAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v1

    const-string v2, "enterAnimation"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getExitAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v1

    const-string v2, "exitAnimation"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 150
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANIMATION_SPEC = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionDuration()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionEasingType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityDuration()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityEasingType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getEnterAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getExitAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 137
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANIMATION_SPEC ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 10
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 165
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionEasingType:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityDuration:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityEasingType:I

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFIFILcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)V

    .line 174
    return-void
.end method
