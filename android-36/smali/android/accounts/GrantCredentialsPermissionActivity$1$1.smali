.class Landroid/accounts/GrantCredentialsPermissionActivity$1$1;
.super Ljava/lang/Object;
.source "GrantCredentialsPermissionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/GrantCredentialsPermissionActivity$1;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

.field final synthetic blacklist val$authTokenLabel:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/GrantCredentialsPermissionActivity$1;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Landroid/accounts/GrantCredentialsPermissionActivity$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    iput-object p2, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->val$authTokenLabel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    iget-object v0, v0, Landroid/accounts/GrantCredentialsPermissionActivity$1;->this$0:Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-virtual {v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 113
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    iget-object v0, v0, Landroid/accounts/GrantCredentialsPermissionActivity$1;->val$authTokenTypeView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->val$authTokenLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    iget-object v0, v0, Landroid/accounts/GrantCredentialsPermissionActivity$1;->val$authTokenTypeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :cond_1b
    return-void
.end method
