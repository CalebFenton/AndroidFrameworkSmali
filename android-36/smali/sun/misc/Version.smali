.class public Lsun/misc/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final blacklist java_profile_name:Ljava/lang/String; = ""

.field private static final blacklist java_runtime_name:Ljava/lang/String; = "Android Runtime"

.field private static final blacklist java_runtime_version:Ljava/lang/String; = "0.9"

.field private static final blacklist java_version:Ljava/lang/String; = "0"

.field private static blacklist jdk_build_number:I = 0x0

.field private static blacklist jdk_major_version:I = 0x0

.field private static blacklist jdk_micro_version:I = 0x0

.field private static blacklist jdk_minor_version:I = 0x0

.field private static blacklist jdk_special_version:Ljava/lang/String; = null

.field private static blacklist jdk_update_version:I = 0x0

.field private static blacklist jvmVersionInfoAvailable:Z = false

.field private static blacklist jvm_build_number:I = 0x0

.field private static blacklist jvm_major_version:I = 0x0

.field private static blacklist jvm_micro_version:I = 0x0

.field private static blacklist jvm_minor_version:I = 0x0

.field private static blacklist jvm_special_version:Ljava/lang/String; = null

.field private static blacklist jvm_update_version:I = 0x0

.field private static final blacklist launcher_name:Ljava/lang/String; = ""

.field private static blacklist versionsInitialized:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    .line 47
    sput v0, Lsun/misc/Version;->jvm_major_version:I

    .line 48
    sput v0, Lsun/misc/Version;->jvm_minor_version:I

    .line 49
    sput v0, Lsun/misc/Version;->jvm_micro_version:I

    .line 50
    sput v0, Lsun/misc/Version;->jvm_update_version:I

    .line 51
    sput v0, Lsun/misc/Version;->jvm_build_number:I

    .line 52
    const/4 v1, 0x0

    sput-object v1, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    .line 53
    sput v0, Lsun/misc/Version;->jdk_major_version:I

    .line 54
    sput v0, Lsun/misc/Version;->jdk_minor_version:I

    .line 55
    sput v0, Lsun/misc/Version;->jdk_micro_version:I

    .line 56
    sput v0, Lsun/misc/Version;->jdk_update_version:I

    .line 57
    sput v0, Lsun/misc/Version;->jdk_build_number:I

    .line 58
    sput-object v1, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist getJdkSpecialVersion()Ljava/lang/String;
.end method

.method private static native blacklist getJdkVersionInfo()V
.end method

.method public static native blacklist getJvmSpecialVersion()Ljava/lang/String;
.end method

.method private static native blacklist getJvmVersionInfo()Z
.end method

.method public static blacklist initSystemProperties()V
    .registers 2

    .line 41
    const-string v0, "java.version"

    const-string v1, "0"

    invoke-static {v0, v1}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "java.runtime.version"

    const-string v1, "0.9"

    invoke-static {v0, v1}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "java.runtime.name"

    const-string v1, "Android Runtime"

    invoke-static {v0, v1}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private static declared-synchronized blacklist initVersions()V
    .registers 12

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 265
    :try_start_3
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_155

    if-eqz v1, :cond_9

    .line 266
    monitor-exit v0

    return-void

    .line 268
    :cond_9
    :try_start_9
    invoke-static {}, Lsun/misc/Version;->getJvmVersionInfo()Z

    move-result v1

    sput-boolean v1, Lsun/misc/Version;->jvmVersionInfoAvailable:Z

    .line 269
    sget-boolean v1, Lsun/misc/Version;->jvmVersionInfoAvailable:Z

    const/4 v2, 0x1

    if-nez v1, :cond_14e

    .line 274
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "cs":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_14e

    .line 276
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_14e

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_14e

    .line 277
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_14e

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_14e

    .line 278
    const/4 v6, 0x4

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_14e

    .line 279
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    sput v8, Lsun/misc/Version;->jvm_major_version:I

    .line 280
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    sput v8, Lsun/misc/Version;->jvm_minor_version:I

    .line 281
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    sput v6, Lsun/misc/Version;->jvm_micro_version:I

    .line 282
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v1, v4, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 283
    .end local v1    # "cs":Ljava/lang/CharSequence;
    .local v4, "cs":Ljava/lang/CharSequence;
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v6, 0x5f

    if-ne v1, v6, :cond_f9

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v1, v7, :cond_f9

    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "nextChar":I
    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 286
    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 287
    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 289
    const/4 v1, 0x4

    goto :goto_bd

    .line 290
    :cond_a8
    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 291
    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6
    :try_end_ba
    .catchall {:try_start_9 .. :try_end_ba} :catchall_155

    if-eqz v6, :cond_bd

    .line 293
    const/4 v1, 0x3

    .line 297
    :cond_bd
    :goto_bd
    :try_start_bd
    invoke-interface {v4, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, "uu":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lsun/misc/Version;->jvm_update_version:I

    .line 299
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v9, v1, 0x1

    if-lt v8, v9, :cond_eb

    .line 300
    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 301
    .local v8, "c":C
    const/16 v9, 0x61

    if-lt v8, v9, :cond_eb

    const/16 v9, 0x7a

    if-gt v8, v9, :cond_eb

    .line 302
    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;
    :try_end_e9
    .catch Ljava/lang/NumberFormatException; {:try_start_bd .. :try_end_e9} :catch_f6
    .catchall {:try_start_bd .. :try_end_e9} :catchall_155

    .line 303
    add-int/lit8 v1, v1, 0x1

    .line 309
    .end local v6    # "uu":Ljava/lang/String;
    .end local v8    # "c":C
    :cond_eb
    nop

    .line 310
    :try_start_ec
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v4, v1, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6
    :try_end_f4
    .catchall {:try_start_ec .. :try_end_f4} :catchall_155

    move-object v4, v6

    goto :goto_f9

    .line 306
    :catch_f6
    move-exception v2

    .line 308
    .local v2, "e":Ljava/lang/NumberFormatException;
    monitor-exit v0

    return-void

    .line 312
    .end local v1    # "nextChar":I
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_f9
    :goto_f9
    :try_start_f9
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v6, 0x2d

    if-ne v1, v6, :cond_14e

    .line 316
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v4, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 317
    .end local v4    # "cs":Ljava/lang/CharSequence;
    .local v1, "cs":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "res":[Ljava/lang/String;
    array-length v6, v4

    move v8, v3

    :goto_115
    if-ge v8, v6, :cond_14e

    aget-object v9, v4, v8

    .line 319
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x62

    if-ne v10, v11, :cond_14b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v7, :cond_14b

    .line 320
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_14b

    .line 321
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_14b

    .line 322
    nop

    .line 323
    invoke-virtual {v9, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lsun/misc/Version;->jvm_build_number:I

    .line 324
    goto :goto_14e

    .line 318
    .end local v9    # "s":Ljava/lang/String;
    :cond_14b
    add-int/lit8 v8, v8, 0x1

    goto :goto_115

    .line 330
    .end local v1    # "cs":Ljava/lang/CharSequence;
    .end local v4    # "res":[Ljava/lang/String;
    :cond_14e
    :goto_14e
    invoke-static {}, Lsun/misc/Version;->getJdkVersionInfo()V

    .line 331
    sput-boolean v2, Lsun/misc/Version;->versionsInitialized:Z
    :try_end_153
    .catchall {:try_start_f9 .. :try_end_153} :catchall_155

    .line 332
    monitor-exit v0

    return-void

    .line 264
    :catchall_155
    move-exception v1

    :try_start_156
    monitor-exit v0
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_155

    throw v1
.end method

.method public static declared-synchronized blacklist jdkBuildNumber()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 256
    :try_start_3
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v1, :cond_a

    .line 257
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 259
    :cond_a
    sget v1, Lsun/misc/Version;->jdk_build_number:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return v1

    .line 255
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static declared-synchronized blacklist jdkMajorVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 199
    :try_start_3
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v1, :cond_a

    .line 200
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 202
    :cond_a
    sget v1, Lsun/misc/Version;->jdk_major_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return v1

    .line 198
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static declared-synchronized blacklist jdkMicroVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 221
    :try_start_3
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v1, :cond_a

    .line 222
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 224
    :cond_a
    sget v1, Lsun/misc/Version;->jdk_micro_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return v1

    .line 220
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static declared-synchronized blacklist jdkMinorVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 210
    :try_start_3
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v1, :cond_a

    .line 211
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 213
    :cond_a
    sget v1, Lsun/misc/Version;->jdk_minor_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return v1

    .line 209
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static declared-synchronized blacklist jdkSpecialVersion()Ljava/lang/String;
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 240
    :try_start_3
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v1, :cond_a

    .line 241
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 243
    :cond_a
    sget-object v1, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 244
    invoke-static {}, Lsun/misc/Version;->getJdkSpecialVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    .line 246
    :cond_14
    sget-object v1, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    .line 239
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public static declared-synchronized blacklist jdkUpdateVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 233
    :try_start_3
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v1, :cond_a

    .line 234
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 236
    :cond_a
    sget v1, Lsun/misc/Version;->jdk_update_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return v1

    .line 232
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static declared-synchronized blacklist jvmBuildNumber()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 187
    :try_start_3
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v1, :cond_a

    .line 188
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 190
    :cond_a
    sget v1, Lsun/misc/Version;->jvm_build_number:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return v1

    .line 186
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static declared-synchronized blacklist jvmMajorVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 125
    :try_start_3
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v1, :cond_a

    .line 126
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 128
    :cond_a
    sget v1, Lsun/misc/Version;->jvm_major_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return v1

    .line 124
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static declared-synchronized blacklist jvmMicroVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 152
    :try_start_3
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v1, :cond_a

    .line 153
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 155
    :cond_a
    sget v1, Lsun/misc/Version;->jvm_micro_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return v1

    .line 151
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static declared-synchronized blacklist jvmMinorVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 138
    :try_start_3
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v1, :cond_a

    .line 139
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 141
    :cond_a
    sget v1, Lsun/misc/Version;->jvm_minor_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return v1

    .line 137
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static declared-synchronized blacklist jvmSpecialVersion()Ljava/lang/String;
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 171
    :try_start_3
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v1, :cond_a

    .line 172
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 174
    :cond_a
    sget-object v1, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 175
    invoke-static {}, Lsun/misc/Version;->getJvmSpecialVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    .line 177
    :cond_14
    sget-object v1, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    .line 170
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public static declared-synchronized blacklist jvmUpdateVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 164
    :try_start_3
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v1, :cond_a

    .line 165
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 167
    :cond_a
    sget v1, Lsun/misc/Version;->jvm_update_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return v1

    .line 163
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static blacklist print()V
    .registers 1

    .line 66
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lsun/misc/Version;->print(Ljava/io/PrintStream;)V

    .line 67
    return-void
.end method

.method public static blacklist print(Ljava/io/PrintStream;)V
    .registers 8
    .param p0, "ps"    # Ljava/io/PrintStream;

    .line 82
    const/4 v0, 0x0

    .line 85
    .local v0, "isHeadless":Z
    const-string v1, "java.awt.headless"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "headless":Ljava/lang/String;
    if-eqz v1, :cond_12

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 87
    const/4 v0, 0x1

    .line 91
    :cond_12
    const-string v2, " version \"0\""

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    const-string v2, "Android Runtime (build 0.9"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 97
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 99
    const-string v2, ", profile "

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 102
    :cond_29
    const-string v2, "Android Runtime"

    const-string v3, "Embedded"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3b

    if-eqz v0, :cond_3b

    .line 104
    const-string v2, ", headless"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 106
    :cond_3b
    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(C)V

    .line 109
    const-string v2, "java.vm.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "java_vm_name":Ljava/lang/String;
    const-string v3, "java.vm.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "java_vm_version":Ljava/lang/String;
    const-string v4, "java.vm.info"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "java_vm_info":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (build "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static blacklist println()V
    .registers 1

    .line 74
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lsun/misc/Version;->print(Ljava/io/PrintStream;)V

    .line 75
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 76
    return-void
.end method
