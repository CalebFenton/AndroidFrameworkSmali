.class Landroid/view/LetterboxScrollProcessor$ScrollListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LetterboxScrollProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/LetterboxScrollProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/LetterboxScrollProcessor;


# direct methods
.method private constructor blacklist <init>(Landroid/view/LetterboxScrollProcessor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 194
    iput-object p1, p0, Landroid/view/LetterboxScrollProcessor$ScrollListener;->this$0:Landroid/view/LetterboxScrollProcessor;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/LetterboxScrollProcessor;Landroid/view/LetterboxScrollProcessor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/LetterboxScrollProcessor$ScrollListener;-><init>(Landroid/view/LetterboxScrollProcessor;)V

    return-void
.end method


# virtual methods
.method public whitelist onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .param p1, "actionDownEvent"    # Landroid/view/MotionEvent;
    .param p2, "actionMoveEvent"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 203
    nop

    .line 204
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 203
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 205
    .local v0, "newActionDownEvent":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/LetterboxScrollProcessor$ScrollListener;->this$0:Landroid/view/LetterboxScrollProcessor;

    invoke-static {v1}, Landroid/view/LetterboxScrollProcessor;->-$$Nest$mgetAppBounds(Landroid/view/LetterboxScrollProcessor;)Landroid/graphics/Rect;

    move-result-object v1

    .line 206
    .local v1, "appBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/view/LetterboxScrollProcessor$ScrollListener;->this$0:Landroid/view/LetterboxScrollProcessor;

    invoke-static {v2, v0, v1}, Landroid/view/LetterboxScrollProcessor;->-$$Nest$mapplyOffset(Landroid/view/LetterboxScrollProcessor;Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    .line 207
    iget-object v2, p0, Landroid/view/LetterboxScrollProcessor$ScrollListener;->this$0:Landroid/view/LetterboxScrollProcessor;

    invoke-static {v2}, Landroid/view/LetterboxScrollProcessor;->-$$Nest$fgetmGeneratedEventIds(Landroid/view/LetterboxScrollProcessor;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v2, p0, Landroid/view/LetterboxScrollProcessor$ScrollListener;->this$0:Landroid/view/LetterboxScrollProcessor;

    invoke-static {v2}, Landroid/view/LetterboxScrollProcessor;->-$$Nest$fgetmProcessedEvents(Landroid/view/LetterboxScrollProcessor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v2, p0, Landroid/view/LetterboxScrollProcessor$ScrollListener;->this$0:Landroid/view/LetterboxScrollProcessor;

    sget-object v3, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->SCROLLING_STARTED_OUTSIDE_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    invoke-static {v2, v3}, Landroid/view/LetterboxScrollProcessor;->-$$Nest$fputmState(Landroid/view/LetterboxScrollProcessor;Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;)V

    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    return v2
.end method
