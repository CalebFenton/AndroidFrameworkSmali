.class Landroid/widget/Editor$Blink;
.super Landroid/os/Handler;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Blink"
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    .line 2081
    iput-object p1, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$Blink;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;)V

    #@3
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    #@0
    .prologue
    .line 2101
    iget-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2102
    invoke-virtual {p0, p0}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 2103
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    #@a
    .line 2100
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 2085
    iget-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2086
    return-void

    #@5
    .line 2089
    :cond_0
    invoke-virtual {p0, p0}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    #@8
    .line 2091
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #@a
    invoke-static {v0}, Landroid/widget/Editor;->-wrap9(Landroid/widget/Editor;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 2092
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #@12
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@19
    move-result-object v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 2093
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #@1e
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursorPath()V

    #@25
    .line 2096
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@28
    move-result-wide v0

    #@29
    const-wide/16 v2, 0x1f4

    #@2b
    add-long/2addr v0, v2

    #@2c
    invoke-virtual {p0, p0, v0, v1}, Landroid/widget/Editor$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    #@2f
    .line 2084
    :cond_2
    return-void
.end method

.method uncancel()V
    .locals 1

    #@0
    .prologue
    .line 2108
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    #@3
    .line 2107
    return-void
.end method
