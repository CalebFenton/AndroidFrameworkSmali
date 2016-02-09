.class public Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
.super Ljava/lang/Object;
.source "PhoneNumberToTimeZonesMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final MAPPING_DATA_DIRECTORY:Ljava/lang/String; = "/com/android/i18n/phonenumbers/timezones/data/"

.field private static final MAPPING_DATA_FILE_NAME:Ljava/lang/String; = "map_data"

.field private static final UNKNOWN_TIMEZONE:Ljava/lang/String; = "Etc/Unknown"

.field static final UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->loadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    #@8
    .line 45
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    #@a
    const-string/jumbo v1, "Etc/Unknown"

    #@d
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 49
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    #@12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@19
    move-result-object v0

    #@1a
    .line 48
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->LOGGER:Ljava/util/logging/Logger;

    #@1c
    .line 35
    return-void
.end method

.method private constructor <init>(Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;)V
    .locals 1
    .param p1, "prefixTimeZonesMap"    # Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    #@6
    .line 60
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    #@8
    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;)V
    .locals 0
    .param p1, "prefixTimeZonesMap"    # Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;-><init>(Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;)V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefixTimeZonesMapDataDirectory"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    #@6
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "map_data"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 55
    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->loadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    #@20
    .line 54
    return-void
.end method

.method private canBeGeocoded(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z
    .locals 2
    .param p1, "numberType"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 154
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@3
    if-eq p1, v1, :cond_0

    #@5
    .line 155
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@7
    if-ne p1, v1, :cond_1

    #@9
    .line 154
    :cond_0
    :goto_0
    return v0

    #@a
    .line 156
    :cond_1
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@c
    if-eq p1, v1, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 79
    if-eqz p0, :cond_0

    #@2
    .line 81
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 78
    :cond_0
    :goto_0
    return-void

    #@6
    .line 82
    :catch_0
    move-exception v0

    #@7
    .line 83
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->LOGGER:Ljava/util/logging/Logger;

    #@9
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@b
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@12
    goto :goto_0
.end method

.method private getCountryLevelTimeZonesforNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupCountryLevelTimeZonesForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 188
    .local v0, "timezones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    #@e
    .end local v0    # "timezones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
    .locals 2

    #@0
    .prologue
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    #@2
    monitor-enter v0

    #@3
    .line 110
    :try_start_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;->-get0()Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method private getTimeZonesForGeocodableNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupTimeZonesForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 175
    .local v0, "timezones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    #@e
    .end local v0    # "timezones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public static getUnknownTimeZone()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 163
    const-string/jumbo v0, "Etc/Unknown"

    #@3
    return-object v0
.end method

.method private static loadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    const-class v5, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    #@2
    invoke-virtual {v5, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@5
    move-result-object v4

    #@6
    .line 65
    .local v4, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    #@7
    .line 66
    .local v1, "in":Ljava/io/ObjectInputStream;
    new-instance v3, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    #@9
    invoke-direct {v3}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;-><init>()V

    #@c
    .line 68
    .local v3, "map":Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    #@e
    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 69
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@14
    .line 73
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->close(Ljava/io/InputStream;)V

    #@17
    move-object v1, v2

    #@18
    .line 75
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v3

    #@19
    .line 70
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    #@1a
    .line 71
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->LOGGER:Ljava/util/logging/Logger;

    #@1c
    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@1e
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    .line 73
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->close(Ljava/io/InputStream;)V

    #@28
    goto :goto_0

    #@29
    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@2a
    .line 73
    :goto_2
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->close(Ljava/io/InputStream;)V

    #@2d
    .line 72
    throw v5

    #@2e
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    #@2f
    move-object v1, v2

    #@30
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v1, "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    #@31
    .line 70
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    #@32
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@33
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method


# virtual methods
.method public getTimeZonesForGeographicalNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .locals 1
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->getTimeZonesForGeocodableNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getTimeZonesForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 137
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@7
    move-result-object v0

    #@8
    .line 138
    .local v0, "numberType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 139
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    #@e
    return-object v1

    #@f
    .line 140
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->canBeGeocoded(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 141
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->getCountryLevelTimeZonesforNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    #@18
    move-result-object v1

    #@19
    return-object v1

    #@1a
    .line 143
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->getTimeZonesForGeographicalNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method
