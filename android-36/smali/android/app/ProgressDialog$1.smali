.class Landroid/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ProgressDialog;


# direct methods
.method constructor blacklist <init>(Landroid/app/ProgressDialog;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/ProgressDialog;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 205
    iput-object p1, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 208
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 211
    iget-object v0, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v0}, Landroid/app/ProgressDialog;->-$$Nest$fgetmProgress(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 212
    .local v0, "progress":I
    iget-object v1, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v1}, Landroid/app/ProgressDialog;->-$$Nest$fgetmProgress(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 213
    .local v1, "max":I
    iget-object v2, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v2}, Landroid/app/ProgressDialog;->-$$Nest$fgetmProgressNumberFormat(Landroid/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_41

    .line 214
    iget-object v2, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v2}, Landroid/app/ProgressDialog;->-$$Nest$fgetmProgressNumberFormat(Landroid/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "format":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v4}, Landroid/app/ProgressDialog;->-$$Nest$fgetmProgressNumber(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .end local v2    # "format":Ljava/lang/String;
    goto :goto_4a

    .line 217
    :cond_41
    iget-object v2, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v2}, Landroid/app/ProgressDialog;->-$$Nest$fgetmProgressNumber(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_4a
    iget-object v2, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v2}, Landroid/app/ProgressDialog;->-$$Nest$fgetmProgressPercentFormat(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v2

    if-eqz v2, :cond_7e

    .line 220
    int-to-double v2, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 221
    .local v2, "percent":D
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v5}, Landroid/app/ProgressDialog;->-$$Nest$fgetmProgressPercentFormat(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 222
    .local v4, "tmp":Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 223
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 222
    const/4 v7, 0x0

    const/16 v8, 0x21

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 224
    iget-object v5, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v5}, Landroid/app/ProgressDialog;->-$$Nest$fgetmProgressPercent(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .end local v2    # "percent":D
    .end local v4    # "tmp":Landroid/text/SpannableString;
    goto :goto_87

    .line 226
    :cond_7e
    iget-object v2, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v2}, Landroid/app/ProgressDialog;->-$$Nest$fgetmProgressPercent(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_87
    return-void
.end method
