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
.field private mBuffer:Landroid/text/Editable;

.field final synthetic this$0:Landroid/text/method/MultiTapKeyListener;


# direct methods
.method static synthetic -set0(Landroid/text/method/MultiTapKeyListener$Timeout;Landroid/text/Editable;)Landroid/text/Editable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V
    .locals 4
    .param p1, "this$0"    # Landroid/text/method/MultiTapKeyListener;
    .param p2, "buffer"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 258
    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->this$0:Landroid/text/method/MultiTapKeyListener;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 259
    iput-object p2, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    #@7
    .line 260
    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    #@9
    iget-object v1, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    #@b
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x0

    #@10
    .line 261
    const/16 v3, 0x12

    #@12
    .line 260
    invoke-interface {v0, p0, v2, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@15
    .line 263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v0

    #@19
    const-wide/16 v2, 0x7d0

    #@1b
    add-long/2addr v0, v2

    #@1c
    invoke-virtual {p0, p0, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;->postAtTime(Ljava/lang/Runnable;J)Z

    #@1f
    .line 258
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    #@2
    .line 269
    .local v0, "buf":Landroid/text/Spannable;
    if-eqz v0, :cond_1

    #@4
    .line 270
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@7
    move-result v3

    #@8
    .line 271
    .local v3, "st":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@b
    move-result v1

    #@c
    .line 273
    .local v1, "en":I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@e
    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@11
    move-result v4

    #@12
    .line 274
    .local v4, "start":I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@14
    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@17
    move-result v2

    #@18
    .line 276
    .local v2, "end":I
    if-ne v3, v4, :cond_0

    #@1a
    if-ne v1, v2, :cond_0

    #@1c
    .line 277
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@1f
    move-result v5

    #@20
    invoke-static {v0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@23
    .line 280
    :cond_0
    invoke-interface {v0, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@26
    .line 266
    .end local v1    # "en":I
    .end local v2    # "end":I
    .end local v3    # "st":I
    .end local v4    # "start":I
    :cond_1
    return-void
.end method
