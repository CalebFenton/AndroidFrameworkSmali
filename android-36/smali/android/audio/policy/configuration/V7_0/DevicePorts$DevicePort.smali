.class public Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;
.super Ljava/lang/Object;
.source "DevicePorts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/DevicePorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicePort"
.end annotation


# instance fields
.field private blacklist _default:Ljava/lang/Boolean;

.field private blacklist address:Ljava/lang/String;

.field private blacklist encodedFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist gains:Landroid/audio/policy/configuration/V7_0/Gains;

.field private blacklist profile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist role:Landroid/audio/policy/configuration/V7_0/Role;

.field private blacklist tagName:Ljava/lang/String;

.field private blacklist type:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;
    .registers 8
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 133
    new-instance v0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;-><init>()V

    .line 134
    .local v0, "_instance":Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;
    const/4 v1, 0x0

    .line 135
    .local v1, "_raw":Ljava/lang/String;
    const-string/jumbo v2, "tagName"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_14

    .line 137
    move-object v2, v1

    .line 138
    .local v2, "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setTagName(Ljava/lang/String;)V

    .line 140
    .end local v2    # "_value":Ljava/lang/String;
    :cond_14
    const-string/jumbo v2, "type"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_21

    .line 142
    move-object v2, v1

    .line 143
    .restart local v2    # "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setType(Ljava/lang/String;)V

    .line 145
    .end local v2    # "_value":Ljava/lang/String;
    :cond_21
    const-string/jumbo v2, "role"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_31

    .line 147
    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/Role;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Role;

    move-result-object v2

    .line 148
    .local v2, "_value":Landroid/audio/policy/configuration/V7_0/Role;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setRole(Landroid/audio/policy/configuration/V7_0/Role;)V

    .line 150
    .end local v2    # "_value":Landroid/audio/policy/configuration/V7_0/Role;
    :cond_31
    const-string v2, "address"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_3d

    .line 152
    move-object v2, v1

    .line 153
    .local v2, "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setAddress(Ljava/lang/String;)V

    .line 155
    .end local v2    # "_value":Ljava/lang/String;
    :cond_3d
    const-string v2, "default"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_4c

    .line 157
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 158
    .local v2, "_value":Z
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->set_default(Z)V

    .line 160
    .end local v2    # "_value":Z
    :cond_4c
    const-string v2, "encodedFormats"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_6e

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v2, "_value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_61
    if-ge v5, v4, :cond_6b

    aget-object v6, v3, v5

    .line 164
    .local v6, "_token":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v6    # "_token":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 166
    :cond_6b
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setEncodedFormats(Ljava/util/List;)V

    .line 168
    .end local v2    # "_value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 170
    .local v2, "outerDepth":I
    :goto_72
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_b2

    if-eq v4, v5, :cond_b2

    .line 172
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_85

    goto :goto_72

    .line 173
    :cond_85
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "_tagName":Ljava/lang/String;
    const-string/jumbo v5, "profile"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 175
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Profile;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Profile;

    move-result-object v5

    .line 176
    .local v5, "_value":Landroid/audio/policy/configuration/V7_0/Profile;
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->getProfile()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v5    # "_value":Landroid/audio/policy/configuration/V7_0/Profile;
    goto :goto_b1

    :cond_9e
    const-string v5, "gains"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 178
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Gains;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Gains;

    move-result-object v5

    .line 179
    .local v5, "_value":Landroid/audio/policy/configuration/V7_0/Gains;
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V

    .line 180
    .end local v5    # "_value":Landroid/audio/policy/configuration/V7_0/Gains;
    goto :goto_b1

    .line 181
    :cond_ae
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 183
    .end local v3    # "_tagName":Ljava/lang/String;
    :goto_b1
    goto :goto_72

    .line 184
    :cond_b2
    if-ne v4, v5, :cond_b5

    .line 187
    return-object v0

    .line 185
    :cond_b5
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "DevicePorts.DevicePort is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getAddress()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->address:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEncodedFormats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    if-nez v0, :cond_b

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    .line 118
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getGains()Landroid/audio/policy/configuration/V7_0/Gains;
    .registers 2

    .line 22
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    return-object v0
.end method

.method public blacklist getProfile()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Profile;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->profile:Ljava/util/List;

    if-nez v0, :cond_b

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->profile:Ljava/util/List;

    .line 18
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->profile:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRole()Landroid/audio/policy/configuration/V7_0/Role;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    return-object v0
.end method

.method public blacklist getTagName()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->type:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist get_default()Z
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_6
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method blacklist hasAddress()Z
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->address:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 87
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasEncodedFormats()Z
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    if-nez v0, :cond_6

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasGains()Z
    .registers 2

    .line 26
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    if-nez v0, :cond_6

    .line 27
    const/4 v0, 0x0

    return v0

    .line 29
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasRole()Z
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    if-nez v0, :cond_6

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasTagName()Z
    .registers 2

    .line 41
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->tagName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 42
    const/4 v0, 0x0

    return v0

    .line 44
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasType()Z
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->type:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 57
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist has_default()Z
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->address:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public blacklist setEncodedFormats(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p1, "encodedFormats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    .line 130
    return-void
.end method

.method public blacklist setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V
    .registers 2
    .param p1, "gains"    # Landroid/audio/policy/configuration/V7_0/Gains;

    .line 33
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    .line 34
    return-void
.end method

.method public blacklist setRole(Landroid/audio/policy/configuration/V7_0/Role;)V
    .registers 2
    .param p1, "role"    # Landroid/audio/policy/configuration/V7_0/Role;

    .line 78
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    .line 79
    return-void
.end method

.method public blacklist setTagName(Ljava/lang/String;)V
    .registers 2
    .param p1, "tagName"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->tagName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public blacklist setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->type:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public blacklist set_default(Z)V
    .registers 3
    .param p1, "_default"    # Z

    .line 111
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    .line 112
    return-void
.end method
