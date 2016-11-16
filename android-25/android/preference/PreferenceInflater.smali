.class Landroid/preference/PreferenceInflater;
.super Landroid/preference/GenericInflater;
.source "PreferenceInflater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/GenericInflater",
        "<",
        "Landroid/preference/Preference;",
        "Landroid/preference/PreferenceGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_TAG_NAME:Ljava/lang/String; = "extra"

.field private static final INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "PreferenceInflater"


# instance fields
.field private mPreferenceManager:Landroid/preference/PreferenceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceManager"    # Landroid/preference/PreferenceManager;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/preference/GenericInflater;-><init>(Landroid/content/Context;)V

    #@3
    .line 47
    invoke-direct {p0, p2}, Landroid/preference/PreferenceInflater;->init(Landroid/preference/PreferenceManager;)V

    #@6
    .line 45
    return-void
.end method

.method constructor <init>(Landroid/preference/GenericInflater;Landroid/preference/PreferenceManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "preferenceManager"    # Landroid/preference/PreferenceManager;
    .param p3, "newContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/GenericInflater",
            "<",
            "Landroid/preference/Preference;",
            "Landroid/preference/PreferenceGroup;",
            ">;",
            "Landroid/preference/PreferenceManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 51
    .local p1, "original":Landroid/preference/GenericInflater;, "Landroid/preference/GenericInflater<Landroid/preference/Preference;Landroid/preference/PreferenceGroup;>;"
    invoke-direct {p0, p1, p3}, Landroid/preference/GenericInflater;-><init>(Landroid/preference/GenericInflater;Landroid/content/Context;)V

    #@3
    .line 52
    invoke-direct {p0, p2}, Landroid/preference/PreferenceInflater;->init(Landroid/preference/PreferenceManager;)V

    #@6
    .line 50
    return-void
.end method

.method private init(Landroid/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    .line 62
    const-string/jumbo v0, "android.preference."

    #@5
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceInflater;->setDefaultPackage(Ljava/lang/String;)V

    #@8
    .line 60
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/preference/GenericInflater;
    .locals 2
    .param p1, "newContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/preference/GenericInflater",
            "<",
            "Landroid/preference/Preference;",
            "Landroid/preference/PreferenceGroup;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 57
    new-instance v0, Landroid/preference/PreferenceInflater;

    #@2
    iget-object v1, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@4
    invoke-direct {v0, p0, v1, p1}, Landroid/preference/PreferenceInflater;-><init>(Landroid/preference/GenericInflater;Landroid/preference/PreferenceManager;Landroid/content/Context;)V

    #@7
    return-object v0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)Z
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parentPreference"    # Landroid/preference/Preference;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 68
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 70
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v4, "intent"

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 71
    const/4 v2, 0x0

    #@f
    .line 74
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object v4

    #@17
    invoke-static {v4, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-object v2

    #@1b
    .line 82
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    #@1d
    .line 83
    invoke-virtual {p2, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    #@20
    .line 86
    :cond_0
    return v7

    #@21
    .line 75
    .local v2, "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@22
    .line 76
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@24
    .line 77
    const-string/jumbo v4, "Error parsing preference"

    #@27
    .line 76
    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@2a
    .line 78
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@2d
    .line 79
    throw v1

    #@2e
    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v4, "extra"

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_2

    #@37
    .line 88
    invoke-virtual {p0}, Landroid/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3e
    move-result-object v4

    #@3f
    const-string/jumbo v5, "extra"

    #@42
    .line 89
    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    #@45
    move-result-object v6

    #@46
    .line 88
    invoke-virtual {v4, v5, p3, v6}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@49
    .line 91
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@4c
    .line 98
    return v7

    #@4d
    .line 92
    :catch_1
    move-exception v0

    #@4e
    .line 93
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@50
    .line 94
    const-string/jumbo v4, "Error parsing preference"

    #@53
    .line 93
    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@56
    .line 95
    .restart local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@59
    .line 96
    throw v1

    #@5a
    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    const/4 v4, 0x0

    #@5b
    return v4
.end method

.method protected bridge synthetic onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parentPreference"    # Ljava/lang/Object;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    check-cast p2, Landroid/preference/Preference;

    #@2
    .end local p2    # "parentPreference":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/PreferenceInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected bridge synthetic onMergeRoots(Landroid/preference/GenericInflater$Parent;ZLandroid/preference/GenericInflater$Parent;)Landroid/preference/GenericInflater$Parent;
    .locals 1
    .param p1, "givenRoot"    # Landroid/preference/GenericInflater$Parent;
    .param p2, "attachToGivenRoot"    # Z
    .param p3, "xmlRoot"    # Landroid/preference/GenericInflater$Parent;

    #@0
    .prologue
    .line 105
    check-cast p1, Landroid/preference/PreferenceGroup;

    #@2
    .end local p1    # "givenRoot":Landroid/preference/GenericInflater$Parent;
    check-cast p3, Landroid/preference/PreferenceGroup;

    #@4
    .end local p3    # "xmlRoot":Landroid/preference/GenericInflater$Parent;
    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/PreferenceInflater;->onMergeRoots(Landroid/preference/PreferenceGroup;ZLandroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroup;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected onMergeRoots(Landroid/preference/PreferenceGroup;ZLandroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroup;
    .locals 1
    .param p1, "givenRoot"    # Landroid/preference/PreferenceGroup;
    .param p2, "attachToGivenRoot"    # Z
    .param p3, "xmlRoot"    # Landroid/preference/PreferenceGroup;

    #@0
    .prologue
    .line 109
    if-nez p1, :cond_0

    #@2
    .line 110
    iget-object v0, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@4
    invoke-virtual {p3, v0}, Landroid/preference/PreferenceGroup;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    #@7
    .line 111
    return-object p3

    #@8
    .line 113
    :cond_0
    return-object p1
.end method
