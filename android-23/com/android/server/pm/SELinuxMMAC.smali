.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# static fields
.field private static final BASE_MAC_PERMISSIONS:Ljava/lang/String;

.field private static final BASE_SEAPP_CONTEXTS:Ljava/lang/String; = "/seapp_contexts"

.field private static final BASE_VERSION_FILE:Ljava/lang/String; = "/selinux_version"

.field private static final DATA_MAC_PERMISSIONS:Ljava/lang/String;

.field private static final DATA_SEAPP_CONTEXTS:Ljava/lang/String;

.field private static final DATA_VERSION_FILE:Ljava/lang/String;

.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final DEBUG_POLICY_ORDER:Z = false

.field private static final MAC_PERMISSIONS:Ljava/lang/String;

.field private static final SEAPP_CONTEXTS:Ljava/lang/String;

.field private static final SEAPP_HASH_FILE:Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field private static final USE_OVERRIDE_POLICY:Z

.field private static sPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/Policy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    #@7
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "/security/current/selinux_version"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 67
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_VERSION_FILE:Ljava/lang/String;

    #@21
    .line 74
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->useOverridePolicy()Z

    #@24
    move-result v0

    #@25
    sput-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    #@27
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    const-string/jumbo v1, "/security/current/mac_permissions.xml"

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    .line 77
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_MAC_PERMISSIONS:Ljava/lang/String;

    #@41
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    const-string/jumbo v1, "/etc/security/mac_permissions.xml"

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    .line 81
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BASE_MAC_PERMISSIONS:Ljava/lang/String;

    #@5b
    .line 85
    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    #@5d
    if-eqz v0, :cond_0

    #@5f
    .line 86
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_MAC_PERMISSIONS:Ljava/lang/String;

    #@61
    .line 85
    :goto_0
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    #@63
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    const-string/jumbo v1, "/security/current/seapp_contexts"

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    .line 89
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_SEAPP_CONTEXTS:Ljava/lang/String;

    #@7d
    .line 96
    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    #@7f
    if-eqz v0, :cond_1

    #@81
    .line 97
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_SEAPP_CONTEXTS:Ljava/lang/String;

    #@83
    .line 96
    :goto_1
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    #@85
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    const-string/jumbo v1, "/system/seapp_hash"

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v0

    #@a1
    .line 100
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    #@a3
    .line 54
    return-void

    #@a4
    .line 86
    :cond_0
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BASE_MAC_PERMISSIONS:Ljava/lang/String;

    #@a6
    goto :goto_0

    #@a7
    .line 97
    :cond_1
    const-string/jumbo v0, "/seapp_contexts"

    #@aa
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)Z
    .locals 5
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 350
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    #@2
    monitor-enter v4

    #@3
    .line 351
    :try_start_0
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    #@5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "policy$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/pm/Policy;

    #@15
    .line 352
    .local v0, "policy":Lcom/android/server/pm/Policy;
    invoke-virtual {v0, p0}, Lcom/android/server/pm/Policy;->getMatchedSeinfo(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 353
    .local v2, "seinfo":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@1b
    .line 354
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 359
    const/4 v3, 0x1

    #@20
    monitor-exit v4

    #@21
    return v3

    #@22
    .end local v0    # "policy":Lcom/android/server/pm/Policy;
    .end local v2    # "seinfo":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    #@23
    .line 368
    const/4 v3, 0x0

    #@24
    return v3

    #@25
    .line 350
    .end local v1    # "policy$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@26
    monitor-exit v4

    #@27
    throw v3
.end method

.method private static dumpHash(Ljava/io/File;[B)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 421
    const/4 v0, 0x0

    #@1
    .line 422
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    #@2
    .line 424
    .local v2, "tmp":Ljava/io/File;
    :try_start_0
    const-string/jumbo v3, "seapp_hash"

    #@5
    const-string/jumbo v4, ".journal"

    #@8
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@b
    move-result-object v5

    #@c
    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    #@f
    move-result-object v2

    #@10
    .line 425
    .local v2, "tmp":Ljava/io/File;
    const/4 v3, 0x1

    #@11
    invoke-virtual {v2, v3}, Ljava/io/File;->setReadable(Z)Z

    #@14
    .line 426
    new-instance v1, Ljava/io/FileOutputStream;

    #@16
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@19
    .line 427
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    #@1c
    .line 428
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    #@23
    .line 429
    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_1

    #@29
    .line 430
    new-instance v3, Ljava/io/IOException;

    #@2b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "Failure renaming "

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@46
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 432
    :catchall_0
    move-exception v3

    #@48
    move-object v0, v1

    #@49
    .line 433
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "tmp":Ljava/io/File;
    :goto_0
    if-eqz v2, :cond_0

    #@4b
    .line 434
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@4e
    .line 436
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@51
    .line 432
    throw v3

    #@52
    .line 433
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "tmp":Ljava/io/File;
    :cond_1
    if-eqz v2, :cond_2

    #@54
    .line 434
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@57
    .line 436
    :cond_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5a
    .line 420
    return-void

    #@5b
    .line 432
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "tmp":Ljava/io/File;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    #@5c
    goto :goto_0
.end method

.method private static readCert(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 311
    const-string/jumbo v0, "cert"

    #@3
    const/4 v1, 0x2

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    .line 312
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@b
    .line 310
    return-void
.end method

.method private static readDefaultOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x2

    #@2
    .line 252
    const-string/jumbo v3, "default"

    #@5
    invoke-interface {p0, v5, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    .line 253
    new-instance v0, Lcom/android/server/pm/Policy$PolicyBuilder;

    #@a
    invoke-direct {v0}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    #@d
    .line 254
    .local v0, "pb":Lcom/android/server/pm/Policy$PolicyBuilder;
    invoke-virtual {v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->setAsDefaultPolicy()Lcom/android/server/pm/Policy$PolicyBuilder;

    #@10
    .line 256
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@13
    move-result v3

    #@14
    const/4 v4, 0x3

    #@15
    if-eq v3, v4, :cond_2

    #@17
    .line 257
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@1a
    move-result v3

    #@1b
    if-ne v3, v5, :cond_0

    #@1d
    .line 261
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 262
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "seinfo"

    #@24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    .line 263
    const-string/jumbo v3, "value"

    #@2d
    invoke-interface {p0, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 264
    .local v1, "seinfo":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    #@34
    .line 265
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    #@37
    goto :goto_0

    #@38
    .line 267
    .end local v1    # "seinfo":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3b
    goto :goto_0

    #@3c
    .line 271
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    #@3f
    move-result-object v3

    #@40
    return-object v3
.end method

.method public static readInstallPolicy()Z
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x0

    #@2
    .line 118
    new-instance v3, Ljava/util/ArrayList;

    #@4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 120
    .local v3, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/Policy;>;"
    const/4 v4, 0x0

    #@8
    .line 121
    .local v4, "policyFile":Ljava/io/FileReader;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@b
    move-result-object v2

    #@c
    .line 123
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    #@e
    sget-object v8, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    #@10
    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@13
    .line 124
    .end local v4    # "policyFile":Ljava/io/FileReader;
    .local v5, "policyFile":Ljava/io/FileReader;
    :try_start_1
    const-string/jumbo v8, "SELinuxMMAC"

    #@16
    new-instance v9, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v10, "Using policy file "

    #@1e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v9

    #@22
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    #@24
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v9

    #@28
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v9

    #@2c
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 126
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@32
    .line 127
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@35
    .line 128
    const-string/jumbo v8, "policy"

    #@38
    const/4 v9, 0x2

    #@39
    const/4 v10, 0x0

    #@3a
    invoke-interface {v2, v9, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@3d
    .line 130
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@40
    move-result v8

    #@41
    const/4 v9, 0x3

    #@42
    if-eq v8, v9, :cond_3

    #@44
    .line 131
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@47
    move-result v8

    #@48
    if-ne v8, v12, :cond_0

    #@4a
    .line 135
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4d
    move-result-object v8

    #@4e
    const-string/jumbo v9, "signer"

    #@51
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v9

    #@55
    if-eqz v9, :cond_1

    #@57
    .line 137
    invoke-static {v2}, Lcom/android/server/pm/SELinuxMMAC;->readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;

    #@5a
    move-result-object v8

    #@5b
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    goto :goto_0

    #@5f
    .line 147
    :catch_0
    move-exception v0

    #@60
    .local v0, "ex":Ljava/lang/Exception;
    move-object v4, v5

    #@61
    .line 148
    .end local v5    # "policyFile":Ljava/io/FileReader;
    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    #@63
    const-string/jumbo v8, "Exception @"

    #@66
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@69
    .line 149
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@6c
    move-result-object v8

    #@6d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 150
    const-string/jumbo v8, " while parsing "

    #@73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 151
    sget-object v8, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    #@78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 152
    const-string/jumbo v8, ":"

    #@7e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 153
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    .line 154
    const-string/jumbo v8, "SELinuxMMAC"

    #@87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v9

    #@8b
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@8e
    .line 160
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@91
    .line 155
    return v11

    #@92
    .line 135
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "policyFile":Ljava/io/FileReader;
    :cond_1
    :try_start_3
    const-string/jumbo v9, "default"

    #@95
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v8

    #@99
    if-eqz v8, :cond_2

    #@9b
    .line 140
    invoke-static {v2}, Lcom/android/server/pm/SELinuxMMAC;->readDefaultOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;

    #@9e
    move-result-object v8

    #@9f
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a2
    goto :goto_0

    #@a3
    .line 156
    :catch_1
    move-exception v1

    #@a4
    .local v1, "ioe":Ljava/io/IOException;
    move-object v4, v5

    #@a5
    .line 157
    .end local v5    # "policyFile":Ljava/io/FileReader;
    :goto_2
    :try_start_4
    const-string/jumbo v8, "SELinuxMMAC"

    #@a8
    new-instance v9, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v10, "Exception parsing "

    #@b0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v9

    #@b4
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    #@b6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v9

    #@ba
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v9

    #@be
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@c1
    .line 160
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c4
    .line 158
    return v11

    #@c5
    .line 143
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v5    # "policyFile":Ljava/io/FileReader;
    :cond_2
    :try_start_5
    invoke-static {v2}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@c8
    goto/16 :goto_0

    #@ca
    .line 159
    :catchall_0
    move-exception v8

    #@cb
    move-object v4, v5

    #@cc
    .line 160
    .end local v5    # "policyFile":Ljava/io/FileReader;
    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@cf
    .line 159
    throw v8

    #@d0
    .line 160
    .restart local v5    # "policyFile":Ljava/io/FileReader;
    :cond_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d3
    .line 164
    new-instance v6, Lcom/android/server/pm/PolicyComparator;

    #@d5
    invoke-direct {v6}, Lcom/android/server/pm/PolicyComparator;-><init>()V

    #@d8
    .line 165
    .local v6, "policySort":Lcom/android/server/pm/PolicyComparator;
    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@db
    .line 166
    invoke-virtual {v6}, Lcom/android/server/pm/PolicyComparator;->foundDuplicate()Z

    #@de
    move-result v8

    #@df
    if-eqz v8, :cond_4

    #@e1
    .line 167
    const-string/jumbo v8, "SELinuxMMAC"

    #@e4
    new-instance v9, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v10, "ERROR! Duplicate entries found parsing "

    #@ec
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v9

    #@f0
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    #@f2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v9

    #@f6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v9

    #@fa
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@fd
    .line 168
    return v11

    #@fe
    .line 171
    :cond_4
    sget-object v8, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    #@100
    monitor-enter v8

    #@101
    .line 172
    :try_start_6
    sput-object v3, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@103
    monitor-exit v8

    #@104
    .line 181
    const/4 v8, 0x1

    #@105
    return v8

    #@106
    .line 171
    :catchall_1
    move-exception v9

    #@107
    monitor-exit v8

    #@108
    throw v9

    #@109
    .line 159
    .end local v5    # "policyFile":Ljava/io/FileReader;
    .end local v6    # "policySort":Lcom/android/server/pm/PolicyComparator;
    :catchall_2
    move-exception v8

    #@10a
    goto :goto_3

    #@10b
    .line 147
    .restart local v4    # "policyFile":Ljava/io/FileReader;
    :catch_2
    move-exception v0

    #@10c
    .restart local v0    # "ex":Ljava/lang/Exception;
    goto/16 :goto_1

    #@10e
    .line 156
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    #@10f
    .restart local v1    # "ioe":Ljava/io/IOException;
    goto :goto_2
.end method

.method private static readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "pb"    # Lcom/android/server/pm/Policy$PolicyBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x0

    #@2
    .line 290
    const-string/jumbo v3, "package"

    #@5
    invoke-interface {p0, v6, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    .line 291
    const-string/jumbo v3, "name"

    #@b
    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 293
    .local v0, "pkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@12
    move-result v3

    #@13
    const/4 v4, 0x3

    #@14
    if-eq v3, v4, :cond_2

    #@16
    .line 294
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@19
    move-result v3

    #@1a
    if-ne v3, v6, :cond_0

    #@1c
    .line 298
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 299
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "seinfo"

    #@23
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 300
    const-string/jumbo v3, "value"

    #@2c
    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 301
    .local v1, "seinfo":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    #@33
    .line 302
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    #@36
    goto :goto_0

    #@37
    .line 304
    .end local v1    # "seinfo":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3a
    goto :goto_0

    #@3b
    .line 289
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    const-string/jumbo v0, "seinfo"

    #@3
    const/4 v1, 0x2

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    .line 318
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@b
    .line 316
    return-void
.end method

.method private static readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x0

    #@2
    .line 201
    const-string/jumbo v5, "signer"

    #@5
    invoke-interface {p0, v8, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    .line 202
    new-instance v1, Lcom/android/server/pm/Policy$PolicyBuilder;

    #@a
    invoke-direct {v1}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    #@d
    .line 206
    .local v1, "pb":Lcom/android/server/pm/Policy$PolicyBuilder;
    const-string/jumbo v5, "signature"

    #@10
    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 207
    .local v0, "cert":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@16
    .line 208
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    #@19
    .line 211
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1c
    move-result v5

    #@1d
    const/4 v6, 0x3

    #@1e
    if-eq v5, v6, :cond_4

    #@20
    .line 212
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@23
    move-result v5

    #@24
    if-ne v5, v8, :cond_0

    #@26
    .line 216
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    .line 217
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "seinfo"

    #@2d
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_1

    #@33
    .line 218
    const-string/jumbo v5, "value"

    #@36
    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 219
    .local v2, "seinfo":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    #@3d
    .line 220
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    #@40
    goto :goto_0

    #@41
    .line 221
    .end local v2    # "seinfo":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "package"

    #@44
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_2

    #@4a
    .line 222
    invoke-static {p0, v1}, Lcom/android/server/pm/SELinuxMMAC;->readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V

    #@4d
    goto :goto_0

    #@4e
    .line 223
    :cond_2
    const-string/jumbo v5, "cert"

    #@51
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_3

    #@57
    .line 224
    const-string/jumbo v5, "signature"

    #@5a
    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    .line 225
    .local v3, "sig":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    #@61
    .line 226
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readCert(Lorg/xmlpull/v1/XmlPullParser;)V

    #@64
    goto :goto_0

    #@65
    .line 228
    .end local v3    # "sig":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@68
    goto :goto_0

    #@69
    .line 232
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    #@6c
    move-result-object v5

    #@6d
    return-object v5
.end method

.method private static returnHash(Ljava/lang/String;)[B
    .locals 3
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 449
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    .line 450
    .local v0, "contents":[B
    const-string/jumbo v2, "SHA-1"

    #@7
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v2

    #@f
    return-object v2

    #@10
    .line 451
    .end local v0    # "contents":[B
    :catch_0
    move-exception v1

    #@11
    .line 452
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@13
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@16
    throw v2
.end method

.method public static setRestoreconDone()V
    .locals 5

    #@0
    .prologue
    .line 404
    :try_start_0
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    #@2
    invoke-static {v2}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    .line 405
    .local v0, "currentHash":[B
    new-instance v2, Ljava/io/File;

    #@8
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    #@a
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    invoke-static {v2, v0}, Lcom/android/server/pm/SELinuxMMAC;->dumpHash(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 402
    :goto_0
    return-void

    #@11
    .line 406
    :catch_0
    move-exception v1

    #@12
    .line 407
    .local v1, "ioe":Ljava/io/IOException;
    const-string/jumbo v2, "SELinuxMMAC"

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Error with saving hash to "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_0
.end method

.method public static shouldRestorecon()Z
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 380
    const/4 v0, 0x0

    #@3
    .line 382
    .local v0, "currentHash":[B
    :try_start_0
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    #@5
    invoke-static {v5}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v0

    #@9
    .line 389
    .local v0, "currentHash":[B
    const/4 v2, 0x0

    #@a
    .line 391
    .local v2, "storedHash":[B
    :try_start_1
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    #@c
    invoke-static {v5}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@f
    move-result-object v2

    #@10
    .line 396
    .end local v2    # "storedHash":[B
    :goto_0
    if-eqz v2, :cond_0

    #@12
    invoke-static {v2, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_0

    #@18
    move v3, v4

    #@19
    :cond_0
    return v3

    #@1a
    .line 383
    .local v0, "currentHash":[B
    :catch_0
    move-exception v1

    #@1b
    .line 384
    .local v1, "ioe":Ljava/io/IOException;
    const-string/jumbo v3, "SELinuxMMAC"

    #@1e
    const-string/jumbo v5, "Error with hashing seapp_contexts."

    #@21
    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 385
    return v4

    #@25
    .line 392
    .end local v1    # "ioe":Ljava/io/IOException;
    .local v0, "currentHash":[B
    .restart local v2    # "storedHash":[B
    :catch_1
    move-exception v1

    #@26
    .line 393
    .restart local v1    # "ioe":Ljava/io/IOException;
    const-string/jumbo v5, "SELinuxMMAC"

    #@29
    new-instance v6, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v7, "Error opening "

    #@31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v6

    #@35
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    #@37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    const-string/jumbo v7, ". Assuming first boot."

    #@3e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    goto :goto_0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "p"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 322
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x2

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 323
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@c
    throw v1

    #@d
    .line 325
    :cond_0
    const/4 v0, 0x1

    #@e
    .line 326
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    #@10
    .line 327
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@13
    move-result v1

    #@14
    packed-switch v1, :pswitch_data_0

    #@17
    goto :goto_0

    #@18
    .line 332
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    .line 333
    goto :goto_0

    #@1b
    .line 329
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    #@1d
    .line 330
    goto :goto_0

    #@1e
    .line 321
    :cond_1
    return-void

    #@1f
    .line 327
    nop

    #@20
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static useOverridePolicy()Z
    .locals 7

    #@0
    .prologue
    .line 458
    :try_start_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->DATA_VERSION_FILE:Ljava/lang/String;

    #@2
    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 459
    .local v3, "overrideVersion":Ljava/lang/String;
    const-string/jumbo v4, "/selinux_version"

    #@9
    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 460
    .local v0, "baseVersion":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 461
    const/4 v4, 0x1

    #@14
    return v4

    #@15
    .line 463
    :cond_0
    const-string/jumbo v4, "SELinuxMMAC"

    #@18
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v6, "Override policy version \'"

    #@20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    const-string/jumbo v6, "\' doesn\'t match "

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    .line 464
    const-string/jumbo v6, "base version \'"

    #@32
    .line 463
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    .line 464
    const-string/jumbo v6, "\'. Skipping override policy files."

    #@3d
    .line 463
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 470
    .end local v0    # "baseVersion":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    #@49
    return v4

    #@4a
    .line 467
    :catch_0
    move-exception v2

    #@4b
    .line 468
    .local v2, "ioe":Ljava/io/IOException;
    const-string/jumbo v4, "SELinuxMMAC"

    #@4e
    const-string/jumbo v5, "Skipping override policy files."

    #@51
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@54
    goto :goto_0

    #@55
    .line 465
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@56
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    goto :goto_0
.end method
