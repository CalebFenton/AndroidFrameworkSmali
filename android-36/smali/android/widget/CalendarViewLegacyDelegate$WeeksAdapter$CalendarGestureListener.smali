.class Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1150
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1153
    const/4 v0, 0x1

    return v0
.end method
