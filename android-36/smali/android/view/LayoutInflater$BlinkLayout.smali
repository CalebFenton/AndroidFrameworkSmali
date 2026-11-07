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
.field private static final greylist-max-o BLINK_DELAY:I = 0x1f4

.field private static final greylist-max-o MESSAGE_BLINK:I = 0x42


# instance fields
.field private greylist-max-o mBlink:Z

.field private greylist-max-o mBlinkState:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBlink(Landroid/view/LayoutInflater$BlinkLayout;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBlinkState(Landroid/view/LayoutInflater$BlinkLayout;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBlinkState(Landroid/view/LayoutInflater$BlinkLayout;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmakeBlink(Landroid/view/LayoutInflater$BlinkLayout;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/LayoutInflater$BlinkLayout;->makeBlink()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1197
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1198
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Landroid/view/LayoutInflater$BlinkLayout$1;

    invoke-direct {v1, p0}, Landroid/view/LayoutInflater$BlinkLayout$1;-><init>(Landroid/view/LayoutInflater$BlinkLayout;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    .line 1212
    return-void
.end method

.method private greylist-max-o makeBlink()V
    .registers 5

    .line 1215
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1216
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1217
    return-void
.end method


# virtual methods
.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1241
    iget-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    if-eqz v0, :cond_7

    .line 1242
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1244
    :cond_7
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 2

    .line 1221
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1223
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    .line 1224
    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    .line 1226
    invoke-direct {p0}, Landroid/view/LayoutInflater$BlinkLayout;->makeBlink()V

    .line 1227
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 1231
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1233
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlink:Z

    .line 1234
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mBlinkState:Z

    .line 1236
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1237
    return-void
.end method
