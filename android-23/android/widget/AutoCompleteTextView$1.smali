.class Landroid/widget/AutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;

.field final synthetic val$dismissListener:Landroid/widget/AutoCompleteTextView$OnDismissListener;


# direct methods
.method constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$OnDismissListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AutoCompleteTextView;
    .param p2, "val$dismissListener"    # Landroid/widget/AutoCompleteTextView$OnDismissListener;

    #@0
    .prologue
    .line 593
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$1;->this$0:Landroid/widget/AutoCompleteTextView;

    #@2
    iput-object p2, p0, Landroid/widget/AutoCompleteTextView$1;->val$dismissListener:Landroid/widget/AutoCompleteTextView$OnDismissListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    #@0
    .prologue
    .line 595
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$1;->val$dismissListener:Landroid/widget/AutoCompleteTextView$OnDismissListener;

    #@2
    invoke-interface {v0}, Landroid/widget/AutoCompleteTextView$OnDismissListener;->onDismiss()V

    #@5
    .line 594
    return-void
.end method
