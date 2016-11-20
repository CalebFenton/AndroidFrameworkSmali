.class public Landroid/view/SoundEffectConstants;
.super Ljava/lang/Object;
.source "SoundEffectConstants.java"


# static fields
.field public static final CLICK:I = 0x0

.field public static final NAVIGATION_DOWN:I = 0x4

.field public static final NAVIGATION_LEFT:I = 0x1

.field public static final NAVIGATION_RIGHT:I = 0x3

.field public static final NAVIGATION_UP:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getContantForFocusDirection(I)I
    .locals 2
    .param p0, "direction"    # I

    #@0
    .prologue
    .line 42
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 44
    :sswitch_0
    const/4 v0, 0x3

    #@d
    return v0

    #@e
    .line 47
    :sswitch_1
    const/4 v0, 0x4

    #@f
    return v0

    #@10
    .line 49
    :sswitch_2
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 52
    :sswitch_3
    const/4 v0, 0x2

    #@13
    return v0

    #@14
    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method
