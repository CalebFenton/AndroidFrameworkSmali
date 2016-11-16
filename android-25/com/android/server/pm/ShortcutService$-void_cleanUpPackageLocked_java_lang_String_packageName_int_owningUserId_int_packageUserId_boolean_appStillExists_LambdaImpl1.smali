.class final synthetic Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl1;
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
    name = "-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl1"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    #@2
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService_lambda$14(Lcom/android/server/pm/ShortcutPackage;)V

    #@5
    return-void
.end method
