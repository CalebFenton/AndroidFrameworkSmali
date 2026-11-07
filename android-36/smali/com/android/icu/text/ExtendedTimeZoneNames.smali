.class public Lcom/android/icu/text/ExtendedTimeZoneNames;
.super Ljava/lang/Object;
.source "ExtendedTimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/icu/text/ExtendedTimeZoneNames$Match;
    }
.end annotation


# static fields
.field private static final blacklist DST_NAME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STANDARD_AND_DST_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist locale:Landroid/icu/util/ULocale;

.field private final blacklist timeZoneNames:Landroid/icu/text/TimeZoneNames;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 42
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 44
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/icu/text/ExtendedTimeZoneNames;->DST_NAME_TYPES:Ljava/util/Set;

    .line 48
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 49
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/android/icu/text/ExtendedTimeZoneNames;->STANDARD_AND_DST_TYPES:Ljava/util/EnumSet;

    .line 48
    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/icu/text/ExtendedTimeZoneNames;->locale:Landroid/icu/util/ULocale;

    .line 109
    invoke-static {p1}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/icu/text/ExtendedTimeZoneNames;->timeZoneNames:Landroid/icu/text/TimeZoneNames;

    .line 110
    return-void
.end method

.method public static blacklist getInstance(Landroid/icu/util/ULocale;)Lcom/android/icu/text/ExtendedTimeZoneNames;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 119
    new-instance v0, Lcom/android/icu/text/ExtendedTimeZoneNames;

    invoke-direct {v0, p0}, Lcom/android/icu/text/ExtendedTimeZoneNames;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method private static blacklist matchedTimeZone(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$MatchInfo;)Lcom/android/icu/text/ExtendedTimeZoneNames$Match;
    .registers 6
    .param p0, "timeZoneId"    # Ljava/lang/String;
    .param p1, "matchInfo"    # Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 221
    new-instance v0, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;

    .line 222
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v1

    sget-object v2, Lcom/android/icu/text/ExtendedTimeZoneNames;->DST_NAME_TYPES:Ljava/util/Set;

    .line 224
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;-><init>(ILjava/lang/String;ZLcom/android/icu/text/ExtendedTimeZoneNames-IA;)V

    .line 221
    return-object v0
.end method


# virtual methods
.method public blacklist getTimeZoneNames()Landroid/icu/text/TimeZoneNames;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/icu/text/ExtendedTimeZoneNames;->timeZoneNames:Landroid/icu/text/TimeZoneNames;

    return-object v0
.end method

.method public blacklist matchName(Ljava/lang/CharSequence;ILjava/lang/String;)Lcom/android/icu/text/ExtendedTimeZoneNames$Match;
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "currentTzId"    # Ljava/lang/String;

    .line 157
    invoke-static {p3}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 159
    iget-object v0, p0, Lcom/android/icu/text/ExtendedTimeZoneNames;->timeZoneNames:Landroid/icu/text/TimeZoneNames;

    sget-object v1, Lcom/android/icu/text/ExtendedTimeZoneNames;->STANDARD_AND_DST_TYPES:Ljava/util/EnumSet;

    .line 160
    invoke-virtual {v0, p1, p2, v1}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v0

    .line 162
    .local v0, "matchedInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 163
    return-object v2

    .line 166
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v1, "maxLengthMatchInfos":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    const/4 v3, 0x0

    .line 169
    .local v3, "maxMatchedInfoLength":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 170
    .local v5, "matchInfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v5}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v6

    if-le v6, v3, :cond_37

    .line 171
    invoke-virtual {v5}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v3

    .line 172
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 175
    :cond_37
    invoke-virtual {v5}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v6

    if-lt v6, v3, :cond_40

    .line 176
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v5    # "matchInfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_40
    goto :goto_1e

    .line 180
    :cond_41
    iget-object v4, p0, Lcom/android/icu/text/ExtendedTimeZoneNames;->timeZoneNames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v4, p3}, Landroid/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 182
    .local v4, "metaZonesInCurrentZone":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 184
    .local v5, "tzMatchInfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 185
    .local v7, "matchInfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v7}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_71

    invoke-virtual {v7}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 186
    invoke-virtual {v7}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/icu/text/ExtendedTimeZoneNames;->matchedTimeZone(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$MatchInfo;)Lcom/android/icu/text/ExtendedTimeZoneNames$Match;

    move-result-object v2

    return-object v2

    .line 188
    :cond_71
    invoke-virtual {v7}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_86

    invoke-virtual {v7}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_86

    .line 189
    invoke-static {p3, v7}, Lcom/android/icu/text/ExtendedTimeZoneNames;->matchedTimeZone(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$MatchInfo;)Lcom/android/icu/text/ExtendedTimeZoneNames$Match;

    move-result-object v2

    return-object v2

    .line 192
    :cond_86
    invoke-virtual {v7}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8d

    .line 193
    move-object v5, v7

    .line 195
    .end local v7    # "matchInfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_8d
    goto :goto_4c

    .line 197
    :cond_8e
    if-eqz v5, :cond_99

    .line 198
    invoke-virtual {v5}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/icu/text/ExtendedTimeZoneNames;->matchedTimeZone(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$MatchInfo;)Lcom/android/icu/text/ExtendedTimeZoneNames$Match;

    move-result-object v2

    return-object v2

    .line 201
    :cond_99
    iget-object v6, p0, Lcom/android/icu/text/ExtendedTimeZoneNames;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "region":Ljava/lang/String;
    if-eqz v6, :cond_a7

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a9

    .line 204
    :cond_a7
    const-string v6, "001"

    .line 207
    :cond_a9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_ad
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 208
    .local v8, "matchInfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-virtual {v8}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d0

    .line 209
    iget-object v9, p0, Lcom/android/icu/text/ExtendedTimeZoneNames;->timeZoneNames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v8}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, "timeZoneId":Ljava/lang/String;
    if-eqz v9, :cond_d0

    .line 211
    invoke-static {v9, v8}, Lcom/android/icu/text/ExtendedTimeZoneNames;->matchedTimeZone(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$MatchInfo;)Lcom/android/icu/text/ExtendedTimeZoneNames$Match;

    move-result-object v2

    return-object v2

    .line 214
    .end local v8    # "matchInfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v9    # "timeZoneId":Ljava/lang/String;
    :cond_d0
    goto :goto_ad

    .line 216
    :cond_d1
    return-object v2
.end method
