.class Landroid/inputmethodservice/InputMethodService$1;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;

    #@0
    .prologue
    .line 321
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@0
    .prologue
    .line 323
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2
    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 326
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@a
    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    .line 327
    .local v0, "decor":Landroid/view/View;
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@18
    .line 328
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@1b
    move-result v2

    #@1c
    .line 327
    iget-object v3, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@1e
    iput v2, v3, Landroid/graphics/Rect;->top:I

    #@20
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@22
    .line 329
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@24
    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    #@27
    .line 330
    const/4 v1, 0x0

    #@28
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    #@2b
    .line 322
    .end local v0    # "decor":Landroid/view/View;
    :goto_0
    return-void

    #@2c
    .line 332
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2e
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@30
    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@32
    invoke-virtual {v1, v2}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    #@35
    .line 333
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@37
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@39
    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@3b
    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    #@3d
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@3f
    .line 334
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@41
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@43
    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@45
    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    #@47
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@49
    .line 335
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@4b
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@4d
    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@4f
    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    #@51
    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@54
    .line 336
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@56
    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    #@58
    iget v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    #@5a
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    #@5d
    goto :goto_0
.end method
