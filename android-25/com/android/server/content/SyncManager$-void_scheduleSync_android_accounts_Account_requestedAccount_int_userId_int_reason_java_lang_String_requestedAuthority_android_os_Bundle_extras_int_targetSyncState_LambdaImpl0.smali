.class final synthetic Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$account:Landroid/accounts/AccountAndUser;

.field private synthetic val$authority:Ljava/lang/String;

.field private synthetic val$finalExtras:Landroid/os/Bundle;

.field private synthetic val$reason:I

.field private synthetic val$targetSyncState:I

.field private synthetic val$this:Lcom/android/server/content/SyncManager;

.field private synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$this:Lcom/android/server/content/SyncManager;

    #@5
    iput-object p2, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$account:Landroid/accounts/AccountAndUser;

    #@7
    iput p3, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$userId:I

    #@9
    iput p4, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$reason:I

    #@b
    iput-object p5, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$authority:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$finalExtras:Landroid/os/Bundle;

    #@f
    iput p7, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$targetSyncState:I

    #@11
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "arg0"    # Landroid/os/Bundle;

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$this:Lcom/android/server/content/SyncManager;

    #@2
    iget-object v1, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$account:Landroid/accounts/AccountAndUser;

    #@4
    iget v2, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$userId:I

    #@6
    iget v3, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$reason:I

    #@8
    iget-object v4, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$authority:Ljava/lang/String;

    #@a
    iget-object v5, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$finalExtras:Landroid/os/Bundle;

    #@c
    iget v6, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_LambdaImpl0;->val$targetSyncState:I

    #@e
    move-object v7, p1

    #@f
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/SyncManager;->-com_android_server_content_SyncManager_lambda$3(Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;ILandroid/os/Bundle;)V

    #@12
    return-void
.end method
