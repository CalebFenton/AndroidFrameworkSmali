.class Landroid/webkit/Plugin$DefaultClickHandler;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Landroid/webkit/Plugin$PreferencesClickHandler;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultClickHandler"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mDialog:Landroid/app/AlertDialog;

.field final synthetic blacklist this$0:Landroid/webkit/Plugin;


# direct methods
.method private constructor blacklist <init>(Landroid/webkit/Plugin;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 194
    iput-object p1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/webkit/Plugin;Landroid/webkit/Plugin-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/webkit/Plugin$DefaultClickHandler;-><init>(Landroid/webkit/Plugin;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o handleClickEvent(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2f

    .line 202
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    invoke-static {v1}, Landroid/webkit/Plugin;->-$$Nest$fgetmName(Landroid/webkit/Plugin;)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    invoke-static {v1}, Landroid/webkit/Plugin;->-$$Nest$fgetmDescription(Landroid/webkit/Plugin;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 205
    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 206
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    .line 209
    :cond_2f
    return-void
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    .line 219
    return-void
.end method
