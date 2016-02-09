.class Landroid/preference/PreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/PreferenceFragment;

    #@0
    .prologue
    .line 136
    iput-object p1, p0, Landroid/preference/PreferenceFragment$2;->this$0:Landroid/preference/PreferenceFragment;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Landroid/preference/PreferenceFragment$2;->this$0:Landroid/preference/PreferenceFragment;

    #@2
    invoke-static {v0}, Landroid/preference/PreferenceFragment;->-get0(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/preference/PreferenceFragment$2;->this$0:Landroid/preference/PreferenceFragment;

    #@8
    invoke-static {v1}, Landroid/preference/PreferenceFragment;->-get0(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    #@f
    .line 137
    return-void
.end method
