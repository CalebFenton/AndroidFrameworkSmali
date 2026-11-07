.class interface abstract Landroid/animation/Animator$AnimatorCaller;
.super Ljava/lang/Object;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AnimatorCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final blacklist ON_CANCEL:Landroid/animation/Animator$AnimatorCaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/Animator$AnimatorCaller<",
            "Landroid/animation/Animator$AnimatorListener;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ON_END:Landroid/animation/Animator$AnimatorCaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/Animator$AnimatorCaller<",
            "Landroid/animation/Animator$AnimatorListener;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ON_PAUSE:Landroid/animation/Animator$AnimatorCaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/Animator$AnimatorCaller<",
            "Landroid/animation/Animator$AnimatorPauseListener;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ON_REPEAT:Landroid/animation/Animator$AnimatorCaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/Animator$AnimatorCaller<",
            "Landroid/animation/Animator$AnimatorListener;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ON_RESUME:Landroid/animation/Animator$AnimatorCaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/Animator$AnimatorCaller<",
            "Landroid/animation/Animator$AnimatorPauseListener;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ON_START:Landroid/animation/Animator$AnimatorCaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/Animator$AnimatorCaller<",
            "Landroid/animation/Animator$AnimatorListener;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ON_UPDATE:Landroid/animation/Animator$AnimatorCaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/Animator$AnimatorCaller<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 920
    new-instance v0, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_START:Landroid/animation/Animator$AnimatorCaller;

    .line 921
    new-instance v0, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_END:Landroid/animation/Animator$AnimatorCaller;

    .line 922
    new-instance v0, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_CANCEL:Landroid/animation/Animator$AnimatorCaller;

    .line 924
    new-instance v0, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_REPEAT:Landroid/animation/Animator$AnimatorCaller;

    .line 926
    new-instance v0, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_PAUSE:Landroid/animation/Animator$AnimatorCaller;

    .line 928
    new-instance v0, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_RESUME:Landroid/animation/Animator$AnimatorCaller;

    .line 930
    new-instance v0, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/animation/Animator$AnimatorCaller$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Landroid/animation/Animator$AnimatorCaller;->ON_UPDATE:Landroid/animation/Animator$AnimatorCaller;

    return-void
.end method

.method public static synthetic blacklist lambda$static$0(Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;Z)V
    .registers 3
    .param p0, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 923
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic blacklist lambda$static$1(Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;Z)V
    .registers 3
    .param p0, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 925
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic blacklist lambda$static$2(Landroid/animation/Animator$AnimatorPauseListener;Landroid/animation/Animator;Z)V
    .registers 3
    .param p0, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 927
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationPause(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic blacklist lambda$static$3(Landroid/animation/Animator$AnimatorPauseListener;Landroid/animation/Animator;Z)V
    .registers 3
    .param p0, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 929
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationResume(Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic blacklist lambda$static$4(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;Z)V
    .registers 3
    .param p0, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "isReverse"    # Z

    .line 931
    invoke-interface {p0, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public abstract blacklist call(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TA;Z)V"
        }
    .end annotation
.end method
