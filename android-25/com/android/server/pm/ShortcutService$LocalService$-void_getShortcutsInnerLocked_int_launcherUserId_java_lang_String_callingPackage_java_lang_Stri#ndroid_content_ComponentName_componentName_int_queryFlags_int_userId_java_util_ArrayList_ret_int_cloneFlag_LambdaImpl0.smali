.class final synthetic Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService$LocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$changedSince:J

.field private synthetic val$componentName:Landroid/content/ComponentName;

.field private synthetic val$ids:Landroid/util/ArraySet;

.field private synthetic val$queryFlags:I


# direct methods
.method public synthetic constructor <init>(JLandroid/util/ArraySet;Landroid/content/ComponentName;I)V
    .locals 1

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;->val$changedSince:J

    #@5
    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;->val$ids:Landroid/util/ArraySet;

    #@7
    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;->val$componentName:Landroid/content/ComponentName;

    #@9
    iput p5, p0, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;->val$queryFlags:I

    #@b
    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;->val$changedSince:J

    #@2
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;->val$ids:Landroid/util/ArraySet;

    #@4
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;->val$componentName:Landroid/content/ComponentName;

    #@6
    iget v4, p0, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;->val$queryFlags:I

    #@8
    move-object v5, p1

    #@9
    check-cast v5, Landroid/content/pm/ShortcutInfo;

    #@b
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutService$LocalService;->-com_android_server_pm_ShortcutService$LocalService_lambda$2(JLandroid/util/ArraySet;Landroid/content/ComponentName;ILandroid/content/pm/ShortcutInfo;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method
