.class Lcom/android/server/devicepolicy/Owners;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;,
        Lcom/android/server/devicepolicy/Owners$FileReadWriter;,
        Lcom/android/server/devicepolicy/Owners$OwnerInfo;,
        Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;
    }
.end annotation


# static fields
.field private static final ATTR_COMPONENT_NAME:Ljava/lang/String; = "component"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_REMOTE_BUGREPORT_HASH:Ljava/lang/String; = "remoteBugreportHash"

.field private static final ATTR_REMOTE_BUGREPORT_URI:Ljava/lang/String; = "remoteBugreportUri"

.field private static final ATTR_USERID:Ljava/lang/String; = "userId"

.field private static final ATTR_USER_RESTRICTIONS_MIGRATED:Ljava/lang/String; = "userRestrictionsMigrated"

.field private static final DEBUG:Z = false

.field private static final DEVICE_OWNER_XML:Ljava/lang/String; = "device_owner_2.xml"

.field private static final DEVICE_OWNER_XML_LEGACY:Ljava/lang/String; = "device_owner.xml"

.field private static final PROFILE_OWNER_XML:Ljava/lang/String; = "profile_owner.xml"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final TAG_DEVICE_INITIALIZER:Ljava/lang/String; = "device-initializer"

.field private static final TAG_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field private static final TAG_DEVICE_OWNER_CONTEXT:Ljava/lang/String; = "device-owner-context"

.field private static final TAG_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"

.field private static final TAG_SYSTEM_UPDATE_POLICY:Ljava/lang/String; = "system-update-policy"


# instance fields
.field private mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

.field private mDeviceOwnerUserId:I

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mProfileOwners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/devicepolicy/Owners$OwnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/devicepolicy/Owners;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/devicepolicy/Owners;Lcom/android/server/devicepolicy/Owners$OwnerInfo;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/devicepolicy/Owners;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;)V
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userManagerInternal"    # Landroid/os/UserManagerInternal;
    .param p3, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    const/16 v0, -0x2710

    #@5
    iput v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    #@7
    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    #@9
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@e
    .line 105
    new-instance v0, Ljava/lang/Object;

    #@10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@15
    .line 110
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    #@17
    .line 111
    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@19
    .line 112
    iput-object p3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    #@1b
    .line 109
    return-void
.end method

.method private pushToPackageManagerLocked()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 162
    new-instance v1, Landroid/util/SparseArray;

    #@3
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@6
    .line 163
    .local v1, "po":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v2

    #@c
    add-int/lit8 v0, v2, -0x1

    #@e
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@10
    .line 164
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/lang/Integer;

    #@18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v4

    #@1c
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@1e
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@24
    iget-object v2, v2, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    #@26
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@29
    .line 163
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 166
    :cond_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    #@2e
    .line 167
    iget v5, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    #@30
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@32
    if-eqz v2, :cond_1

    #@34
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@36
    iget-object v2, v2, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    #@38
    .line 166
    :goto_1
    invoke-virtual {v4, v5, v2, v1}, Landroid/content/pm/PackageManagerInternal;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    #@3b
    .line 161
    return-void

    #@3c
    :cond_1
    move-object v2, v3

    #@3d
    .line 167
    goto :goto_1
.end method

.method private readLegacyOwnerFileLocked(Ljava/io/File;)Z
    .locals 21
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 389
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 391
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 394
    :cond_0
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@f
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@12
    move-result-object v14

    #@13
    .line 395
    .local v14, "input":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@16
    move-result-object v15

    #@17
    .line 396
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@19
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-interface {v15, v14, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@20
    .line 398
    :cond_1
    :goto_0
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@23
    move-result v19

    #@24
    .local v19, "type":I
    const/4 v1, 0x1

    #@25
    move/from16 v0, v19

    #@27
    if-eq v0, v1, :cond_8

    #@29
    .line 399
    const/4 v1, 0x2

    #@2a
    move/from16 v0, v19

    #@2c
    if-ne v0, v1, :cond_1

    #@2e
    .line 403
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@31
    move-result-object v18

    #@32
    .line 404
    .local v18, "tag":Ljava/lang/String;
    const-string/jumbo v1, "device-owner"

    #@35
    move-object/from16 v0, v18

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_2

    #@3d
    .line 405
    const-string/jumbo v1, "name"

    #@40
    const/4 v7, 0x0

    #@41
    invoke-interface {v15, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 406
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v1, "package"

    #@48
    const/4 v7, 0x0

    #@49
    invoke-interface {v15, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 407
    .local v3, "packageName":Ljava/lang/String;
    new-instance v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@4f
    .line 408
    const/4 v4, 0x0

    #@50
    const/4 v5, 0x0

    #@51
    .line 409
    const/4 v6, 0x0

    #@52
    .line 407
    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    #@55
    move-object/from16 v0, p0

    #@57
    iput-object v1, v0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@59
    .line 410
    const/4 v1, 0x0

    #@5a
    move-object/from16 v0, p0

    #@5c
    iput v1, v0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    goto :goto_0

    #@5f
    .line 447
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v14    # "input":Ljava/io/InputStream;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    :catch_0
    move-exception v13

    #@60
    .line 448
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DevicePolicyManagerService"

    #@63
    const-string/jumbo v7, "Error parsing device-owner file"

    #@66
    invoke-static {v1, v7, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@69
    .line 450
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x1

    #@6a
    return v1

    #@6b
    .line 411
    .restart local v14    # "input":Ljava/io/InputStream;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    :cond_2
    :try_start_1
    const-string/jumbo v1, "device-initializer"

    #@6e
    move-object/from16 v0, v18

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v1

    #@74
    if-nez v1, :cond_1

    #@76
    .line 413
    const-string/jumbo v1, "profile-owner"

    #@79
    move-object/from16 v0, v18

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v1

    #@7f
    if-eqz v1, :cond_6

    #@81
    .line 414
    const-string/jumbo v1, "package"

    #@84
    const/4 v7, 0x0

    #@85
    invoke-interface {v15, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@88
    move-result-object v17

    #@89
    .line 415
    .local v17, "profileOwnerPackageName":Ljava/lang/String;
    const-string/jumbo v1, "name"

    #@8c
    const/4 v7, 0x0

    #@8d
    invoke-interface {v15, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    .line 417
    .local v5, "profileOwnerName":Ljava/lang/String;
    const-string/jumbo v1, "component"

    #@94
    const/4 v7, 0x0

    #@95
    invoke-interface {v15, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@98
    move-result-object v16

    #@99
    .line 418
    .local v16, "profileOwnerComponentStr":Ljava/lang/String;
    const-string/jumbo v1, "userId"

    #@9c
    const/4 v7, 0x0

    #@9d
    invoke-interface {v15, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a0
    move-result-object v1

    #@a1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a4
    move-result v20

    #@a5
    .line 419
    .local v20, "userId":I
    const/4 v4, 0x0

    #@a6
    .line 420
    .local v4, "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v16, :cond_3

    #@a8
    .line 421
    invoke-static/range {v16 .. v16}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@ab
    move-result-object v6

    #@ac
    .line 423
    .local v6, "admin":Landroid/content/ComponentName;
    if-eqz v6, :cond_5

    #@ae
    .line 424
    new-instance v4, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@b0
    .line 425
    .end local v4    # "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    const/4 v7, 0x0

    #@b1
    const/4 v8, 0x0

    #@b2
    const/4 v9, 0x0

    #@b3
    .line 424
    invoke-direct/range {v4 .. v9}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    #@b6
    .line 433
    .end local v6    # "admin":Landroid/content/ComponentName;
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    #@b8
    .line 434
    new-instance v4, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@ba
    .line 435
    const/4 v10, 0x0

    #@bb
    .line 436
    const/4 v11, 0x0

    #@bc
    const/4 v12, 0x0

    #@bd
    move-object v7, v4

    #@be
    move-object v8, v5

    #@bf
    move-object/from16 v9, v17

    #@c1
    .line 434
    invoke-direct/range {v7 .. v12}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    #@c4
    .line 438
    :cond_4
    move-object/from16 v0, p0

    #@c6
    iget-object v1, v0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@c8
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cb
    move-result-object v7

    #@cc
    invoke-virtual {v1, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cf
    goto/16 :goto_0

    #@d1
    .line 429
    .restart local v4    # "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .restart local v6    # "admin":Landroid/content/ComponentName;
    :cond_5
    const-string/jumbo v1, "DevicePolicyManagerService"

    #@d4
    new-instance v7, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v8, "Error parsing device-owner file. Bad component name "

    #@dc
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v7

    #@e0
    move-object/from16 v0, v16

    #@e2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v7

    #@e6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v7

    #@ea
    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ed
    goto :goto_2

    #@ee
    .line 439
    .end local v4    # "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .end local v5    # "profileOwnerName":Ljava/lang/String;
    .end local v6    # "admin":Landroid/content/ComponentName;
    .end local v16    # "profileOwnerComponentStr":Ljava/lang/String;
    .end local v17    # "profileOwnerPackageName":Ljava/lang/String;
    .end local v20    # "userId":I
    :cond_6
    const-string/jumbo v1, "system-update-policy"

    #@f1
    move-object/from16 v0, v18

    #@f3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f6
    move-result v1

    #@f7
    if-eqz v1, :cond_7

    #@f9
    .line 440
    invoke-static {v15}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    #@fc
    move-result-object v1

    #@fd
    move-object/from16 v0, p0

    #@ff
    iput-object v1, v0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    #@101
    goto/16 :goto_0

    #@103
    .line 442
    :cond_7
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@105
    .line 443
    new-instance v7, Ljava/lang/StringBuilder;

    #@107
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10a
    const-string/jumbo v8, "Unexpected tag in device owner file: "

    #@10d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v7

    #@111
    move-object/from16 v0, v18

    #@113
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v7

    #@117
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v7

    #@11b
    .line 442
    invoke-direct {v1, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@11e
    throw v1

    #@11f
    .line 446
    .end local v18    # "tag":Ljava/lang/String;
    :cond_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@122
    goto/16 :goto_1
.end method


# virtual methods
.method clearDeviceOwner()V
    .locals 3

    #@0
    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 246
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@6
    .line 247
    const/16 v0, -0x2710

    #@8
    iput v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    #@a
    .line 249
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {v0, v2}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    #@10
    .line 250
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 244
    return-void

    #@15
    .line 245
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method clearSystemUpdatePolicy()V
    .locals 2

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 314
    const/4 v1, 0x0

    #@4
    :try_start_0
    iput-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 312
    return-void

    #@8
    .line 313
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 777
    const/4 v2, 0x0

    #@1
    .line 778
    .local v2, "needBlank":Z
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    const-string/jumbo v4, "Device Owner: "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 780
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    const-string/jumbo v5, "  "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v3, v4, p2}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@35
    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    const-string/jumbo v4, "  User ID: "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    iget v4, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 782
    const/4 v2, 0x1

    #@53
    .line 784
    :cond_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    #@55
    if-eqz v3, :cond_2

    #@57
    .line 785
    if-eqz v2, :cond_1

    #@59
    .line 786
    const/4 v2, 0x0

    #@5a
    .line 787
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@5d
    .line 789
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    const-string/jumbo v4, "System Update Policy: "

    #@69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    #@6f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7a
    .line 790
    const/4 v2, 0x1

    #@7b
    .line 792
    :cond_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@7d
    if-eqz v3, :cond_4

    #@7f
    .line 793
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@81
    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@84
    move-result-object v3

    #@85
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@88
    move-result-object v1

    #@89
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8c
    move-result v3

    #@8d
    if-eqz v3, :cond_4

    #@8f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@92
    move-result-object v0

    #@93
    check-cast v0, Ljava/util/Map$Entry;

    #@95
    .line 794
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/Owners$OwnerInfo;>;"
    if-eqz v2, :cond_3

    #@97
    .line 795
    const/4 v2, 0x0

    #@98
    .line 796
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@9b
    .line 798
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v3

    #@a4
    const-string/jumbo v4, "Profile Owner (User "

    #@a7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@ae
    move-result-object v4

    #@af
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v3

    #@b3
    const-string/jumbo v4, "): "

    #@b6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v3

    #@be
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c1
    .line 799
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@c4
    move-result-object v3

    #@c5
    check-cast v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@c7
    new-instance v4, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v4

    #@d0
    const-string/jumbo v5, "  "

    #@d3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v4

    #@d7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v4

    #@db
    invoke-virtual {v3, v4, p2}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@de
    .line 800
    const/4 v2, 0x1

    #@df
    goto :goto_0

    #@e0
    .line 776
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/Owners$OwnerInfo;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method getDeviceOwnerComponent()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 201
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 202
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@a
    iget-object v0, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    return-object v0

    #@e
    .line 201
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method getDeviceOwnerFileWithTestOverride()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 810
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "device_owner_2.xml"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method getDeviceOwnerName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 195
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@a
    iget-object v0, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    return-object v0

    #@e
    .line 195
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method getDeviceOwnerPackageName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 172
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@a
    iget-object v0, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    return-object v0

    #@e
    .line 172
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method getDeviceOwnerRemoteBugreportHash()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 213
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 214
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@a
    iget-object v0, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    return-object v0

    #@e
    .line 213
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method getDeviceOwnerRemoteBugreportUri()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 207
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@a
    iget-object v0, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    return-object v0

    #@e
    .line 207
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method getDeviceOwnerUserId()I
    .locals 2

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 179
    :try_start_0
    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 178
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 185
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v0, :cond_0

    #@8
    monitor-exit v1

    #@9
    .line 187
    return-object v2

    #@a
    .line 189
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    #@c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v0

    #@10
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@12
    iget-object v2, v2, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    #@14
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result-object v0

    #@18
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    .line 185
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method getDeviceOwnerUserRestrictionsNeedsMigration()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 340
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 341
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@a
    iget-boolean v2, v2, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    monitor-exit v1

    #@f
    return v0

    #@10
    :cond_1
    const/4 v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 340
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method getLegacyConfigFileWithTestOverride()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 806
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "device_owner.xml"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method getProfileOwnerComponent(I)Landroid/content/ComponentName;
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 274
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 275
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@10
    .line 276
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v0, :cond_0

    #@12
    iget-object v1, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v2

    #@15
    return-object v1

    #@16
    .line 274
    .end local v0    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method getProfileOwnerFileWithTestOverride(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 814
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "profile_owner.xml"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method getProfileOwnerKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 295
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method getProfileOwnerName(I)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 281
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 282
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@10
    .line 283
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v0, :cond_0

    #@12
    iget-object v1, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v2

    #@15
    return-object v1

    #@16
    .line 281
    .end local v0    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method getProfileOwnerPackage(I)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 288
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 289
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@10
    .line 290
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v0, :cond_0

    #@12
    iget-object v1, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v2

    #@15
    return-object v1

    #@16
    .line 288
    .end local v0    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method getProfileOwnerUserRestrictionsNeedsMigration(I)Z
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 349
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@10
    .line 351
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v0, :cond_0

    #@12
    iget-boolean v3, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    if-eqz v3, :cond_1

    #@16
    :cond_0
    :goto_0
    monitor-exit v2

    #@17
    return v1

    #@18
    :cond_1
    const/4 v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 349
    .end local v0    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 301
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method hasDeviceOwner()Z
    .locals 2

    #@0
    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    monitor-exit v1

    #@9
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0

    #@c
    .line 319
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method hasProfileOwner(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 332
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    monitor-exit v1

    #@b
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0

    #@e
    .line 331
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method isDeviceOwnerUserId(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 325
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 326
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@6
    if-eqz v2, :cond_0

    #@8
    iget v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-ne v2, p1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 325
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method load()V
    .locals 12

    #@0
    .prologue
    .line 119
    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getLegacyConfigFileWithTestOverride()Ljava/io/File;

    #@6
    move-result-object v0

    #@7
    .line 123
    .local v0, "legacy":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    #@9
    const/4 v8, 0x1

    #@a
    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@d
    move-result-object v5

    #@e
    .line 125
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/Owners;->readLegacyOwnerFileLocked(Ljava/io/File;)Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_2

    #@14
    .line 131
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    #@17
    .line 132
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerKeys()Ljava/util/Set;

    #@1a
    move-result-object v6

    #@1b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v4

    #@1f
    .local v4, "userId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_0

    #@25
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v6

    #@29
    check-cast v6, Ljava/lang/Integer;

    #@2b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@2e
    move-result v3

    #@2f
    .line 133
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 119
    .end local v0    # "legacy":Ljava/io/File;
    .end local v3    # "userId":I
    .end local v4    # "userId$iterator":Ljava/util/Iterator;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    #@34
    monitor-exit v7

    #@35
    throw v6

    #@36
    .line 138
    .restart local v0    # "legacy":Ljava/io/File;
    .restart local v4    # "userId$iterator":Ljava/util/Iterator;
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@39
    move-result v6

    #@3a
    if-nez v6, :cond_1

    #@3c
    .line 139
    const-string/jumbo v6, "DevicePolicyManagerService"

    #@3f
    const-string/jumbo v8, "Failed to remove the legacy setting file"

    #@42
    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 149
    .end local v4    # "userId$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@47
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    #@4a
    move-result v8

    #@4b
    invoke-virtual {v6, v8}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    #@4e
    .line 150
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@51
    move-result-object v2

    #@52
    .local v2, "ui$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@55
    move-result v6

    #@56
    if-eqz v6, :cond_3

    #@58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b
    move-result-object v1

    #@5c
    check-cast v1, Landroid/content/pm/UserInfo;

    #@5e
    .line 151
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@60
    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    #@62
    iget v9, v1, Landroid/content/pm/UserInfo;->id:I

    #@64
    invoke-virtual {p0, v9}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    #@67
    move-result v9

    #@68
    invoke-virtual {v6, v8, v9}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    #@6b
    goto :goto_1

    #@6c
    .line 143
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "ui$iterator":Ljava/util/Iterator;
    :cond_2
    new-instance v6, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    #@6e
    invoke-direct {v6, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    #@71
    invoke-virtual {v6}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->readFromFileLocked()V

    #@74
    .line 145
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@77
    move-result-object v2

    #@78
    .restart local v2    # "ui$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@7b
    move-result v6

    #@7c
    if-eqz v6, :cond_1

    #@7e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@81
    move-result-object v1

    #@82
    check-cast v1, Landroid/content/pm/UserInfo;

    #@84
    .line 146
    .restart local v1    # "ui":Landroid/content/pm/UserInfo;
    new-instance v6, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;

    #@86
    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    #@88
    invoke-direct {v6, p0, v8}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;I)V

    #@8b
    invoke-virtual {v6}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->readFromFileLocked()V

    #@8e
    goto :goto_2

    #@8f
    .line 153
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    #@92
    move-result v6

    #@93
    if-eqz v6, :cond_4

    #@95
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    #@98
    move-result v6

    #@99
    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    #@9c
    move-result v6

    #@9d
    if-eqz v6, :cond_4

    #@9f
    .line 154
    const-string/jumbo v6, "DevicePolicyManagerService"

    #@a2
    const-string/jumbo v8, "User %d has both DO and PO, which is not supported"

    #@a5
    const/4 v9, 0x1

    #@a6
    new-array v9, v9, [Ljava/lang/Object;

    #@a8
    .line 155
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    #@ab
    move-result v10

    #@ac
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@af
    move-result-object v10

    #@b0
    const/4 v11, 0x0

    #@b1
    aput-object v10, v9, v11

    #@b3
    .line 154
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b6
    move-result-object v8

    #@b7
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ba
    .line 157
    :cond_4
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@bd
    monitor-exit v7

    #@be
    .line 118
    return-void
.end method

.method removeProfileOwner(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 268
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, p1, v2}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    #@12
    .line 269
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 265
    return-void

    #@17
    .line 266
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 219
    if-gez p3, :cond_0

    #@2
    .line 220
    const-string/jumbo v0, "DevicePolicyManagerService"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Invalid user id for device owner user: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 221
    return-void

    #@1d
    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@1f
    monitor-enter v0

    #@20
    .line 226
    const/4 v1, 0x1

    #@21
    .line 225
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/devicepolicy/Owners;->setDeviceOwnerWithRestrictionsMigrated(Landroid/content/ComponentName;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v0

    #@25
    .line 218
    return-void

    #@26
    .line 223
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v0

    #@28
    throw v1
.end method

.method setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "remoteBugreportUri"    # Ljava/lang/String;
    .param p2, "remoteBugreportHash"    # Ljava/lang/String;

    #@0
    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 370
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@9
    iput-object p1, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    #@b
    .line 371
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@d
    iput-object p2, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    #@f
    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 367
    return-void

    #@14
    .line 368
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method setDeviceOwnerUserRestrictionsMigrated()V
    .locals 3

    #@0
    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 359
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@9
    const/4 v2, 0x1

    #@a
    iput-boolean v2, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    #@c
    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 356
    return-void

    #@11
    .line 357
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method setDeviceOwnerWithRestrictionsMigrated(Landroid/content/ComponentName;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "userRestrictionsMigrated"    # Z

    #@0
    .prologue
    .line 234
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 235
    :try_start_0
    new-instance v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@5
    .line 236
    const/4 v4, 0x0

    #@6
    const/4 v5, 0x0

    #@7
    move-object v1, p2

    #@8
    move-object v2, p1

    #@9
    move v3, p4

    #@a
    .line 235
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    #@d
    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@f
    .line 237
    iput p3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    #@11
    .line 239
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@13
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    #@17
    .line 240
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v6

    #@1b
    .line 233
    return-void

    #@1c
    .line 234
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v6

    #@1e
    throw v0
.end method

.method setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 255
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 257
    :try_start_0
    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v8

    #@9
    new-instance v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@b
    .line 258
    const/4 v3, 0x1

    #@c
    const/4 v4, 0x0

    #@d
    .line 259
    const/4 v5, 0x0

    #@e
    move-object v1, p2

    #@f
    move-object v2, p1

    #@10
    .line 257
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    #@13
    invoke-virtual {v7, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 260
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    #@18
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, p3, v1}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    #@1c
    .line 261
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v6

    #@20
    .line 254
    return-void

    #@21
    .line 255
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v6

    #@23
    throw v0
.end method

.method setProfileOwnerUserRestrictionsMigrated(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 379
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@f
    .line 381
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v0, :cond_0

    #@11
    .line 382
    const/4 v1, 0x1

    #@12
    iput-boolean v1, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    #@14
    .line 384
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 378
    return-void

    #@19
    .line 379
    .end local v0    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method setSystemUpdatePolicy(Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 2
    .param p1, "systemUpdatePolicy"    # Landroid/app/admin/SystemUpdatePolicy;

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 308
    :try_start_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 306
    return-void

    #@7
    .line 307
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method writeDeviceOwner()V
    .locals 2

    #@0
    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 458
    :try_start_0
    new-instance v0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    #@5
    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    #@8
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->writeToFileLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 453
    return-void

    #@d
    .line 454
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method writeProfileOwner(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 467
    :try_start_0
    new-instance v0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;

    #@5
    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;I)V

    #@8
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->writeToFileLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 462
    return-void

    #@d
    .line 463
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method
