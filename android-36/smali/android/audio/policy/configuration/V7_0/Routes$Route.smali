.class public Landroid/audio/policy/configuration/V7_0/Routes$Route;
.super Ljava/lang/Object;
.source "Routes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/Routes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Route"
.end annotation


# instance fields
.field private blacklist sink:Ljava/lang/String;

.field private blacklist sources:Ljava/lang/String;

.field private blacklist type:Landroid/audio/policy/configuration/V7_0/MixType;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Routes$Route;
    .registers 5
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 55
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Routes$Route;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Routes$Route;-><init>()V

    .line 56
    .local v0, "_instance":Landroid/audio/policy/configuration/V7_0/Routes$Route;
    const/4 v1, 0x0

    .line 57
    .local v1, "_raw":Ljava/lang/String;
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_17

    .line 59
    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/MixType;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/MixType;

    move-result-object v2

    .line 60
    .local v2, "_value":Landroid/audio/policy/configuration/V7_0/MixType;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Routes$Route;->setType(Landroid/audio/policy/configuration/V7_0/MixType;)V

    .line 62
    .end local v2    # "_value":Landroid/audio/policy/configuration/V7_0/MixType;
    :cond_17
    const-string/jumbo v2, "sink"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_24

    .line 64
    move-object v2, v1

    .line 65
    .local v2, "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Routes$Route;->setSink(Ljava/lang/String;)V

    .line 67
    .end local v2    # "_value":Ljava/lang/String;
    :cond_24
    const-string/jumbo v2, "sources"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_31

    .line 69
    move-object v2, v1

    .line 70
    .restart local v2    # "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Routes$Route;->setSources(Ljava/lang/String;)V

    .line 72
    .end local v2    # "_value":Ljava/lang/String;
    :cond_31
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 73
    return-object v0
.end method


# virtual methods
.method public blacklist getSink()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sink:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSources()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sources:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()Landroid/audio/policy/configuration/V7_0/MixType;
    .registers 2

    .line 10
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->type:Landroid/audio/policy/configuration/V7_0/MixType;

    return-object v0
.end method

.method blacklist hasSink()Z
    .registers 2

    .line 29
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sink:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 30
    const/4 v0, 0x0

    return v0

    .line 32
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasSources()Z
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sources:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 45
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasType()Z
    .registers 2

    .line 14
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->type:Landroid/audio/policy/configuration/V7_0/MixType;

    if-nez v0, :cond_6

    .line 15
    const/4 v0, 0x0

    return v0

    .line 17
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setSink(Ljava/lang/String;)V
    .registers 2
    .param p1, "sink"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sink:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public blacklist setSources(Ljava/lang/String;)V
    .registers 2
    .param p1, "sources"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sources:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public blacklist setType(Landroid/audio/policy/configuration/V7_0/MixType;)V
    .registers 2
    .param p1, "type"    # Landroid/audio/policy/configuration/V7_0/MixType;

    .line 21
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->type:Landroid/audio/policy/configuration/V7_0/MixType;

    .line 22
    return-void
.end method
