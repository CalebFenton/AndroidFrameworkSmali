.class public Landroid/service/contentcapture/ContentCaptureServiceInfo;
.super Ljava/lang/Object;
.source "ContentCaptureServiceInfo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist XML_TAG_SERVICE:Ljava/lang/String; = "content-capture-service"


# instance fields
.field private final blacklist mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final blacklist mSettingsActivity:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const-class v0, Landroid/service/contentcapture/ContentCaptureServiceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->TAG:Ljava/lang/String;

    return-void
.end method

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

    .line 85
    invoke-static {p2, p3, p4}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getServiceInfoOrThrow(Landroid/content/ComponentName;ZI)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/service/contentcapture/ContentCaptureServiceInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 86
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "si"    # Landroid/content/pm/ServiceInfo;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_CONTENT_CAPTURE_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 98
    iput-object p2, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.content_capture"

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 103
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v0, :cond_1f

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 105
    return-void

    .line 108
    :cond_1f
    const/4 v1, 0x0

    .line 111
    .local v1, "settingsActivity":Ljava/lang/String;
    :try_start_20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 114
    .local v2, "resources":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 115
    .local v3, "type":I
    :goto_2b
    const/4 v4, 0x1

    if-eq v3, v4, :cond_37

    const/4 v4, 0x2

    if-eq v3, v4, :cond_37

    .line 116
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v3, v4

    goto :goto_2b

    .line 119
    :cond_37
    const-string v4, "content-capture-service"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 120
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_47} :catch_6b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_47} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_47} :catch_6b

    .line 121
    .local v4, "allAttributes":Landroid/util/AttributeSet;
    const/4 v5, 0x0

    .line 123
    .local v5, "afsAttributes":Landroid/content/res/TypedArray;
    :try_start_48
    sget-object v6, Lcom/android/internal/R$styleable;->ContentCaptureService:[I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 125
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_5b

    move-object v1, v6

    .line 128
    if-eqz v5, :cond_5a

    .line 129
    :try_start_57
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    .end local v4    # "allAttributes":Landroid/util/AttributeSet;
    .end local v5    # "afsAttributes":Landroid/content/res/TypedArray;
    :cond_5a
    goto :goto_6a

    .line 128
    .restart local v4    # "allAttributes":Landroid/util/AttributeSet;
    .restart local v5    # "afsAttributes":Landroid/content/res/TypedArray;
    :catchall_5b
    move-exception v6

    if-eqz v5, :cond_61

    .line 129
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    :cond_61
    nop

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v1    # "settingsActivity":Ljava/lang/String;
    .end local p0    # "this":Landroid/service/contentcapture/ContentCaptureServiceInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "si":Landroid/content/pm/ServiceInfo;
    throw v6

    .line 133
    .end local v4    # "allAttributes":Landroid/util/AttributeSet;
    .end local v5    # "afsAttributes":Landroid/content/res/TypedArray;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v1    # "settingsActivity":Ljava/lang/String;
    .restart local p0    # "this":Landroid/service/contentcapture/ContentCaptureServiceInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "si":Landroid/content/pm/ServiceInfo;
    :cond_63
    sget-object v4, Landroid/service/contentcapture/ContentCaptureServiceInfo;->TAG:Ljava/lang/String;

    const-string v5, "Meta-data does not start with content-capture-service tag"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_57 .. :try_end_6a} :catch_6b
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6a} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_6a} :catch_6b

    .line 137
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "type":I
    :goto_6a
    goto :goto_73

    .line 135
    :catch_6b
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/service/contentcapture/ContentCaptureServiceInfo;->TAG:Ljava/lang/String;

    const-string v4, "Error parsing auto fill service meta-data"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_73
    iput-object v1, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 140
    return-void

    .line 91
    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v1    # "settingsActivity":Ljava/lang/String;
    :cond_76
    sget-object v0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentCaptureService from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not require permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Service does not require permission android.permission.BIND_CONTENT_CAPTURE_SERVICE"

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

    .line 58
    const/16 v0, 0x80

    .line 59
    .local v0, "flags":I
    if-nez p1, :cond_7

    .line 60
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 63
    :cond_7
    const/4 v1, 0x0

    .line 65
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

    .line 67
    goto :goto_14

    .line 66
    :catch_13
    move-exception v2

    .line 68
    :goto_14
    if-nez v1, :cond_44

    .line 69
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get serviceInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 70
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

    .line 71
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_44
    return-object v1
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 165
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    const-string v0, "Component: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    const-string v0, "Settings: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public blacklist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public blacklist getSettingsActivity()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ", settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
