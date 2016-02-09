.class Landroid/webkit/JsDialogHelper$CancelListener;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/JsDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/JsDialogHelper;


# direct methods
.method private constructor <init>(Landroid/webkit/JsDialogHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/JsDialogHelper;

    #@0
    .prologue
    .line 131
    iput-object p1, p0, Landroid/webkit/JsDialogHelper$CancelListener;->this$0:Landroid/webkit/JsDialogHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper$CancelListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/JsDialogHelper;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;)V

    #@3
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$CancelListener;->this$0:Landroid/webkit/JsDialogHelper;

    #@2
    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->-get0(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    #@9
    .line 134
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$CancelListener;->this$0:Landroid/webkit/JsDialogHelper;

    #@2
    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->-get0(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    #@9
    .line 138
    return-void
.end method
