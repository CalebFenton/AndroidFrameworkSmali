.class public Landroid/animation/StateListAnimator$Tuple;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tuple"
.end annotation


# instance fields
.field final greylist-max-o mAnimator:Landroid/animation/Animator;

.field final greylist-max-o mSpecs:[I


# direct methods
.method private constructor greylist-max-o <init>([ILandroid/animation/Animator;)V
    .registers 3
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/Animator;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    .line 284
    iput-object p2, p0, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    .line 285
    return-void
.end method

.method synthetic constructor blacklist <init>([ILandroid/animation/Animator;Landroid/animation/StateListAnimator-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/animation/StateListAnimator$Tuple;-><init>([ILandroid/animation/Animator;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getAnimator()Landroid/animation/Animator;
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public greylist-max-o getSpecs()[I
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    return-object v0
.end method
