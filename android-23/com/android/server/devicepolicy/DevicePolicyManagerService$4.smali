.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;
.super Landroid/os/AsyncTask;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendPrivateKeyAliasResponse(Ljava/lang/String;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/security/IKeyChainAliasCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "val$keyChainAliasResponse"    # Landroid/security/IKeyChainAliasCallback;
    .param p3, "val$alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3283
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;

    #@4
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$alias:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "unused"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 3285
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "unused":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "unused"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 3287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;

    #@2
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$alias:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Landroid/security/IKeyChainAliasCallback;->alias(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3293
    :goto_0
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 3288
    :catch_0
    move-exception v0

    #@a
    .line 3291
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DevicePolicyManagerService"

    #@d
    const-string/jumbo v2, "error while responding to callback"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method
