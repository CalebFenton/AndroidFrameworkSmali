.class Landroid/text/method/MultiTapKeyListener$Timeout;
.super Landroid/os/Handler;
.source "MultiTapKeyListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/MultiTapKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Timeout"
.end annotation


# instance fields
.field private greylist-max-o mBuffer:Landroid/text/Editable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmBuffer(Landroid/text/method/MultiTapKeyListener$Timeout;Landroid/text/Editable;)V
    .registers 2

    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V
    .registers 7
    .param p2, "buffer"    # Landroid/text/Editable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 263
    iput-object p2, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    .line 264
    iget-object p1, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-interface {p1, p0, v2, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 268
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 271
    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    .line 273
    .local v0, "buf":Landroid/text/Spannable;
    if-eqz v0, :cond_26

    .line 274
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 275
    .local v1, "st":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 277
    .local v2, "en":I
    sget-object v3, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 278
    .local v3, "start":I
    sget-object v4, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 280
    .local v4, "end":I
    if-ne v1, v3, :cond_23

    if-ne v2, v4, :cond_23

    .line 281
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 284
    :cond_23
    invoke-interface {v0, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 286
    .end local v1    # "st":I
    .end local v2    # "en":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    :cond_26
    return-void
.end method
