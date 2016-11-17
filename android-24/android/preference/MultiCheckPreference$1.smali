.class Landroid/preference/MultiCheckPreference$1;
.super Ljava/lang/Object;
.source "MultiCheckPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MultiCheckPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/MultiCheckPreference;


# direct methods
.method constructor <init>(Landroid/preference/MultiCheckPreference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/MultiCheckPreference;

    #@0
    .prologue
    .line 252
    iput-object p1, p0, Landroid/preference/MultiCheckPreference$1;->this$0:Landroid/preference/MultiCheckPreference;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/preference/MultiCheckPreference$1;->this$0:Landroid/preference/MultiCheckPreference;

    #@2
    invoke-static {v0}, Landroid/preference/MultiCheckPreference;->-get0(Landroid/preference/MultiCheckPreference;)[Z

    #@5
    move-result-object v0

    #@6
    aput-boolean p3, v0, p2

    #@8
    .line 254
    return-void
.end method
