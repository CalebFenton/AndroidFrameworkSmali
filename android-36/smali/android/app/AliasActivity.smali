.class public Landroid/app/AliasActivity;
.super Landroid/app/Activity;
.source "AliasActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final greylist-max-o ALIAS_META_DATA:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-string v0, "android.app.alias"

    iput-object v0, p0, Landroid/app/AliasActivity;->ALIAS_META_DATA:Ljava/lang/String;

    return-void
.end method

.method private greylist-max-o parseAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 90
    .local v0, "attrs":Landroid/util/AttributeSet;
    const/4 v1, 0x0

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_11

    const/4 v2, 0x2

    if-eq v3, v2, :cond_11

    goto :goto_5

    .line 97
    :cond_11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "nodeName":Ljava/lang/String;
    const-string v5, "alias"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 104
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 105
    .local v5, "outerDepth":I
    :cond_21
    :goto_21
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v3, v6

    if-eq v6, v4, :cond_54

    const/4 v6, 0x3

    if-ne v3, v6, :cond_31

    .line 106
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v5, :cond_54

    .line 107
    :cond_31
    if-eq v3, v6, :cond_21

    const/4 v6, 0x4

    if-ne v3, v6, :cond_37

    .line 108
    goto :goto_21

    .line 111
    :cond_37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 112
    const-string/jumbo v6, "intent"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 113
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p1, v0}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v6

    .line 114
    .local v6, "gotIntent":Landroid/content/Intent;
    if-nez v1, :cond_4f

    move-object v1, v6

    .line 115
    .end local v6    # "gotIntent":Landroid/content/Intent;
    :cond_4f
    goto :goto_21

    .line 116
    :cond_50
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_21

    .line 120
    :cond_54
    return-object v1

    .line 99
    .end local v5    # "outerDepth":I
    :cond_55
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alias meta-data must start with <alias> tag; found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 101
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_4
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 61
    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 63
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.app.alias"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v0, v2

    .line 65
    if-eqz v0, :cond_39

    .line 70
    invoke-direct {p0, v0}, Landroid/app/AliasActivity;->parseAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v2

    .line 71
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_31

    .line 76
    invoke-virtual {p0, v2}, Landroid/app/AliasActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/AliasActivity;->finish()V
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_2b} :catch_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_2b} :catch_43
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2b} :catch_43
    .catchall {:try_start_4 .. :try_end_2b} :catchall_41

    .line 82
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    if-eqz v0, :cond_30

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 84
    :cond_30
    return-void

    .line 72
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_31
    :try_start_31
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "No <intent> tag found in alias description"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/AliasActivity;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v3

    .line 66
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/AliasActivity;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_39
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Alias requires a meta-data field android.app.alias"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/AliasActivity;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v2
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_41} :catch_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_41} :catch_43
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_43
    .catchall {:try_start_31 .. :try_end_41} :catchall_41

    .line 82
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/AliasActivity;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catchall_41
    move-exception v1

    goto :goto_4c

    .line 79
    :catch_43
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    :try_start_44
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error parsing alias"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/AliasActivity;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v2
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_41

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/AliasActivity;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :goto_4c
    if-eqz v0, :cond_51

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 83
    :cond_51
    throw v1
.end method
