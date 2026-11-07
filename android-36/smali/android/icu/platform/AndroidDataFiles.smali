.class public Landroid/icu/platform/AndroidDataFiles;
.super Ljava/lang/Object;
.source "AndroidDataFiles.java"


# static fields
.field public static final blacklist ANDROID_I18N_ROOT_ENV:Ljava/lang/String; = "ANDROID_I18N_ROOT"

.field public static final blacklist ANDROID_ROOT_ENV:Ljava/lang/String; = "ANDROID_ROOT"

.field public static final blacklist ANDROID_TZDATA_ROOT_ENV:Ljava/lang/String; = "ANDROID_TZDATA_ROOT"

.field public static final blacklist CURRENT_MAJOR_VERSION:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist generateIcuDataPath()Ljava/lang/String;
    .registers 4

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    invoke-static {v1}, Landroid/icu/platform/AndroidDataFiles;->getTimeZoneModuleIcuFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "timeZoneModuleIcuDataPath":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v1}, Landroid/icu/platform/AndroidDataFiles;->getI18nModuleIcuFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "i18nModuleIcuDataPath":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v3, ":"

    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist getI18nModuleFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_I18N_ROOT"

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

.method public static blacklist getI18nModuleIcuFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "icu/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/platform/AndroidDataFiles;->getI18nModuleFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getTimeZoneModuleFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 53
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

.method private static blacklist getTimeZoneModuleIcuFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tz/versioned/9/icu/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/platform/AndroidDataFiles;->getTimeZoneModuleFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
