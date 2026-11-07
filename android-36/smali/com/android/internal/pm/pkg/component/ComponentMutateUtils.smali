.class public Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;
.super Ljava/lang/Object;
.source "ComponentMutateUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addStateFrom(Lcom/android/internal/pm/pkg/component/ParsedProcess;Lcom/android/internal/pm/pkg/component/ParsedProcess;)V
    .registers 3
    .param p0, "oldProcess"    # Lcom/android/internal/pm/pkg/component/ParsedProcess;
    .param p1, "newProcess"    # Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 96
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->addStateFrom(Lcom/android/internal/pm/pkg/component/ParsedProcess;)V

    .line 97
    return-void
.end method

.method public static blacklist setAuthority(Lcom/android/internal/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V
    .registers 3
    .param p0, "provider"    # Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .param p1, "authority"    # Ljava/lang/String;

    .line 72
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setAuthority(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    .line 73
    return-void
.end method

.method public static blacklist setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V
    .registers 3
    .param p0, "component"    # Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .param p1, "directBootAware"    # Z

    .line 64
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 65
    return-void
.end method

.method public static blacklist setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V
    .registers 3
    .param p0, "component"    # Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .param p1, "enabled"    # Z

    .line 54
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setEnabled(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 55
    return-void
.end method

.method public static blacklist setExactFlags(Lcom/android/internal/pm/pkg/component/ParsedComponent;I)V
    .registers 3
    .param p0, "component"    # Lcom/android/internal/pm/pkg/component/ParsedComponent;
    .param p1, "exactFlags"    # I

    .line 50
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 51
    return-void
.end method

.method public static blacklist setExported(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V
    .registers 3
    .param p0, "component"    # Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .param p1, "exported"    # Z

    .line 68
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 69
    return-void
.end method

.method public static blacklist setMaxAspectRatio(Lcom/android/internal/pm/pkg/component/ParsedActivity;IF)V
    .registers 4
    .param p0, "activity"    # Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .param p1, "resizeMode"    # I
    .param p2, "maxAspectRatio"    # F

    .line 32
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMaxAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 33
    return-void
.end method

.method public static blacklist setMinAspectRatio(Lcom/android/internal/pm/pkg/component/ParsedActivity;IF)V
    .registers 4
    .param p0, "activity"    # Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .param p1, "resizeMode"    # I
    .param p2, "minAspectRatio"    # F

    .line 37
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMinAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 38
    return-void
.end method

.method public static blacklist setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V
    .registers 3
    .param p0, "component"    # Lcom/android/internal/pm/pkg/component/ParsedComponent;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 59
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setPackageName(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist setParsedPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermission;Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)V
    .registers 3
    .param p0, "permission"    # Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .param p1, "permissionGroup"    # Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 86
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setParsedPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    .line 87
    return-void
.end method

.method public static blacklist setPriority(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;I)V
    .registers 3
    .param p0, "parsedPermissionGroup"    # Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    .param p1, "priority"    # I

    .line 91
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setPriority(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    .line 92
    return-void
.end method

.method public static blacklist setProtectionLevel(Lcom/android/internal/pm/pkg/component/ParsedPermission;I)V
    .registers 3
    .param p0, "permission"    # Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .param p1, "protectionLevel"    # I

    .line 81
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    .line 82
    return-void
.end method

.method public static blacklist setResizeMode(Lcom/android/internal/pm/pkg/component/ParsedActivity;I)V
    .registers 3
    .param p0, "activity"    # Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .param p1, "resizeMode"    # I

    .line 46
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setResizeMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 47
    return-void
.end method

.method public static blacklist setSupportsSizeChanges(Lcom/android/internal/pm/pkg/component/ParsedActivity;Z)V
    .registers 3
    .param p0, "activity"    # Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .param p1, "supportsSizeChanges"    # Z

    .line 42
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setSupportsSizeChanges(Z)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 43
    return-void
.end method

.method public static blacklist setSyncable(Lcom/android/internal/pm/pkg/component/ParsedProvider;Z)V
    .registers 3
    .param p0, "provider"    # Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .param p1, "syncable"    # Z

    .line 76
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setSyncable(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    .line 77
    return-void
.end method
