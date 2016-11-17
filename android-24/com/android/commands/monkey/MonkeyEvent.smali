.class public abstract Lcom/android/commands/monkey/MonkeyEvent;
.super Ljava/lang/Object;
.source "MonkeyEvent.java"


# static fields
.field public static final EVENT_TYPE_ACTIVITY:I = 0x4

.field public static final EVENT_TYPE_FLIP:I = 0x5

.field public static final EVENT_TYPE_KEY:I = 0x0

.field public static final EVENT_TYPE_NOOP:I = 0x8

.field public static final EVENT_TYPE_PERMISSION:I = 0x7

.field public static final EVENT_TYPE_ROTATION:I = 0x3

.field public static final EVENT_TYPE_THROTTLE:I = 0x6

.field public static final EVENT_TYPE_TOUCH:I = 0x1

.field public static final EVENT_TYPE_TRACKBALL:I = 0x2

.field public static final INJECT_ERROR_REMOTE_EXCEPTION:I = -0x1

.field public static final INJECT_ERROR_SECURITY_EXCEPTION:I = -0x2

.field public static final INJECT_FAIL:I = 0x0

.field public static final INJECT_SUCCESS:I = 0x1


# instance fields
.field protected eventType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput p1, p0, Lcom/android/commands/monkey/MonkeyEvent;->eventType:I

    #@5
    .line 45
    return-void
.end method


# virtual methods
.method public getEventType()I
    .locals 1

    #@0
    .prologue
    .line 53
    iget v0, p0, Lcom/android/commands/monkey/MonkeyEvent;->eventType:I

    #@2
    return v0
.end method

.method public abstract injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
.end method

.method public isThrottlable()Z
    .locals 1

    #@0
    .prologue
    .line 60
    const/4 v0, 0x1

    #@1
    return v0
.end method
