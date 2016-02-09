.class Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
.super Lcom/android/internal/view/IInputConnectionWrapper;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControlledInputConnectionWrapper"
.end annotation


# instance fields
.field private mActive:Z

.field private final mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1
    .param p1, "mainLooper"    # Landroid/os/Looper;
    .param p2, "conn"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;

    #@0
    .prologue
    .line 539
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V

    #@3
    .line 540
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    #@5
    .line 541
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mActive:Z

    #@8
    .line 538
    return-void
.end method


# virtual methods
.method deactivate()V
    .locals 1

    #@0
    .prologue
    .line 550
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mActive:Z

    #@3
    .line 549
    return-void
.end method

.method public isActive()Z
    .locals 1

    #@0
    .prologue
    .line 546
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-boolean v0, v0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mActive:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method
