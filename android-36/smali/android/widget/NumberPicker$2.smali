.class Landroid/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor blacklist <init>(Landroid/widget/NumberPicker;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/NumberPicker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 731
    iput-object p1, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLongClick(Landroid/view/View;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 733
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$mhideSoftInput(Landroid/widget/NumberPicker;)V

    .line 734
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 735
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x102037c

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-ne v0, v1, :cond_20

    .line 736
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v2, v3, v4}, Landroid/widget/NumberPicker;->-$$Nest$mpostChangeCurrentByOneFromLongPress(Landroid/widget/NumberPicker;ZJ)V

    goto :goto_26

    .line 738
    :cond_20
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3, v4}, Landroid/widget/NumberPicker;->-$$Nest$mpostChangeCurrentByOneFromLongPress(Landroid/widget/NumberPicker;ZJ)V

    .line 740
    :goto_26
    return v2
.end method
