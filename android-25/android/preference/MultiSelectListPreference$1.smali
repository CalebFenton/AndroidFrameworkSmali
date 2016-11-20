.class Landroid/preference/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/MultiSelectListPreference;


# direct methods
.method constructor <init>(Landroid/preference/MultiSelectListPreference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/MultiSelectListPreference;

    #@0
    .prologue
    .line 181
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    #@0
    .prologue
    .line 183
    if-eqz p3, :cond_0

    #@2
    .line 184
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    #@4
    invoke-static {v0}, Landroid/preference/MultiSelectListPreference;->-get2(Landroid/preference/MultiSelectListPreference;)Z

    #@7
    move-result v1

    #@8
    iget-object v2, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    #@a
    invoke-static {v2}, Landroid/preference/MultiSelectListPreference;->-get1(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    #@10
    invoke-static {v3}, Landroid/preference/MultiSelectListPreference;->-get0(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    #@13
    move-result-object v3

    #@14
    aget-object v3, v3, p2

    #@16
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    or-int/2addr v1, v2

    #@1f
    invoke-static {v0, v1}, Landroid/preference/MultiSelectListPreference;->-set0(Landroid/preference/MultiSelectListPreference;Z)Z

    #@22
    .line 182
    :goto_0
    return-void

    #@23
    .line 186
    :cond_0
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    #@25
    invoke-static {v0}, Landroid/preference/MultiSelectListPreference;->-get2(Landroid/preference/MultiSelectListPreference;)Z

    #@28
    move-result v1

    #@29
    iget-object v2, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    #@2b
    invoke-static {v2}, Landroid/preference/MultiSelectListPreference;->-get1(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;

    #@2e
    move-result-object v2

    #@2f
    iget-object v3, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    #@31
    invoke-static {v3}, Landroid/preference/MultiSelectListPreference;->-get0(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    #@34
    move-result-object v3

    #@35
    aget-object v3, v3, p2

    #@37
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@3e
    move-result v2

    #@3f
    or-int/2addr v1, v2

    #@40
    invoke-static {v0, v1}, Landroid/preference/MultiSelectListPreference;->-set0(Landroid/preference/MultiSelectListPreference;Z)Z

    #@43
    goto :goto_0
.end method
