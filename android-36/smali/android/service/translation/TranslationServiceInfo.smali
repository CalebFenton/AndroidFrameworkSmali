.class public final Landroid/service/translation/TranslationServiceInfo;
.super Ljava/lang/Object;
.source "TranslationServiceInfo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TranslationServiceInfo"

.field private static final blacklist XML_TAG_SERVICE:Ljava/lang/String; = "translation-service"


# instance fields
.field private final blacklist mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final blacklist mSettingsActivity:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .param p3, "isTemporaryService"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 95
    invoke-static {p2, p3, p4}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfoOrThrow(Landroid/content/ComponentName;ZI)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/service/translation/TranslationServiceInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 96
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "si"    # Landroid/content/pm/ServiceInfo;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_TRANSLATION_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "TranslationServiceInfo"

    if-eqz v0, :cond_75

    .line 108
    iput-object p2, p0, Landroid/service/translation/TranslationServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.translation_service"

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 114
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v0, :cond_21

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/translation/TranslationServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 116
    return-void

    .line 119
    :cond_21
    const/4 v1, 0x0

    .line 122
    .local v1, "settingsActivity":Ljava/lang/String;
    :try_start_22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 125
    .local v3, "resources":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 126
    .local v4, "type":I
    :goto_2d
    const/4 v5, 0x1

    if-eq v4, v5, :cond_39

    const/4 v5, 0x2

    if-eq v4, v5, :cond_39

    .line 127
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v4, v5

    goto :goto_2d

    .line 130
    :cond_39
    const-string/jumbo v5, "translation-service"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 131
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_4a} :catch_6c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_4a} :catch_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_4a} :catch_6c

    .line 132
    .local v5, "allAttributes":Landroid/util/AttributeSet;
    const/4 v6, 0x0

    .line 134
    .local v6, "afsAttributes":Landroid/content/res/TypedArray;
    :try_start_4b
    sget-object v7, Lcom/android/internal/R$styleable;->TranslationService:[I

    invoke-virtual {v3, v5, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v6, v7

    .line 136
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_5e

    move-object v1, v7

    .line 139
    if-eqz v6, :cond_5d

    .line 140
    :try_start_5a
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    .end local v5    # "allAttributes":Landroid/util/AttributeSet;
    .end local v6    # "afsAttributes":Landroid/content/res/TypedArray;
    :cond_5d
    goto :goto_6b

    .line 139
    .restart local v5    # "allAttributes":Landroid/util/AttributeSet;
    .restart local v6    # "afsAttributes":Landroid/content/res/TypedArray;
    :catchall_5e
    move-exception v7

    if-eqz v6, :cond_64

    .line 140
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    :cond_64
    nop

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v1    # "settingsActivity":Ljava/lang/String;
    .end local p0    # "this":Landroid/service/translation/TranslationServiceInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "si":Landroid/content/pm/ServiceInfo;
    throw v7

    .line 144
    .end local v5    # "allAttributes":Landroid/util/AttributeSet;
    .end local v6    # "afsAttributes":Landroid/content/res/TypedArray;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v1    # "settingsActivity":Ljava/lang/String;
    .restart local p0    # "this":Landroid/service/translation/TranslationServiceInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "si":Landroid/content/pm/ServiceInfo;
    :cond_66
    const-string v5, "Meta-data does not start with translation-service tag"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_6b} :catch_6c
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6b} :catch_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_6b} :catch_6c

    .line 148
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "type":I
    :goto_6b
    goto :goto_72

    .line 146
    :catch_6c
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Error parsing auto fill service meta-data"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_72
    iput-object v1, p0, Landroid/service/translation/TranslationServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 151
    return-void

    .line 101
    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v1    # "settingsActivity":Ljava/lang/String;
    :cond_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranslationServiceInfo from \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' does not require permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Service does not require permission android.permission.BIND_TRANSLATION_SERVICE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getServiceInfoOrThrow(Landroid/content/ComponentName;ZI)Landroid/content/pm/ServiceInfo;
    .registers 8
    .param p0, "comp"    # Landroid/content/ComponentName;
    .param p1, "isTemp"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 64
    const/16 v0, 0x80

    .line 65
    .local v0, "flags":I
    if-nez p1, :cond_7

    .line 66
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 69
    :cond_7
    const/4 v1, 0x0

    .line 71
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    int-to-long v3, v0

    invoke-interface {v2, p0, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    move-object v1, v2

    .line 73
    goto :goto_14

    .line 72
    :catch_13
    move-exception v2

    .line 74
    :goto_14
    if-nez v1, :cond_44

    .line 75
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get serviceInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 76
    if-eqz p1, :cond_28

    const-string v4, " (temp)"

    goto :goto_2a

    :cond_28
    const-string v4, "(default system)"

    :goto_2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 77
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_44
    return-object v1
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    const-string v0, "Component: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    const-string v0, "Settings: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Landroid/service/translation/TranslationServiceInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public blacklist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/service/translation/TranslationServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public blacklist getSettingsActivity()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/service/translation/TranslationServiceInfo;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/translation/TranslationServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ", settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/translation/TranslationServiceInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
