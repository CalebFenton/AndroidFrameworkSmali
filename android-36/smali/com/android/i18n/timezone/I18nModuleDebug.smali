.class public Lcom/android/i18n/timezone/I18nModuleDebug;
.super Ljava/lang/Object;
.source "I18nModuleDebug.java"


# static fields
.field private static final blacklist CORE_LIBRARY_TIMEZONE_DEBUG_PREFIX:Ljava/lang/String; = "core_library.timezone."


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addTzDataSetVersionDebugInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/timezone/DebugInfo;)V
    .registers 10
    .param p0, "tzDataSetVersionFile"    # Ljava/lang/String;
    .param p1, "debugKeyPrefix"    # Ljava/lang/String;
    .param p2, "debugInfo"    # Lcom/android/i18n/timezone/DebugInfo;

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "statusKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 81
    nop

    .line 82
    :try_start_1f
    invoke-static {v0}, Lcom/android/i18n/timezone/TzDataSetVersion;->readFromFile(Ljava/io/File;)Lcom/android/i18n/timezone/TzDataSetVersion;

    move-result-object v2

    .line 83
    .local v2, "tzDataSetVersion":Lcom/android/i18n/timezone/TzDataSetVersion;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/i18n/timezone/TzDataSetVersion;->getFormatMajorVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 84
    invoke-virtual {v2}, Lcom/android/i18n/timezone/TzDataSetVersion;->getFormatMinorVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "formatVersionString":Ljava/lang/String;
    const-string v4, "OK"

    invoke-virtual {p2, v1, v4}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "formatVersion"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v4, v5, v3}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "rulesVersion"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {v2}, Lcom/android/i18n/timezone/TzDataSetVersion;->getRulesVersion()Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-virtual {v4, v5, v6}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "revision"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {v2}, Lcom/android/i18n/timezone/TzDataSetVersion;->getRevision()I

    move-result v6

    .line 89
    invoke-virtual {v4, v5, v6}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;I)Lcom/android/i18n/timezone/DebugInfo;
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_94} :catch_96
    .catch Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException; {:try_start_1f .. :try_end_94} :catch_96

    .line 96
    nop

    .end local v2    # "tzDataSetVersion":Lcom/android/i18n/timezone/TzDataSetVersion;
    .end local v3    # "formatVersionString":Ljava/lang/String;
    goto :goto_f0

    .line 91
    :catch_96
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ERROR"

    invoke-virtual {p2, v1, v3}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "exception_class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "exception_msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/i18n/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_f0

    .line 98
    :cond_eb
    const-string v2, "NOT_FOUND"

    invoke-virtual {p2, v1, v2}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    .line 100
    :goto_f0
    return-void
.end method

.method public static blacklist test-api getDebugInfo()Lcom/android/i18n/timezone/DebugInfo;
    .registers 1

    .line 44
    new-instance v0, Lcom/android/i18n/timezone/DebugInfo;

    invoke-direct {v0}, Lcom/android/i18n/timezone/DebugInfo;-><init>()V

    .line 45
    .local v0, "debugInfo":Lcom/android/i18n/timezone/DebugInfo;
    invoke-static {v0}, Lcom/android/i18n/timezone/I18nModuleDebug;->populateTimeZoneFilesInfo(Lcom/android/i18n/timezone/DebugInfo;)V

    .line 46
    invoke-static {v0}, Lcom/android/i18n/timezone/I18nModuleDebug;->populateTimeZoneLibraryReportedVersion(Lcom/android/i18n/timezone/DebugInfo;)V

    .line 47
    return-object v0
.end method

.method private static blacklist populateTimeZoneFilesInfo(Lcom/android/i18n/timezone/DebugInfo;)V
    .registers 5
    .param p0, "debugInfo"    # Lcom/android/i18n/timezone/DebugInfo;

    .line 56
    const-string v0, "core_library.timezone.source."

    .line 60
    .local v0, "debugKeyPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tzdata_module_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "tzDataModulePrefix":Ljava/lang/String;
    nop

    .line 62
    const-string v2, "tz_version"

    invoke-static {v2}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->getTimeZoneModuleTzFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "versionFile":Ljava/lang/String;
    invoke-static {v3, v1, p0}, Lcom/android/i18n/timezone/I18nModuleDebug;->addTzDataSetVersionDebugInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/timezone/DebugInfo;)V

    .line 68
    .end local v1    # "tzDataModulePrefix":Ljava/lang/String;
    .end local v3    # "versionFile":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "system_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "systemDirPrefix":Ljava/lang/String;
    nop

    .line 70
    invoke-static {v2}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->getSystemTzFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "versionFile":Ljava/lang/String;
    invoke-static {v2, v1, p0}, Lcom/android/i18n/timezone/I18nModuleDebug;->addTzDataSetVersionDebugInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/timezone/DebugInfo;)V

    .line 73
    .end local v1    # "systemDirPrefix":Ljava/lang/String;
    .end local v2    # "versionFile":Ljava/lang/String;
    return-void
.end method

.method private static blacklist populateTimeZoneLibraryReportedVersion(Lcom/android/i18n/timezone/DebugInfo;)V
    .registers 4
    .param p0, "debugInfo"    # Lcom/android/i18n/timezone/DebugInfo;

    .line 103
    const-string v0, "core_library.timezone.lib."

    .line 104
    .local v0, "debugKeyPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "icu4j.tzdb_version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {p0, v1, v2}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "libcore.tzdb_version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/i18n/timezone/ZoneInfoDb;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {p0, v1, v2}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "icu4c.tzdb_version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {}, Lcom/android/icu/util/Icu4cMetadata;->getTzdbVersion()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {p0, v1, v2}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    .line 113
    return-void
.end method
