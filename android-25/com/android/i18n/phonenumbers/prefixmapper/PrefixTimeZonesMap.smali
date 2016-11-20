.class public Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
.super Ljava/lang/Object;
.source "PrefixTimeZonesMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final RAW_STRING_TIMEZONES_SEPARATOR:Ljava/lang/String; = "&"


# instance fields
.field private final phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    new-instance v0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    #@5
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    #@a
    .line 35
    return-void
.end method

.method private lookupTimeZonesForNumber(J)Ljava/util/List;
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    #@2
    invoke-virtual {v1, p1, p2}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 77
    .local v0, "timezonesString":Ljava/lang/String;
    if-nez v0, :cond_0

    #@8
    .line 78
    new-instance v1, Ljava/util/LinkedList;

    #@a
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@d
    return-object v1

    #@e
    .line 80
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->tokenizeRawOutputString(Ljava/lang/String;)Ljava/util/List;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method private tokenizeRawOutputString(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "timezonesString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 110
    new-instance v1, Ljava/util/StringTokenizer;

    #@2
    .line 111
    const-string/jumbo v2, "&"

    #@5
    .line 110
    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 112
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/LinkedList;

    #@a
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@d
    .line 113
    .local v0, "timezonesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 114
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@1a
    goto :goto_0

    #@1b
    .line 116
    :cond_0
    return-object v0
.end method


# virtual methods
.method public lookupCountryLevelTimeZonesForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
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
    .line 103
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupTimeZonesForNumber(J)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public lookupTimeZonesForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .locals 4
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
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@8
    move-result v3

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v2

    #@d
    .line 92
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@20
    move-result-wide v0

    #@21
    .line 93
    .local v0, "phonePrefix":J
    invoke-direct {p0, v0, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupTimeZonesForNumber(J)Ljava/util/List;

    #@24
    move-result-object v2

    #@25
    return-object v2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->readExternal(Ljava/io/ObjectInput;)V

    #@5
    .line 58
    return-void
.end method

.method public readPrefixTimeZonesMap(Ljava/util/SortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 48
    .local p1, "sortedPrefixTimeZoneMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->readPhonePrefixMap(Ljava/util/SortedMap;)V

    #@5
    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    #@2
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->writeExternal(Ljava/io/ObjectOutput;)V

    #@5
    .line 54
    return-void
.end method
