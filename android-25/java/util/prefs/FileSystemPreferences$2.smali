.class final Ljava/util/prefs/FileSystemPreferences$2;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->setupUserRoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$2;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 7

    #@0
    .prologue
    .line 100
    new-instance v3, Ljava/io/File;

    #@2
    const-string/jumbo v4, "java.util.prefs.userRoot"

    #@5
    .line 101
    const-string/jumbo v5, "user.home"

    #@8
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    .line 100
    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 101
    const-string/jumbo v5, ".java/.userPrefs"

    #@13
    .line 100
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 99
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set7(Ljava/io/File;)Ljava/io/File;

    #@19
    .line 103
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get9()Ljava/io/File;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_0

    #@23
    .line 104
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get9()Ljava/io/File;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 106
    :try_start_0
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get9()Ljava/io/File;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    const/16 v4, 0x1c0

    #@37
    invoke-static {v3, v4}, Ljava/util/prefs/FileSystemPreferences;->-wrap0(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 111
    :goto_0
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    #@3d
    move-result-object v3

    #@3e
    const-string/jumbo v4, "Created user preferences directory."

    #@41
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    #@44
    .line 117
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get9()Ljava/io/File;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    #@4b
    move-result v3

    #@4c
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set3(Z)Z

    #@4f
    .line 118
    const-string/jumbo v3, "user.name"

    #@52
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    .line 119
    .local v0, "USER_NAME":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    #@58
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get9()Ljava/io/File;

    #@5b
    move-result-object v4

    #@5c
    new-instance v5, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v6, ".user.lock."

    #@64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@73
    sput-object v3, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    #@75
    .line 120
    new-instance v3, Ljava/io/File;

    #@77
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get9()Ljava/io/File;

    #@7a
    move-result-object v4

    #@7b
    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v6, ".userRootModFile."

    #@83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v5

    #@8f
    .line 120
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@92
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set8(Ljava/io/File;)Ljava/io/File;

    #@95
    .line 122
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@9c
    move-result v3

    #@9d
    if-nez v3, :cond_1

    #@9f
    .line 125
    :try_start_1
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    #@a6
    .line 127
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    #@a9
    move-result-object v3

    #@aa
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@ad
    move-result-object v3

    #@ae
    .line 128
    const/16 v4, 0x180

    #@b0
    .line 127
    invoke-static {v3, v4}, Ljava/util/prefs/FileSystemPreferences;->-wrap0(Ljava/lang/String;I)I

    #@b3
    move-result v2

    #@b4
    .line 129
    .local v2, "result":I
    if-eqz v2, :cond_1

    #@b6
    .line 130
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    #@b9
    move-result-object v3

    #@ba
    new-instance v4, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v5, "Problem creating userRoot mod file. Chmod failed on "

    #@c2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v4

    #@c6
    .line 132
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    #@c9
    move-result-object v5

    #@ca
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@cd
    move-result-object v5

    #@ce
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v4

    #@d2
    .line 133
    const-string/jumbo v5, " Unix error code "

    #@d5
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v4

    #@d9
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v4

    #@dd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v4

    #@e1
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@e4
    .line 137
    .end local v2    # "result":I
    :cond_1
    :goto_2
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    #@e7
    move-result-object v3

    #@e8
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    #@eb
    move-result-wide v4

    #@ec
    invoke-static {v4, v5}, Ljava/util/prefs/FileSystemPreferences;->-set9(J)J

    #@ef
    .line 138
    const/4 v3, 0x0

    #@f0
    return-object v3

    #@f1
    .line 107
    .end local v0    # "USER_NAME":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@f2
    .line 108
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    #@f5
    move-result-object v3

    #@f6
    const-string/jumbo v4, "Could not change permissions on userRoot directory. "

    #@f9
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@fc
    goto/16 :goto_0

    #@fe
    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    #@101
    move-result-object v3

    #@102
    const-string/jumbo v4, "Couldn\'t create user preferences directory. User preferences are unusable."

    #@105
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@108
    goto/16 :goto_1

    #@10a
    .line 134
    .restart local v0    # "USER_NAME":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@10b
    .line 135
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    #@10e
    move-result-object v3

    #@10f
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@112
    move-result-object v4

    #@113
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@116
    goto :goto_2
.end method
