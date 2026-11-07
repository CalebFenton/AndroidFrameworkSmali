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
.field final synthetic blacklist this$0:Landroid/preference/MultiCheckPreference;


# direct methods
.method constructor blacklist <init>(Landroid/preference/MultiCheckPreference;)V
    .registers 2
    .param p1, "this$0"    # Landroid/preference/MultiCheckPreference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 259
    iput-object p1, p0, Landroid/preference/MultiCheckPreference$1;->this$0:Landroid/preference/MultiCheckPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;IZ)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .line 262
    iget-object v0, p0, Landroid/preference/MultiCheckPreference$1;->this$0:Landroid/preference/MultiCheckPreference;

    invoke-static {v0}, Landroid/preference/MultiCheckPreference;->-$$Nest$fgetmSetValues(Landroid/preference/MultiCheckPreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 263
    return-void
.end method
