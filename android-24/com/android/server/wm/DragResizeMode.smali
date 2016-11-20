.class Lcom/android/server/wm/DragResizeMode;
.super Ljava/lang/Object;
.source "DragResizeMode.java"


# static fields
.field static final DRAG_RESIZE_MODE_DOCKED_DIVIDER:I = 0x1

.field static final DRAG_RESIZE_MODE_FREEFORM:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static isModeAllowedForStack(II)Z
    .locals 3
    .param p0, "stackId"    # I
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 42
    packed-switch p1, :pswitch_data_0

    #@5
    .line 50
    return v1

    #@6
    .line 44
    :pswitch_0
    const/4 v2, 0x2

    #@7
    if-ne p0, v2, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    move v0, v1

    #@b
    goto :goto_0

    #@c
    .line 46
    :pswitch_1
    const/4 v2, 0x3

    #@d
    if-eq p0, v2, :cond_1

    #@f
    .line 47
    if-ne p0, v0, :cond_2

    #@11
    .line 46
    :cond_1
    :goto_1
    return v0

    #@12
    .line 48
    :cond_2
    if-eqz p0, :cond_1

    #@14
    move v0, v1

    #@15
    goto :goto_1

    #@16
    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
