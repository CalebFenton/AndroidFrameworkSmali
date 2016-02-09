.class Landroid/preference/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 409
    iput-object p1, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 413
    iget-object v2, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    #@2
    invoke-static {v2}, Landroid/preference/PreferenceFragment;->-get0(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .line 414
    .local v0, "selectedItem":Ljava/lang/Object;
    instance-of v2, v0, Landroid/preference/Preference;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 415
    iget-object v2, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    #@10
    invoke-static {v2}, Landroid/preference/PreferenceFragment;->-get0(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    #@17
    move-result-object v1

    #@18
    .line 416
    .local v1, "selectedView":Landroid/view/View;
    check-cast v0, Landroid/preference/Preference;

    #@1a
    .end local v0    # "selectedItem":Ljava/lang/Object;
    invoke-virtual {v0, v1, p2, p3}, Landroid/preference/Preference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    #@1d
    move-result v2

    #@1e
    return v2

    #@1f
    .line 419
    .end local v1    # "selectedView":Landroid/view/View;
    .restart local v0    # "selectedItem":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    #@20
    return v2
.end method
