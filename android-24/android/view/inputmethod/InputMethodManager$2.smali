.class Landroid/view/inputmethod/InputMethodManager$2;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$startInputReason:I


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "val$startInputReason"    # I

    #@0
    .prologue
    .line 1179
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager$2;->val$startInputReason:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1182
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@3
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager$2;->val$startInputReason:I

    #@5
    const/4 v2, 0x0

    #@6
    move v4, v3

    #@7
    move v5, v3

    #@8
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    #@b
    .line 1181
    return-void
.end method
