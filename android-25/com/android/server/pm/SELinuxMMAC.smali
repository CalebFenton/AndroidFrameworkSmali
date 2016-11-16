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

.field static final TAG:Ljava/lang/String; = "SELinuxMMAC"

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
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    #@7
    .line 62
    new-instance v0, Ljava/io/File;

    #@9
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@c
    move-result-object v1

    #@d
    .line 63
    const-string/jumbo v2, "/etc/security/mac_permissions.xml"

    #@10
    .line 62
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/io/File;

    #@15
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)V
    .locals 6
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 274
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    #@2
    monitor-enter v4

    #@3
    .line 275
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
    .line 276
    .local v0, "policy":Lcom/android/server/pm/Policy;
    invoke-virtual {v0, p0}, Lcom/android/server/pm/Policy;->getMatchedSeinfo(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 277
    .local v2, "seinfo":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@1b
    .line 278
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
    .line 284
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@22
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isAutoPlayApp()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 285
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
    .line 287
    :cond_2
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@44
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    #@47
    move-result v3

    #@48
    if-eqz v3, :cond_3

    #@4a
    .line 288
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
    .line 273
    :cond_3
    return-void

    #@65
    .line 274
    .end local v1    # "policy$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@66
    monitor-exit v4

    #@67
    throw v3
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
    .line 237
    const-string/jumbo v0, "cert"

    #@3
    const/4 v1, 0x2

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    .line 238
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@b
    .line 236
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
    .line 86
    new-instance v3, Ljava/util/ArrayList;

    #@4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 88
    .local v3, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/Policy;>;"
    const/4 v4, 0x0

    #@8
    .line 89
    .local v4, "policyFile":Ljava/io/FileReader;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@b
    move-result-object v2

    #@c
    .line 91
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
    .line 92
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
    .line 94
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@32
    .line 95
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@35
    .line 96
    const-string/jumbo v8, "policy"

    #@38
    const/4 v9, 0x2

    #@39
    const/4 v10, 0x0

    #@3a
    invoke-interface {v2, v9, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@3d
    .line 98
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
    .line 99
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@47
    move-result v8

    #@48
    if-ne v8, v12, :cond_0

    #@4a
    .line 103
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
    .line 105
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
    .line 112
    :catch_0
    move-exception v0

    #@60
    .local v0, "ex":Ljava/lang/Exception;
    move-object v4, v5

    #@61
    .line 113
    .end local v5    # "policyFile":Ljava/io/FileReader;
    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    #@63
    const-string/jumbo v8, "Exception @"

    #@66
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@69
    .line 114
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@6c
    move-result-object v8

    #@6d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 115
    const-string/jumbo v8, " while parsing "

    #@73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 116
    sget-object v8, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/io/File;

    #@78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    .line 117
    const-string/jumbo v8, ":"

    #@7e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 118
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    .line 119
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
    .line 125
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@91
    .line 120
    return v11

    #@92
    .line 108
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
    .line 121
    :catch_1
    move-exception v1

    #@97
    .local v1, "ioe":Ljava/io/IOException;
    move-object v4, v5

    #@98
    .line 122
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
    .line 125
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b7
    .line 123
    return v11

    #@b8
    .line 125
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v5    # "policyFile":Ljava/io/FileReader;
    :cond_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@bb
    .line 129
    new-instance v6, Lcom/android/server/pm/PolicyComparator;

    #@bd
    invoke-direct {v6}, Lcom/android/server/pm/PolicyComparator;-><init>()V

    #@c0
    .line 130
    .local v6, "policySort":Lcom/android/server/pm/PolicyComparator;
    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@c3
    .line 131
    invoke-virtual {v6}, Lcom/android/server/pm/PolicyComparator;->foundDuplicate()Z

    #@c6
    move-result v8

    #@c7
    if-eqz v8, :cond_3

    #@c9
    .line 132
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
    .line 133
    return v11

    #@e6
    .line 124
    .end local v5    # "policyFile":Ljava/io/FileReader;
    .end local v6    # "policySort":Lcom/android/server/pm/PolicyComparator;
    :catchall_0
    move-exception v8

    #@e7
    .line 125
    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ea
    .line 124
    throw v8

    #@eb
    .line 136
    .restart local v5    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "policySort":Lcom/android/server/pm/PolicyComparator;
    :cond_3
    sget-object v8, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    #@ed
    monitor-enter v8

    #@ee
    .line 137
    :try_start_5
    sput-object v3, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@f0
    monitor-exit v8

    #@f1
    .line 146
    const/4 v8, 0x1

    #@f2
    return v8

    #@f3
    .line 136
    :catchall_1
    move-exception v9

    #@f4
    monitor-exit v8

    #@f5
    throw v9

    #@f6
    .line 124
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
    .line 112
    .local v4, "policyFile":Ljava/io/FileReader;
    :catch_2
    move-exception v0

    #@fa
    .restart local v0    # "ex":Ljava/lang/Exception;
    goto/16 :goto_1

    #@fc
    .line 121
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
    .line 216
    const-string/jumbo v3, "package"

    #@5
    invoke-interface {p0, v6, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    .line 217
    const-string/jumbo v3, "name"

    #@b
    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 219
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
    .line 220
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@19
    move-result v3

    #@1a
    if-ne v3, v6, :cond_0

    #@1c
    .line 224
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 225
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "seinfo"

    #@23
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 226
    const-string/jumbo v3, "value"

    #@2c
    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 227
    .local v1, "seinfo":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    #@33
    .line 228
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    #@36
    goto :goto_0

    #@37
    .line 230
    .end local v1    # "seinfo":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3a
    goto :goto_0

    #@3b
    .line 215
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
    .line 243
    const-string/jumbo v0, "seinfo"

    #@3
    const/4 v1, 0x2

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    .line 244
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@b
    .line 242
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
    .line 166
    const-string/jumbo v5, "signer"

    #@5
    invoke-interface {p0, v8, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8
    .line 167
    new-instance v1, Lcom/android/server/pm/Policy$PolicyBuilder;

    #@a
    invoke-direct {v1}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    #@d
    .line 171
    .local v1, "pb":Lcom/android/server/pm/Policy$PolicyBuilder;
    const-string/jumbo v5, "signature"

    #@10
    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 172
    .local v0, "cert":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@16
    .line 173
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    #@19
    .line 176
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
    .line 177
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@23
    move-result v5

    #@24
    if-ne v5, v8, :cond_0

    #@26
    .line 181
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    .line 182
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "seinfo"

    #@2d
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_1

    #@33
    .line 183
    const-string/jumbo v5, "value"

    #@36
    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 184
    .local v2, "seinfo":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    #@3d
    .line 185
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    #@40
    goto :goto_0

    #@41
    .line 186
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
    .line 187
    invoke-static {p0, v1}, Lcom/android/server/pm/SELinuxMMAC;->readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V

    #@4d
    goto :goto_0

    #@4e
    .line 188
    :cond_2
    const-string/jumbo v5, "cert"

    #@51
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_3

    #@57
    .line 189
    const-string/jumbo v5, "signature"

    #@5a
    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    .line 190
    .local v3, "sig":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    #@61
    .line 191
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readCert(Lorg/xmlpull/v1/XmlPullParser;)V

    #@64
    goto :goto_0

    #@65
    .line 193
    .end local v3    # "sig":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@68
    goto :goto_0

    #@69
    .line 197
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    #@6c
    move-result-object v5

    #@6d
    return-object v5
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
    .line 248
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x2

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 249
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@c
    throw v1

    #@d
    .line 251
    :cond_0
    const/4 v0, 0x1

    #@e
    .line 252
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    #@10
    .line 253
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@13
    move-result v1

    #@14
    packed-switch v1, :pswitch_data_0

    #@17
    goto :goto_0

    #@18
    .line 258
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    .line 259
    goto :goto_0

    #@1b
    .line 255
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    #@1d
    .line 256
    goto :goto_0

    #@1e
    .line 247
    :cond_1
    return-void

    #@1f
    .line 253
    nop

    #@20
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
