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

    .line 133
    iput-object p1, p0, Landroid/preference/PreferenceFragment$2;->this$0:Landroid/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 135
    iget-object v0, p0, Landroid/preference/PreferenceFragment$2;->this$0:Landroid/preference/PreferenceFragment;

    invoke-static {v0}, Landroid/preference/PreferenceFragment;->-$$Nest$fgetmList(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/PreferenceFragment$2;->this$0:Landroid/preference/PreferenceFragment;

    invoke-static {v1}, Landroid/preference/PreferenceFragment;->-$$Nest$fgetmList(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 136
    return-void
.end method
