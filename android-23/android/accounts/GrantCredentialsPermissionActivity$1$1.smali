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
.field final synthetic this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

.field final synthetic val$authTokenLabel:Ljava/lang/String;

.field final synthetic val$authTokenTypeView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/accounts/GrantCredentialsPermissionActivity$1;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Landroid/accounts/GrantCredentialsPermissionActivity$1;
    .param p2, "val$authTokenTypeView"    # Landroid/widget/TextView;
    .param p3, "val$authTokenLabel"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    iput-object p1, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    #@2
    iput-object p2, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->val$authTokenTypeView:Landroid/widget/TextView;

    #@4
    iput-object p3, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->val$authTokenLabel:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    #@2
    iget-object v0, v0, Landroid/accounts/GrantCredentialsPermissionActivity$1;->this$0:Landroid/accounts/GrantCredentialsPermissionActivity;

    #@4
    invoke-virtual {v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->isFinishing()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 100
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->val$authTokenTypeView:Landroid/widget/TextView;

    #@c
    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->val$authTokenLabel:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@11
    .line 101
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->val$authTokenTypeView:Landroid/widget/TextView;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@17
    .line 98
    :cond_0
    return-void
.end method
