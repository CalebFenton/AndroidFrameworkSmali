.class final Ljava/util/prefs/FileSystemPreferences$3;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->setupSystemRoot()V
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
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 159
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$3;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 6

    #@0
    .prologue
    .line 161
    const-string/jumbo v3, "java.util.prefs.systemRoot"

    #@3
    const-string/jumbo v4, "/etc/.java"

    #@6
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 163
    .local v2, "systemPrefsDirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    #@c
    const-string/jumbo v4, ".systemPrefs"

    #@f
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 162
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set4(Ljava/io/File;)Ljava/io/File;

    #@15
    .line 165
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_0

    #@1f
    .line 169
    new-instance v3, Ljava/io/File;

    #@21
    const-string/jumbo v4, "java.home"

    #@24
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    .line 170
    const-string/jumbo v5, ".systemPrefs"

    #@2b
    .line 169
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 168
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set4(Ljava/io/File;)Ljava/io/File;

    #@31
    .line 171
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@38
    move-result v3

    #@39
    if-nez v3, :cond_0

    #@3b
    .line 172
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_2

    #@45
    .line 173
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    #@48
    move-result-object v3

    #@49
    .line 174
    const-string/jumbo v4, "Created system preferences directory in java.home."

    #@4c
    .line 173
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    #@4f
    .line 177
    :try_start_0
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    .line 178
    const/16 v4, 0x1ed

    #@59
    .line 177
    invoke-static {v3, v4}, Ljava/util/prefs/FileSystemPreferences;->-wrap0(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@5c
    .line 188
    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    #@63
    move-result v3

    #@64
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set1(Z)Z

    #@67
    .line 189
    new-instance v3, Ljava/io/File;

    #@69
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    #@6c
    move-result-object v4

    #@6d
    const-string/jumbo v5, ".system.lock"

    #@70
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@73
    sput-object v3, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    #@75
    .line 191
    new-instance v3, Ljava/io/File;

    #@77
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get5()Ljava/io/File;

    #@7a
    move-result-object v4

    #@7b
    const-string/jumbo v5, ".systemRootModFile"

    #@7e
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@81
    .line 190
    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-set5(Ljava/io/File;)Ljava/io/File;

    #@84
    .line 192
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@8b
    move-result v3

    #@8c
    if-nez v3, :cond_1

    #@8e
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get2()Z

    #@91
    move-result v3

    #@92
    if-eqz v3, :cond_1

    #@94
    .line 195
    :try_start_1
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    #@9b
    .line 196
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    #@9e
    move-result-object v3

    #@9f
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@a2
    move-result-object v3

    #@a3
    .line 197
    const/16 v4, 0x1a4

    #@a5
    .line 196
    invoke-static {v3, v4}, Ljava/util/prefs/FileSystemPreferences;->-wrap0(Ljava/lang/String;I)I

    #@a8
    move-result v1

    #@a9
    .line 198
    .local v1, "result":I
    if-eqz v1, :cond_1

    #@ab
    .line 199
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    #@ae
    move-result-object v3

    #@af
    new-instance v4, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v5, "Chmod failed on "

    #@b7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v4

    #@bb
    .line 200
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    #@be
    move-result-object v5

    #@bf
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@c2
    move-result-object v5

    #@c3
    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v4

    #@c7
    .line 201
    const-string/jumbo v5, " Unix error code "

    #@ca
    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v4

    #@ce
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v4

    #@d2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v4

    #@d6
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@d9
    .line 204
    .end local v1    # "result":I
    :cond_1
    :goto_1
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    #@dc
    move-result-object v3

    #@dd
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    #@e0
    move-result-wide v4

    #@e1
    invoke-static {v4, v5}, Ljava/util/prefs/FileSystemPreferences;->-set6(J)J

    #@e4
    .line 205
    const/4 v3, 0x0

    #@e5
    return-object v3

    #@e6
    .line 182
    :cond_2
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    #@e9
    move-result-object v3

    #@ea
    const-string/jumbo v4, "Could not create system preferences directory. System preferences are unusable."

    #@ed
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@f0
    goto/16 :goto_0

    #@f2
    .line 202
    :catch_0
    move-exception v0

    #@f3
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-wrap2()Lsun/util/logging/PlatformLogger;

    #@f6
    move-result-object v3

    #@f7
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@fa
    move-result-object v4

    #@fb
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@fe
    goto :goto_1

    #@ff
    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@100
    .restart local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_0
.end method
