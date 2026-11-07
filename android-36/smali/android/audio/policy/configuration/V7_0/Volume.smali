.class public Landroid/audio/policy/configuration/V7_0/Volume;
.super Ljava/lang/Object;
.source "Volume.java"


# instance fields
.field private blacklist deviceCategory:Landroid/audio/policy/configuration/V7_0/DeviceCategory;

.field private blacklist point:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist ref:Ljava/lang/String;

.field private blacklist stream:Landroid/audio/policy/configuration/V7_0/AudioStreamType;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Volume;
    .registers 8
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 62
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Volume;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Volume;-><init>()V

    .line 63
    .local v0, "_instance":Landroid/audio/policy/configuration/V7_0/Volume;
    const/4 v1, 0x0

    .line 64
    .local v1, "_raw":Ljava/lang/String;
    const-string/jumbo v2, "stream"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_17

    .line 66
    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    move-result-object v2

    .line 67
    .local v2, "_value":Landroid/audio/policy/configuration/V7_0/AudioStreamType;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Volume;->setStream(Landroid/audio/policy/configuration/V7_0/AudioStreamType;)V

    .line 69
    .end local v2    # "_value":Landroid/audio/policy/configuration/V7_0/AudioStreamType;
    :cond_17
    const-string v2, "deviceCategory"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_26

    .line 71
    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/DeviceCategory;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/DeviceCategory;

    move-result-object v2

    .line 72
    .local v2, "_value":Landroid/audio/policy/configuration/V7_0/DeviceCategory;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Volume;->setDeviceCategory(Landroid/audio/policy/configuration/V7_0/DeviceCategory;)V

    .line 74
    .end local v2    # "_value":Landroid/audio/policy/configuration/V7_0/DeviceCategory;
    :cond_26
    const-string/jumbo v2, "ref"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_33

    .line 76
    move-object v2, v1

    .line 77
    .local v2, "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Volume;->setRef(Ljava/lang/String;)V

    .line 79
    .end local v2    # "_value":Ljava/lang/String;
    :cond_33
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 81
    .local v2, "outerDepth":I
    :goto_37
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_68

    if-eq v4, v6, :cond_68

    .line 83
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4a

    goto :goto_37

    .line 84
    :cond_4a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "_tagName":Ljava/lang/String;
    const-string/jumbo v5, "point"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 86
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 87
    move-object v5, v1

    .line 88
    .local v5, "_value":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/Volume;->getPoint()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v5    # "_value":Ljava/lang/String;
    goto :goto_67

    .line 90
    :cond_64
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 92
    .end local v3    # "_tagName":Ljava/lang/String;
    :goto_67
    goto :goto_37

    .line 93
    :cond_68
    if-ne v4, v6, :cond_6b

    .line 96
    return-object v0

    .line 94
    :cond_6b
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "Volume is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getDeviceCategory()Landroid/audio/policy/configuration/V7_0/DeviceCategory;
    .registers 2

    .line 32
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->deviceCategory:Landroid/audio/policy/configuration/V7_0/DeviceCategory;

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

    .line 10
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->point:Ljava/util/List;

    if-nez v0, :cond_b

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->point:Ljava/util/List;

    .line 13
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->point:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRef()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStream()Landroid/audio/policy/configuration/V7_0/AudioStreamType;
    .registers 2

    .line 17
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->stream:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    return-object v0
.end method

.method blacklist hasDeviceCategory()Z
    .registers 2

    .line 36
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->deviceCategory:Landroid/audio/policy/configuration/V7_0/DeviceCategory;

    if-nez v0, :cond_6

    .line 37
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasRef()Z
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->ref:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 52
    const/4 v0, 0x0

    return v0

    .line 54
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasStream()Z
    .registers 2

    .line 21
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->stream:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    if-nez v0, :cond_6

    .line 22
    const/4 v0, 0x0

    return v0

    .line 24
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setDeviceCategory(Landroid/audio/policy/configuration/V7_0/DeviceCategory;)V
    .registers 2
    .param p1, "deviceCategory"    # Landroid/audio/policy/configuration/V7_0/DeviceCategory;

    .line 43
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Volume;->deviceCategory:Landroid/audio/policy/configuration/V7_0/DeviceCategory;

    .line 44
    return-void
.end method

.method public blacklist setRef(Ljava/lang/String;)V
    .registers 2
    .param p1, "ref"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Volume;->ref:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public blacklist setStream(Landroid/audio/policy/configuration/V7_0/AudioStreamType;)V
    .registers 2
    .param p1, "stream"    # Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 28
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Volume;->stream:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    .line 29
    return-void
.end method
