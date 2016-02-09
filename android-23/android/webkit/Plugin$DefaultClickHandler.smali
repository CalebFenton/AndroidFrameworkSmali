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
.field private mDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Landroid/webkit/Plugin;


# direct methods
.method private constructor <init>(Landroid/webkit/Plugin;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/Plugin;

    #@0
    .prologue
    .line 194
    iput-object p1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/Plugin;Landroid/webkit/Plugin$DefaultClickHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/Plugin;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/Plugin$DefaultClickHandler;-><init>(Landroid/webkit/Plugin;)V

    #@3
    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 202
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #@6
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@9
    .line 203
    iget-object v1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    #@b
    invoke-static {v1}, Landroid/webkit/Plugin;->-get1(Landroid/webkit/Plugin;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 202
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@12
    move-result-object v0

    #@13
    .line 204
    iget-object v1, p0, Landroid/webkit/Plugin$DefaultClickHandler;->this$0:Landroid/webkit/Plugin;

    #@15
    invoke-static {v1}, Landroid/webkit/Plugin;->-get0(Landroid/webkit/Plugin;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 202
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@1c
    move-result-object v0

    #@1d
    .line 205
    const v1, 0x104000a

    #@20
    .line 202
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@23
    move-result-object v0

    #@24
    .line 206
    const/4 v1, 0x0

    #@25
    .line 202
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    #@2f
    .line 198
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    #@2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    #@5
    .line 218
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/webkit/Plugin$DefaultClickHandler;->mDialog:Landroid/app/AlertDialog;

    #@8
    .line 216
    return-void
.end method
