.class final synthetic Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl2;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl2"
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
.method public test(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    check-cast p1, Landroid/content/pm/PackageParser$Package;

    #@2
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->-com_android_server_pm_PackageManagerServiceUtils_lambda$4(Landroid/content/pm/PackageParser$Package;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
