.class public final Lcom/android/i18n/timezone/TimeZoneDataFiles;
.super Ljava/lang/Object;
.source "TimeZoneDataFiles.java"


# static fields
.field private static final blacklist ANDROID_ROOT_ENV:Ljava/lang/String; = "ANDROID_ROOT"

.field private static final blacklist ANDROID_TZDATA_ROOT_ENV:Ljava/lang/String; = "ANDROID_TZDATA_ROOT"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getEnvironmentPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "environmentVariable"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 93
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "variable":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 95
    const/4 v1, 0x0

    return-object v1

    .line 97
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSystemIcuFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/usr/icu/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ANDROID_ROOT"

    invoke-static {v1, v0}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->getEnvironmentPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSystemTzFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/usr/share/zoneinfo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ANDROID_ROOT"

    invoke-static {v1, v0}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->getEnvironmentPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTimeZoneFilePaths(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->getTimeZoneModuleTzFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTimeZoneModuleFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_TZDATA_ROOT"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTimeZoneModuleTzFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tz/versioned/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/android/i18n/timezone/TzDataSetVersion;->currentFormatMajorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->getTimeZoneModuleFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist test-api getTimeZoneModuleTzVersionFile()Ljava/lang/String;
    .registers 1

    .line 61
    const-string v0, "tz_version"

    invoke-static {v0}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->getTimeZoneModuleTzFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist test-api readTimeZoneModuleVersion()Lcom/android/i18n/timezone/TzDataSetVersion;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;
        }
    .end annotation

    .line 70
    const-string v0, "tz_version"

    invoke-static {v0}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->getTimeZoneModuleTzFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "tzVersionFileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/i18n/timezone/TzDataSetVersion;->readFromFile(Ljava/io/File;)Lcom/android/i18n/timezone/TzDataSetVersion;

    move-result-object v1

    return-object v1
.end method
