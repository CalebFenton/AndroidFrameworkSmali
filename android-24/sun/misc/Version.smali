.class public Lsun/misc/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final java_runtime_name:Ljava/lang/String; = "Android Runtime"

.field private static final java_runtime_version:Ljava/lang/String; = "0.9"

.field private static final java_version:Ljava/lang/String; = "0"

.field private static jdk_build_number:I = 0x0

.field private static jdk_major_version:I = 0x0

.field private static jdk_micro_version:I = 0x0

.field private static jdk_minor_version:I = 0x0

.field private static jdk_special_version:Ljava/lang/String; = null

.field private static jdk_update_version:I = 0x0

.field private static jvmVersionInfoAvailable:Z = false

.field private static jvm_build_number:I = 0x0

.field private static jvm_major_version:I = 0x0

.field private static jvm_micro_version:I = 0x0

.field private static jvm_minor_version:I = 0x0

.field private static jvm_special_version:Ljava/lang/String; = null

.field private static jvm_update_version:I = 0x0

.field private static final launcher_name:Ljava/lang/String; = ""

.field private static versionsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 45
    sput-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    #@4
    .line 46
    sput v0, Lsun/misc/Version;->jvm_major_version:I

    #@6
    .line 47
    sput v0, Lsun/misc/Version;->jvm_minor_version:I

    #@8
    .line 48
    sput v0, Lsun/misc/Version;->jvm_micro_version:I

    #@a
    .line 49
    sput v0, Lsun/misc/Version;->jvm_update_version:I

    #@c
    .line 50
    sput v0, Lsun/misc/Version;->jvm_build_number:I

    #@e
    .line 51
    sput-object v1, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    #@10
    .line 52
    sput v0, Lsun/misc/Version;->jdk_major_version:I

    #@12
    .line 53
    sput v0, Lsun/misc/Version;->jdk_minor_version:I

    #@14
    .line 54
    sput v0, Lsun/misc/Version;->jdk_micro_version:I

    #@16
    .line 55
    sput v0, Lsun/misc/Version;->jdk_update_version:I

    #@18
    .line 56
    sput v0, Lsun/misc/Version;->jdk_build_number:I

    #@1a
    .line 57
    sput-object v1, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    #@1c
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static native getJdkSpecialVersion()Ljava/lang/String;
.end method

.method private static native getJdkVersionInfo()V
.end method

.method public static native getJvmSpecialVersion()Ljava/lang/String;
.end method

.method private static native getJvmVersionInfo()Z
.end method

.method public static initSystemProperties()V
    .locals 2

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, "java.version"

    #@3
    const-string/jumbo v1, "0"

    #@6
    invoke-static {v0, v1}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 41
    const-string/jumbo v0, "java.runtime.version"

    #@c
    const-string/jumbo v1, "0.9"

    #@f
    invoke-static {v0, v1}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 42
    const-string/jumbo v0, "java.runtime.name"

    #@15
    const-string/jumbo v1, "Android Runtime"

    #@18
    invoke-static {v0, v1}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 39
    return-void
.end method

.method private static declared-synchronized initVersions()V
    .locals 13

    #@0
    .prologue
    const/4 v11, 0x4

    #@1
    const/4 v12, 0x3

    #@2
    const/4 v7, 0x0

    #@3
    const-class v8, Lsun/misc/Version;

    #@5
    monitor-enter v8

    #@6
    .line 259
    :try_start_0
    sget-boolean v9, Lsun/misc/Version;->versionsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-eqz v9, :cond_0

    #@a
    monitor-exit v8

    #@b
    .line 260
    return-void

    #@c
    .line 262
    :cond_0
    :try_start_1
    invoke-static {}, Lsun/misc/Version;->getJvmVersionInfo()Z

    #@f
    move-result v9

    #@10
    sput-boolean v9, Lsun/misc/Version;->jvmVersionInfoAvailable:Z

    #@12
    .line 263
    sget-boolean v9, Lsun/misc/Version;->jvmVersionInfoAvailable:Z

    #@14
    if-nez v9, :cond_3

    #@16
    .line 268
    const-string/jumbo v9, "java.vm.version"

    #@19
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 269
    .local v1, "cs":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@20
    move-result v9

    #@21
    const/4 v10, 0x5

    #@22
    if-lt v9, v10, :cond_3

    #@24
    .line 270
    const/4 v9, 0x0

    #@25
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@28
    move-result v9

    #@29
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    #@2c
    move-result v9

    #@2d
    .line 269
    if-eqz v9, :cond_3

    #@2f
    .line 270
    const/4 v9, 0x1

    #@30
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@33
    move-result v9

    #@34
    const/16 v10, 0x2e

    #@36
    if-ne v9, v10, :cond_3

    #@38
    .line 271
    const/4 v9, 0x2

    #@39
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@3c
    move-result v9

    #@3d
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    #@40
    move-result v9

    #@41
    .line 269
    if-eqz v9, :cond_3

    #@43
    .line 271
    const/4 v9, 0x3

    #@44
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@47
    move-result v9

    #@48
    const/16 v10, 0x2e

    #@4a
    if-ne v9, v10, :cond_3

    #@4c
    .line 272
    const/4 v9, 0x4

    #@4d
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@50
    move-result v9

    #@51
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    #@54
    move-result v9

    #@55
    .line 269
    if-eqz v9, :cond_3

    #@57
    .line 273
    const/4 v9, 0x0

    #@58
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@5b
    move-result v9

    #@5c
    const/16 v10, 0xa

    #@5e
    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    #@61
    move-result v9

    #@62
    sput v9, Lsun/misc/Version;->jvm_major_version:I

    #@64
    .line 274
    const/4 v9, 0x2

    #@65
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@68
    move-result v9

    #@69
    const/16 v10, 0xa

    #@6b
    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    #@6e
    move-result v9

    #@6f
    sput v9, Lsun/misc/Version;->jvm_minor_version:I

    #@71
    .line 275
    const/4 v9, 0x4

    #@72
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@75
    move-result v9

    #@76
    const/16 v10, 0xa

    #@78
    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    #@7b
    move-result v9

    #@7c
    sput v9, Lsun/misc/Version;->jvm_micro_version:I

    #@7e
    .line 276
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@81
    move-result v9

    #@82
    const/4 v10, 0x5

    #@83
    invoke-interface {v1, v10, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@86
    move-result-object v1

    #@87
    .line 277
    const/4 v9, 0x0

    #@88
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@8b
    move-result v9

    #@8c
    const/16 v10, 0x5f

    #@8e
    if-ne v9, v10, :cond_2

    #@90
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@93
    move-result v9

    #@94
    if-lt v9, v12, :cond_2

    #@96
    .line 278
    const/4 v9, 0x1

    #@97
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@9a
    move-result v9

    #@9b
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    #@9e
    move-result v9

    #@9f
    .line 277
    if-eqz v9, :cond_2

    #@a1
    .line 279
    const/4 v9, 0x2

    #@a2
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@a5
    move-result v9

    #@a6
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a9
    move-result v9

    #@aa
    .line 277
    if-eqz v9, :cond_2

    #@ac
    .line 280
    const/4 v3, 0x3

    #@ad
    .line 282
    .local v3, "nextChar":I
    const/4 v9, 0x1

    #@ae
    const/4 v10, 0x3

    #@af
    :try_start_2
    invoke-interface {v1, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@b2
    move-result-object v9

    #@b3
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b6
    move-result-object v6

    #@b7
    .line 283
    .local v6, "uu":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@ba
    move-result v9

    #@bb
    sput v9, Lsun/misc/Version;->jvm_update_version:I

    #@bd
    .line 284
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@c0
    move-result v9

    #@c1
    if-lt v9, v11, :cond_1

    #@c3
    .line 285
    const/4 v9, 0x3

    #@c4
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@c7
    move-result v0

    #@c8
    .line 286
    .local v0, "c":C
    const/16 v9, 0x61

    #@ca
    if-lt v0, v9, :cond_1

    #@cc
    const/16 v9, 0x7a

    #@ce
    if-gt v0, v9, :cond_1

    #@d0
    .line 287
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@d3
    move-result-object v9

    #@d4
    sput-object v9, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d6
    .line 288
    const/4 v3, 0x4

    #@d7
    .line 295
    .end local v0    # "c":C
    :cond_1
    :try_start_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@da
    move-result v9

    #@db
    invoke-interface {v1, v3, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@de
    move-result-object v1

    #@df
    .line 297
    .end local v3    # "nextChar":I
    .end local v6    # "uu":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    #@e0
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@e3
    move-result v9

    #@e4
    const/16 v10, 0x2d

    #@e6
    if-ne v9, v10, :cond_3

    #@e8
    .line 301
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@eb
    move-result v9

    #@ec
    const/4 v10, 0x1

    #@ed
    invoke-interface {v1, v10, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@f0
    move-result-object v1

    #@f1
    .line 302
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@f4
    move-result-object v9

    #@f5
    const-string/jumbo v10, "-"

    #@f8
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@fb
    move-result-object v4

    #@fc
    .line 303
    .local v4, "res":[Ljava/lang/String;
    array-length v9, v4

    #@fd
    :goto_0
    if-ge v7, v9, :cond_3

    #@ff
    aget-object v5, v4, v7

    #@101
    .line 304
    .local v5, "s":Ljava/lang/String;
    const/4 v10, 0x0

    #@102
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    #@105
    move-result v10

    #@106
    const/16 v11, 0x62

    #@108
    if-ne v10, v11, :cond_4

    #@10a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@10d
    move-result v10

    #@10e
    if-ne v10, v12, :cond_4

    #@110
    .line 305
    const/4 v10, 0x1

    #@111
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    #@114
    move-result v10

    #@115
    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    #@118
    move-result v10

    #@119
    .line 304
    if-eqz v10, :cond_4

    #@11b
    .line 306
    const/4 v10, 0x2

    #@11c
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    #@11f
    move-result v10

    #@120
    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    #@123
    move-result v10

    #@124
    .line 304
    if-eqz v10, :cond_4

    #@126
    .line 308
    const/4 v7, 0x1

    #@127
    const/4 v9, 0x3

    #@128
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@12b
    move-result-object v7

    #@12c
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12f
    move-result v7

    #@130
    .line 307
    sput v7, Lsun/misc/Version;->jvm_build_number:I

    #@132
    .line 315
    .end local v4    # "res":[Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lsun/misc/Version;->getJdkVersionInfo()V

    #@135
    .line 316
    const/4 v7, 0x1

    #@136
    sput-boolean v7, Lsun/misc/Version;->versionsInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@138
    monitor-exit v8

    #@139
    .line 258
    return-void

    #@13a
    .line 291
    .restart local v3    # "nextChar":I
    :catch_0
    move-exception v2

    #@13b
    .local v2, "e":Ljava/lang/NumberFormatException;
    monitor-exit v8

    #@13c
    .line 293
    return-void

    #@13d
    .line 303
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "nextChar":I
    .restart local v4    # "res":[Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    #@13f
    goto :goto_0

    #@140
    .end local v4    # "res":[Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@141
    monitor-exit v8

    #@142
    throw v7
.end method

.method public static declared-synchronized jdkBuildNumber()I
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/misc/Version;

    #@2
    monitor-enter v1

    #@3
    .line 250
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 251
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    #@a
    .line 253
    :cond_0
    sget v0, Lsun/misc/Version;->jdk_build_number:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static declared-synchronized jdkMajorVersion()I
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/misc/Version;

    #@2
    monitor-enter v1

    #@3
    .line 193
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 194
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    #@a
    .line 196
    :cond_0
    sget v0, Lsun/misc/Version;->jdk_major_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static declared-synchronized jdkMicroVersion()I
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/misc/Version;

    #@2
    monitor-enter v1

    #@3
    .line 215
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 216
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    #@a
    .line 218
    :cond_0
    sget v0, Lsun/misc/Version;->jdk_micro_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static declared-synchronized jdkMinorVersion()I
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/misc/Version;

    #@2
    monitor-enter v1

    #@3
    .line 204
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 205
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    #@a
    .line 207
    :cond_0
    sget v0, Lsun/misc/Version;->jdk_minor_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static declared-synchronized jdkSpecialVersion()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/misc/Version;

    #@2
    monitor-enter v1

    #@3
    .line 234
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 235
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    #@a
    .line 237
    :cond_0
    sget-object v0, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    #@c
    if-nez v0, :cond_1

    #@e
    .line 238
    invoke-static {}, Lsun/misc/Version;->getJdkSpecialVersion()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    #@14
    .line 240
    :cond_1
    sget-object v0, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public static declared-synchronized jdkUpdateVersion()I
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/misc/Version;

    #@2
    monitor-enter v1

    #@3
    .line 227
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 228
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    #@a
    .line 230
    :cond_0
    sget v0, Lsun/misc/Version;->jdk_update_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static declared-synchronized jvmBuildNumber()I
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/misc/Version;

    #@2
    monitor-enter v1

    #@3
    .line 181
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 182
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    #@a
    .line 184
    :cond_0
    sget v0, Lsun/misc/Version;->jvm_build_number:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static declared-synchronized jvmMajorVersion()I
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/misc/Version;

    #@2
    monitor-enter v1

    #@3
    .line 119
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 120
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    #@a
    .line 122
    :cond_0
    sget v0, Lsun/misc/Version;->jvm_major_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static declared-synchronized jvmMicroVersion()I
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/misc/Version;

    #@2
    monitor-enter v1

    #@3
    .line 146
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 147
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    #@a
    .line 149
    :cond_0
    sget v0, Lsun/misc/Version;->jvm_micro_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static declared-synchronized jvmMinorVersion()I
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/misc/Version;

    #@2
    monitor-enter v1

    #@3
    .line 132
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 133
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    #@a
    .line 135
    :cond_0
    sget v0, Lsun/misc/Version;->jvm_minor_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static declared-synchronized jvmSpecialVersion()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/misc/Version;

    #@2
    monitor-enter v1

    #@3
    .line 165
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 166
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    #@a
    .line 168
    :cond_0
    sget-object v0, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    #@c
    if-nez v0, :cond_1

    #@e
    .line 169
    invoke-static {}, Lsun/misc/Version;->getJvmSpecialVersion()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    #@14
    .line 171
    :cond_1
    sget-object v0, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public static declared-synchronized jvmUpdateVersion()I
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/misc/Version;

    #@2
    monitor-enter v1

    #@3
    .line 158
    :try_start_0
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 159
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    #@a
    .line 161
    :cond_0
    sget v0, Lsun/misc/Version;->jvm_update_version:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static print()V
    .locals 1

    #@0
    .prologue
    .line 65
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-static {v0}, Lsun/misc/Version;->print(Ljava/io/PrintStream;)V

    #@5
    .line 64
    return-void
.end method

.method public static print(Ljava/io/PrintStream;)V
    .locals 7
    .param p0, "ps"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 81
    const/4 v1, 0x0

    #@1
    .line 84
    .local v1, "isHeadless":Z
    const-string/jumbo v5, "java.awt.headless"

    #@4
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 85
    .local v0, "headless":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    const-string/jumbo v5, "true"

    #@d
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 86
    const/4 v1, 0x1

    #@14
    .line 90
    :cond_0
    const-string/jumbo v5, " version \"0\""

    #@17
    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a
    .line 94
    const-string/jumbo v5, "Android Runtime (build 0.9"

    #@1d
    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@20
    .line 96
    const-string/jumbo v5, "Android Runtime"

    #@23
    const-string/jumbo v6, "Embedded"

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@29
    move-result v5

    #@2a
    const/4 v6, -0x1

    #@2b
    if-eq v5, v6, :cond_1

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 98
    const-string/jumbo v5, ", headless"

    #@32
    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@35
    .line 100
    :cond_1
    const/16 v5, 0x29

    #@37
    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(C)V

    #@3a
    .line 103
    const-string/jumbo v5, "java.vm.name"

    #@3d
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 104
    .local v3, "java_vm_name":Ljava/lang/String;
    const-string/jumbo v5, "java.vm.version"

    #@44
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 105
    .local v4, "java_vm_version":Ljava/lang/String;
    const-string/jumbo v5, "java.vm.info"

    #@4b
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 106
    .local v2, "java_vm_info":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    const-string/jumbo v6, " (build "

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    const-string/jumbo v6, ", "

    #@66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    .line 107
    const-string/jumbo v6, ")"

    #@71
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7c
    .line 80
    return-void
.end method

.method public static println()V
    .locals 1

    #@0
    .prologue
    .line 73
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-static {v0}, Lsun/misc/Version;->print(Ljava/io/PrintStream;)V

    #@5
    .line 74
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@a
    .line 72
    return-void
.end method
