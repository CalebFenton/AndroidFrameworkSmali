.class Landroid/view/HandwritingInitiator$State;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandwritingInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field private blacklist mExceedHandwritingSlop:Z

.field private blacklist mHandled:Z

.field private blacklist mPendingConnectedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingFocusedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShouldInitHandwriting:Z

.field private final blacklist mStylusDownTimeInMillis:J

.field private blacklist mStylusDownWithinEditorBounds:Z

.field private final blacklist mStylusDownX:F

.field private final blacklist mStylusDownY:F

.field private final blacklist mStylusPointerId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExceedHandwritingSlop(Landroid/view/HandwritingInitiator$State;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/HandwritingInitiator$State;->mExceedHandwritingSlop:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandled(Landroid/view/HandwritingInitiator$State;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/HandwritingInitiator$State;->mHandled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingConnectedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Landroid/view/HandwritingInitiator$State;->mPendingConnectedView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingFocusedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Landroid/view/HandwritingInitiator$State;->mPendingFocusedView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/HandwritingInitiator$State;->mShouldInitHandwriting:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStylusDownTimeInMillis(Landroid/view/HandwritingInitiator$State;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownTimeInMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStylusDownWithinEditorBounds(Landroid/view/HandwritingInitiator$State;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownWithinEditorBounds:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F
    .registers 1

    iget p0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F
    .registers 1

    iget p0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownY:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I
    .registers 1

    iget p0, p0, Landroid/view/HandwritingInitiator$State;->mStylusPointerId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExceedHandwritingSlop(Landroid/view/HandwritingInitiator$State;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/HandwritingInitiator$State;->mExceedHandwritingSlop:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHandled(Landroid/view/HandwritingInitiator$State;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/HandwritingInitiator$State;->mHandled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingConnectedView(Landroid/view/HandwritingInitiator$State;Ljava/lang/ref/WeakReference;)V
    .registers 2

    iput-object p1, p0, Landroid/view/HandwritingInitiator$State;->mPendingConnectedView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingFocusedView(Landroid/view/HandwritingInitiator$State;Ljava/lang/ref/WeakReference;)V
    .registers 2

    iput-object p1, p0, Landroid/view/HandwritingInitiator$State;->mPendingFocusedView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/HandwritingInitiator$State;->mShouldInitHandwriting:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStylusDownWithinEditorBounds(Landroid/view/HandwritingInitiator$State;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownWithinEditorBounds:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator$State;->mPendingConnectedView:Ljava/lang/ref/WeakReference;

    .line 919
    iput-object v0, p0, Landroid/view/HandwritingInitiator$State;->mPendingFocusedView:Ljava/lang/ref/WeakReference;

    .line 930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 931
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/view/HandwritingInitiator$State;->mStylusPointerId:I

    .line 932
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownTimeInMillis:J

    .line 933
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownX:F

    .line 934
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownY:F

    .line 936
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/HandwritingInitiator$State;->mShouldInitHandwriting:Z

    .line 937
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/HandwritingInitiator$State;->mHandled:Z

    .line 938
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator$State;->mExceedHandwritingSlop:Z

    .line 939
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/MotionEvent;Landroid/view/HandwritingInitiator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/HandwritingInitiator$State;-><init>(Landroid/view/MotionEvent;)V

    return-void
.end method
