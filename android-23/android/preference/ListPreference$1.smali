.class Landroid/preference/ListPreference$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Landroid/preference/ListPreference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/ListPreference;

    #@0
    .prologue
    .line 255
    iput-object p1, p0, Landroid/preference/ListPreference$1;->this$0:Landroid/preference/ListPreference;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Landroid/preference/ListPreference$1;->this$0:Landroid/preference/ListPreference;

    #@2
    invoke-static {v0, p2}, Landroid/preference/ListPreference;->-set0(Landroid/preference/ListPreference;I)I

    #@5
    .line 263
    iget-object v0, p0, Landroid/preference/ListPreference$1;->this$0:Landroid/preference/ListPreference;

    #@7
    const/4 v1, -0x1

    #@8
    invoke-virtual {v0, p1, v1}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    #@b
    .line 264
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    #@e
    .line 256
    return-void
.end method
