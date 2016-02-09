.class Landroid/widget/TextClock$3;
.super Ljava/lang/Object;
.source "TextClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextClock;


# direct methods
.method constructor <init>(Landroid/widget/TextClock;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TextClock;

    #@0
    .prologue
    .line 165
    iput-object p1, p0, Landroid/widget/TextClock$3;->this$0:Landroid/widget/TextClock;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x3e8

    #@2
    .line 167
    iget-object v4, p0, Landroid/widget/TextClock$3;->this$0:Landroid/widget/TextClock;

    #@4
    invoke-static {v4}, Landroid/widget/TextClock;->-wrap2(Landroid/widget/TextClock;)V

    #@7
    .line 169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v2

    #@b
    .line 170
    .local v2, "now":J
    rem-long v4, v2, v6

    #@d
    sub-long v4, v6, v4

    #@f
    add-long v0, v2, v4

    #@11
    .line 172
    .local v0, "next":J
    iget-object v4, p0, Landroid/widget/TextClock$3;->this$0:Landroid/widget/TextClock;

    #@13
    invoke-virtual {v4}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    #@16
    move-result-object v4

    #@17
    iget-object v5, p0, Landroid/widget/TextClock$3;->this$0:Landroid/widget/TextClock;

    #@19
    invoke-static {v5}, Landroid/widget/TextClock;->-get0(Landroid/widget/TextClock;)Ljava/lang/Runnable;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    #@20
    .line 166
    return-void
.end method
