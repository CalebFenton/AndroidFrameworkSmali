.class public Lcom/android/apex/ApexInfo;
.super Ljava/lang/Object;
.source "ApexInfo.java"


# instance fields
.field private blacklist isActive:Ljava/lang/Boolean;

.field private blacklist isFactory:Ljava/lang/Boolean;

.field private blacklist lastUpdateMillis:Ljava/lang/Long;

.field private blacklist moduleName:Ljava/lang/String;

.field private blacklist modulePath:Ljava/lang/String;

.field private blacklist partition:Ljava/lang/String;

.field private blacklist preinstalledModulePath:Ljava/lang/String;

.field private blacklist provideSharedApexLibs:Ljava/lang/Boolean;

.field private blacklist versionCode:Ljava/lang/Long;

.field private blacklist versionName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/apex/ApexInfo;
    .registers 7
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/android/apex/ApexInfo;

    invoke-direct {v0}, Lcom/android/apex/ApexInfo;-><init>()V

    .line 182
    .local v0, "_instance":Lcom/android/apex/ApexInfo;
    const/4 v1, 0x0

    .line 183
    .local v1, "_raw":Ljava/lang/String;
    const-string v2, "moduleName"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_13

    .line 185
    move-object v2, v1

    .line 186
    .local v2, "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setModuleName(Ljava/lang/String;)V

    .line 188
    .end local v2    # "_value":Ljava/lang/String;
    :cond_13
    const-string v2, "modulePath"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_1f

    .line 190
    move-object v2, v1

    .line 191
    .restart local v2    # "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setModulePath(Ljava/lang/String;)V

    .line 193
    .end local v2    # "_value":Ljava/lang/String;
    :cond_1f
    const-string v2, "preinstalledModulePath"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_2b

    .line 195
    move-object v2, v1

    .line 196
    .restart local v2    # "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setPreinstalledModulePath(Ljava/lang/String;)V

    .line 198
    .end local v2    # "_value":Ljava/lang/String;
    :cond_2b
    const-string/jumbo v2, "versionCode"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_3b

    .line 200
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 201
    .local v4, "_value":J
    invoke-virtual {v0, v4, v5}, Lcom/android/apex/ApexInfo;->setVersionCode(J)V

    .line 203
    .end local v4    # "_value":J
    :cond_3b
    const-string/jumbo v2, "versionName"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_48

    .line 205
    move-object v2, v1

    .line 206
    .restart local v2    # "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setVersionName(Ljava/lang/String;)V

    .line 208
    .end local v2    # "_value":Ljava/lang/String;
    :cond_48
    const-string v2, "isFactory"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_57

    .line 210
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 211
    .local v2, "_value":Z
    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setIsFactory(Z)V

    .line 213
    .end local v2    # "_value":Z
    :cond_57
    const-string v2, "isActive"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_66

    .line 215
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 216
    .restart local v2    # "_value":Z
    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setIsActive(Z)V

    .line 218
    .end local v2    # "_value":Z
    :cond_66
    const-string v2, "lastUpdateMillis"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_75

    .line 220
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 221
    .restart local v4    # "_value":J
    invoke-virtual {v0, v4, v5}, Lcom/android/apex/ApexInfo;->setLastUpdateMillis(J)V

    .line 223
    .end local v4    # "_value":J
    :cond_75
    const-string v2, "provideSharedApexLibs"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_84

    .line 225
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 226
    .restart local v2    # "_value":Z
    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setProvideSharedApexLibs(Z)V

    .line 228
    .end local v2    # "_value":Z
    :cond_84
    const-string v2, "partition"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_90

    .line 230
    move-object v2, v1

    .line 231
    .local v2, "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setPartition(Ljava/lang/String;)V

    .line 233
    .end local v2    # "_value":Ljava/lang/String;
    :cond_90
    invoke-static {p0}, Lcom/android/apex/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 234
    return-object v0
.end method


# virtual methods
.method public blacklist getIsActive()Z
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 113
    const/4 v0, 0x0

    return v0

    .line 115
    :cond_6
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsFactory()Z
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 95
    const/4 v0, 0x0

    return v0

    .line 97
    :cond_6
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getLastUpdateMillis()J
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    if-nez v0, :cond_7

    .line 131
    const-wide/16 v0, 0x0

    return-wide v0

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getModuleName()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getModulePath()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->modulePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPartition()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->partition:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPreinstalledModulePath()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProvideSharedApexLibs()Z
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_6
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getVersionCode()J
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    if-nez v0, :cond_7

    .line 62
    const-wide/16 v0, 0x0

    return-wide v0

    .line 64
    :cond_7
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getVersionName()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist hasIsActive()Z
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 120
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasIsFactory()Z
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 102
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasLastUpdateMillis()Z
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    if-nez v0, :cond_6

    .line 138
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasModuleName()Z
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->moduleName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 21
    const/4 v0, 0x0

    return v0

    .line 23
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasModulePath()Z
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->modulePath:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 36
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasPartition()Z
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->partition:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 171
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasPreinstalledModulePath()Z
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 51
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasProvideSharedApexLibs()Z
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 156
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasVersionCode()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    if-nez v0, :cond_6

    .line 69
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasVersionName()Z
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setIsActive(Z)V
    .registers 3
    .param p1, "isActive"    # Z

    .line 126
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    .line 127
    return-void
.end method

.method public blacklist setIsFactory(Z)V
    .registers 3
    .param p1, "isFactory"    # Z

    .line 108
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    .line 109
    return-void
.end method

.method public blacklist setLastUpdateMillis(J)V
    .registers 4
    .param p1, "lastUpdateMillis"    # J

    .line 144
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    .line 145
    return-void
.end method

.method public blacklist setModuleName(Ljava/lang/String;)V
    .registers 2
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/android/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public blacklist setModulePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "modulePath"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/android/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public blacklist setPartition(Ljava/lang/String;)V
    .registers 2
    .param p1, "partition"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lcom/android/apex/ApexInfo;->partition:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public blacklist setPreinstalledModulePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "preinstalledModulePath"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public blacklist setProvideSharedApexLibs(Z)V
    .registers 3
    .param p1, "provideSharedApexLibs"    # Z

    .line 162
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    .line 163
    return-void
.end method

.method public blacklist setVersionCode(J)V
    .registers 4
    .param p1, "versionCode"    # J

    .line 75
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    .line 76
    return-void
.end method

.method public blacklist setVersionName(Ljava/lang/String;)V
    .registers 2
    .param p1, "versionName"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/android/apex/ApexInfo;->versionName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method blacklist write(Lcom/android/apex/XmlWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "_out"    # Lcom/android/apex/XmlWriter;
    .param p2, "_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasModuleName()Z

    move-result v0

    const-string v1, "\""

    if-eqz v0, :cond_2d

    .line 240
    const-string v0, " moduleName=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 244
    :cond_2d
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasModulePath()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 245
    const-string v0, " modulePath=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getModulePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 249
    :cond_42
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasPreinstalledModulePath()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 250
    const-string v0, " preinstalledModulePath=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getPreinstalledModulePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 254
    :cond_57
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 255
    const-string v0, " versionCode=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 259
    :cond_70
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasVersionName()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 260
    const-string v0, " versionName=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 264
    :cond_85
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasIsFactory()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 265
    const-string v0, " isFactory=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getIsFactory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 269
    :cond_9e
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasIsActive()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 270
    const-string v0, " isActive=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getIsActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 274
    :cond_b7
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasLastUpdateMillis()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 275
    const-string v0, " lastUpdateMillis=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getLastUpdateMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 279
    :cond_d0
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasProvideSharedApexLibs()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 280
    const-string v0, " provideSharedApexLibs=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getProvideSharedApexLibs()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 284
    :cond_e9
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasPartition()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 285
    const-string v0, " partition=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getPartition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 289
    :cond_fe
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 291
    return-void
.end method
