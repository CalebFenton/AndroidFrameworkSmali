.class Landroid/app/ForegroundServiceTypePolicy$RegularPermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegularPermission"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1173
    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    .line 1174
    return-void
.end method


# virtual methods
.method public blacklist checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "allowWhileInUse"    # Z

    .line 1181
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "callerUid":I
    .end local p3    # "callerPid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "allowWhileInUse":Z
    .local v1, "context":Landroid/content/Context;
    .local v3, "callerUid":I
    .local v4, "callerPid":I
    .local v5, "packageName":Ljava/lang/String;
    .local v6, "allowWhileInUse":Z
    invoke-virtual/range {v0 .. v7}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;ZI)I

    move-result p1

    .line 1184
    .local p1, "permissionResult":I
    if-eqz p1, :cond_53

    sget-object p2, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    iget-object p3, v0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    .line 1185
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto :goto_53

    .line 1191
    :cond_1a
    const-class p2, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/virtual/VirtualDeviceManager;

    .line 1192
    .local p2, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    if-nez p2, :cond_25

    .line 1193
    return p1

    .line 1196
    :cond_25
    invoke-virtual {p2}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    move-result-object p3

    .line 1197
    .local p3, "virtualDevices":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/VirtualDevice;>;"
    const/4 p4, 0x0

    .local p4, "i":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    .local p5, "size":I
    :goto_2e
    if-ge p4, p5, :cond_52

    .line 1198
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/companion/virtual/VirtualDevice;

    .line 1199
    .local v8, "virtualDevice":Landroid/companion/virtual/VirtualDevice;
    nop

    .line 1200
    invoke-virtual {v8}, Landroid/companion/virtual/VirtualDevice;->getDeviceId()I

    move-result v2

    iget-object v7, v0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    .line 1199
    invoke-static {v1, v2, v7}, Landroid/permission/PermissionManager;->resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I

    move-result v7

    .line 1202
    .local v7, "resolvedDeviceId":I
    if-nez v7, :cond_45

    .line 1203
    goto :goto_4e

    .line 1205
    :cond_45
    iget-object v2, v0, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->mName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Landroid/app/ForegroundServiceTypePolicy$RegularPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;ZI)I

    move-result p1

    .line 1207
    if-nez p1, :cond_4e

    .line 1208
    goto :goto_52

    .line 1197
    .end local v7    # "resolvedDeviceId":I
    .end local v8    # "virtualDevice":Landroid/companion/virtual/VirtualDevice;
    :cond_4e
    :goto_4e
    add-int/lit8 p4, p4, 0x1

    move-object v0, p0

    goto :goto_2e

    .line 1212
    .end local p4    # "i":I
    .end local p5    # "size":I
    :cond_52
    :goto_52
    return p1

    .line 1186
    .end local p2    # "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    .end local p3    # "virtualDevices":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/VirtualDevice;>;"
    :cond_53
    :goto_53
    return p1
.end method

.method blacklist checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;ZI)I
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "allowWhileInUse"    # Z
    .param p7, "deviceId"    # I

    .line 1219
    new-instance v0, Landroid/content/AttributionSource;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p5, v1, p7}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1221
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    nop

    .line 1222
    invoke-static {p1, p2, v0}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v1

    .line 1223
    .local v1, "result":I
    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne v1, v2, :cond_10

    .line 1225
    return v3

    .line 1227
    :cond_10
    invoke-static {p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    .line 1228
    .local v2, "opCode":I
    const/4 v4, 0x0

    if-ne v2, v3, :cond_1d

    .line 1230
    if-nez v1, :cond_1b

    .line 1231
    move v3, v4

    goto :goto_1c

    :cond_1b
    nop

    .line 1230
    :goto_1c
    return v3

    .line 1233
    :cond_1d
    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 1234
    .local v5, "appOpsManager":Landroid/app/AppOpsManager;
    invoke-virtual {v5, v2, v0}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result v6

    .line 1235
    .local v6, "mode":I
    packed-switch v6, :pswitch_data_4a

    .line 1257
    :pswitch_2c
    return v3

    .line 1246
    :pswitch_2d
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->-$$Nest$smisFgsTypeFgPermissionEnforcementEnabled()Z

    move-result v7

    if-eqz v7, :cond_37

    if-eqz p6, :cond_36

    goto :goto_37

    .line 1247
    :cond_36
    goto :goto_38

    :cond_37
    :goto_37
    move v3, v4

    .line 1246
    :goto_38
    return v3

    .line 1241
    :pswitch_39
    if-nez v1, :cond_3d

    .line 1242
    move v3, v4

    goto :goto_3e

    :cond_3d
    nop

    .line 1241
    :goto_3e
    return v3

    .line 1254
    :pswitch_3f
    if-eqz p6, :cond_46

    const/4 v7, 0x1

    if-ne v1, v7, :cond_46

    .line 1255
    move v3, v4

    goto :goto_47

    :cond_46
    nop

    .line 1254
    :goto_47
    return v3

    .line 1238
    :pswitch_48
    return v4

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_48
        :pswitch_3f
        :pswitch_2c
        :pswitch_39
        :pswitch_2d
    .end packed-switch
.end method
