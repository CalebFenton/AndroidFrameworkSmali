.class Landroid/widget/Spinner$2;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Spinner;

    #@0
    .prologue
    .line 868
    iput-object p1, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    #@0
    .prologue
    .line 871
    iget-object v1, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    #@2
    invoke-static {v1}, Landroid/widget/Spinner;->-get1(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 872
    iget-object v1, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    #@e
    invoke-static {v1}, Landroid/widget/Spinner;->-get1(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    #@14
    invoke-virtual {v2}, Landroid/widget/Spinner;->getTextDirection()I

    #@17
    move-result v2

    #@18
    iget-object v3, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    #@1a
    invoke-virtual {v3}, Landroid/widget/Spinner;->getTextAlignment()I

    #@1d
    move-result v3

    #@1e
    invoke-interface {v1, v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    #@21
    .line 874
    :cond_0
    iget-object v1, p0, Landroid/widget/Spinner$2;->this$0:Landroid/widget/Spinner;

    #@23
    invoke-virtual {v1}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@26
    move-result-object v0

    #@27
    .line 875
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1

    #@29
    .line 876
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@2c
    .line 870
    :cond_1
    return-void
.end method
