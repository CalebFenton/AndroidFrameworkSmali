.class public Landroid/app/AliasActivity;
.super Landroid/app/Activity;
.source "AliasActivity.java"


# instance fields
.field public final ALIAS_META_DATA:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    .line 50
    const-string/jumbo v0, "android.app.alias"

    #@6
    iput-object v0, p0, Landroid/app/AliasActivity;->ALIAS_META_DATA:Ljava/lang/String;

    #@8
    .line 43
    return-void
.end method

.method private parseAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x1

    #@2
    .line 89
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@5
    move-result-object v0

    #@6
    .line 91
    .local v0, "attrs":Landroid/util/AttributeSet;
    const/4 v2, 0x0

    #@7
    .line 94
    .local v2, "intent":Landroid/content/Intent;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a
    move-result v5

    #@b
    .local v5, "type":I
    if-eq v5, v7, :cond_1

    #@d
    .line 95
    const/4 v6, 0x2

    #@e
    if-ne v5, v6, :cond_0

    #@10
    .line 98
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 99
    .local v3, "nodeName":Ljava/lang/String;
    const-string/jumbo v6, "alias"

    #@17
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_2

    #@1d
    .line 100
    new-instance v6, Ljava/lang/RuntimeException;

    #@1f
    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v8, "Alias meta-data must start with <alias> tag; found"

    #@27
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    .line 102
    const-string/jumbo v8, " at "

    #@32
    .line 101
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    .line 102
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    .line 101
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    .line 100
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@45
    throw v6

    #@46
    .line 105
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@49
    move-result v4

    #@4a
    .line 106
    .end local v2    # "intent":Landroid/content/Intent;
    .local v4, "outerDepth":I
    :cond_3
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@4d
    move-result v5

    #@4e
    if-eq v5, v7, :cond_6

    #@50
    .line 107
    if-ne v5, v8, :cond_4

    #@52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@55
    move-result v6

    #@56
    if-le v6, v4, :cond_6

    #@58
    .line 108
    :cond_4
    if-eq v5, v8, :cond_3

    #@5a
    const/4 v6, 0x4

    #@5b
    if-eq v5, v6, :cond_3

    #@5d
    .line 112
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    .line 113
    const-string/jumbo v6, "intent"

    #@64
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v6

    #@68
    if-eqz v6, :cond_5

    #@6a
    .line 114
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getResources()Landroid/content/res/Resources;

    #@6d
    move-result-object v6

    #@6e
    invoke-static {v6, p1, v0}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    #@71
    move-result-object v1

    #@72
    .line 115
    .local v1, "gotIntent":Landroid/content/Intent;
    if-nez v2, :cond_3

    #@74
    move-object v2, v1

    #@75
    .local v2, "intent":Landroid/content/Intent;
    goto :goto_0

    #@76
    .line 117
    .end local v1    # "gotIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@79
    goto :goto_0

    #@7a
    .line 121
    :cond_6
    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 56
    const/4 v5, 0x0

    #@4
    .line 58
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v6

    #@8
    .line 59
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getComponentName()Landroid/content/ComponentName;

    #@b
    move-result-object v7

    #@c
    const/16 v8, 0x80

    #@e
    .line 58
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@11
    move-result-object v0

    #@12
    .line 60
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@15
    move-result-object v6

    #@16
    .line 61
    const-string/jumbo v7, "android.app.alias"

    #@19
    .line 60
    invoke-virtual {v0, v6, v7}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@1c
    move-result-object v5

    #@1d
    .line 62
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v5, :cond_1

    #@1f
    .line 63
    new-instance v6, Ljava/lang/RuntimeException;

    #@21
    const-string/jumbo v7, "Alias requires a meta-data field android.app.alias"

    #@24
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 76
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    #@29
    .line 77
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v6, Ljava/lang/RuntimeException;

    #@2b
    const-string/jumbo v7, "Error parsing alias"

    #@2e
    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 82
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v6

    #@33
    .line 83
    if-eqz v5, :cond_0

    #@35
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    #@38
    .line 82
    :cond_0
    throw v6

    #@39
    .line 67
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_2
    invoke-direct {p0, v5}, Landroid/app/AliasActivity;->parseAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    #@3c
    move-result-object v4

    #@3d
    .line 68
    .local v4, "intent":Landroid/content/Intent;
    if-nez v4, :cond_2

    #@3f
    .line 69
    new-instance v6, Ljava/lang/RuntimeException;

    #@41
    .line 70
    const-string/jumbo v7, "No <intent> tag found in alias description"

    #@44
    .line 69
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@47
    throw v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    .line 78
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v3

    #@49
    .line 79
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    new-instance v6, Ljava/lang/RuntimeException;

    #@4b
    const-string/jumbo v7, "Error parsing alias"

    #@4e
    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@51
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    .line 73
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_2
    :try_start_4
    invoke-virtual {p0, v4}, Landroid/app/AliasActivity;->startActivity(Landroid/content/Intent;)V

    #@55
    .line 74
    invoke-virtual {p0}, Landroid/app/AliasActivity;->finish()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@58
    .line 83
    if-eqz v5, :cond_3

    #@5a
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    #@5d
    .line 53
    :cond_3
    return-void

    #@5e
    .line 80
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v2

    #@5f
    .line 81
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v6, Ljava/lang/RuntimeException;

    #@61
    const-string/jumbo v7, "Error parsing alias"

    #@64
    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@67
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
