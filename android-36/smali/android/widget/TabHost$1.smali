.class Landroid/widget/TabHost$1;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TabHost;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TabHost;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/TabHost;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 169
    iput-object p1, p0, Landroid/widget/TabHost$1;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 171
    invoke-static {p2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 172
    return v1

    .line 174
    :cond_8
    sparse-switch p2, :sswitch_data_22

    .line 186
    iget-object v0, p0, Landroid/widget/TabHost$1;->this$0:Landroid/widget/TabHost;

    invoke-static {v0}, Landroid/widget/TabHost;->-$$Nest$fgetmTabContent(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 187
    iget-object v0, p0, Landroid/widget/TabHost$1;->this$0:Landroid/widget/TabHost;

    invoke-static {v0}, Landroid/widget/TabHost;->-$$Nest$fgetmTabContent(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 183
    :sswitch_20
    return v1

    nop

    :sswitch_data_22
    .sparse-switch
        0x13 -> :sswitch_20
        0x14 -> :sswitch_20
        0x15 -> :sswitch_20
        0x16 -> :sswitch_20
        0x17 -> :sswitch_20
        0x3d -> :sswitch_20
        0x3e -> :sswitch_20
        0x42 -> :sswitch_20
    .end sparse-switch
.end method
