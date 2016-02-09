.class Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 47
    if-nez p2, :cond_0

    #@3
    .line 49
    return v0

    #@4
    .line 51
    :cond_0
    const/4 v0, -0x1

    #@5
    return v0
.end method

.method public getAxisValue(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "axis"    # I

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAxisValue(Landroid/view/MotionEvent;II)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "axis"    # I
    .param p3, "pointerIndex"    # I

    #@0
    .prologue
    .line 92
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 77
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getPointerId(Landroid/view/MotionEvent;I)I
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 55
    if-nez p2, :cond_0

    #@3
    .line 57
    return v0

    #@4
    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    const-string/jumbo v1, "Pre-Eclair does not support multiple pointers"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0
.end method

.method public getSource(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 82
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getX(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    #@0
    .prologue
    .line 63
    if-nez p2, :cond_0

    #@2
    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@5
    move-result v0

    #@6
    return v0

    #@7
    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    const-string/jumbo v1, "Pre-Eclair does not support multiple pointers"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method

.method public getY(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    #@0
    .prologue
    .line 70
    if-nez p2, :cond_0

    #@2
    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@5
    move-result v0

    #@6
    return v0

    #@7
    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    const-string/jumbo v1, "Pre-Eclair does not support multiple pointers"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method
