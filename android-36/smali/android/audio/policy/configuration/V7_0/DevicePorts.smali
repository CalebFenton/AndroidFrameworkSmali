.class public Landroid/audio/policy/configuration/V7_0/DevicePorts;
.super Ljava/lang/Object;
.source "DevicePorts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;
    }
.end annotation


# instance fields
.field private blacklist devicePort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;",
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

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/DevicePorts;
    .registers 8
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 201
    new-instance v0, Landroid/audio/policy/configuration/V7_0/DevicePorts;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/DevicePorts;-><init>()V

    .line 202
    .local v0, "_instance":Landroid/audio/policy/configuration/V7_0/DevicePorts;
    const/4 v1, 0x0

    .line 203
    .local v1, "_raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 205
    .local v2, "outerDepth":I
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_39

    if-eq v4, v6, :cond_39

    .line 207
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    goto :goto_a

    .line 208
    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "_tagName":Ljava/lang/String;
    const-string v5, "devicePort"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 210
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;

    move-result-object v5

    .line 211
    .local v5, "_value":Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/DevicePorts;->getDevicePort()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v5    # "_value":Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;
    goto :goto_38

    .line 213
    :cond_35
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 215
    .end local v3    # "_tagName":Ljava/lang/String;
    :goto_38
    goto :goto_a

    .line 216
    :cond_39
    if-ne v4, v6, :cond_3c

    .line 219
    return-object v0

    .line 217
    :cond_3c
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "DevicePorts is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getDevicePort()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts;->devicePort:Ljava/util/List;

    if-nez v0, :cond_b

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts;->devicePort:Ljava/util/List;

    .line 197
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts;->devicePort:Ljava/util/List;

    return-object v0
.end method
