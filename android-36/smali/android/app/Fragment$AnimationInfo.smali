.class Landroid/app/Fragment$AnimationInfo;
.super Ljava/lang/Object;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationInfo"
.end annotation


# instance fields
.field private greylist-max-o mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private greylist-max-o mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field greylist-max-o mAnimatingAway:Landroid/animation/Animator;

.field private greylist-max-o mEnterTransition:Landroid/transition/Transition;

.field greylist-max-o mEnterTransitionCallback:Landroid/app/SharedElementCallback;

.field greylist-max-o mEnterTransitionPostponed:Z

.field private greylist-max-o mExitTransition:Landroid/transition/Transition;

.field greylist-max-o mExitTransitionCallback:Landroid/app/SharedElementCallback;

.field greylist-max-o mIsHideReplaced:Z

.field greylist-max-o mNextAnim:I

.field greylist-max-o mNextTransition:I

.field greylist-max-o mNextTransitionStyle:I

.field private greylist-max-o mReenterTransition:Landroid/transition/Transition;

.field private greylist-max-o mReturnTransition:Landroid/transition/Transition;

.field private greylist-max-o mSharedElementEnterTransition:Landroid/transition/Transition;

.field private greylist-max-o mSharedElementReturnTransition:Landroid/transition/Transition;

.field greylist-max-o mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

.field greylist-max-o mStateAfterAnimating:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowEnterTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowReturnTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExitTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReenterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReturnTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSharedElementEnterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSharedElementReturnTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowEnterTransitionOverlap(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowReturnTransitionOverlap(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnterTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExitTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReenterTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReturnTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSharedElementEnterTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSharedElementReturnTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 3

    .line 2947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2966
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    .line 2967
    invoke-static {}, Landroid/app/Fragment;->-$$Nest$sfgetUSE_DEFAULT_TRANSITION()Landroid/transition/Transition;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Fragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    .line 2968
    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    .line 2969
    invoke-static {}, Landroid/app/Fragment;->-$$Nest$sfgetUSE_DEFAULT_TRANSITION()Landroid/transition/Transition;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Fragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    .line 2970
    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 2971
    invoke-static {}, Landroid/app/Fragment;->-$$Nest$sfgetUSE_DEFAULT_TRANSITION()Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 2975
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 2976
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    return-void
.end method
