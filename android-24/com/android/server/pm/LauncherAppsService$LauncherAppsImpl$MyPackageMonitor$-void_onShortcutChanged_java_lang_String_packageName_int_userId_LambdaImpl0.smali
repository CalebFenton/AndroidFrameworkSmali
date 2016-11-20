.class final synthetic Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0;
.super Ljava/lang/Object;
.source "LauncherAppsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$packageName:Ljava/lang/String;

.field private synthetic val$this:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

.field private synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0;->val$this:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@5
    iput-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0;->val$packageName:Ljava/lang/String;

    #@7
    iput p3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0;->val$userId:I

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0;->val$this:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@2
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0;->val$packageName:Ljava/lang/String;

    #@4
    iget v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0;->val$userId:I

    #@6
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->-com_android_server_pm_LauncherAppsService$LauncherAppsImpl$MyPackageMonitor_lambda$1(Ljava/lang/String;I)V

    #@9
    return-void
.end method
