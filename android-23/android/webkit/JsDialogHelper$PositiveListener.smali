.class Landroid/webkit/JsDialogHelper$PositiveListener;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/JsDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositiveListener"
.end annotation


# instance fields
.field private final mEdit:Landroid/widget/EditText;

.field final synthetic this$0:Landroid/webkit/JsDialogHelper;


# direct methods
.method public constructor <init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/JsDialogHelper;
    .param p2, "edit"    # Landroid/widget/EditText;

    #@0
    .prologue
    .line 146
    iput-object p1, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->this$0:Landroid/webkit/JsDialogHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 147
    iput-object p2, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    #@7
    .line 146
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 153
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->this$0:Landroid/webkit/JsDialogHelper;

    #@6
    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->-get0(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->confirm()V

    #@d
    .line 151
    :goto_0
    return-void

    #@e
    .line 155
    :cond_0
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->this$0:Landroid/webkit/JsDialogHelper;

    #@10
    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->-get0(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    #@16
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    #@21
    goto :goto_0
.end method
