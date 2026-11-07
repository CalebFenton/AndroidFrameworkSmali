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
.field private final greylist-max-o mEdit:Landroid/widget/EditText;

.field final synthetic blacklist this$0:Landroid/webkit/JsDialogHelper;


# direct methods
.method public constructor blacklist <init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V
    .registers 3
    .param p2, "edit"    # Landroid/widget/EditText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p2, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    .line 148
    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 152
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    if-nez v0, :cond_e

    .line 153
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->-$$Nest$fgetmResult(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->confirm()V

    goto :goto_21

    .line 155
    :cond_e
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->-$$Nest$fgetmResult(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 157
    :goto_21
    return-void
.end method
