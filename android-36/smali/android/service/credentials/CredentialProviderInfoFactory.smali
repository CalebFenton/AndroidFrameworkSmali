.class public final Landroid/service/credentials/CredentialProviderInfoFactory;
.super Ljava/lang/Object;
.source "CredentialProviderInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "name"

.field private static final blacklist TAG:Ljava/lang/String; = "CredentialManager"

.field private static final blacklist TAG_CAPABILITIES:Ljava/lang/String; = "capabilities"

.field private static final blacklist TAG_CAPABILITY:Ljava/lang/String; = "capability"

.field private static final blacklist TAG_CREDENTIAL_PROVIDER:Ljava/lang/String; = "credential-provider"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/content/ComponentName;IZZ)Landroid/credentials/CredentialProviderInfo;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "isSystemProvider"    # Z
    .param p4, "isPrimary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 92
    nop

    .line 94
    invoke-static {p1, p2}, Landroid/service/credentials/CredentialProviderInfoFactory;->getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 92
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p3

    move v5, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p3    # "isSystemProvider":Z
    .end local p4    # "isPrimary":Z
    .local v0, "context":Landroid/content/Context;
    .local v2, "isSystemProvider":Z
    .local v5, "isPrimary":Z
    invoke-static/range {v0 .. v5}, Landroid/service/credentials/CredentialProviderInfoFactory;->create(Landroid/content/Context;Landroid/content/pm/ServiceInfo;ZZZZ)Landroid/credentials/CredentialProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/content/pm/ServiceInfo;ZZZZ)Landroid/credentials/CredentialProviderInfo;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p2, "isSystemProvider"    # Z
    .param p3, "disableSystemAppVerificationForTests"    # Z
    .param p4, "isEnabled"    # Z
    .param p5, "isPrimary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 121
    invoke-static {p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->verifyProviderPermission(Landroid/content/pm/ServiceInfo;)V

    .line 122
    if-eqz p2, :cond_3b

    .line 123
    invoke-static {p0, p1, p3}, Landroid/service/credentials/CredentialProviderInfoFactory;->isValidSystemProvider(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3b

    .line 125
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider is not a valid system provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CredentialManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_3b
    :goto_3b
    invoke-static {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->populateMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p2}, Landroid/credentials/CredentialProviderInfo$Builder;->setSystemProvider(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p4}, Landroid/credentials/CredentialProviderInfo$Builder;->setEnabled(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p5}, Landroid/credentials/CredentialProviderInfo$Builder;->setPrimary(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo$Builder;->build()Landroid/credentials/CredentialProviderInfo;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method public static blacklist createForTests(Landroid/content/pm/ServiceInfo;Ljava/lang/CharSequence;ZZLjava/util/List;)Landroid/credentials/CredentialProviderInfo;
    .registers 6
    .param p0, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p1, "overrideLabel"    # Ljava/lang/CharSequence;
    .param p2, "isSystemProvider"    # Z
    .param p3, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ServiceInfo;",
            "Ljava/lang/CharSequence;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/credentials/CredentialProviderInfo;"
        }
    .end annotation

    .line 149
    .local p4, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/credentials/CredentialProviderInfo$Builder;

    invoke-direct {v0, p0}, Landroid/credentials/CredentialProviderInfo$Builder;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 150
    invoke-virtual {v0, p3}, Landroid/credentials/CredentialProviderInfo$Builder;->setEnabled(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p1}, Landroid/credentials/CredentialProviderInfo$Builder;->setOverrideLabel(Ljava/lang/CharSequence;)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p2}, Landroid/credentials/CredentialProviderInfo$Builder;->setSystemProvider(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p4}, Landroid/credentials/CredentialProviderInfo$Builder;->addCapabilities(Ljava/util/List;)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo$Builder;->build()Landroid/credentials/CredentialProviderInfo;

    move-result-object v0

    .line 149
    return-object v0
.end method

.method private static blacklist extractXmlMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)Landroid/credentials/CredentialProviderInfo$Builder;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "resources"    # Landroid/content/res/Resources;

    .line 246
    new-instance v0, Landroid/credentials/CredentialProviderInfo$Builder;

    invoke-direct {v0, p1}, Landroid/credentials/CredentialProviderInfo$Builder;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 248
    .local v0, "builder":Landroid/credentials/CredentialProviderInfo$Builder;
    nop

    .line 249
    const-string v1, "android.credentials.provider"

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 250
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v1, :cond_f

    .line 251
    return-object v0

    .line 255
    :cond_f
    const/4 v2, 0x0

    .line 256
    .local v2, "type":I
    :goto_10
    const/4 v3, 0x1

    const-string v4, "CredentialManager"

    if-eq v2, v3, :cond_1e

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1e

    .line 257
    :try_start_18
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v2, v3

    goto :goto_10

    .line 261
    :cond_1e
    const-string v5, "credential-provider"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 262
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2e} :catch_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_2e} :catch_6e

    .line 263
    .local v5, "allAttributes":Landroid/util/AttributeSet;
    const/4 v6, 0x0

    .line 265
    .local v6, "afsAttributes":Landroid/content/res/TypedArray;
    :try_start_2f
    sget-object v7, Lcom/android/internal/R$styleable;->CredentialProvider:[I

    .line 266
    invoke-virtual {p3, v5, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v6, v7

    .line 269
    nop

    .line 270
    invoke-static {v6, v3}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAfsAttributeSafe(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-virtual {v0, v3}, Landroid/credentials/CredentialProviderInfo$Builder;->setSettingsSubtitle(Ljava/lang/CharSequence;)Landroid/credentials/CredentialProviderInfo$Builder;

    .line 273
    nop

    .line 274
    const/4 v3, 0x0

    invoke-static {v6, v3}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAfsAttributeSafe(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v0, v3}, Landroid/credentials/CredentialProviderInfo$Builder;->setSettingsActivity(Ljava/lang/CharSequence;)Landroid/credentials/CredentialProviderInfo$Builder;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_47} :catch_4f
    .catchall {:try_start_2f .. :try_end_47} :catchall_4d

    .line 280
    if-eqz v6, :cond_58

    .line 281
    :goto_49
    :try_start_49
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_4c} :catch_6e

    goto :goto_58

    .line 280
    :catchall_4d
    move-exception v3

    goto :goto_61

    .line 277
    :catch_4f
    move-exception v3

    .line 278
    .local v3, "e":Ljava/lang/Exception;
    :try_start_50
    const-string v7, "Failed to get XML attr for metadata"

    invoke-static {v4, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_4d

    .line 280
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v6, :cond_58

    .line 281
    goto :goto_49

    .line 285
    :cond_58
    :goto_58
    :try_start_58
    invoke-static {v1, p3}, Landroid/service/credentials/CredentialProviderInfoFactory;->parseXmlProviderOuterCapabilities(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/credentials/CredentialProviderInfo$Builder;->addCapabilities(Ljava/util/List;)Landroid/credentials/CredentialProviderInfo$Builder;

    .line 286
    nop

    .end local v5    # "allAttributes":Landroid/util/AttributeSet;
    .end local v6    # "afsAttributes":Landroid/content/res/TypedArray;
    goto :goto_6d

    .line 280
    .restart local v5    # "allAttributes":Landroid/util/AttributeSet;
    .restart local v6    # "afsAttributes":Landroid/content/res/TypedArray;
    :goto_61
    if-eqz v6, :cond_66

    .line 281
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    :cond_66
    nop

    .end local v0    # "builder":Landroid/credentials/CredentialProviderInfo$Builder;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local p2    # "pm":Landroid/content/pm/PackageManager;
    .end local p3    # "resources":Landroid/content/res/Resources;
    throw v3

    .line 287
    .end local v5    # "allAttributes":Landroid/util/AttributeSet;
    .end local v6    # "afsAttributes":Landroid/content/res/TypedArray;
    .restart local v0    # "builder":Landroid/credentials/CredentialProviderInfo$Builder;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local p2    # "pm":Landroid/content/pm/PackageManager;
    .restart local p3    # "resources":Landroid/content/res/Resources;
    :cond_68
    const-string v3, "Meta-data does not start with credential-provider-service tag"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_6d} :catch_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_6d} :catch_6e

    .line 291
    .end local v2    # "type":I
    :goto_6d
    goto :goto_74

    .line 289
    :catch_6e
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error parsing credential provider service meta-data"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_74
    return-object v0
.end method

.method private static blacklist getAfsAttributeSafe(Landroid/content/res/TypedArray;I)Ljava/lang/String;
    .registers 6
    .param p0, "afsAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "resId"    # I

    .line 298
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 299
    return-object v0

    .line 303
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 304
    :catch_9
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CredentialManager"

    const-string v3, "Failed to get XML attr from afs attributes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private static blacklist getAvailableSystemServiceInfos(Landroid/content/Context;IZ)Ljava/util/List;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "disableSystemAppVerificationForTests"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .line 378
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    nop

    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.credentials.system.CredentialProviderService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    const-wide/16 v4, 0x80

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v4

    .line 385
    invoke-virtual {v2, v3, v4, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v2

    .line 383
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 391
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 392
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz p2, :cond_42

    .line 393
    if-eqz v4, :cond_2c

    .line 394
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 400
    :cond_42
    nop

    .line 401
    :try_start_43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 404
    const-wide/32 v7, 0x100000

    invoke-static {v7, v8}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v7

    .line 402
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 407
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_5e

    if-nez v4, :cond_59

    goto :goto_5e

    .line 410
    :cond_59
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Ljava/lang/SecurityException; {:try_start_43 .. :try_end_5c} :catch_5f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_43 .. :try_end_5c} :catch_5f

    .line 413
    nop

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_78

    .line 408
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5e
    :goto_5e
    goto :goto_2c

    .line 411
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_5f
    move-exception v5

    .line 412
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CredentialManager"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_78
    goto :goto_2c

    .line 415
    :cond_79
    return-object v0
.end method

.method public static blacklist getAvailableSystemServices(Landroid/content/Context;IZLjava/util/Set;)Ljava/util/List;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "disableSystemAppVerificationForTests"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 428
    .local p3, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v1, "CredentialManager"

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 432
    .local v2, "providerInfos":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialProviderInfo;>;"
    invoke-static {p0, p1, p2}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAvailableSystemServiceInfos(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/ServiceInfo;

    .line 435
    .local v5, "si":Landroid/content/pm/ServiceInfo;
    nop

    .line 441
    :try_start_23
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_2b} :catch_46

    .line 436
    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move v7, p2

    .end local p0    # "context":Landroid/content/Context;
    .end local p2    # "disableSystemAppVerificationForTests":Z
    .local v4, "context":Landroid/content/Context;
    .local v7, "disableSystemAppVerificationForTests":Z
    :try_start_2f
    invoke-static/range {v4 .. v9}, Landroid/service/credentials/CredentialProviderInfoFactory;->create(Landroid/content/Context;Landroid/content/pm/ServiceInfo;ZZZZ)Landroid/credentials/CredentialProviderInfo;

    move-result-object p0

    .line 443
    .local p0, "cpi":Landroid/credentials/CredentialProviderInfo;
    invoke-virtual {p0}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 444
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 446
    :cond_3d
    const-string p2, "Non system provider was in system provider list."

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_42} :catch_43

    .line 450
    .end local p0    # "cpi":Landroid/credentials/CredentialProviderInfo;
    :goto_42
    goto :goto_60

    .line 448
    :catch_43
    move-exception v0

    move-object p0, v0

    goto :goto_4a

    .end local v4    # "context":Landroid/content/Context;
    .end local v7    # "disableSystemAppVerificationForTests":Z
    .local p0, "context":Landroid/content/Context;
    .restart local p2    # "disableSystemAppVerificationForTests":Z
    :catch_46
    move-exception v0

    move-object v4, p0

    move v7, p2

    move-object p0, v0

    .line 449
    .end local p2    # "disableSystemAppVerificationForTests":Z
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v7    # "disableSystemAppVerificationForTests":Z
    .local p0, "e":Ljava/lang/SecurityException;
    :goto_4a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create CredentialProviderInfo: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local p0    # "e":Ljava/lang/SecurityException;
    :goto_60
    move-object p0, v4

    move p2, v7

    goto :goto_15

    .line 452
    .end local v4    # "context":Landroid/content/Context;
    .end local v7    # "disableSystemAppVerificationForTests":Z
    .local p0, "context":Landroid/content/Context;
    .restart local p2    # "disableSystemAppVerificationForTests":Z
    :cond_63
    return-object v2
.end method

.method public static blacklist getCredentialProviderServices(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "providerFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 482
    .local p3, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local p4, "primaryServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 487
    const/4 v0, 0x3

    if-eq p2, v0, :cond_d

    .line 488
    invoke-static {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->getDeviceManagerPolicy(Landroid/content/Context;I)Landroid/app/admin/PackagePolicy;

    move-result-object v0

    goto :goto_e

    .line 489
    :cond_d
    const/4 v0, 0x0

    :goto_e
    nop

    .line 492
    .local v0, "pp":Landroid/app/admin/PackagePolicy;
    const/4 v1, 0x0

    .line 493
    .local v1, "disableSystemAppVerificationForTests":Z
    new-instance v2, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3, p2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;-><init>(Landroid/content/Context;Landroid/app/admin/PackagePolicy;ZI)V

    .line 496
    .local v2, "generator":Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;
    nop

    .line 497
    invoke-static {p0, p1, v3, p3, p4}, Landroid/service/credentials/CredentialProviderInfoFactory;->getUserProviders(Landroid/content/Context;IZLjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v4

    .line 496
    invoke-virtual {v2, v4}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addUserProviders(Ljava/util/List;)V

    .line 503
    nop

    .line 504
    invoke-static {p0, p1, v3, p3}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAvailableSystemServices(Landroid/content/Context;IZLjava/util/Set;)Ljava/util/List;

    move-result-object v3

    .line 503
    invoke-virtual {v2, v3}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addSystemProviders(Ljava/util/List;)V

    .line 506
    invoke-virtual {v2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->getProviders()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist getCredentialProviderServicesForTesting(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "providerFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 520
    .local p3, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local p4, "primaryServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 525
    const/4 v0, 0x3

    if-eq p2, v0, :cond_d

    .line 526
    invoke-static {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->getDeviceManagerPolicy(Landroid/content/Context;I)Landroid/app/admin/PackagePolicy;

    move-result-object v0

    goto :goto_e

    .line 527
    :cond_d
    const/4 v0, 0x0

    :goto_e
    nop

    .line 530
    .local v0, "pp":Landroid/app/admin/PackagePolicy;
    const/4 v1, 0x1

    .line 531
    .local v1, "disableSystemAppVerificationForTests":Z
    new-instance v2, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3, p2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;-><init>(Landroid/content/Context;Landroid/app/admin/PackagePolicy;ZI)V

    .line 534
    .local v2, "generator":Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;
    nop

    .line 535
    invoke-static {p0, p1, v3, p3, p4}, Landroid/service/credentials/CredentialProviderInfoFactory;->getUserProviders(Landroid/content/Context;IZLjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v4

    .line 534
    invoke-virtual {v2, v4}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addUserProviders(Ljava/util/List;)V

    .line 541
    nop

    .line 542
    invoke-static {p0, p1, v3, p3}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAvailableSystemServices(Landroid/content/Context;IZLjava/util/Set;)Ljava/util/List;

    move-result-object v3

    .line 541
    invoke-virtual {v2, v3}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addSystemProviders(Ljava/util/List;)V

    .line 544
    invoke-virtual {v2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->getProviders()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist getDeviceManagerPolicy(Landroid/content/Context;I)Landroid/app/admin/PackagePolicy;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 457
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 460
    .local v0, "newContext":Landroid/content/Context;
    :try_start_9
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 461
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getCredentialManagerPolicy()Landroid/app/admin/PackagePolicy;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_15} :catch_16

    .line 462
    .local v2, "pp":Landroid/app/admin/PackagePolicy;
    return-object v2

    .line 463
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "pp":Landroid/app/admin/PackagePolicy;
    :catch_16
    move-exception v1

    .line 465
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get device policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CredentialManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v1    # "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .param p0, "serviceComponent"    # Landroid/content/ComponentName;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 358
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 359
    const-wide/16 v1, 0x80

    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    .line 360
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_d

    .line 361
    return-object v0

    .line 365
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    :cond_d
    goto :goto_16

    .line 363
    :catch_e
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CredentialManager"

    const-string v2, "Unable to get serviceInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getUserProviders(Landroid/content/Context;IZLjava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "disableSystemAppVerificationForTests"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 638
    .local p3, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local p4, "primaryServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 639
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialProviderInfo;>;"
    nop

    .line 640
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.credentials.CredentialProviderService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    const-wide/16 v3, 0x80

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    .line 641
    move/from16 v4, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v2

    .line 645
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 646
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 647
    .local v7, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const-string v12, "CredentialManager"

    if-nez v7, :cond_3b

    .line 648
    const-string v0, "No serviceInfo found for resolveInfo, so skipping provider"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    goto :goto_22

    .line 653
    :cond_3b
    nop

    .line 659
    :try_start_3c
    invoke-virtual {v7}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_40} :catch_66

    move-object/from16 v13, p3

    :try_start_42
    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 660
    invoke-virtual {v7}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4a} :catch_64

    move-object/from16 v14, p4

    :try_start_4c
    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 654
    const/4 v8, 0x0

    move-object v6, p0

    move/from16 v9, p2

    invoke-static/range {v6 .. v11}, Landroid/service/credentials/CredentialProviderInfoFactory;->create(Landroid/content/Context;Landroid/content/pm/ServiceInfo;ZZZZ)Landroid/credentials/CredentialProviderInfo;

    move-result-object v0

    .line 661
    .local v0, "cpi":Landroid/credentials/CredentialProviderInfo;
    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v6

    if-nez v6, :cond_61

    .line 662
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_61} :catch_62

    .line 666
    .end local v0    # "cpi":Landroid/credentials/CredentialProviderInfo;
    :cond_61
    goto :goto_81

    .line 664
    :catch_62
    move-exception v0

    goto :goto_6b

    :catch_64
    move-exception v0

    goto :goto_69

    :catch_66
    move-exception v0

    move-object/from16 v13, p3

    :goto_69
    move-object/from16 v14, p4

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    :goto_6b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting info for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_81
    goto :goto_22

    .line 668
    :cond_82
    move-object/from16 v13, p3

    move-object/from16 v14, p4

    return-object v1
.end method

.method private static blacklist isSystemProviderWithValidPermission(Landroid/content/pm/ServiceInfo;Landroid/content/Context;)Z
    .registers 4
    .param p0, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p1, "context"    # Landroid/content/Context;

    .line 168
    if-nez p1, :cond_b

    .line 169
    const-string v0, "CredentialManager"

    const-string v1, "Context is null in isSystemProviderWithValidPermission"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_b
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v1, "android.permission.PROVIDE_DEFAULT_ENABLED_CREDENTIAL_SERVICE"

    invoke-static {p1, v0, v1}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isValidSystemProvider(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Z)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p2, "disableSystemAppVerificationForTests"    # Z

    .line 182
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    if-eqz p2, :cond_2d

    .line 185
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 186
    .local v0, "metadata":Landroid/os/Bundle;
    if-nez v0, :cond_26

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "metadata is null while reading TEST_SYSTEM_PROVIDER_META_DATA_KEY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CredentialManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v1, 0x0

    return v1

    .line 194
    :cond_26
    const-string v1, "android.credentials.testsystemprovider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 198
    .end local v0    # "metadata":Landroid/os/Bundle;
    :cond_2d
    invoke-static {p1, p0}, Landroid/service/credentials/CredentialProviderInfoFactory;->isSystemProviderWithValidPermission(Landroid/content/pm/ServiceInfo;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static blacklist parseXmlProviderInnerCapabilities(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v0, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 336
    .local v1, "outerDepth":I
    :cond_9
    :goto_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_40

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    .line 337
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_40

    .line 338
    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    .line 339
    goto :goto_9

    .line 342
    :cond_20
    const-string v2, "capability"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 343
    const/4 v2, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3f

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 345
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v2    # "name":Ljava/lang/String;
    :cond_3f
    goto :goto_9

    .line 350
    :cond_40
    return-object v0
.end method

.method private static blacklist parseXmlProviderOuterCapabilities(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v0, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 316
    .local v1, "outerDepth":I
    :cond_9
    :goto_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_34

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    .line 317
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_34

    .line 318
    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    .line 319
    goto :goto_9

    .line 322
    :cond_20
    const-string v2, "capabilities"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 323
    invoke-static {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->parseXmlProviderInnerCapabilities(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    .line 327
    :cond_34
    return-object v0
.end method

.method private static blacklist populateMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/credentials/CredentialProviderInfo$Builder;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 203
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 205
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/credentials/CredentialProviderInfo$Builder;

    invoke-direct {v1, p1}, Landroid/credentials/CredentialProviderInfo$Builder;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 208
    .local v1, "builder":Landroid/credentials/CredentialProviderInfo$Builder;
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 209
    .local v2, "metadata":Landroid/os/Bundle;
    const-string v3, "CredentialManager"

    if-nez v2, :cond_2f

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Metadata is null for provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-object v1

    .line 215
    :cond_2f
    const/4 v4, 0x0

    .line 217
    .local v4, "resources":Landroid/content/res/Resources;
    :try_start_30
    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_36} :catch_38

    move-object v4, v5

    .line 220
    goto :goto_3e

    .line 218
    :catch_38
    move-exception v5

    .line 219
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Failed to get app resources"

    invoke-static {v3, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3e
    if-nez v4, :cond_5b

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resources are null for the serviceInfo being processed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 227
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-object v1

    .line 233
    :cond_5b
    :try_start_5b
    invoke-static {p0, p1, v0, v4}, Landroid/service/credentials/CredentialProviderInfoFactory;->extractXmlMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v3
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5f} :catch_61

    move-object v1, v3

    .line 236
    goto :goto_67

    .line 234
    :catch_61
    move-exception v5

    .line 235
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Failed to get XML metadata"

    invoke-static {v3, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_67
    return-object v1
.end method

.method private static blacklist verifyProviderPermission(Landroid/content/pm/ServiceInfo;)V
    .registers 4
    .param p0, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 158
    const-string v0, "android.permission.BIND_CREDENTIAL_PROVIDER_SERVICE"

    .line 159
    .local v0, "permission":Ljava/lang/String;
    const-string v1, "android.permission.BIND_CREDENTIAL_PROVIDER_SERVICE"

    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 160
    return-void

    .line 162
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Service does not require the expected permission : android.permission.BIND_CREDENTIAL_PROVIDER_SERVICE"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
