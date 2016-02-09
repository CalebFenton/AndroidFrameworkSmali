.class public final Landroid/support/v4/content/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/PermissionChecker$PermissionResult;
    }
.end annotation


# static fields
.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_DENIED_APP_OP:I = -0x2

.field public static final PERMISSION_GRANTED:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 160
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v1

    #@4
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@7
    move-result v2

    #@8
    if-ne v1, v2, :cond_0

    #@a
    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 162
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@11
    move-result v1

    #@12
    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v2

    #@16
    .line 162
    invoke-static {p0, p1, v1, v2, v0}, Landroid/support/v4/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    #@19
    move-result v1

    #@1a
    return v1

    #@1b
    .line 161
    :cond_0
    const/4 v0, 0x0

    #@1c
    .local v0, "packageName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static checkCallingPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 143
    const/4 v0, -0x1

    #@b
    return v0

    #@c
    .line 145
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@f
    move-result v0

    #@10
    .line 146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v1

    #@14
    .line 145
    invoke-static {p0, p1, v0, v1, p2}, Landroid/support/v4/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@5
    move-result v2

    #@6
    if-ne v2, v4, :cond_0

    #@8
    .line 90
    return v4

    #@9
    .line 93
    :cond_0
    invoke-static {p1}, Landroid/support/v4/app/AppOpsManagerCompat;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 94
    .local v0, "op":Ljava/lang/String;
    if-nez v0, :cond_1

    #@f
    .line 95
    return v3

    #@10
    .line 98
    :cond_1
    if-nez p4, :cond_4

    #@12
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 100
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_2

    #@1c
    array-length v2, v1

    #@1d
    if-gtz v2, :cond_3

    #@1f
    .line 101
    :cond_2
    return v4

    #@20
    .line 103
    :cond_3
    aget-object p4, v1, v3

    #@22
    .line 106
    .end local v1    # "packageNames":[Ljava/lang/String;
    :cond_4
    invoke-static {p0, v0, p4}, Landroid/support/v4/app/AppOpsManagerCompat;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_5

    #@28
    .line 108
    const/4 v2, -0x2

    #@29
    return v2

    #@2a
    .line 111
    :cond_5
    return v3
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 125
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3
    move-result v0

    #@4
    .line 126
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 125
    invoke-static {p0, p1, v0, v1, v2}, Landroid/support/v4/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    #@f
    move-result v0

    #@10
    return v0
.end method
