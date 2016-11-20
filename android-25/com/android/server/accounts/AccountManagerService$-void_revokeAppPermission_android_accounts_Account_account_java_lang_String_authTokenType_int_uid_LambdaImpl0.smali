.class final synthetic Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$account:Landroid/accounts/Account;

.field private synthetic val$listener:Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

.field private synthetic val$uid:I


# direct methods
.method public synthetic constructor <init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;->val$listener:Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    #@5
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;->val$account:Landroid/accounts/Account;

    #@7
    iput p3, p0, Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;->val$uid:I

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;->val$listener:Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;->val$account:Landroid/accounts/Account;

    #@4
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;->val$uid:I

    #@6
    invoke-static {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->-com_android_server_accounts_AccountManagerService_lambda$4(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    #@9
    return-void
.end method
