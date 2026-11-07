.class Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
.super Ljava/lang/Object;
.source "QuickAccessWalletServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;,
        Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "QAWalletSInfo"

.field private static final blacklist TAG_WALLET_SERVICE:Ljava/lang/String; = "quickaccesswallet-service"


# instance fields
.field private final blacklist mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final blacklist mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

.field private final blacklist mTileServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

.field private final blacklist mUserId:I


# direct methods
.method private constructor blacklist <init>(Landroid/content/pm/ServiceInfo;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;I)V
    .registers 5
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p2, "metadata"    # Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;
    .param p3, "tileServiceMetadata"    # Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;
    .param p4, "userId"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 76
    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    .line 77
    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mTileServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

    .line 78
    iput p4, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mUserId:I

    .line 79
    return-void
.end method

.method private static blacklist getDefaultPaymentApp(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "nfc_payment_default_component"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "comp":Ljava/lang/String;
    if-nez v1, :cond_f

    const/4 v2, 0x0

    goto :goto_13

    :cond_f
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    :goto_13
    return-object v2
.end method

.method private static blacklist getDefaultWalletApp(Landroid/content/Context;)Landroid/util/Pair;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 127
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 129
    .local v1, "token":J
    :try_start_c
    const-class v3, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/role/RoleManager;

    .line 131
    .local v3, "roleManager":Landroid/app/role/RoleManager;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->walletRoleCrossUserEnabled()Z

    move-result v4
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_67

    const/4 v5, 0x0

    const-string v6, "android.app.role.WALLET"

    if-eqz v4, :cond_43

    .line 132
    :try_start_1d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/Flags;->crossUserRoleEnabled()Z

    move-result v4

    if-eqz v4, :cond_43

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 133
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_43

    .line 136
    invoke-virtual {v3, v6}, Landroid/app/role/RoleManager;->getActiveUserForRole(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v4

    move-object v0, v4

    .line 137
    if-nez v0, :cond_43

    .line 138
    new-instance v4, Landroid/util/Pair;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_1d .. :try_end_3f} :catchall_67

    .line 146
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    return-object v4

    .line 141
    :cond_43
    :try_start_43
    invoke-virtual {v3, v6, v0}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 143
    .local v4, "roleHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Landroid/util/Pair;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_50

    :goto_4f
    goto :goto_58

    :cond_50
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_4f

    .line 144
    :goto_58
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_67

    .line 146
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    return-object v6

    .line 146
    .end local v3    # "roleManager":Landroid/app/role/RoleManager;
    .end local v4    # "roleHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_67
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    throw v3
.end method

.method private static blacklist getWalletServiceInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.quickaccesswallet.QuickAccessWalletService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    nop

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0xd0080

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 176
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_27

    :cond_1e
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_27
    return-object v2
.end method

.method private static blacklist isWalletRoleAvailable(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 153
    .local v0, "token":J
    :try_start_4
    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/role/RoleManager;

    .line 154
    .local v2, "roleManager":Landroid/app/role/RoleManager;
    const-string v3, "android.app.role.WALLET"

    invoke-virtual {v2, v3}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 156
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    return v3

    .line 156
    .end local v2    # "roleManager":Landroid/app/role/RoleManager;
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    throw v2
.end method

.method static blacklist parseServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 231
    move-object/from16 v1, p1

    const-string v2, "QAWalletSInfo"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 232
    .local v3, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 233
    const-string v0, "android.quickaccesswallet"

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 235
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_16

    .line 236
    invoke-static {}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$smempty()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    move-result-object v0

    return-object v0

    .line 240
    :cond_16
    :try_start_16
    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v5, v0

    .line 241
    .local v5, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x0

    move v6, v0

    .line 242
    .local v6, "type":I
    :goto_1f
    const/4 v0, 0x2

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2b

    if-eq v6, v0, :cond_2b

    .line 243
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v6, v0

    goto :goto_1f

    .line 246
    :cond_2b
    const-string/jumbo v8, "quickaccesswallet-service"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 247
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_3c} :catch_73
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3c} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_3c} :catch_73

    .line 248
    .local v8, "allAttributes":Landroid/util/AttributeSet;
    const/4 v9, 0x0

    .line 250
    .local v9, "afsAttributes":Landroid/content/res/TypedArray;
    :try_start_3d
    sget-object v10, Lcom/android/internal/R$styleable;->QuickAccessWalletService:[I

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object v9, v10

    .line 252
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v12, v10

    .line 254
    .local v12, "targetActivity":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 256
    .local v13, "settingsActivity":Ljava/lang/String;
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 258
    .local v14, "shortcutShortLabel":Ljava/lang/CharSequence;
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 260
    .local v15, "shortcutLongLabel":Ljava/lang/CharSequence;
    new-instance v11, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo-IA;)V
    :try_end_5e
    .catchall {:try_start_3d .. :try_end_5e} :catchall_64

    .line 263
    if-eqz v9, :cond_63

    .line 264
    :try_start_60
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    :cond_63
    return-object v11

    .line 263
    .end local v12    # "targetActivity":Ljava/lang/String;
    .end local v13    # "settingsActivity":Ljava/lang/String;
    .end local v14    # "shortcutShortLabel":Ljava/lang/CharSequence;
    .end local v15    # "shortcutLongLabel":Ljava/lang/CharSequence;
    :catchall_64
    move-exception v0

    if-eqz v9, :cond_6a

    .line 264
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    :cond_6a
    nop

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    throw v0

    .line 268
    .end local v8    # "allAttributes":Landroid/util/AttributeSet;
    .end local v9    # "afsAttributes":Landroid/content/res/TypedArray;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_6c
    const-string v0, "Meta-data does not start with quickaccesswallet-service tag"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60 .. :try_end_71} :catch_73
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_71} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_71} :catch_73

    .line 274
    nop

    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v6    # "type":I
    goto :goto_79

    .line 270
    :catch_73
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Error parsing quickaccesswallet service meta-data"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_79
    invoke-static {}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$smempty()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseTileServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 191
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 192
    const-string v2, "android.quickaccesswallet.tile"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 193
    .local v1, "tileIconDrawableId":I
    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 195
    :try_start_f
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 196
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_19} :catch_1a

    return-object v2

    .line 197
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_1a
    move-exception v3

    .line 198
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "QAWalletSInfo"

    const-string v5, "Error parsing quickaccesswallet tile service meta-data"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_22
    return-object v2
.end method

.method static blacklist tryCreate(Landroid/content/Context;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "defaultAppPackageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 87
    .local v1, "defaultAppUser":I
    invoke-static {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->isWalletRoleAvailable(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    .line 88
    invoke-static {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getDefaultWalletApp(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    .line 89
    .local v2, "roleAndUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    .line 90
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 91
    .end local v2    # "roleAndUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_29

    .line 92
    :cond_1e
    invoke-static {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getDefaultPaymentApp(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 93
    .local v2, "defaultPaymentApp":Landroid/content/ComponentName;
    if-nez v2, :cond_25

    .line 94
    return-object v3

    .line 96
    :cond_25
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 99
    .end local v2    # "defaultPaymentApp":Landroid/content/ComponentName;
    :goto_29
    if-eqz v0, :cond_66

    if-gez v1, :cond_2e

    goto :goto_66

    .line 103
    :cond_2e
    invoke-static {p0, v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getWalletServiceInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 105
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v2, :cond_35

    .line 106
    return-object v3

    .line 109
    :cond_35
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BIND_QUICK_ACCESS_WALLET_SERVICE"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 110
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    filled-new-array {v4, v6, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s.%s does not require permission %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "QAWalletSInfo"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v3

    .line 116
    :cond_53
    invoke-static {p0, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->parseServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    move-result-object v4

    .line 117
    .local v4, "metadata":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;
    new-instance v5, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

    .line 118
    invoke-static {p0, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->parseTileServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;-><init>(Landroid/graphics/drawable/Drawable;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo-IA;)V

    .line 119
    .local v5, "tileServiceMetadata":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;
    new-instance v3, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    invoke-direct {v3, v2, v4, v5, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;I)V

    return-object v3

    .line 100
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v4    # "metadata":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;
    .end local v5    # "tileServiceMetadata":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;
    :cond_66
    :goto_66
    return-object v3
.end method


# virtual methods
.method blacklist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 283
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method blacklist getServiceLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 341
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getSettingsActivity()Ljava/lang/String;
    .registers 2

    .line 306
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmSettingsActivity(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getShortcutLongLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 333
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutLongLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 334
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutLongLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 336
    :cond_13
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getShortcutShortLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 325
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutShortLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 326
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutShortLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 328
    :cond_13
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTileIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 320
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mTileServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;->-$$Nest$fgetmTileIcon(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method blacklist getUserId()I
    .registers 2

    .line 287
    iget v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mUserId:I

    return v0
.end method

.method blacklist getWalletActivity()Ljava/lang/String;
    .registers 2

    .line 296
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmTargetActivity(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getWalletLogo(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 311
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 312
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_d

    .line 313
    return-object v0

    .line 315
    :cond_d
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method
