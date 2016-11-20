.class final synthetic Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$packageName:Ljava/lang/String;

.field private synthetic val$packageUserId:I

.field private synthetic val$this:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    #@5
    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_LambdaImpl0;->val$packageName:Ljava/lang/String;

    #@7
    iput p3, p0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_LambdaImpl0;->val$packageUserId:I

    #@9
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    #@2
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_LambdaImpl0;->val$packageName:Ljava/lang/String;

    #@4
    iget v2, p0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_LambdaImpl0;->val$packageUserId:I

    #@6
    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    #@8
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService_lambda$9(Ljava/lang/String;ILcom/android/server/pm/ShortcutUser;)V

    #@b
    return-void
.end method
