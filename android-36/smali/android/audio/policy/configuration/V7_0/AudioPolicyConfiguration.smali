.class public Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;
.super Ljava/lang/Object;
.source "AudioPolicyConfiguration.java"


# instance fields
.field private blacklist globalConfiguration:Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

.field private blacklist modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Modules;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist surroundSound:Landroid/audio/policy/configuration/V7_0/SurroundSound;

.field private blacklist version:Landroid/audio/policy/configuration/V7_0/Version;

.field private blacklist volumes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Volumes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;
    .registers 8
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 70
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;-><init>()V

    .line 71
    .local v0, "_instance":Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;
    const/4 v1, 0x0

    .line 72
    .local v1, "_raw":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "version"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_17

    .line 74
    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/Version;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Version;

    move-result-object v2

    .line 75
    .local v2, "_value":Landroid/audio/policy/configuration/V7_0/Version;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->setVersion(Landroid/audio/policy/configuration/V7_0/Version;)V

    .line 77
    .end local v2    # "_value":Landroid/audio/policy/configuration/V7_0/Version;
    :cond_17
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 79
    .local v2, "outerDepth":I
    :goto_1b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_82

    if-eq v4, v6, :cond_82

    .line 81
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2e

    goto :goto_1b

    .line 82
    :cond_2e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "_tagName":Ljava/lang/String;
    const-string/jumbo v5, "globalConfiguration"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 84
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    move-result-object v5

    .line 85
    .local v5, "_value":Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->setGlobalConfiguration(Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;)V

    .line 86
    .end local v5    # "_value":Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;
    goto :goto_81

    :cond_43
    const-string/jumbo v5, "modules"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 87
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Modules;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Modules;

    move-result-object v5

    .line 88
    .local v5, "_value":Landroid/audio/policy/configuration/V7_0/Modules;
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->getModules()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v5    # "_value":Landroid/audio/policy/configuration/V7_0/Modules;
    goto :goto_81

    :cond_58
    const-string/jumbo v5, "volumes"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 90
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Volumes;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Volumes;

    move-result-object v5

    .line 91
    .local v5, "_value":Landroid/audio/policy/configuration/V7_0/Volumes;
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->getVolumes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v5    # "_value":Landroid/audio/policy/configuration/V7_0/Volumes;
    goto :goto_81

    :cond_6d
    const-string/jumbo v5, "surroundSound"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 93
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/SurroundSound;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/SurroundSound;

    move-result-object v5

    .line 94
    .local v5, "_value":Landroid/audio/policy/configuration/V7_0/SurroundSound;
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->setSurroundSound(Landroid/audio/policy/configuration/V7_0/SurroundSound;)V

    .line 95
    .end local v5    # "_value":Landroid/audio/policy/configuration/V7_0/SurroundSound;
    goto :goto_81

    .line 96
    :cond_7e
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 98
    .end local v3    # "_tagName":Ljava/lang/String;
    :goto_81
    goto :goto_1b

    .line 99
    :cond_82
    if-ne v4, v6, :cond_85

    .line 102
    return-object v0

    .line 100
    :cond_85
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "AudioPolicyConfiguration is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getGlobalConfiguration()Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;
    .registers 2

    .line 11
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->globalConfiguration:Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    return-object v0
.end method

.method public blacklist getModules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Modules;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->modules:Ljava/util/List;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->modules:Ljava/util/List;

    .line 29
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->modules:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSurroundSound()Landroid/audio/policy/configuration/V7_0/SurroundSound;
    .registers 2

    .line 40
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->surroundSound:Landroid/audio/policy/configuration/V7_0/SurroundSound;

    return-object v0
.end method

.method public blacklist getVersion()Landroid/audio/policy/configuration/V7_0/Version;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->version:Landroid/audio/policy/configuration/V7_0/Version;

    return-object v0
.end method

.method public blacklist getVolumes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Volumes;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->volumes:Ljava/util/List;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->volumes:Ljava/util/List;

    .line 36
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->volumes:Ljava/util/List;

    return-object v0
.end method

.method blacklist hasGlobalConfiguration()Z
    .registers 2

    .line 15
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->globalConfiguration:Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    if-nez v0, :cond_6

    .line 16
    const/4 v0, 0x0

    return v0

    .line 18
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasSurroundSound()Z
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->surroundSound:Landroid/audio/policy/configuration/V7_0/SurroundSound;

    if-nez v0, :cond_6

    .line 45
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasVersion()Z
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->version:Landroid/audio/policy/configuration/V7_0/Version;

    if-nez v0, :cond_6

    .line 60
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setGlobalConfiguration(Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;)V
    .registers 2
    .param p1, "globalConfiguration"    # Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    .line 22
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->globalConfiguration:Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    .line 23
    return-void
.end method

.method public blacklist setSurroundSound(Landroid/audio/policy/configuration/V7_0/SurroundSound;)V
    .registers 2
    .param p1, "surroundSound"    # Landroid/audio/policy/configuration/V7_0/SurroundSound;

    .line 51
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->surroundSound:Landroid/audio/policy/configuration/V7_0/SurroundSound;

    .line 52
    return-void
.end method

.method public blacklist setVersion(Landroid/audio/policy/configuration/V7_0/Version;)V
    .registers 2
    .param p1, "version"    # Landroid/audio/policy/configuration/V7_0/Version;

    .line 66
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->version:Landroid/audio/policy/configuration/V7_0/Version;

    .line 67
    return-void
.end method
