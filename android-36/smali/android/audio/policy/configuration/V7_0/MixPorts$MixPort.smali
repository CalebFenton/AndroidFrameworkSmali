.class public Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;
.super Ljava/lang/Object;
.source "MixPorts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/MixPorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MixPort"
.end annotation


# instance fields
.field private blacklist flags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist gains:Landroid/audio/policy/configuration/V7_0/Gains;

.field private blacklist maxActiveCount:Ljava/lang/Long;

.field private blacklist maxOpenCount:Ljava/lang/Long;

.field private blacklist name:Ljava/lang/String;

.field private blacklist preferredUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioUsage;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;
    .registers 12
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 139
    new-instance v0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;-><init>()V

    .line 140
    .local v0, "_instance":Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;
    const/4 v1, 0x0

    .line 141
    .local v1, "_raw":Ljava/lang/String;
    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_14

    .line 143
    move-object v2, v1

    .line 144
    .local v2, "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setName(Ljava/lang/String;)V

    .line 146
    .end local v2    # "_value":Ljava/lang/String;
    :cond_14
    const-string/jumbo v2, "role"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_24

    .line 148
    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/Role;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Role;

    move-result-object v2

    .line 149
    .local v2, "_value":Landroid/audio/policy/configuration/V7_0/Role;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setRole(Landroid/audio/policy/configuration/V7_0/Role;)V

    .line 151
    .end local v2    # "_value":Landroid/audio/policy/configuration/V7_0/Role;
    :cond_24
    const-string v2, "flags"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    const/4 v2, 0x0

    const-string v4, "\\s+"

    if-eqz v1, :cond_4b

    .line 153
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v5, "_value":Ljava/util/List;, "Ljava/util/List<Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;>;"
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_3a
    if-ge v8, v7, :cond_48

    aget-object v9, v6, v8

    .line 155
    .local v9, "_token":Ljava/lang/String;
    invoke-static {v9}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v9    # "_token":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    .line 157
    :cond_48
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setFlags(Ljava/util/List;)V

    .line 159
    .end local v5    # "_value":Ljava/util/List;, "Ljava/util/List<Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;>;"
    :cond_4b
    const-string/jumbo v5, "maxOpenCount"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_5b

    .line 161
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 162
    .local v5, "_value":J
    invoke-virtual {v0, v5, v6}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setMaxOpenCount(J)V

    .line 164
    .end local v5    # "_value":J
    :cond_5b
    const-string/jumbo v5, "maxActiveCount"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_6b

    .line 166
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 167
    .restart local v5    # "_value":J
    invoke-virtual {v0, v5, v6}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setMaxActiveCount(J)V

    .line 169
    .end local v5    # "_value":J
    :cond_6b
    const-string/jumbo v5, "preferredUsage"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_8f

    .line 171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v3, "_value":Ljava/util/List;, "Ljava/util/List<Landroid/audio/policy/configuration/V7_0/AudioUsage;>;"
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_7e
    if-ge v2, v5, :cond_8c

    aget-object v6, v4, v2

    .line 173
    .local v6, "_token":Ljava/lang/String;
    invoke-static {v6}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioUsage;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v6    # "_token":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 175
    :cond_8c
    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setPreferredUsage(Ljava/util/List;)V

    .line 177
    .end local v3    # "_value":Ljava/util/List;, "Ljava/util/List<Landroid/audio/policy/configuration/V7_0/AudioUsage;>;"
    :cond_8f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 179
    .local v2, "outerDepth":I
    :goto_93
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_d3

    if-eq v4, v5, :cond_d3

    .line 181
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_a6

    goto :goto_93

    .line 182
    :cond_a6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "_tagName":Ljava/lang/String;
    const-string/jumbo v5, "profile"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 184
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Profile;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Profile;

    move-result-object v5

    .line 185
    .local v5, "_value":Landroid/audio/policy/configuration/V7_0/Profile;
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->getProfile()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v5    # "_value":Landroid/audio/policy/configuration/V7_0/Profile;
    goto :goto_d2

    :cond_bf
    const-string v5, "gains"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 187
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Gains;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Gains;

    move-result-object v5

    .line 188
    .local v5, "_value":Landroid/audio/policy/configuration/V7_0/Gains;
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V

    .line 189
    .end local v5    # "_value":Landroid/audio/policy/configuration/V7_0/Gains;
    goto :goto_d2

    .line 190
    :cond_cf
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 192
    .end local v3    # "_tagName":Ljava/lang/String;
    :goto_d2
    goto :goto_93

    .line 193
    :cond_d3
    if-ne v4, v5, :cond_d6

    .line 196
    return-object v0

    .line 194
    :cond_d6
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "MixPorts.MixPort is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getFlags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    .line 70
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getGains()Landroid/audio/policy/configuration/V7_0/Gains;
    .registers 2

    .line 22
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    return-object v0
.end method

.method public blacklist getMaxActiveCount()J
    .registers 3

    .line 103
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxActiveCount:Ljava/lang/Long;

    if-nez v0, :cond_7

    .line 104
    const-wide/16 v0, 0x0

    return-wide v0

    .line 106
    :cond_7
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxActiveCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMaxOpenCount()J
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxOpenCount:Ljava/lang/Long;

    if-nez v0, :cond_7

    .line 86
    const-wide/16 v0, 0x0

    return-wide v0

    .line 88
    :cond_7
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxOpenCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPreferredUsage()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioUsage;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

    if-nez v0, :cond_b

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

    .line 124
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

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
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->profile:Ljava/util/List;

    if-nez v0, :cond_b

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->profile:Ljava/util/List;

    .line 18
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->profile:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRole()Landroid/audio/policy/configuration/V7_0/Role;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    return-object v0
.end method

.method blacklist hasFlags()Z
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    if-nez v0, :cond_6

    .line 75
    const/4 v0, 0x0

    return v0

    .line 77
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasGains()Z
    .registers 2

    .line 26
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    if-nez v0, :cond_6

    .line 27
    const/4 v0, 0x0

    return v0

    .line 29
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMaxActiveCount()Z
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxActiveCount:Ljava/lang/Long;

    if-nez v0, :cond_6

    .line 111
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMaxOpenCount()Z
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxOpenCount:Ljava/lang/Long;

    if-nez v0, :cond_6

    .line 93
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasName()Z
    .registers 2

    .line 41
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 42
    const/4 v0, 0x0

    return v0

    .line 44
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasPreferredUsage()Z
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

    if-nez v0, :cond_6

    .line 129
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasRole()Z
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    if-nez v0, :cond_6

    .line 57
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setFlags(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "flags":Ljava/util/List;, "Ljava/util/List<Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;>;"
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    .line 82
    return-void
.end method

.method public blacklist setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V
    .registers 2
    .param p1, "gains"    # Landroid/audio/policy/configuration/V7_0/Gains;

    .line 33
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    .line 34
    return-void
.end method

.method public blacklist setMaxActiveCount(J)V
    .registers 4
    .param p1, "maxActiveCount"    # J

    .line 117
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxActiveCount:Ljava/lang/Long;

    .line 118
    return-void
.end method

.method public blacklist setMaxOpenCount(J)V
    .registers 4
    .param p1, "maxOpenCount"    # J

    .line 99
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxOpenCount:Ljava/lang/Long;

    .line 100
    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public blacklist setPreferredUsage(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioUsage;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "preferredUsage":Ljava/util/List;, "Ljava/util/List<Landroid/audio/policy/configuration/V7_0/AudioUsage;>;"
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

    .line 136
    return-void
.end method

.method public blacklist setRole(Landroid/audio/policy/configuration/V7_0/Role;)V
    .registers 2
    .param p1, "role"    # Landroid/audio/policy/configuration/V7_0/Role;

    .line 63
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    .line 64
    return-void
.end method
