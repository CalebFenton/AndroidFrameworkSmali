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
.field final synthetic this$0:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ProgressDialog;

    #@0
    .prologue
    .line 131
    iput-object p1, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 134
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@5
    .line 137
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    #@7
    invoke-static {v6}, Landroid/app/ProgressDialog;->-get0(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    #@a
    move-result-object v6

    #@b
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getProgress()I

    #@e
    move-result v4

    #@f
    .line 138
    .local v4, "progress":I
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    #@11
    invoke-static {v6}, Landroid/app/ProgressDialog;->-get0(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getMax()I

    #@18
    move-result v1

    #@19
    .line 139
    .local v1, "max":I
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    #@1b
    invoke-static {v6}, Landroid/app/ProgressDialog;->-get2(Landroid/app/ProgressDialog;)Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    if-eqz v6, :cond_0

    #@21
    .line 140
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    #@23
    invoke-static {v6}, Landroid/app/ProgressDialog;->-get2(Landroid/app/ProgressDialog;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 141
    .local v0, "format":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    #@29
    invoke-static {v6}, Landroid/app/ProgressDialog;->-get1(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    #@2c
    move-result-object v6

    #@2d
    const/4 v7, 0x2

    #@2e
    new-array v7, v7, [Ljava/lang/Object;

    #@30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v8

    #@34
    aput-object v8, v7, v10

    #@36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v8

    #@3a
    aput-object v8, v7, v11

    #@3c
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@43
    .line 145
    .end local v0    # "format":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    #@45
    invoke-static {v6}, Landroid/app/ProgressDialog;->-get4(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    #@48
    move-result-object v6

    #@49
    if-eqz v6, :cond_1

    #@4b
    .line 146
    int-to-double v6, v4

    #@4c
    int-to-double v8, v1

    #@4d
    div-double v2, v6, v8

    #@4f
    .line 147
    .local v2, "percent":D
    new-instance v5, Landroid/text/SpannableString;

    #@51
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    #@53
    invoke-static {v6}, Landroid/app/ProgressDialog;->-get4(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@5e
    .line 148
    .local v5, "tmp":Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/StyleSpan;

    #@60
    invoke-direct {v6, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@63
    .line 149
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    #@66
    move-result v7

    #@67
    const/16 v8, 0x21

    #@69
    .line 148
    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@6c
    .line 150
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    #@6e
    invoke-static {v6}, Landroid/app/ProgressDialog;->-get3(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@75
    .line 133
    .end local v2    # "percent":D
    .end local v5    # "tmp":Landroid/text/SpannableString;
    :goto_1
    return-void

    #@76
    .line 143
    :cond_0
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    #@78
    invoke-static {v6}, Landroid/app/ProgressDialog;->-get1(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    #@7b
    move-result-object v6

    #@7c
    const-string/jumbo v7, ""

    #@7f
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@82
    goto :goto_0

    #@83
    .line 152
    :cond_1
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    #@85
    invoke-static {v6}, Landroid/app/ProgressDialog;->-get3(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    #@88
    move-result-object v6

    #@89
    const-string/jumbo v7, ""

    #@8c
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@8f
    goto :goto_1
.end method
