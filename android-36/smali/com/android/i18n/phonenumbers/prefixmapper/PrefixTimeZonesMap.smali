.class public Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
.super Ljava/lang/Object;
.source "PrefixTimeZonesMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final blacklist RAW_STRING_TIMEZONES_SEPARATOR:Ljava/lang/String; = "&"


# instance fields
.field private final blacklist phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    return-void
.end method

.method private blacklist lookupTimeZonesForNumber(J)Ljava/util/List;
    .registers 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(J)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "timezonesString":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 80
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    return-object v1

    .line 82
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->tokenizeRawOutputString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private blacklist tokenizeRawOutputString(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "timezonesString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 115
    .local v1, "timezonesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_c
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 116
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 118
    :cond_1a
    return-object v1
.end method


# virtual methods
.method public blacklist lookupCountryLevelTimeZonesForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
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

    .line 105
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupTimeZonesForNumber(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist lookupTimeZonesForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
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

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 95
    .local v0, "phonePrefix":J
    invoke-direct {p0, v0, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupTimeZonesForNumber(J)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->readExternal(Ljava/io/ObjectInput;)V

    .line 62
    return-void
.end method

.method public blacklist readPrefixTimeZonesMap(Ljava/util/SortedMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "sortedPrefixTimeZoneMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->readPhonePrefixMap(Ljava/util/SortedMap;)V

    .line 51
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 58
    return-void
.end method
