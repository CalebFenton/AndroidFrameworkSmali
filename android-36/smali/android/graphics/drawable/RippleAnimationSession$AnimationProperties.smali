.class Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
.super Ljava/lang/Object;
.source "RippleAnimationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleAnimationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationProperties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FloatType:",
        "Ljava/lang/Object;",
        "PaintType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mColor:I

.field private blacklist mMaxRadius:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private final blacklist mNoisePhase:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private final blacklist mPaint:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPaintType;"
        }
    .end annotation
.end field

.field private final blacklist mProgress:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private final blacklist mShader:Landroid/graphics/drawable/RippleShader;

.field private blacklist mX:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private blacklist mY:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILandroid/graphics/drawable/RippleShader;)V
    .registers 9
    .param p7, "color"    # I
    .param p8, "shader"    # Landroid/graphics/drawable/RippleShader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFloatType;TFloatType;TFloatType;TFloatType;TPaintType;TFloatType;I",
            "Landroid/graphics/drawable/RippleShader;",
            ")V"
        }
    .end annotation

    .line 290
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    .local p1, "x":Ljava/lang/Object;, "TFloatType;"
    .local p2, "y":Ljava/lang/Object;, "TFloatType;"
    .local p3, "maxRadius":Ljava/lang/Object;, "TFloatType;"
    .local p4, "noisePhase":Ljava/lang/Object;, "TFloatType;"
    .local p5, "paint":Ljava/lang/Object;, "TPaintType;"
    .local p6, "progress":Ljava/lang/Object;, "TFloatType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p2, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mY:Ljava/lang/Object;

    .line 292
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mX:Ljava/lang/Object;

    .line 293
    iput-object p3, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mMaxRadius:Ljava/lang/Object;

    .line 294
    iput-object p4, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mNoisePhase:Ljava/lang/Object;

    .line 295
    iput-object p5, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mPaint:Ljava/lang/Object;

    .line 296
    iput-object p8, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mShader:Landroid/graphics/drawable/RippleShader;

    .line 297
    iput-object p6, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mProgress:Ljava/lang/Object;

    .line 298
    iput p7, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mColor:I

    .line 299
    return-void
.end method


# virtual methods
.method blacklist getColor()I
    .registers 2

    .line 339
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mColor:I

    return v0
.end method

.method blacklist getMaxRadius()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    .line 323
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mMaxRadius:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getNoisePhase()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    .line 335
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mNoisePhase:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getPaint()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPaintType;"
        }
    .end annotation

    .line 327
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mPaint:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getProgress()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    .line 302
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mProgress:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getShader()Landroid/graphics/drawable/RippleShader;
    .registers 2

    .line 331
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mShader:Landroid/graphics/drawable/RippleShader;

    return-object v0
.end method

.method blacklist getX()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    .line 315
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mX:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getY()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    .line 319
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mY:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist setOrigin(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFloatType;TFloatType;)V"
        }
    .end annotation

    .line 310
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    .local p1, "x":Ljava/lang/Object;, "TFloatType;"
    .local p2, "y":Ljava/lang/Object;, "TFloatType;"
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mX:Ljava/lang/Object;

    .line 311
    iput-object p2, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mY:Ljava/lang/Object;

    .line 312
    return-void
.end method

.method blacklist setRadius(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFloatType;)V"
        }
    .end annotation

    .line 306
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    .local p1, "radius":Ljava/lang/Object;, "TFloatType;"
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mMaxRadius:Ljava/lang/Object;

    .line 307
    return-void
.end method
