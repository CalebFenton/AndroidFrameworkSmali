.class Landroid/inputmethodservice/InputMethodService$2;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 341
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 343
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@2
    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    #@5
    move-result-object v0

    #@6
    .line 344
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    #@8
    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    #@b
    move-result-object v1

    #@c
    .line 345
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 346
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 347
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    #@16
    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    #@19
    .line 342
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 348
    :cond_1
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@1c
    and-int/lit16 v2, v2, 0xff

    #@1e
    .line 349
    const/4 v3, 0x1

    #@1f
    .line 348
    if-eq v2, v3, :cond_0

    #@21
    .line 350
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@23
    and-int/lit16 v2, v2, 0xff

    #@25
    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    #@28
    goto :goto_0
.end method
