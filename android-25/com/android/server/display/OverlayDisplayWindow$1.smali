.class Lcom/android/server/display/OverlayDisplayWindow$1;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/OverlayDisplayWindow;

    #@0
    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 289
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@2
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-get0(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/Display;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    #@9
    move-result v0

    #@a
    if-ne p1, v0, :cond_0

    #@c
    .line 295
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@e
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-wrap0(Lcom/android/server/display/OverlayDisplayWindow;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 296
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@16
    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    #@19
    .line 297
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@1b
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-get3(Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow$Listener;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@21
    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayWindow;->-get1(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;

    #@24
    move-result-object v1

    #@25
    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    #@27
    invoke-interface {v0, v1}, Lcom/android/server/display/OverlayDisplayWindow$Listener;->onStateChanged(I)V

    #@2a
    .line 293
    :cond_0
    :goto_0
    return-void

    #@2b
    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@2d
    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    #@30
    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@2
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-get0(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/Display;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    #@9
    move-result v0

    #@a
    if-ne p1, v0, :cond_0

    #@c
    .line 307
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    #@e
    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    #@11
    .line 305
    :cond_0
    return-void
.end method
