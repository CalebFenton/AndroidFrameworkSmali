.class public Lcom/android/server/webkit/SystemImpl;
.super Ljava/lang/Object;
.source "SystemImpl.java"

# interfaces
.implements Lcom/android/server/webkit/SystemInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/SystemImpl$LazyHolder;
    }
.end annotation


# static fields
.field private static final PACKAGE_FLAGS:I = 0x100020c0

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_AVAILABILITY:Ljava/lang/String; = "availableByDefault"

.field private static final TAG_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final TAG_FALLBACK:Ljava/lang/String; = "isFallback"

.field private static final TAG_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TAG_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG_START:Ljava/lang/String; = "webviewproviders"

.field private static final TAG_WEBVIEW_PROVIDER:Ljava/lang/String; = "webviewprovider"


# instance fields
.field private final mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 53
    const-class v0, Lcom/android/server/webkit/SystemImpl;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    #@8
    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 15

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    const/4 v10, 0x0

    #@4
    .line 76
    .local v10, "numFallbackPackages":I
    const/4 v9, 0x0

    #@5
    .line 77
    .local v9, "numAvailableByDefaultPackages":I
    const/4 v8, 0x0

    #@6
    .line 78
    .local v8, "numAvByDefaultAndNotFallback":I
    const/4 v11, 0x0

    #@7
    .line 79
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v12, Ljava/util/ArrayList;

    #@9
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 81
    .local v12, "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v5

    #@14
    .line 82
    const v13, 0x1110004

    #@17
    .line 81
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@1a
    move-result-object v11

    #@1b
    .line 83
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v5, "webviewproviders"

    #@1e
    invoke-static {v11, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@21
    .line 85
    :goto_0
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@24
    .line 86
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result-object v7

    #@28
    .line 87
    .local v7, "element":Ljava/lang/String;
    if-nez v7, :cond_1

    #@2a
    .line 134
    if-eqz v11, :cond_0

    #@2c
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@2f
    .line 136
    :cond_0
    if-nez v9, :cond_9

    #@31
    .line 137
    new-instance v5, Landroid/util/AndroidRuntimeException;

    #@33
    const-string/jumbo v13, "There must be at least one WebView package that is available by default"

    #@36
    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@39
    throw v5

    #@3a
    .line 90
    :cond_1
    :try_start_1
    const-string/jumbo v5, "webviewprovider"

    #@3d
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_8

    #@43
    .line 91
    const-string/jumbo v5, "packageName"

    #@46
    const/4 v13, 0x0

    #@47
    invoke-interface {v11, v13, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    .line 92
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_3

    #@4d
    .line 93
    new-instance v5, Landroid/util/AndroidRuntimeException;

    #@4f
    .line 94
    const-string/jumbo v13, "WebView provider in framework resources missing package name"

    #@52
    .line 93
    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@55
    throw v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    .line 131
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v7    # "element":Ljava/lang/String;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v6

    #@57
    .line 132
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Landroid/util/AndroidRuntimeException;

    #@59
    new-instance v13, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v14, "Error when parsing WebView config "

    #@61
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v13

    #@65
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v13

    #@69
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v13

    #@6d
    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@70
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@71
    .line 133
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@72
    .line 134
    if-eqz v11, :cond_2

    #@74
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@77
    .line 133
    :cond_2
    throw v5

    #@78
    .line 96
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v7    # "element":Ljava/lang/String;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_3
    :try_start_3
    const-string/jumbo v5, "description"

    #@7b
    const/4 v13, 0x0

    #@7c
    invoke-interface {v11, v13, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    .line 97
    .local v2, "description":Ljava/lang/String;
    if-nez v2, :cond_4

    #@82
    .line 98
    new-instance v5, Landroid/util/AndroidRuntimeException;

    #@84
    .line 99
    const-string/jumbo v13, "WebView provider in framework resources missing description"

    #@87
    .line 98
    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v5

    #@8b
    .line 101
    :cond_4
    const-string/jumbo v5, "true"

    #@8e
    .line 102
    const-string/jumbo v13, "availableByDefault"

    #@91
    const/4 v14, 0x0

    #@92
    invoke-interface {v11, v14, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@95
    move-result-object v13

    #@96
    .line 101
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v3

    #@9a
    .line 103
    .local v3, "availableByDefault":Z
    const-string/jumbo v5, "true"

    #@9d
    .line 104
    const-string/jumbo v13, "isFallback"

    #@a0
    const/4 v14, 0x0

    #@a1
    invoke-interface {v11, v14, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a4
    move-result-object v13

    #@a5
    .line 103
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v4

    #@a9
    .line 105
    .local v4, "isFallback":Z
    new-instance v0, Landroid/webkit/WebViewProviderInfo;

    #@ab
    .line 107
    invoke-static {v11}, Lcom/android/server/webkit/SystemImpl;->readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;

    #@ae
    move-result-object v5

    #@af
    .line 105
    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewProviderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V

    #@b2
    .line 108
    .local v0, "currentProvider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v5, v0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    #@b4
    if-eqz v5, :cond_6

    #@b6
    .line 109
    add-int/lit8 v10, v10, 0x1

    #@b8
    .line 110
    iget-boolean v5, v0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    #@ba
    if-nez v5, :cond_5

    #@bc
    .line 111
    new-instance v5, Landroid/util/AndroidRuntimeException;

    #@be
    .line 112
    const-string/jumbo v13, "Each WebView fallback package must be available by default."

    #@c1
    .line 111
    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@c4
    throw v5

    #@c5
    .line 114
    :cond_5
    const/4 v5, 0x1

    #@c6
    if-le v10, v5, :cond_6

    #@c8
    .line 115
    new-instance v5, Landroid/util/AndroidRuntimeException;

    #@ca
    .line 116
    const-string/jumbo v13, "There can be at most one WebView fallback package."

    #@cd
    .line 115
    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@d0
    throw v5

    #@d1
    .line 119
    :cond_6
    iget-boolean v5, v0, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    #@d3
    if-eqz v5, :cond_7

    #@d5
    .line 120
    add-int/lit8 v9, v9, 0x1

    #@d7
    .line 121
    iget-boolean v5, v0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    #@d9
    if-nez v5, :cond_7

    #@db
    .line 122
    add-int/lit8 v8, v8, 0x1

    #@dd
    .line 125
    :cond_7
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e0
    goto/16 :goto_0

    #@e2
    .line 128
    .end local v0    # "currentProvider":Landroid/webkit/WebViewProviderInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "availableByDefault":Z
    .end local v4    # "isFallback":Z
    :cond_8
    sget-object v5, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    #@e4
    const-string/jumbo v13, "Found an element that is not a WebView provider"

    #@e7
    invoke-static {v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ea
    goto/16 :goto_0

    #@ec
    .line 140
    :cond_9
    if-nez v8, :cond_a

    #@ee
    .line 141
    new-instance v5, Landroid/util/AndroidRuntimeException;

    #@f0
    const-string/jumbo v13, "There must be at least one WebView package that is available by default and not a fallback"

    #@f3
    invoke-direct {v5, v13}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@f6
    throw v5

    #@f7
    .line 145
    :cond_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@fa
    move-result v5

    #@fb
    new-array v5, v5, [Landroid/webkit/WebViewProviderInfo;

    #@fd
    invoke-interface {v12, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@100
    move-result-object v5

    #@101
    check-cast v5, [Landroid/webkit/WebViewProviderInfo;

    #@103
    .line 144
    iput-object v5, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    #@105
    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/webkit/SystemImpl;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/webkit/SystemImpl;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Lcom/android/server/webkit/SystemImpl;
    .locals 1

    #@0
    .prologue
    .line 71
    invoke-static {}, Lcom/android/server/webkit/SystemImpl$LazyHolder;->-get0()Lcom/android/server/webkit/SystemImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;
    .locals 5
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 167
    .local v2, "signatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@8
    move-result v0

    #@9
    .line 168
    .local v0, "outerDepth":I
    :goto_0
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 169
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    const-string/jumbo v4, "signature"

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 171
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 172
    .local v1, "signature":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_0

    #@24
    .line 174
    .end local v1    # "signature":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    #@26
    const-string/jumbo v4, "Found an element in a webview provider that is not a signature"

    #@29
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    goto :goto_0

    #@2d
    .line 177
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@30
    move-result v3

    #@31
    new-array v3, v3, [Ljava/lang/String;

    #@33
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    check-cast v3, [Ljava/lang/String;

    #@39
    return-object v3
.end method


# virtual methods
.method public enableFallbackLogic(Z)V
    .locals 3
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 216
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 217
    const-string/jumbo v2, "webview_fallback_logic_enabled"

    #@b
    if-eqz p1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 216
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@11
    .line 215
    return-void

    #@12
    .line 217
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    #@0
    .prologue
    .line 239
    const-string/jumbo v3, "user"

    #@3
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid/os/UserManager;

    #@9
    .line 240
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@c
    move-result-object v3

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "userInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/content/pm/UserInfo;

    #@1d
    .line 241
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@1f
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/server/webkit/SystemImpl;->enablePackageForUser(Ljava/lang/String;ZI)V

    #@22
    goto :goto_0

    #@23
    .line 238
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method public enablePackageForUser(Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 248
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v0

    #@5
    .line 250
    if-eqz p2, :cond_0

    #@7
    .line 251
    :goto_0
    const/4 v3, 0x0

    #@8
    .line 252
    const/4 v5, 0x0

    #@9
    move-object v1, p1

    #@a
    move v4, p3

    #@b
    .line 248
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 246
    :goto_1
    return-void

    #@f
    .line 251
    :cond_0
    const/4 v2, 0x3

    #@10
    goto :goto_0

    #@11
    .line 253
    :catch_0
    move-exception v6

    #@12
    .line 254
    .local v6, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    #@14
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Tried to "

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    if-eqz p2, :cond_1

    #@22
    const-string/jumbo v0, "enable "

    #@25
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 255
    const-string/jumbo v2, " for user "

    #@30
    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 255
    const-string/jumbo v2, ": "

    #@3b
    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto :goto_1

    #@4b
    :cond_1
    const-string/jumbo v0, "disable "

    #@4e
    goto :goto_2
.end method

.method public getFactoryPackageVersion(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    .line 158
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x200000

    #@a
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@d
    move-result-object v1

    #@e
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    #@10
    return v1
.end method

.method public getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "configInfo"    # Landroid/webkit/WebViewProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    .line 268
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    #@a
    const v2, 0x100020c0

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    .line 188
    const-string/jumbo v1, "webview_provider"

    #@7
    .line 187
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    #@2
    return-object v0
.end method

.method public isFallbackLogicEnabled()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 210
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v1

    #@9
    .line 211
    const-string/jumbo v2, "webview_fallback_logic_enabled"

    #@c
    .line 210
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@f
    move-result v1

    #@10
    if-ne v1, v0, :cond_0

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method public killPackageDependents(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 201
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 202
    const/4 v2, -0x1

    #@5
    .line 201
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 199
    :goto_0
    return-void

    #@9
    .line 203
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 182
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public systemIsDebuggable()Z
    .locals 1

    #@0
    .prologue
    .line 261
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2
    return v0
.end method

.method public uninstallAndDisablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 222
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/webkit/SystemImpl;->enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V

    #@4
    .line 224
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v2

    #@c
    .line 225
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    #@d
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@10
    move-result-object v0

    #@11
    .line 226
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    #@13
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 227
    new-instance v3, Lcom/android/server/webkit/SystemImpl$1;

    #@1b
    invoke-direct {v3, p0, p1}, Lcom/android/server/webkit/SystemImpl$1;-><init>(Lcom/android/server/webkit/SystemImpl;Landroid/content/Context;)V

    #@1e
    .line 231
    const/4 v4, 0x6

    #@1f
    .line 227
    invoke-virtual {v2, p2, v3, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 221
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    #@23
    .line 233
    :catch_0
    move-exception v1

    #@24
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newProviderName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    .line 194
    const-string/jumbo v1, "webview_provider"

    #@7
    .line 195
    if-nez p2, :cond_0

    #@9
    const-string/jumbo p2, ""

    #@c
    .line 193
    .end local p2    # "newProviderName":Ljava/lang/String;
    :cond_0
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@f
    .line 192
    return-void
.end method
