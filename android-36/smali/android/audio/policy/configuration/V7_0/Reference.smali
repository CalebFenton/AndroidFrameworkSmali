.class public Landroid/audio/policy/configuration/V7_0/Reference;
.super Ljava/lang/Object;
.source "Reference.java"


# instance fields
.field private blacklist name:Ljava/lang/String;

.field private blacklist point:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Reference;
    .registers 8
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 30
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Reference;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Reference;-><init>()V

    .line 31
    .local v0, "_instance":Landroid/audio/policy/configuration/V7_0/Reference;
    const/4 v1, 0x0

    .line 32
    .local v1, "_raw":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_14

    .line 34
    move-object v2, v1

    .line 35
    .local v2, "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Reference;->setName(Ljava/lang/String;)V

    .line 37
    .end local v2    # "_value":Ljava/lang/String;
    :cond_14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 39
    .local v2, "outerDepth":I
    :goto_18
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_49

    if-eq v4, v6, :cond_49

    .line 41
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2b

    goto :goto_18

    .line 42
    :cond_2b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "_tagName":Ljava/lang/String;
    const-string/jumbo v5, "point"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 44
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 45
    move-object v5, v1

    .line 46
    .local v5, "_value":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/Reference;->getPoint()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v5    # "_value":Ljava/lang/String;
    goto :goto_48

    .line 48
    :cond_45
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 50
    .end local v3    # "_tagName":Ljava/lang/String;
    :goto_48
    goto :goto_18

    .line 51
    :cond_49
    if-ne v4, v6, :cond_4c

    .line 54
    return-object v0

    .line 52
    :cond_4c
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "Reference is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Reference;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPoint()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Reference;->point:Ljava/util/List;

    if-nez v0, :cond_b

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Reference;->point:Ljava/util/List;

    .line 11
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Reference;->point:Ljava/util/List;

    return-object v0
.end method

.method blacklist hasName()Z
    .registers 2

    .line 19
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Reference;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 20
    const/4 v0, 0x0

    return v0

    .line 22
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Reference;->name:Ljava/lang/String;

    .line 27
    return-void
.end method
