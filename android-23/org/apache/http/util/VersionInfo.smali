.class public Lorg/apache/http/util/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROPERTY_MODULE:Ljava/lang/String; = "info.module"

.field public static final PROPERTY_RELEASE:Ljava/lang/String; = "info.release"

.field public static final PROPERTY_TIMESTAMP:Ljava/lang/String; = "info.timestamp"

.field public static final UNAVAILABLE:Ljava/lang/String; = "UNAVAILABLE"

.field public static final VERSION_PROPERTY_FILE:Ljava/lang/String; = "version.properties"


# instance fields
.field private final infoClassloader:Ljava/lang/String;

.field private final infoModule:Ljava/lang/String;

.field private final infoPackage:Ljava/lang/String;

.field private final infoRelease:Ljava/lang/String;

.field private final infoTimestamp:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pckg"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "release"    # Ljava/lang/String;
    .param p4, "time"    # Ljava/lang/String;
    .param p5, "clsldr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    if-nez p1, :cond_0

    #@5
    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 105
    const-string/jumbo v1, "Package identifier must not be null."

    #@a
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 108
    :cond_0
    iput-object p1, p0, Lorg/apache/http/util/VersionInfo;->infoPackage:Ljava/lang/String;

    #@10
    .line 109
    if-eqz p2, :cond_1

    #@12
    .end local p2    # "module":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lorg/apache/http/util/VersionInfo;->infoModule:Ljava/lang/String;

    #@14
    .line 110
    if-eqz p3, :cond_2

    #@16
    .end local p3    # "release":Ljava/lang/String;
    :goto_1
    iput-object p3, p0, Lorg/apache/http/util/VersionInfo;->infoRelease:Ljava/lang/String;

    #@18
    .line 111
    if-eqz p4, :cond_3

    #@1a
    .end local p4    # "time":Ljava/lang/String;
    :goto_2
    iput-object p4, p0, Lorg/apache/http/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    #@1c
    .line 112
    if-eqz p5, :cond_4

    #@1e
    .end local p5    # "clsldr":Ljava/lang/String;
    :goto_3
    iput-object p5, p0, Lorg/apache/http/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    #@20
    .line 102
    return-void

    #@21
    .line 109
    .restart local p2    # "module":Ljava/lang/String;
    .restart local p3    # "release":Ljava/lang/String;
    .restart local p4    # "time":Ljava/lang/String;
    .restart local p5    # "clsldr":Ljava/lang/String;
    :cond_1
    const-string/jumbo p2, "UNAVAILABLE"

    #@24
    goto :goto_0

    #@25
    .line 110
    .end local p2    # "module":Ljava/lang/String;
    :cond_2
    const-string/jumbo p3, "UNAVAILABLE"

    #@28
    goto :goto_1

    #@29
    .line 111
    .end local p3    # "release":Ljava/lang/String;
    :cond_3
    const-string/jumbo p4, "UNAVAILABLE"

    #@2c
    goto :goto_2

    #@2d
    .line 112
    .end local p4    # "time":Ljava/lang/String;
    :cond_4
    const-string/jumbo p5, "UNAVAILABLE"

    #@30
    goto :goto_3
.end method

.method protected static final fromMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;
    .locals 6
    .param p0, "pckg"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/util/Map;
    .param p2, "clsldr"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 288
    if-nez p0, :cond_0

    #@3
    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    .line 290
    const-string/jumbo v1, "Package identifier must not be null."

    #@8
    .line 289
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 293
    :cond_0
    const/4 v2, 0x0

    #@d
    .line 294
    .local v2, "module":Ljava/lang/String;
    const/4 v3, 0x0

    #@e
    .line 295
    .local v3, "release":Ljava/lang/String;
    const/4 v4, 0x0

    #@f
    .line 297
    .local v4, "timestamp":Ljava/lang/String;
    if-eqz p1, :cond_5

    #@11
    .line 298
    const-string/jumbo v0, "info.module"

    #@14
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    .end local v2    # "module":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    #@1a
    .line 299
    .local v2, "module":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1f
    move-result v0

    #@20
    if-ge v0, v1, :cond_1

    #@22
    .line 300
    const/4 v2, 0x0

    #@23
    .line 302
    .end local v2    # "module":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "info.release"

    #@26
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    .end local v3    # "release":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    #@2c
    .line 303
    .local v3, "release":Ljava/lang/String;
    if-eqz v3, :cond_3

    #@2e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@31
    move-result v0

    #@32
    if-lt v0, v1, :cond_2

    #@34
    .line 304
    const-string/jumbo v0, "${pom.version}"

    #@37
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    .line 303
    if-eqz v0, :cond_3

    #@3d
    .line 305
    :cond_2
    const/4 v3, 0x0

    #@3e
    .line 307
    .end local v3    # "release":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "info.timestamp"

    #@41
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    .end local v4    # "timestamp":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    #@47
    .line 308
    .local v4, "timestamp":Ljava/lang/String;
    if-eqz v4, :cond_5

    #@49
    .line 309
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4c
    move-result v0

    #@4d
    if-lt v0, v1, :cond_4

    #@4f
    .line 310
    const-string/jumbo v0, "${mvn.timestamp}"

    #@52
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v0

    #@56
    .line 308
    if-eqz v0, :cond_5

    #@58
    .line 312
    :cond_4
    const/4 v4, 0x0

    #@59
    .line 315
    .end local v4    # "timestamp":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    #@5a
    .line 316
    .local v5, "clsldrstr":Ljava/lang/String;
    if-eqz p2, :cond_6

    #@5c
    .line 317
    invoke-virtual {p2}, Ljava/lang/ClassLoader;->toString()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    .line 319
    .end local v5    # "clsldrstr":Ljava/lang/String;
    :cond_6
    new-instance v0, Lorg/apache/http/util/VersionInfo;

    #@62
    move-object v1, p0

    #@63
    invoke-direct/range {v0 .. v5}, Lorg/apache/http/util/VersionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@66
    return-object v0
.end method

.method public static final loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;
    .locals 8
    .param p0, "pckg"    # Ljava/lang/String;
    .param p1, "clsldr"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 241
    if-nez p0, :cond_0

    #@2
    .line 242
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    .line 243
    const-string/jumbo v6, "Package identifier must not be null."

    #@7
    .line 242
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 246
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 247
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@14
    move-result-object p1

    #@15
    .line 249
    :cond_1
    const/4 v4, 0x0

    #@16
    .line 254
    .local v4, "vip":Ljava/util/Properties;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const/16 v6, 0x2e

    #@1d
    const/16 v7, 0x2f

    #@1f
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    const-string/jumbo v6, "/"

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    const-string/jumbo v6, "version.properties"

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    .line 253
    invoke-virtual {p1, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    move-result-object v1

    #@3d
    .line 255
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    #@3f
    .line 257
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    #@41
    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    #@44
    .line 258
    .local v2, "props":Ljava/util/Properties;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 259
    move-object v4, v2

    #@48
    .line 261
    .local v4, "vip":Ljava/util/Properties;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@4b
    .line 268
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "props":Ljava/util/Properties;
    .end local v4    # "vip":Ljava/util/Properties;
    :cond_2
    :goto_0
    const/4 v3, 0x0

    #@4c
    .line 269
    .local v3, "result":Lorg/apache/http/util/VersionInfo;
    if-eqz v4, :cond_3

    #@4e
    .line 270
    invoke-static {p0, v4, p1}, Lorg/apache/http/util/VersionInfo;->fromMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;

    #@51
    move-result-object v3

    #@52
    .line 272
    .end local v3    # "result":Lorg/apache/http/util/VersionInfo;
    :cond_3
    return-object v3

    #@53
    .line 260
    .restart local v1    # "is":Ljava/io/InputStream;
    .local v4, "vip":Ljava/util/Properties;
    :catchall_0
    move-exception v5

    #@54
    .line 261
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@57
    .line 260
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@58
    .line 264
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "vip":Ljava/util/Properties;
    :catch_0
    move-exception v0

    #@59
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static final loadVersionInfo([Ljava/lang/String;Ljava/lang/ClassLoader;)[Lorg/apache/http/util/VersionInfo;
    .locals 5
    .param p0, "pckgs"    # [Ljava/lang/String;
    .param p1, "clsldr"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 211
    if-nez p0, :cond_0

    #@2
    .line 212
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    .line 213
    const-string/jumbo v4, "Package identifier list must not be null."

    #@7
    .line 212
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 216
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@d
    array-length v3, p0

    #@e
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    .line 217
    .local v2, "vil":Ljava/util/ArrayList;
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    #@13
    if-ge v0, v3, :cond_2

    #@15
    .line 218
    aget-object v3, p0, v0

    #@17
    invoke-static {v3, p1}, Lorg/apache/http/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;

    #@1a
    move-result-object v1

    #@1b
    .line 219
    .local v1, "vi":Lorg/apache/http/util/VersionInfo;
    if-eqz v1, :cond_1

    #@1d
    .line 220
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 217
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 223
    .end local v1    # "vi":Lorg/apache/http/util/VersionInfo;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v3

    #@27
    new-array v3, v3, [Lorg/apache/http/util/VersionInfo;

    #@29
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, [Lorg/apache/http/util/VersionInfo;

    #@2f
    return-object v3
.end method


# virtual methods
.method public final getClassloader()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/http/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getModule()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/http/util/VersionInfo;->infoModule:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/http/util/VersionInfo;->infoPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getRelease()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/http/util/VersionInfo;->infoRelease:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getTimestamp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/http/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x3a

    #@2
    .line 175
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    .line 176
    iget-object v1, p0, Lorg/apache/http/util/VersionInfo;->infoPackage:Ljava/lang/String;

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@9
    move-result v1

    #@a
    add-int/lit8 v1, v1, 0x14

    #@c
    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoModule:Ljava/lang/String;

    #@e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@11
    move-result v2

    #@12
    add-int/2addr v1, v2

    #@13
    .line 177
    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoRelease:Ljava/lang/String;

    #@15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@18
    move-result v2

    #@19
    .line 176
    add-int/2addr v1, v2

    #@1a
    .line 177
    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    #@1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1f
    move-result v2

    #@20
    .line 176
    add-int/2addr v1, v2

    #@21
    .line 178
    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    #@23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@26
    move-result v2

    #@27
    .line 176
    add-int/2addr v1, v2

    #@28
    .line 175
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@2b
    .line 180
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "VersionInfo("

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    move-result-object v1

    #@32
    .line 181
    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoPackage:Ljava/lang/String;

    #@34
    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3b
    move-result-object v1

    #@3c
    .line 181
    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoModule:Ljava/lang/String;

    #@3e
    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    .line 185
    const-string/jumbo v1, "UNAVAILABLE"

    #@44
    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoRelease:Ljava/lang/String;

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v1

    #@4a
    if-nez v1, :cond_0

    #@4c
    .line 186
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4f
    move-result-object v1

    #@50
    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoRelease:Ljava/lang/String;

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@55
    .line 187
    :cond_0
    const-string/jumbo v1, "UNAVAILABLE"

    #@58
    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v1

    #@5e
    if-nez v1, :cond_1

    #@60
    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@63
    move-result-object v1

    #@64
    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@69
    .line 190
    :cond_1
    const/16 v1, 0x29

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6e
    .line 192
    const-string/jumbo v1, "UNAVAILABLE"

    #@71
    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v1

    #@77
    if-nez v1, :cond_2

    #@79
    .line 193
    const/16 v1, 0x40

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7e
    move-result-object v1

    #@7f
    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    #@81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@84
    .line 195
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    return-object v1
.end method
