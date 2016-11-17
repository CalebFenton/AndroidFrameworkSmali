.class Landroid/widget/Editor$Blink;
.super Ljava/lang/Object;
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
    .line 2318
    iput-object p1, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 2338
    iget-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2339
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #@6
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@d
    .line 2340
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    #@10
    .line 2337
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 2322
    iget-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2323
    return-void

    #@5
    .line 2326
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #@7
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@e
    .line 2328
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #@10
    invoke-static {v0}, Landroid/widget/Editor;->-wrap10(Landroid/widget/Editor;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 2329
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #@18
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 2330
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #@24
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursorPath()V

    #@2b
    .line 2333
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    #@2d
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@30
    move-result-object v0

    #@31
    const-wide/16 v2, 0x1f4

    #@33
    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@36
    .line 2321
    :cond_2
    return-void
.end method

.method uncancel()V
    .locals 1

    #@0
    .prologue
    .line 2345
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    #@3
    .line 2344
    return-void
.end method
