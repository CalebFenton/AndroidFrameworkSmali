.class Landroid/view/LayoutInflater$BlinkLayout;
.super Landroid/widget/FrameLayout;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/LayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlinkLayout"
.end annotation


# static fields
.field private static final BLINK_DELAY:I = 0x1f4

.field private static final MESSAGE_BLINK:I = 0x42


# instance fields
.field private mBlink:Z

.field private mBlinkState:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/view/LayoutInflater$BlinkLayout;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/view/LayoutInflater$BlinkLayout;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/view/LayoutInflater$BlinkLayout;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/view/LayoutInflater$BlinkLayout;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/view/LayoutInflater$BlinkLayout;->makeBlink()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1025
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 1026
    new-instance v0, Landroid/os/Handler;

    #@5
    new-instance v1, Landroid/view/LayoutInflater$BlinkLayout$1;

    #@7
    invoke-direct {v1, p0}, Landroid/view/LayoutInflater$BlinkLayout$1;-><init>(Landroid/view/LayoutInflater$BlinkLayout;)V

    #@a
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    #@d
    iput-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    #@f
    .line 1024
    return-void
.end method

.method private makeBlink()V
    .locals 4

    #@0
    .prologue
    .line 1043
    iget-object v1, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v2, 0x42

    #@4
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 1044
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    #@a
    const-wide/16 v2, 0x1f4

    #@c
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@f
    .line 1042
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1069
    iget-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1070
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@7
    .line 1068
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1049
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    #@4
    .line 1051
    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    #@6
    .line 1052
    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    #@8
    .line 1054
    invoke-direct {p0}, Landroid/view/LayoutInflater$BlinkLayout;->makeBlink()V

    #@b
    .line 1048
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 1059
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    #@3
    .line 1061
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    #@6
    .line 1062
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    #@9
    .line 1064
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    #@b
    const/16 v1, 0x42

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@10
    .line 1058
    return-void
.end method
