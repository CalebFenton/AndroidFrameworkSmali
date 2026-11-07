.class Landroid/inputmethodservice/navigationbar/KeyButtonView$1;
.super Ljava/lang/Object;
.source "KeyButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/KeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/navigationbar/KeyButtonView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/inputmethodservice/navigationbar/KeyButtonView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 81
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 82
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->-$$Nest$fputmLongClicked(Landroid/inputmethodservice/navigationbar/KeyButtonView;Z)V

    .line 84
    :cond_16
    return-void
.end method
