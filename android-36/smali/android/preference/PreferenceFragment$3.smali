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
.field final synthetic blacklist this$0:Landroid/preference/PreferenceFragment;


# direct methods
.method constructor blacklist <init>(Landroid/preference/PreferenceFragment;)V
    .registers 2
    .param p1, "this$0"    # Landroid/preference/PreferenceFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 447
    iput-object p1, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 451
    iget-object v0, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    invoke-static {v0}, Landroid/preference/PreferenceFragment;->-$$Nest$fgetmList(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 452
    .local v0, "selectedItem":Ljava/lang/Object;
    instance-of v1, v0, Landroid/preference/Preference;

    if-eqz v1, :cond_20

    .line 453
    iget-object v1, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    invoke-static {v1}, Landroid/preference/PreferenceFragment;->-$$Nest$fgetmList(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 454
    .local v1, "selectedView":Landroid/view/View;
    move-object v2, v0

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {v2, v1, p2, p3}, Landroid/preference/Preference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 457
    .end local v1    # "selectedView":Landroid/view/View;
    :cond_20
    const/4 v1, 0x0

    return v1
.end method
