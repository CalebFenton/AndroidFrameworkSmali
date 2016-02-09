.class Landroid/preference/PreferenceActivity$2;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/PreferenceActivity;

    #@0
    .prologue
    .line 654
    iput-object p1, p0, Landroid/preference/PreferenceActivity$2;->this$0:Landroid/preference/PreferenceActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 656
    iget-object v0, p0, Landroid/preference/PreferenceActivity$2;->this$0:Landroid/preference/PreferenceActivity;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setResult(I)V

    #@6
    .line 657
    iget-object v0, p0, Landroid/preference/PreferenceActivity$2;->this$0:Landroid/preference/PreferenceActivity;

    #@8
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->finish()V

    #@b
    .line 655
    return-void
.end method
