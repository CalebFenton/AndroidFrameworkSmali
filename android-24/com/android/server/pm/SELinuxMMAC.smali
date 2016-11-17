.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# static fields
.field private static final AUTOPLAY_APP_STR:Ljava/lang/String; = ":autoplayapp"

.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final DEBUG_POLICY_ORDER:Z = false

.field private static final MAC_PERMISSIONS:Ljava/io/File;

.field private static final PRIVILEGED_APP_STR:Ljava/lang/String; = ":privapp"

.field private static final SEAPP_CONTEXTS:Ljava/io/File;

.field private static final SEAPP_CONTEXTS_HASH:[B

.field static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field private static final VERSION_FILE:Ljava/io/File;

.field private static final XATTR_SEAPP_HASH:Ljava/lang/String; = "user.seapp_hash"

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
    .locals 3

    #@0
    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    #@7
    .line 68
    new-instance v0, Ljava/io/File;

    #@9
    const-string/jumbo v1, "/selinux_version"

    #@c
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->VERSION_FILE:Ljava/io/File;

    #@11
    .line 71
    new-instance v0, Ljava/io/File;

    #@13
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@16
    move-result-object v1

    #@17
    .line 72
    const-string/jumbo v2, "/etc/security/mac_permissions.xml"

    #@1a
    .line 71
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1d
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/io/File;

    #@1f
    .line 75
    new-instance v0, Ljava/io/File;

    #@21
    const-string/jumbo v1, "/seapp_contexts"

    #@24
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@27
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/io/File;

    #@29
    .line 78
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/io/File;

    #@2b
    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/io/File;)[B

    #@2e
    move-result-object v0

    #@2f
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS_HASH:[B

    #@31
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)V
    .locals 6
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 292
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    #@2
    monitor-enter v4

    #@3
    .line 293
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
    .line 294
    .local v0, "policy":Lcom/android/server/pm/Policy;
    invoke-virtual {v0, p0}, Lcom/android/server/pm/Policy;->getMatchedSeinfo(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 295
    .local v2, "seinfo":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@1b
    .line 296
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .end local v0    # "policy":Lcom/android/server/pm/Policy;
    .end local v2    # "seinfo":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    #@20
    .line 302
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@22
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isAutoPlayApp()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 303
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2a
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    const-string/jumbo v5, ":autoplayapp"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@42
    .line 305
    :cond_2
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@44
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    #@47
    move-result v3

    #@48
    if-eqz v3, :cond_3

    #@4a
    .line 306
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4c
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    const-string/jumbo v5, ":privapp"

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@64
    .line 291
    :cond_3
    return-void

    #@65
    .line 292
    .end local v1    # "policy$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@66
    monitor-exit v4

    #@67
    throw v3
.end method

.method public static isRestoreconNeeded(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/16 v5, 0x14

    #@2
    .line 326
    const/16 v3, 0x14

    #@4
    :try_start_0
    new-array v0, v3, [B

    #@6
    .line 327
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    const-string/jumbo v4, "user.seapp_hash"

    #@d
    invoke-static {v3, v4, v0}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;[B)I

    #@10
    move-result v2

    #@11
    .line 328
    .local v2, "len":I
    if-ne v2, v5, :cond_0

    #@13
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS_HASH:[B

    #@15
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 329
    const/4 v3, 0x0

    #@1c
    return v3

    #@1d
    .line 331
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    #@1e
    .line 332
    .local v1, "e":Landroid/system/ErrnoException;
    iget v3, v1, Landroid/system/ErrnoException;->errno:I

    #@20
    sget v4, Landroid/system/OsConstants;->ENODATA:I

    #@22
    if-eq v3, v4, :cond_0

    #@24
    .line 333
    const-string/jumbo v3, "SELinuxMMAC"

    #@27
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "Failed to read seapp hash for "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    .line 337
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_0
    const/4 v3, 0x1

    #@3f
    return v3
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
    .line 255
    const-string/jumbo v0, "cert"

    #@3
    const/4 v1, 0x2

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    .line 256
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@b
    .line 254
    return-void
.end method

.method public static readInstallPolicy()Z
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x0

    #@2
    .line 104
    new-instance v3, Ljava/util/ArrayList;

    #@4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 106
    .local v3, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/Policy;>;"
    const/4 v4, 0x0

    #@8
    .line 107
    .local v4, "policyFile":Ljava/io/FileReader;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@b
    move-result-object v2

    #@c
    .line 109
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    #@e
    sget-object v8, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/io/File;

    #@10
    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 110
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
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/io/File;

    #@24
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v9

    #@28
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v9

    #@2c
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 112
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@32
    .line 113
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@35
    .line 114
    const-string/jumbo v8, "policy"

    #@38
    const/4 v9, 0x2

    #@39
    const/4 v10, 0x0

    #@3a
    invoke-interface {v2, v9, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@3d
    .line 116
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@40
    move-result v8

    #@41
    const/4 v9, 0x3

    #@42
    if-eq v8, v9, :cond_2

    #@44
    .line 117
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@47
    move-result v8

    #@48
    if-ne v8, v12, :cond_0

    #@4a
    .line 121
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4d
    move-result-object v8

    #@4e
    const-string/jumbo v9, "signer"

    #@51
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v8

    #@55
    if-eqz v8, :cond_1

    #@57
    .line 123
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
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@5e
    goto :goto_0

    #@5f
    .line 130
    :catch_0
    move-exception v0

    #@60
    .local v0, "ex":Ljava/lang/Exception;
    move-object v4, v5

    #@61
    .line 131
    .end local v5    # "policyFile":Ljava/io/FileReader;
    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    #@63
    const-string/jumbo v8, "Exception @"

    #@66
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@69
    .line 132
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@6c
    move-result-object v8

    #@6d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 133
    const-string/jumbo v8, " while parsing "

    #@73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 134
    sget-object v8, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/io/File;

    #@78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    .line 135
    const-string/jumbo v8, ":"

    #@7e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 136
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    .line 137
    const-string/jumbo v8, "SELinuxMMAC"

    #@87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v9

    #@8b
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8e
    .line 143
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@91
    .line 138
    return v11

    #@92
    .line 126
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "policyFile":Ljava/io/FileReader;
    :cond_1
    :try_start_3
    invoke-static {v2}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@95
    goto :goto_0

    #@96
    .line 139
    :catch_1
    move-exception v1

    #@97
    .local v1, "ioe":Ljava/io/IOException;
    move-object v4, v5

    #@98
    .line 140
    .end local v5    # "policyFile":Ljava/io/FileReader;
    :goto_2
    :try_start_4
    const-string/jumbo v8, "SELinuxMMAC"

    #@9b
    new-instance v9, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v10, "Exception parsing "

    #@a3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v9

    #@a7
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/io/File;

    #@a9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v9

    #@ad
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v9

    #@b1
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b4
    .line 143
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b7
    .line 141
    return v11

    #@b8
    .line 143
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v5    # "policyFile":Ljava/io/FileReader;
    :cond_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@bb
    .line 147
    new-instance v6, Lcom/android/server/pm/PolicyComparator;

    #@bd
    invoke-direct {v6}, Lcom/android/server/pm/PolicyComparator;-><init>()V

    #@c0
    .line 148
    .local v6, "policySort":Lcom/android/server/pm/PolicyComparator;
    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@c3
    .line 149
    invoke-virtual {v6}, Lcom/android/server/pm/PolicyComparator;->foundDuplicate()Z

    #@c6
    move-result v8

    #@c7
    if-eqz v8, :cond_3

    #@c9
    .line 150
    const-string/jumbo v8, "SELinuxMMAC"

    #@cc
    new-instance v9, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v10, "ERROR! Duplicate entries found parsing "

    #@d4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v9

    #@d8
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/io/File;

    #@da
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v9

    #@de
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v9

    #@e2
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e5
    .line 151
    return v11

    #@e6
    .line 142
    .end local v5    # "policyFile":Ljava/io/FileReader;
    .end local v6    # "policySort":Lcom/android/server/pm/PolicyComparator;
    :catchall_0
    move-exception v8

    #@e7
    .line 143
    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ea
    .line 142
    throw v8

    #@eb
    .line 154
    .restart local v5    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "policySort":Lcom/android/server/pm/PolicyComparator;
    :cond_3
    sget-object v8, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    #@ed
    monitor-enter v8

    #@ee
    .line 155
    :try_start_5
    sput-object v3, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@f0
    monitor-exit v8

    #@f1
    .line 164
    const/4 v8, 0x1

    #@f2
    return v8

    #@f3
    .line 154
    :catchall_1
    move-exception v9

    #@f4
    monitor-exit v8

    #@f5
    throw v9

    #@f6
    .line 142
    .end local v6    # "policySort":Lcom/android/server/pm/PolicyComparator;
    :catchall_2
    move-exception v8

    #@f7
    move-object v4, v5

    #@f8
    .end local v5    # "policyFile":Ljava/io/FileReader;
    .local v4, "policyFile":Ljava/io/FileReader;
    goto :goto_3

    #@f9
    .line 130
    .local v4, "policyFile":Ljava/io/FileReader;
    :catch_2
    move-exception v0

    #@fa
    .restart local v0    # "ex":Ljava/lang/Exception;
    goto/16 :goto_1

    #@fc
    .line 139
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    #@fd
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
    .line 234
    const-string/jumbo v3, "package"

    #@5
    invoke-interface {p0, v6, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    .line 235
    const-string/jumbo v3, "name"

    #@b
    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 237
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
    .line 238
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@19
    move-result v3

    #@1a
    if-ne v3, v6, :cond_0

    #@1c
    .line 242
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 243
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "seinfo"

    #@23
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 244
    const-string/jumbo v3, "value"

    #@2c
    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 245
    .local v1, "seinfo":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    #@33
    .line 246
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    #@36
    goto :goto_0

    #@37
    .line 248
    .end local v1    # "seinfo":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3a
    goto :goto_0

    #@3b
    .line 233
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
    .line 261
    const-string/jumbo v0, "seinfo"

    #@3
    const/4 v1, 0x2

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    .line 262
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@b
    .line 260
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
    .line 184
    const-string/jumbo v5, "signer"

    #@5
    invoke-interface {p0, v8, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    .line 185
    new-instance v1, Lcom/android/server/pm/Policy$PolicyBuilder;

    #@a
    invoke-direct {v1}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    #@d
    .line 189
    .local v1, "pb":Lcom/android/server/pm/Policy$PolicyBuilder;
    const-string/jumbo v5, "signature"

    #@10
    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 190
    .local v0, "cert":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@16
    .line 191
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    #@19
    .line 194
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
    .line 195
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@23
    move-result v5

    #@24
    if-ne v5, v8, :cond_0

    #@26
    .line 199
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    .line 200
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "seinfo"

    #@2d
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_1

    #@33
    .line 201
    const-string/jumbo v5, "value"

    #@36
    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 202
    .local v2, "seinfo":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    #@3d
    .line 203
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    #@40
    goto :goto_0

    #@41
    .line 204
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
    .line 205
    invoke-static {p0, v1}, Lcom/android/server/pm/SELinuxMMAC;->readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V

    #@4d
    goto :goto_0

    #@4e
    .line 206
    :cond_2
    const-string/jumbo v5, "cert"

    #@51
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_3

    #@57
    .line 207
    const-string/jumbo v5, "signature"

    #@5a
    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    .line 208
    .local v3, "sig":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    #@61
    .line 209
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readCert(Lorg/xmlpull/v1/XmlPullParser;)V

    #@64
    goto :goto_0

    #@65
    .line 211
    .end local v3    # "sig":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@68
    goto :goto_0

    #@69
    .line 215
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    #@6c
    move-result-object v5

    #@6d
    return-object v5
.end method

.method private static returnHash(Ljava/io/File;)[B
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    #@7
    move-result-object v0

    #@8
    .line 363
    .local v0, "contents":[B
    const-string/jumbo v2, "SHA-1"

    #@b
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 364
    .end local v0    # "contents":[B
    :catch_0
    move-exception v1

    #@15
    .line 365
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@17
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v2
.end method

.method public static setRestoreconDone(Ljava/io/File;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 348
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, "user.seapp_hash"

    #@7
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS_HASH:[B

    #@9
    const/4 v4, 0x0

    #@a
    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 346
    :goto_0
    return-void

    #@e
    .line 349
    :catch_0
    move-exception v0

    #@f
    .line 350
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v1, "SELinuxMMAC"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Failed to persist seapp hash in "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
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
    .line 266
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x2

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 267
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@c
    throw v1

    #@d
    .line 269
    :cond_0
    const/4 v0, 0x1

    #@e
    .line 270
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    #@10
    .line 271
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@13
    move-result v1

    #@14
    packed-switch v1, :pswitch_data_0

    #@17
    goto :goto_0

    #@18
    .line 276
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    .line 277
    goto :goto_0

    #@1b
    .line 273
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    #@1d
    .line 274
    goto :goto_0

    #@1e
    .line 265
    :cond_1
    return-void

    #@1f
    .line 271
    nop

    #@20
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
