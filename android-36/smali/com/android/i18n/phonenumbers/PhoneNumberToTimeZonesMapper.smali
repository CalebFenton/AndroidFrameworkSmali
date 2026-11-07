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
.field private static final blacklist MAPPING_DATA_DIRECTORY:Ljava/lang/String; = "/com/android/i18n/phonenumbers/timezones/data/"

.field private static final blacklist MAPPING_DATA_FILE_NAME:Ljava/lang/String; = "map_data"

.field private static final blacklist UNKNOWN_TIMEZONE:Ljava/lang/String; = "Etc/Unknown"

.field static final blacklist UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private blacklist prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smloadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    .registers 1

    invoke-static {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->loadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    .line 47
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    const-string v1, "Etc/Unknown"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    nop

    .line 51
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->logger:Ljava/util/logging/Logger;

    .line 50
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;)V
    .registers 3
    .param p1, "prefixTimeZonesMap"    # Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    .line 62
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;-><init>(Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "prefixTimeZonesMapDataDirectory"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "map_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->loadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    .line 59
    return-void
.end method

.method private static blacklist close(Ljava/io/InputStream;)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;

    .line 81
    if-eqz p0, :cond_12

    .line 83
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 86
    goto :goto_12

    .line 84
    :catch_6
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    :cond_12
    :goto_12
    return-void
.end method

.method private blacklist getCountryLevelTimeZonesforNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .registers 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupCountryLevelTimeZonesForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "timezones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    goto :goto_10

    .line 179
    :cond_f
    move-object v1, v0

    .line 178
    :goto_10
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
    .registers 2

    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    monitor-enter v0

    .line 112
    :try_start_3
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    .line 112
    :catchall_9
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v1
.end method

.method private blacklist getTimeZonesForGeocodableNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .registers 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupTimeZonesForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v0

    .line 165
    .local v0, "timezones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    goto :goto_10

    .line 166
    :cond_f
    move-object v1, v0

    .line 165
    :goto_10
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getUnknownTimeZone()Ljava/lang/String;
    .registers 1

    .line 153
    const-string v0, "Etc/Unknown"

    return-object v0
.end method

.method private static blacklist loadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    .registers 8
    .param p0, "path"    # Ljava/lang/String;

    .line 66
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 67
    .local v0, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 68
    .local v1, "in":Ljava/io/ObjectInputStream;
    new-instance v2, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    invoke-direct {v2}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;-><init>()V

    .line 70
    .local v2, "map":Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    :try_start_c
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 71
    invoke-virtual {v2, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_1b
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    .line 75
    :goto_15
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->close(Ljava/io/InputStream;)V

    .line 76
    goto :goto_28

    .line 75
    :catchall_19
    move-exception v3

    goto :goto_29

    .line 72
    :catch_1b
    move-exception v3

    .line 73
    .local v3, "e":Ljava/io/IOException;
    :try_start_1c
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_19

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_15

    .line 77
    :goto_28
    return-object v2

    .line 75
    :goto_29
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->close(Ljava/io/InputStream;)V

    .line 76
    throw v3
.end method


# virtual methods
.method public blacklist getTimeZonesForGeographicalNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .registers 3
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->getTimeZonesForGeocodableNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimeZonesForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .registers 5
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 140
    .local v0, "numberType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_f

    .line 141
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    return-object v1

    .line 142
    :cond_f
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 143
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    .line 142
    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 144
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->getCountryLevelTimeZonesforNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 146
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->getTimeZonesForGeographicalNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
