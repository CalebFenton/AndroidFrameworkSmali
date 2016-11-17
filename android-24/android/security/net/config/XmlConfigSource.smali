.class public Landroid/security/net/config/XmlConfigSource;
.super Ljava/lang/Object;
.source "XmlConfigSource.java"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/XmlConfigSource$ParserException;
    }
.end annotation


# static fields
.field private static final CONFIG_BASE:I = 0x0

.field private static final CONFIG_DEBUG:I = 0x2

.field private static final CONFIG_DOMAIN:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDebugBuild:Z

.field private mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

.field private mDomainMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private final mResourceId:I

.field private final mTargetSdkVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/security/net/config/XmlConfigSource;-><init>(Landroid/content/Context;IZ)V

    #@4
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "debugBuild"    # Z

    #@0
    .prologue
    .line 53
    const/16 v0, 0x2710

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/security/net/config/XmlConfigSource;-><init>(Landroid/content/Context;IZI)V

    #@5
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "debugBuild"    # Z
    .param p4, "targetSdkVersion"    # I

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mLock:Ljava/lang/Object;

    #@a
    .line 58
    iput p2, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    #@c
    .line 59
    iput-object p1, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    #@e
    .line 60
    iput-boolean p3, p0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    #@10
    .line 61
    iput p4, p0, Landroid/security/net/config/XmlConfigSource;->mTargetSdkVersion:I

    #@12
    .line 57
    return-void
.end method

.method private addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V
    .locals 1
    .param p1, "debugConfigBuilder"    # Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .param p2, "builder"    # Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@0
    .prologue
    .line 302
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->hasCertificatesEntryRefs()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 307
    invoke-virtual {p2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->hasCertificatesEntryRefs()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 308
    return-void

    #@f
    .line 303
    :cond_0
    return-void

    #@10
    .line 311
    :cond_1
    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getCertificatesEntryRefs()Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p2, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@17
    .line 301
    return-void
.end method

.method private ensureInitialized()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 88
    iget-object v5, p0, Landroid/security/net/config/XmlConfigSource;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 89
    :try_start_0
    iget-boolean v2, p0, Landroid/security/net/config/XmlConfigSource;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v2, :cond_0

    #@8
    monitor-exit v5

    #@9
    .line 90
    return-void

    #@a
    .line 92
    :cond_0
    const/4 v1, 0x0

    #@b
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    iget-object v2, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v2

    #@11
    iget v4, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    #@13
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@16
    move-result-object v1

    #@17
    .line 93
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, v1}, Landroid/security/net/config/XmlConfigSource;->parseNetworkSecurityConfig(Landroid/content/res/XmlResourceParser;)V

    #@1a
    .line 94
    const/4 v2, 0x0

    #@1b
    iput-object v2, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    #@1d
    .line 95
    const/4 v2, 0x1

    #@1e
    iput-boolean v2, p0, Landroid/security/net/config/XmlConfigSource;->mInitialized:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@20
    .line 100
    if-eqz v1, :cond_1

    #@22
    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    #@27
    :try_start_3
    throw v3
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    .line 97
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    #@29
    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    #@2b
    new-instance v3, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v4, "Failed to parse XML configuration from "

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 99
    iget-object v4, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    #@39
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3c
    move-result-object v4

    #@3d
    iget v6, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    #@3f
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4e
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4f
    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@50
    monitor-exit v5

    #@51
    throw v2

    #@52
    .line 100
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v3

    #@53
    goto :goto_0

    #@54
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v2

    #@55
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@56
    :catchall_1
    move-exception v3

    #@57
    move-object v7, v3

    #@58
    move-object v3, v2

    #@59
    move-object v2, v7

    #@5a
    :goto_1
    if-eqz v1, :cond_2

    #@5c
    :try_start_6
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@5f
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    #@61
    :try_start_7
    throw v3

    #@62
    :catch_3
    move-exception v4

    #@63
    if-nez v3, :cond_3

    #@65
    move-object v3, v4

    #@66
    goto :goto_2

    #@67
    :cond_3
    if-eq v3, v4, :cond_2

    #@69
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@6c
    goto :goto_2

    #@6d
    :cond_4
    throw v2
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@6e
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_5
    monitor-exit v5

    #@6f
    .line 87
    return-void

    #@70
    .line 100
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_2
    move-exception v2

    #@71
    goto :goto_1
.end method

.method private static final getConfigString(I)Ljava/lang/String;
    .locals 3
    .param p0, "configType"    # I

    #@0
    .prologue
    .line 75
    packed-switch p0, :pswitch_data_0

    #@3
    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown config type: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 77
    :pswitch_0
    const-string/jumbo v0, "base-config"

    #@20
    return-object v0

    #@21
    .line 79
    :pswitch_1
    const-string/jumbo v0, "domain-config"

    #@24
    return-object v0

    #@25
    .line 81
    :pswitch_2
    const-string/jumbo v0, "debug-overrides"

    #@28
    return-object v0

    #@29
    .line 75
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseCertificatesEntry(Landroid/content/res/XmlResourceParser;Z)Landroid/security/net/config/CertificatesEntryRef;
    .locals 7
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "defaultOverridePins"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 188
    const-string/jumbo v4, "overridePins"

    #@5
    invoke-interface {p1, v5, v4, p2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@8
    move-result v0

    #@9
    .line 189
    .local v0, "overridePins":Z
    const-string/jumbo v4, "src"

    #@c
    invoke-interface {p1, v5, v4, v6}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    #@f
    move-result v2

    #@10
    .line 190
    .local v2, "sourceId":I
    const-string/jumbo v4, "src"

    #@13
    invoke-interface {p1, v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 191
    .local v3, "sourceString":Ljava/lang/String;
    const/4 v1, 0x0

    #@18
    .line 192
    .local v1, "source":Landroid/security/net/config/CertificateSource;
    if-nez v3, :cond_0

    #@1a
    .line 193
    new-instance v4, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@1c
    const-string/jumbo v5, "certificates element missing src attribute"

    #@1f
    invoke-direct {v4, p1, v5}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@22
    throw v4

    #@23
    .line 195
    :cond_0
    if-eq v2, v6, :cond_1

    #@25
    .line 197
    new-instance v1, Landroid/security/net/config/ResourceCertificateSource;

    #@27
    .end local v1    # "source":Landroid/security/net/config/CertificateSource;
    iget-object v4, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    #@29
    invoke-direct {v1, v2, v4}, Landroid/security/net/config/ResourceCertificateSource;-><init>(ILandroid/content/Context;)V

    #@2c
    .line 206
    .local v1, "source":Landroid/security/net/config/CertificateSource;
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2f
    .line 207
    new-instance v4, Landroid/security/net/config/CertificatesEntryRef;

    #@31
    invoke-direct {v4, v1, v0}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;Z)V

    #@34
    return-object v4

    #@35
    .line 198
    .local v1, "source":Landroid/security/net/config/CertificateSource;
    :cond_1
    const-string/jumbo v4, "system"

    #@38
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_2

    #@3e
    .line 199
    invoke-static {}, Landroid/security/net/config/SystemCertificateSource;->getInstance()Landroid/security/net/config/SystemCertificateSource;

    #@41
    move-result-object v1

    #@42
    .local v1, "source":Landroid/security/net/config/CertificateSource;
    goto :goto_0

    #@43
    .line 200
    .local v1, "source":Landroid/security/net/config/CertificateSource;
    :cond_2
    const-string/jumbo v4, "user"

    #@46
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_3

    #@4c
    .line 201
    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    #@4f
    move-result-object v1

    #@50
    .local v1, "source":Landroid/security/net/config/CertificateSource;
    goto :goto_0

    #@51
    .line 203
    .local v1, "source":Landroid/security/net/config/CertificateSource;
    :cond_3
    new-instance v4, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@53
    const-string/jumbo v5, "Unknown certificates src. Should be one of system|user|@resourceVal"

    #@56
    invoke-direct {v4, p1, v5}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@59
    throw v4
.end method

.method private parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;
    .locals 19
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "parentBuilder"    # Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .param p4, "configType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;",
            "Ljava/util/Set",
            "<",
            "Landroid/security/net/config/Domain;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    .local p2, "seenDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@2
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 231
    .local v5, "builders":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/security/net/config/NetworkSecurityConfig$Builder;Ljava/util/Set<Landroid/security/net/config/Domain;>;>;>;"
    new-instance v4, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@7
    invoke-direct {v4}, Landroid/security/net/config/NetworkSecurityConfig$Builder;-><init>()V

    #@a
    .line 232
    .local v4, "builder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    move-object/from16 v0, p3

    #@c
    invoke-virtual {v4, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@f
    .line 233
    new-instance v9, Landroid/util/ArraySet;

    #@11
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    #@14
    .line 234
    .local v9, "domains":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/Domain;>;"
    const/4 v13, 0x0

    #@15
    .line 235
    .local v13, "seenPinSet":Z
    const/4 v14, 0x0

    #@16
    .line 236
    .local v14, "seenTrustAnchors":Z
    const/16 v16, 0x2

    #@18
    move/from16 v0, p4

    #@1a
    move/from16 v1, v16

    #@1c
    if-ne v0, v1, :cond_1

    #@1e
    const/4 v7, 0x1

    #@1f
    .line 237
    .local v7, "defaultOverridePins":Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    .line 238
    .local v6, "configName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@26
    move-result v12

    #@27
    .line 241
    .local v12, "outerDepth":I
    new-instance v16, Landroid/util/Pair;

    #@29
    move-object/from16 v0, v16

    #@2b
    invoke-direct {v0, v4, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@2e
    move-object/from16 v0, v16

    #@30
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    .line 244
    const/4 v10, 0x0

    #@34
    .local v10, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    #@37
    move-result v16

    #@38
    move/from16 v0, v16

    #@3a
    if-ge v10, v0, :cond_4

    #@3c
    .line 245
    move-object/from16 v0, p1

    #@3e
    invoke-interface {v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    #@41
    move-result-object v11

    #@42
    .line 246
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v16, "hstsEnforced"

    #@45
    move-object/from16 v0, v16

    #@47
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v16

    #@4b
    if-eqz v16, :cond_2

    #@4d
    .line 249
    const/16 v16, 0x0

    #@4f
    .line 248
    move-object/from16 v0, p1

    #@51
    move/from16 v1, v16

    #@53
    invoke-interface {v0, v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    #@56
    move-result v16

    #@57
    .line 247
    move/from16 v0, v16

    #@59
    invoke-virtual {v4, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@5c
    .line 244
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 236
    .end local v6    # "configName":Ljava/lang/String;
    .end local v7    # "defaultOverridePins":Z
    .end local v10    # "i":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "outerDepth":I
    :cond_1
    const/4 v7, 0x0

    #@60
    .restart local v7    # "defaultOverridePins":Z
    goto :goto_0

    #@61
    .line 250
    .restart local v6    # "configName":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "outerDepth":I
    :cond_2
    const-string/jumbo v16, "cleartextTrafficPermitted"

    #@64
    move-object/from16 v0, v16

    #@66
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v16

    #@6a
    if-eqz v16, :cond_0

    #@6c
    .line 253
    const/16 v16, 0x1

    #@6e
    .line 252
    move-object/from16 v0, p1

    #@70
    move/from16 v1, v16

    #@72
    invoke-interface {v0, v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    #@75
    move-result v16

    #@76
    .line 251
    move/from16 v0, v16

    #@78
    invoke-virtual {v4, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@7b
    goto :goto_2

    #@7c
    .line 264
    .end local v11    # "name":Ljava/lang/String;
    .local v15, "tagName":Ljava/lang/String;
    :cond_3
    invoke-direct/range {p0 .. p2}, Landroid/security/net/config/XmlConfigSource;->parseDomain(Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/security/net/config/Domain;

    #@7f
    move-result-object v8

    #@80
    .line 265
    .local v8, "domain":Landroid/security/net/config/Domain;
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@83
    .line 257
    .end local v8    # "domain":Landroid/security/net/config/Domain;
    .end local v15    # "tagName":Ljava/lang/String;
    :cond_4
    :goto_3
    move-object/from16 v0, p1

    #@85
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@88
    move-result v16

    #@89
    if-eqz v16, :cond_d

    #@8b
    .line 258
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@8e
    move-result-object v15

    #@8f
    .line 259
    .restart local v15    # "tagName":Ljava/lang/String;
    const-string/jumbo v16, "domain"

    #@92
    move-object/from16 v0, v16

    #@94
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v16

    #@98
    if-eqz v16, :cond_5

    #@9a
    .line 260
    const/16 v16, 0x1

    #@9c
    move/from16 v0, p4

    #@9e
    move/from16 v1, v16

    #@a0
    if-eq v0, v1, :cond_3

    #@a2
    .line 261
    new-instance v16, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@a4
    .line 262
    new-instance v17, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v18, "domain element not allowed in "

    #@ac
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v17

    #@b0
    invoke-static/range {p4 .. p4}, Landroid/security/net/config/XmlConfigSource;->getConfigString(I)Ljava/lang/String;

    #@b3
    move-result-object v18

    #@b4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v17

    #@b8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v17

    #@bc
    .line 261
    move-object/from16 v0, v16

    #@be
    move-object/from16 v1, p1

    #@c0
    move-object/from16 v2, v17

    #@c2
    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@c5
    throw v16

    #@c6
    .line 266
    :cond_5
    const-string/jumbo v16, "trust-anchors"

    #@c9
    move-object/from16 v0, v16

    #@cb
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v16

    #@cf
    if-eqz v16, :cond_7

    #@d1
    .line 267
    if-eqz v14, :cond_6

    #@d3
    .line 268
    new-instance v16, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@d5
    .line 269
    const-string/jumbo v17, "Multiple trust-anchor elements not allowed"

    #@d8
    .line 268
    move-object/from16 v0, v16

    #@da
    move-object/from16 v1, p1

    #@dc
    move-object/from16 v2, v17

    #@de
    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@e1
    throw v16

    #@e2
    .line 272
    :cond_6
    move-object/from16 v0, p0

    #@e4
    move-object/from16 v1, p1

    #@e6
    invoke-direct {v0, v1, v7}, Landroid/security/net/config/XmlConfigSource;->parseTrustAnchors(Landroid/content/res/XmlResourceParser;Z)Ljava/util/Collection;

    #@e9
    move-result-object v16

    #@ea
    .line 271
    move-object/from16 v0, v16

    #@ec
    invoke-virtual {v4, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@ef
    .line 273
    const/4 v14, 0x1

    #@f0
    goto :goto_3

    #@f1
    .line 274
    :cond_7
    const-string/jumbo v16, "pin-set"

    #@f4
    move-object/from16 v0, v16

    #@f6
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f9
    move-result v16

    #@fa
    if-eqz v16, :cond_a

    #@fc
    .line 275
    const/16 v16, 0x1

    #@fe
    move/from16 v0, p4

    #@100
    move/from16 v1, v16

    #@102
    if-eq v0, v1, :cond_8

    #@104
    .line 276
    new-instance v16, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@106
    .line 277
    new-instance v17, Ljava/lang/StringBuilder;

    #@108
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v18, "pin-set element not allowed in "

    #@10e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v17

    #@112
    invoke-static/range {p4 .. p4}, Landroid/security/net/config/XmlConfigSource;->getConfigString(I)Ljava/lang/String;

    #@115
    move-result-object v18

    #@116
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v17

    #@11a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v17

    #@11e
    .line 276
    move-object/from16 v0, v16

    #@120
    move-object/from16 v1, p1

    #@122
    move-object/from16 v2, v17

    #@124
    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@127
    throw v16

    #@128
    .line 279
    :cond_8
    if-eqz v13, :cond_9

    #@12a
    .line 280
    new-instance v16, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@12c
    const-string/jumbo v17, "Multiple pin-set elements not allowed"

    #@12f
    move-object/from16 v0, v16

    #@131
    move-object/from16 v1, p1

    #@133
    move-object/from16 v2, v17

    #@135
    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@138
    throw v16

    #@139
    .line 282
    :cond_9
    invoke-direct/range {p0 .. p1}, Landroid/security/net/config/XmlConfigSource;->parsePinSet(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/PinSet;

    #@13c
    move-result-object v16

    #@13d
    move-object/from16 v0, v16

    #@13f
    invoke-virtual {v4, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setPinSet(Landroid/security/net/config/PinSet;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@142
    .line 283
    const/4 v13, 0x1

    #@143
    goto/16 :goto_3

    #@145
    .line 284
    :cond_a
    const-string/jumbo v16, "domain-config"

    #@148
    move-object/from16 v0, v16

    #@14a
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14d
    move-result v16

    #@14e
    if-eqz v16, :cond_c

    #@150
    .line 285
    const/16 v16, 0x1

    #@152
    move/from16 v0, p4

    #@154
    move/from16 v1, v16

    #@156
    if-eq v0, v1, :cond_b

    #@158
    .line 286
    new-instance v16, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@15a
    .line 287
    new-instance v17, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    const-string/jumbo v18, "Nested domain-config not allowed in "

    #@162
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v17

    #@166
    invoke-static/range {p4 .. p4}, Landroid/security/net/config/XmlConfigSource;->getConfigString(I)Ljava/lang/String;

    #@169
    move-result-object v18

    #@16a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v17

    #@16e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v17

    #@172
    .line 286
    move-object/from16 v0, v16

    #@174
    move-object/from16 v1, p1

    #@176
    move-object/from16 v2, v17

    #@178
    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@17b
    throw v16

    #@17c
    .line 289
    :cond_b
    move-object/from16 v0, p0

    #@17e
    move-object/from16 v1, p1

    #@180
    move-object/from16 v2, p2

    #@182
    move/from16 v3, p4

    #@184
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    #@187
    move-result-object v16

    #@188
    move-object/from16 v0, v16

    #@18a
    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@18d
    goto/16 :goto_3

    #@18f
    .line 291
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@192
    goto/16 :goto_3

    #@194
    .line 294
    .end local v15    # "tagName":Ljava/lang/String;
    :cond_d
    const/16 v16, 0x1

    #@196
    move/from16 v0, p4

    #@198
    move/from16 v1, v16

    #@19a
    if-ne v0, v1, :cond_e

    #@19c
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    #@19f
    move-result v16

    #@1a0
    if-eqz v16, :cond_e

    #@1a2
    .line 295
    new-instance v16, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@1a4
    const-string/jumbo v17, "No domain elements in domain-config"

    #@1a7
    move-object/from16 v0, v16

    #@1a9
    move-object/from16 v1, p1

    #@1ab
    move-object/from16 v2, v17

    #@1ad
    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@1b0
    throw v16

    #@1b1
    .line 297
    :cond_e
    return-object v5
.end method

.method private parseDebugOverridesResource()Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 395
    iget-object v9, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v7

    #@7
    .line 396
    .local v7, "resources":Landroid/content/res/Resources;
    iget v9, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    #@9
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 397
    .local v4, "packageName":Ljava/lang/String;
    iget v9, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    #@f
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 398
    .local v2, "entryName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v9

    #@1c
    const-string/jumbo v11, "_debug"

    #@1f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v9

    #@23
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v9

    #@27
    const-string/jumbo v11, "xml"

    #@2a
    invoke-virtual {v7, v9, v11, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    move-result v6

    #@2e
    .line 400
    .local v6, "resId":I
    if-nez v6, :cond_0

    #@30
    .line 401
    return-object v10

    #@31
    .line 403
    :cond_0
    const/4 v1, 0x0

    #@32
    .line 405
    .local v1, "debugConfigBuilder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    const/4 v5, 0x0

    #@33
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@36
    move-result-object v5

    #@37
    .line 406
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v9, "network-security-config"

    #@3a
    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@3d
    .line 407
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@40
    move-result v3

    #@41
    .line 408
    .local v3, "outerDepth":I
    const/4 v8, 0x0

    #@42
    .line 409
    .end local v1    # "debugConfigBuilder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .local v8, "seenDebugOverrides":Z
    :goto_0
    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@45
    move-result v9

    #@46
    if-eqz v9, :cond_5

    #@48
    .line 410
    const-string/jumbo v9, "debug-overrides"

    #@4b
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@4e
    move-result-object v11

    #@4f
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v9

    #@53
    if-eqz v9, :cond_4

    #@55
    .line 411
    if-eqz v8, :cond_2

    #@57
    .line 412
    new-instance v9, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@59
    const-string/jumbo v11, "Only one debug-overrides allowed"

    #@5c
    invoke-direct {v9, v5, v11}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@5f
    throw v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@60
    .line 425
    .end local v3    # "outerDepth":I
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "seenDebugOverrides":Z
    :catch_0
    move-exception v9

    #@61
    :try_start_1
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    :catchall_0
    move-exception v10

    #@63
    move-object v13, v10

    #@64
    move-object v10, v9

    #@65
    move-object v9, v13

    #@66
    :goto_1
    if-eqz v5, :cond_1

    #@68
    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    #@6b
    :cond_1
    :goto_2
    if-eqz v10, :cond_8

    #@6d
    throw v10

    #@6e
    .line 414
    .restart local v3    # "outerDepth":I
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "seenDebugOverrides":Z
    :cond_2
    :try_start_3
    iget-boolean v9, p0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    #@70
    if-eqz v9, :cond_3

    #@72
    .line 416
    const/4 v9, 0x0

    #@73
    const/4 v11, 0x0

    #@74
    const/4 v12, 0x2

    #@75
    invoke-direct {p0, v5, v9, v11, v12}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    #@78
    move-result-object v9

    #@79
    const/4 v11, 0x0

    #@7a
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7d
    move-result-object v9

    #@7e
    check-cast v9, Landroid/util/Pair;

    #@80
    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@82
    move-object v0, v9

    #@83
    check-cast v0, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@85
    move-object v1, v0

    #@86
    .line 420
    :goto_3
    const/4 v8, 0x1

    #@87
    goto :goto_0

    #@88
    .line 418
    :cond_3
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@8b
    goto :goto_3

    #@8c
    .line 425
    .end local v3    # "outerDepth":I
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "seenDebugOverrides":Z
    :catchall_1
    move-exception v9

    #@8d
    goto :goto_1

    #@8e
    .line 422
    .restart local v3    # "outerDepth":I
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "seenDebugOverrides":Z
    :cond_4
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@91
    goto :goto_0

    #@92
    .line 425
    :cond_5
    if-eqz v5, :cond_6

    #@94
    :try_start_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    #@97
    :cond_6
    :goto_4
    if-eqz v10, :cond_9

    #@99
    throw v10

    #@9a
    :catch_1
    move-exception v10

    #@9b
    goto :goto_4

    #@9c
    .end local v3    # "outerDepth":I
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "seenDebugOverrides":Z
    :catch_2
    move-exception v11

    #@9d
    if-nez v10, :cond_7

    #@9f
    move-object v10, v11

    #@a0
    goto :goto_2

    #@a1
    :cond_7
    if-eq v10, v11, :cond_1

    #@a3
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@a6
    goto :goto_2

    #@a7
    :cond_8
    throw v9

    #@a8
    .line 427
    .restart local v3    # "outerDepth":I
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "seenDebugOverrides":Z
    :cond_9
    return-object v1
.end method

.method private parseDomain(Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/security/net/config/Domain;
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/security/net/config/Domain;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    .local p2, "seenDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v2, "includeSubdomains"

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    invoke-interface {p1, v3, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@8
    move-result v1

    #@9
    .line 168
    .local v1, "includeSubdomains":Z
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    #@c
    move-result v2

    #@d
    const/4 v3, 0x4

    #@e
    if-eq v2, v3, :cond_0

    #@10
    .line 169
    new-instance v2, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@12
    const-string/jumbo v3, "Domain name missing"

    #@15
    invoke-direct {v2, p1, v3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 171
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 172
    .local v0, "domain":Ljava/lang/String;
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    #@2a
    move-result v2

    #@2b
    const/4 v3, 0x3

    #@2c
    if-eq v2, v3, :cond_1

    #@2e
    .line 173
    new-instance v2, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@30
    const-string/jumbo v3, "domain contains additional elements"

    #@33
    invoke-direct {v2, p1, v3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@36
    throw v2

    #@37
    .line 178
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-nez v2, :cond_2

    #@3d
    .line 179
    new-instance v2, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    const-string/jumbo v4, " has already been specified"

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-direct {v2, p1, v3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@56
    throw v2

    #@57
    .line 181
    :cond_2
    new-instance v2, Landroid/security/net/config/Domain;

    #@59
    invoke-direct {v2, v0, v1}, Landroid/security/net/config/Domain;-><init>(Ljava/lang/String;Z)V

    #@5c
    return-object v2
.end method

.method private parseNetworkSecurityConfig(Landroid/content/res/XmlResourceParser;)V
    .locals 24
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 316
    new-instance v20, Landroid/util/ArraySet;

    #@2
    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 317
    .local v20, "seenDomains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    #@7
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 318
    .local v7, "builders":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/security/net/config/NetworkSecurityConfig$Builder;Ljava/util/Set<Landroid/security/net/config/Domain;>;>;>;"
    const/4 v5, 0x0

    #@b
    .line 319
    .local v5, "baseConfigBuilder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    const/4 v10, 0x0

    #@c
    .line 320
    .local v10, "debugConfigBuilder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    const/16 v19, 0x0

    #@e
    .line 321
    .local v19, "seenDebugOverrides":Z
    const/16 v18, 0x0

    #@10
    .line 323
    .local v18, "seenBaseConfig":Z
    const-string/jumbo v21, "network-security-config"

    #@13
    move-object/from16 v0, p1

    #@15
    move-object/from16 v1, v21

    #@17
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@1a
    .line 324
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@1d
    move-result v16

    #@1e
    .line 325
    .end local v5    # "baseConfigBuilder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .end local v10    # "debugConfigBuilder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .local v16, "outerDepth":I
    :goto_0
    move-object/from16 v0, p1

    #@20
    move/from16 v1, v16

    #@22
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@25
    move-result v21

    #@26
    if-eqz v21, :cond_6

    #@28
    .line 326
    const-string/jumbo v21, "base-config"

    #@2b
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@2e
    move-result-object v22

    #@2f
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v21

    #@33
    if-eqz v21, :cond_1

    #@35
    .line 327
    if-eqz v18, :cond_0

    #@37
    .line 328
    new-instance v21, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@39
    const-string/jumbo v22, "Only one base-config allowed"

    #@3c
    move-object/from16 v0, v21

    #@3e
    move-object/from16 v1, p1

    #@40
    move-object/from16 v2, v22

    #@42
    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@45
    throw v21

    #@46
    .line 330
    :cond_0
    const/16 v18, 0x1

    #@48
    .line 332
    const/16 v21, 0x0

    #@4a
    const/16 v22, 0x0

    #@4c
    move-object/from16 v0, p0

    #@4e
    move-object/from16 v1, p1

    #@50
    move-object/from16 v2, v20

    #@52
    move-object/from16 v3, v21

    #@54
    move/from16 v4, v22

    #@56
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    #@59
    move-result-object v21

    #@5a
    const/16 v22, 0x0

    #@5c
    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v21

    #@60
    check-cast v21, Landroid/util/Pair;

    #@62
    move-object/from16 v0, v21

    #@64
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@66
    check-cast v5, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@68
    .local v5, "baseConfigBuilder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    goto :goto_0

    #@69
    .line 333
    .end local v5    # "baseConfigBuilder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    :cond_1
    const-string/jumbo v21, "domain-config"

    #@6c
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@6f
    move-result-object v22

    #@70
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v21

    #@74
    if-eqz v21, :cond_2

    #@76
    .line 335
    const/16 v21, 0x1

    #@78
    move-object/from16 v0, p0

    #@7a
    move-object/from16 v1, p1

    #@7c
    move-object/from16 v2, v20

    #@7e
    move/from16 v3, v21

    #@80
    invoke-direct {v0, v1, v2, v5, v3}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    #@83
    move-result-object v21

    #@84
    .line 334
    move-object/from16 v0, v21

    #@86
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@89
    goto :goto_0

    #@8a
    .line 336
    :cond_2
    const-string/jumbo v21, "debug-overrides"

    #@8d
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@90
    move-result-object v22

    #@91
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v21

    #@95
    if-eqz v21, :cond_5

    #@97
    .line 337
    if-eqz v19, :cond_3

    #@99
    .line 338
    new-instance v21, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@9b
    const-string/jumbo v22, "Only one debug-overrides allowed"

    #@9e
    move-object/from16 v0, v21

    #@a0
    move-object/from16 v1, p1

    #@a2
    move-object/from16 v2, v22

    #@a4
    invoke-direct {v0, v1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@a7
    throw v21

    #@a8
    .line 340
    :cond_3
    move-object/from16 v0, p0

    #@aa
    iget-boolean v0, v0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    #@ac
    move/from16 v21, v0

    #@ae
    if-eqz v21, :cond_4

    #@b0
    .line 342
    const/16 v21, 0x0

    #@b2
    const/16 v22, 0x0

    #@b4
    const/16 v23, 0x2

    #@b6
    move-object/from16 v0, p0

    #@b8
    move-object/from16 v1, p1

    #@ba
    move-object/from16 v2, v21

    #@bc
    move-object/from16 v3, v22

    #@be
    move/from16 v4, v23

    #@c0
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    #@c3
    move-result-object v21

    #@c4
    const/16 v22, 0x0

    #@c6
    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c9
    move-result-object v21

    #@ca
    check-cast v21, Landroid/util/Pair;

    #@cc
    move-object/from16 v0, v21

    #@ce
    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@d0
    check-cast v10, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@d2
    .line 346
    :goto_1
    const/16 v19, 0x1

    #@d4
    goto/16 :goto_0

    #@d6
    .line 344
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@d9
    goto :goto_1

    #@da
    .line 348
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@dd
    goto/16 :goto_0

    #@df
    .line 353
    :cond_6
    move-object/from16 v0, p0

    #@e1
    iget-boolean v0, v0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    #@e3
    move/from16 v21, v0

    #@e5
    if-eqz v21, :cond_7

    #@e7
    if-nez v10, :cond_7

    #@e9
    .line 354
    invoke-direct/range {p0 .. p0}, Landroid/security/net/config/XmlConfigSource;->parseDebugOverridesResource()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@ec
    move-result-object v10

    #@ed
    .line 360
    :cond_7
    move-object/from16 v0, p0

    #@ef
    iget v0, v0, Landroid/security/net/config/XmlConfigSource;->mTargetSdkVersion:I

    #@f1
    move/from16 v21, v0

    #@f3
    invoke-static/range {v21 .. v21}, Landroid/security/net/config/NetworkSecurityConfig;->getDefaultBuilder(I)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@f6
    move-result-object v17

    #@f7
    .line 361
    .local v17, "platformDefaultBuilder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    move-object/from16 v0, p0

    #@f9
    move-object/from16 v1, v17

    #@fb
    invoke-direct {v0, v10, v1}, Landroid/security/net/config/XmlConfigSource;->addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V

    #@fe
    .line 362
    if-eqz v5, :cond_a

    #@100
    .line 363
    move-object/from16 v0, v17

    #@102
    invoke-virtual {v5, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@105
    .line 364
    move-object/from16 v0, p0

    #@107
    invoke-direct {v0, v10, v5}, Landroid/security/net/config/XmlConfigSource;->addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V

    #@10a
    .line 369
    :goto_2
    new-instance v9, Landroid/util/ArraySet;

    #@10c
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    #@10f
    .line 371
    .local v9, "configs":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@112
    move-result-object v15

    #@113
    .local v15, "entry$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@116
    move-result v21

    #@117
    if-eqz v21, :cond_b

    #@119
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11c
    move-result-object v14

    #@11d
    check-cast v14, Landroid/util/Pair;

    #@11f
    .line 372
    .local v14, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/NetworkSecurityConfig$Builder;Ljava/util/Set<Landroid/security/net/config/Domain;>;>;"
    iget-object v6, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@121
    check-cast v6, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@123
    .line 373
    .local v6, "builder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    iget-object v13, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@125
    check-cast v13, Ljava/util/Set;

    #@127
    .line 380
    .local v13, "domains":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/Domain;>;"
    invoke-virtual {v6}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@12a
    move-result-object v21

    #@12b
    if-nez v21, :cond_9

    #@12d
    .line 381
    invoke-virtual {v6, v5}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@130
    .line 383
    :cond_9
    move-object/from16 v0, p0

    #@132
    invoke-direct {v0, v10, v6}, Landroid/security/net/config/XmlConfigSource;->addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V

    #@135
    .line 384
    invoke-virtual {v6}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    #@138
    move-result-object v8

    #@139
    .line 385
    .local v8, "config":Landroid/security/net/config/NetworkSecurityConfig;
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13c
    move-result-object v12

    #@13d
    .local v12, "domain$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@140
    move-result v21

    #@141
    if-eqz v21, :cond_8

    #@143
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@146
    move-result-object v11

    #@147
    check-cast v11, Landroid/security/net/config/Domain;

    #@149
    .line 386
    .local v11, "domain":Landroid/security/net/config/Domain;
    new-instance v21, Landroid/util/Pair;

    #@14b
    move-object/from16 v0, v21

    #@14d
    invoke-direct {v0, v11, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@150
    move-object/from16 v0, v21

    #@152
    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@155
    goto :goto_3

    #@156
    .line 366
    .end local v6    # "builder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .end local v8    # "config":Landroid/security/net/config/NetworkSecurityConfig;
    .end local v9    # "configs":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;>;"
    .end local v11    # "domain":Landroid/security/net/config/Domain;
    .end local v12    # "domain$iterator":Ljava/util/Iterator;
    .end local v13    # "domains":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/Domain;>;"
    .end local v14    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/NetworkSecurityConfig$Builder;Ljava/util/Set<Landroid/security/net/config/Domain;>;>;"
    .end local v15    # "entry$iterator":Ljava/util/Iterator;
    :cond_a
    move-object/from16 v5, v17

    #@158
    .restart local v5    # "baseConfigBuilder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    goto :goto_2

    #@159
    .line 389
    .end local v5    # "baseConfigBuilder":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .restart local v9    # "configs":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;>;"
    .restart local v15    # "entry$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-virtual {v5}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    #@15c
    move-result-object v21

    #@15d
    move-object/from16 v0, v21

    #@15f
    move-object/from16 v1, p0

    #@161
    iput-object v0, v1, Landroid/security/net/config/XmlConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    #@163
    .line 390
    move-object/from16 v0, p0

    #@165
    iput-object v9, v0, Landroid/security/net/config/XmlConfigSource;->mDomainMap:Ljava/util/Set;

    #@167
    .line 315
    return-void
.end method

.method private parsePin(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/Pin;
    .locals 8
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    const-string/jumbo v5, "digest"

    #@3
    const/4 v6, 0x0

    #@4
    invoke-interface {p1, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 107
    .local v2, "digestAlgorithm":Ljava/lang/String;
    invoke-static {v2}, Landroid/security/net/config/Pin;->isSupportedDigestAlgorithm(Ljava/lang/String;)Z

    #@b
    move-result v5

    #@c
    if-nez v5, :cond_0

    #@e
    .line 108
    new-instance v5, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@10
    new-instance v6, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v7, "Unsupported pin digest algorithm: "

    #@18
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    invoke-direct {v5, p1, v6}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@27
    throw v5

    #@28
    .line 111
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    #@2b
    move-result v5

    #@2c
    const/4 v6, 0x4

    #@2d
    if-eq v5, v6, :cond_1

    #@2f
    .line 112
    new-instance v5, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@31
    const-string/jumbo v6, "Missing pin digest"

    #@34
    invoke-direct {v5, p1, v6}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@37
    throw v5

    #@38
    .line 114
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 115
    .local v1, "digest":Ljava/lang/String;
    const/4 v0, 0x0

    #@41
    .line 117
    .local v0, "decodedDigest":[B
    const/4 v5, 0x0

    #@42
    :try_start_0
    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    move-result-object v0

    #@46
    .line 121
    .local v0, "decodedDigest":[B
    invoke-static {v2}, Landroid/security/net/config/Pin;->getDigestLength(Ljava/lang/String;)I

    #@49
    move-result v4

    #@4a
    .line 122
    .local v4, "expectedLength":I
    array-length v5, v0

    #@4b
    if-eq v5, v4, :cond_2

    #@4d
    .line 123
    new-instance v5, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@4f
    new-instance v6, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v7, "digest length "

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    array-length v7, v0

    #@5c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    .line 124
    const-string/jumbo v7, " does not match expected length for "

    #@63
    .line 123
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    .line 124
    const-string/jumbo v7, " of "

    #@6e
    .line 123
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v6

    #@76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    invoke-direct {v5, p1, v6}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@7d
    throw v5

    #@7e
    .line 118
    .end local v4    # "expectedLength":I
    .local v0, "decodedDigest":[B
    :catch_0
    move-exception v3

    #@7f
    .line 119
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@81
    const-string/jumbo v6, "Invalid pin digest"

    #@84
    invoke-direct {v5, p1, v6, v3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@87
    throw v5

    #@88
    .line 127
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .local v0, "decodedDigest":[B
    .restart local v4    # "expectedLength":I
    :cond_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    #@8b
    move-result v5

    #@8c
    const/4 v6, 0x3

    #@8d
    if-eq v5, v6, :cond_3

    #@8f
    .line 128
    new-instance v5, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@91
    const-string/jumbo v6, "pin contains additional elements"

    #@94
    invoke-direct {v5, p1, v6}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@97
    throw v5

    #@98
    .line 130
    :cond_3
    new-instance v5, Landroid/security/net/config/Pin;

    #@9a
    invoke-direct {v5, v2, v0}, Landroid/security/net/config/Pin;-><init>(Ljava/lang/String;[B)V

    #@9d
    return-object v5
.end method

.method private parsePinSet(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/PinSet;
    .locals 11
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 135
    const-string/jumbo v9, "expiration"

    #@4
    invoke-interface {p1, v10, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 136
    .local v2, "expirationDate":Ljava/lang/String;
    const-wide v4, 0x7fffffffffffffffL

    #@d
    .line 137
    .local v4, "expirationTimestampMilis":J
    if-eqz v2, :cond_1

    #@f
    .line 139
    :try_start_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    #@11
    const-string/jumbo v9, "yyyy-MM-dd"

    #@14
    invoke-direct {v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@17
    .line 140
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v9, 0x0

    #@18
    invoke-virtual {v7, v9}, Ljava/text/DateFormat;->setLenient(Z)V

    #@1b
    .line 141
    invoke-virtual {v7, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@1e
    move-result-object v0

    #@1f
    .line 142
    .local v0, "date":Ljava/util/Date;
    if-nez v0, :cond_0

    #@21
    .line 143
    new-instance v9, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@23
    const-string/jumbo v10, "Invalid expiration date in pin-set"

    #@26
    invoke-direct {v9, p1, v10}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@29
    throw v9
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 146
    .end local v0    # "date":Ljava/util/Date;
    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    #@2b
    .line 147
    .local v1, "e":Ljava/text/ParseException;
    new-instance v9, Landroid/security/net/config/XmlConfigSource$ParserException;

    #@2d
    const-string/jumbo v10, "Invalid expiration date in pin-set"

    #@30
    invoke-direct {v9, p1, v10, v1}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v9

    #@34
    .line 145
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v7    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    #@37
    move-result-wide v4

    #@38
    .line 151
    .end local v0    # "date":Ljava/util/Date;
    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@3b
    move-result v3

    #@3c
    .line 152
    .local v3, "outerDepth":I
    new-instance v6, Landroid/util/ArraySet;

    #@3e
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    #@41
    .line 153
    .local v6, "pins":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/Pin;>;"
    :goto_0
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@44
    move-result v9

    #@45
    if-eqz v9, :cond_3

    #@47
    .line 154
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    .line 155
    .local v8, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "pin"

    #@4e
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v9

    #@52
    if-eqz v9, :cond_2

    #@54
    .line 156
    invoke-direct {p0, p1}, Landroid/security/net/config/XmlConfigSource;->parsePin(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/Pin;

    #@57
    move-result-object v9

    #@58
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_0

    #@5c
    .line 158
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5f
    goto :goto_0

    #@60
    .line 161
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_3
    new-instance v9, Landroid/security/net/config/PinSet;

    #@62
    invoke-direct {v9, v6, v4, v5}, Landroid/security/net/config/PinSet;-><init>(Ljava/util/Set;J)V

    #@65
    return-object v9
.end method

.method private parseTrustAnchors(Landroid/content/res/XmlResourceParser;Z)Ljava/util/Collection;
    .locals 4
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "defaultOverridePins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 213
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@3
    move-result v1

    #@4
    .line 214
    .local v1, "outerDepth":I
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 215
    .local v0, "anchors":Ljava/util/List;, "Ljava/util/List<Landroid/security/net/config/CertificatesEntryRef;>;"
    :goto_0
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 216
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 217
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "certificates"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 218
    invoke-direct {p0, p1, p2}, Landroid/security/net/config/XmlConfigSource;->parseCertificatesEntry(Landroid/content/res/XmlResourceParser;Z)Landroid/security/net/config/CertificatesEntryRef;

    #@1f
    move-result-object v3

    #@20
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_0

    #@24
    .line 220
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@27
    goto :goto_0

    #@28
    .line 223
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 1

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Landroid/security/net/config/XmlConfigSource;->ensureInitialized()V

    #@3
    .line 71
    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    #@5
    return-object v0
.end method

.method public getPerDomainConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Landroid/security/net/config/XmlConfigSource;->ensureInitialized()V

    #@3
    .line 66
    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mDomainMap:Ljava/util/Set;

    #@5
    return-object v0
.end method
