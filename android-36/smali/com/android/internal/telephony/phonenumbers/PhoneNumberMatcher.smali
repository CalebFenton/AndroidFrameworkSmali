.class final Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;
.super Ljava/lang/Object;
.source "PhoneNumberMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;,
        Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist INNER_MATCHES:[Ljava/util/regex/Pattern;

.field private static final blacklist LEAD_CLASS:Ljava/util/regex/Pattern;

.field private static final blacklist MATCHING_BRACKETS:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist PUB_PAGES:Ljava/util/regex/Pattern;

.field private static final blacklist SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

.field private static final blacklist TIME_STAMPS:Ljava/util/regex/Pattern;

.field private static final blacklist TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist lastMatch:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

.field private final blacklist leniency:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

.field private blacklist maxTries:J

.field private final blacklist phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

.field private final blacklist preferredRegion:Ljava/lang/String;

.field private final blacklist regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

.field private blacklist searchIndex:I

.field private blacklist state:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

.field private final blacklist text:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 68
    const-string v0, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    .line 81
    const-string v0, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$"

    .line 82
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    .line 83
    const-string v0, ":[0-5]\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    const/4 v0, 0x6

    .line 102
    new-array v0, v0, [Ljava/util/regex/Pattern;

    const-string v1, "/+(.*)"

    .line 104
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "(\\([^(]*)"

    .line 107
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"

    .line 110
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "[\u2012-\u2015\uff0d]\\p{Z}*(.+)"

    .line 114
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "\\.+\\p{Z}*([^.]+)"

    .line 116
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "\\p{Z}+(\\P{Z}+)"

    .line 118
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\\[\uff08\uff3b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")\\]\uff09\uff3d"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v2, v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v5

    .line 141
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(?:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "])?(?:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "+["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "])?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "+(?:["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "])"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    .line 148
    invoke-static {v2, v4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v2, v6}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    .line 158
    invoke-static {v2, v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v2

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\p{Nd}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+\uff0b"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(?:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;J)V
    .registers 10

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    const/4 v1, 0x0

    .line 209
    iput v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    .line 215
    new-instance v1, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    if-eqz p1, :cond_36

    if-eqz p4, :cond_36

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_30

    .line 241
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    if-eqz p2, :cond_25

    goto :goto_27

    .line 242
    :cond_25
    const-string p2, ""

    :goto_27
    iput-object p2, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    .line 243
    iput-object p3, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    .line 244
    iput-object p4, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    .line 245
    iput-wide p5, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->maxTries:J

    return-void

    .line 239
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 236
    :cond_36
    throw v0
.end method

.method static blacklist allNumberGroupsAreExactlyPresent(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .registers 8

    .line 506
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 507
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p2

    .line 510
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    goto :goto_17

    :cond_15
    array-length v0, p2

    sub-int/2addr v0, v1

    .line 514
    :goto_17
    array-length v2, p2

    if-eq v2, v1, :cond_4c

    aget-object v2, p2, v0

    .line 516
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p0

    .line 515
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_4c

    .line 521
    :cond_27
    array-length p0, p3

    sub-int/2addr p0, v1

    :goto_29
    const/4 p1, 0x0

    if-lez p0, :cond_3e

    if-ltz v0, :cond_3e

    .line 524
    aget-object v2, p2, v0

    aget-object v3, p3, p0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    return p1

    :cond_39
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    :cond_3e
    if-ltz v0, :cond_4b

    .line 531
    aget-object p0, p2, v0

    aget-object p2, p3, p1

    .line 532
    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4b

    return v1

    :cond_4b
    return p1

    :cond_4c
    :goto_4c
    return v1
.end method

.method static blacklist allNumberGroupsRemainGrouped(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .registers 9

    .line 463
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1b

    .line 465
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    move v0, v2

    .line 470
    :goto_1d
    array-length v3, p3

    if-ge v0, v3, :cond_68

    .line 473
    aget-object v3, p3, v0

    invoke-virtual {p2, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_29

    return v2

    .line 478
    :cond_29
    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    if-nez v0, :cond_65

    .line 479
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_65

    .line 484
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 485
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_65

    .line 486
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p0

    .line 491
    aget-object p1, p3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 492
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 499
    :cond_68
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static blacklist containsMoreThanOneSlashInNationalNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 8

    const/16 v0, 0x2f

    .line 604
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_a

    return v2

    :cond_a
    add-int/lit8 v3, v1, 0x1

    .line 610
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_13

    return v2

    .line 618
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_24

    .line 619
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v3, v4, :cond_46

    .line 621
    :cond_24
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    add-int/2addr v0, v5

    .line 624
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_46
    return v5
.end method

.method static blacklist containsOnlyValidXChars(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;)Z
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 636
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_44

    .line 637
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x58

    const/16 v5, 0x78

    if-eq v2, v5, :cond_16

    if-ne v2, v4, :cond_42

    :cond_16
    add-int/lit8 v2, v1, 0x1

    .line 639
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_34

    if-ne v6, v4, :cond_21

    goto :goto_34

    .line 649
    :cond_21
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 650
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    .line 649
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    return v0

    .line 644
    :cond_34
    :goto_34
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    if-eq v1, v4, :cond_41

    return v0

    :cond_41
    move v1, v2

    :cond_42
    add-int/2addr v1, v3

    goto :goto_2

    :cond_44
    return v3
.end method

.method private blacklist extractInnerMatch(Ljava/lang/CharSequence;I)Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;
    .registers 14

    .line 355
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_5b

    aget-object v4, v0, v3

    .line 356
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v5, 0x1

    move v6, v5

    .line 358
    :goto_f
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_58

    iget-wide v7, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_58

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_3c

    .line 361
    sget-object v6, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 363
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-interface {p1, v2, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 361
    invoke-static {v6, v9}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 364
    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    move-result-object v6

    if-eqz v6, :cond_36

    return-object v6

    .line 368
    :cond_36
    iget-wide v9, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->maxTries:J

    sub-long/2addr v9, v7

    iput-wide v9, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->maxTries:J

    move v6, v2

    .line 371
    :cond_3c
    sget-object v9, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 372
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 371
    invoke-static {v9, v10}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 373
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v10

    add-int/2addr v10, p2

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    move-result-object v9

    if-eqz v9, :cond_52

    return-object v9

    .line 377
    :cond_52
    iget-wide v9, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->maxTries:J

    sub-long/2addr v9, v7

    iput-wide v9, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->maxTries:J

    goto :goto_f

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5b
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist extractMatch(Ljava/lang/CharSequence;I)Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;
    .registers 6

    .line 323
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return-object v1

    .line 328
    :cond_e
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_36

    return-object v1

    .line 336
    :cond_36
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    if-eqz v0, :cond_3d

    return-object v0

    .line 343
    :cond_3d
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->extractInnerMatch(Ljava/lang/CharSequence;I)Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    move-result-object p0

    return-object p0
.end method

.method private blacklist find(I)Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;
    .registers 7

    .line 256
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 257
    :goto_8
    iget-wide v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3e

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 258
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    .line 259
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-interface {v1, p1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 264
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 266
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->extractMatch(Ljava/lang/CharSequence;I)Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    move-result-object v2

    if-eqz v2, :cond_31

    return-object v2

    .line 271
    :cond_31
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr p1, v1

    .line 272
    iget-wide v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->maxTries:J

    goto :goto_8

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getNationalNumberGroups(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;
    .registers 3

    .line 543
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3b

    .line 546
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_12

    .line 548
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_12
    const/16 v0, 0x2d

    .line 551
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 552
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getNationalNumberGroups(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;
    .registers 4

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 564
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-"

    .line 565
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist isInvalidPunctuationSymbol(C)Z
    .registers 2

    const/16 v0, 0x25

    if-eq p0, v0, :cond_f

    .line 311
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method static blacklist isLatinLetter(C)Z
    .registers 4

    .line 298
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_f

    return v1

    .line 301
    :cond_f
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 302
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    .line 303
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    .line 305
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    .line 306
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    .line 307
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    goto :goto_45

    :cond_44
    return v1

    :cond_45
    :goto_45
    const/4 p0, 0x1

    return p0
.end method

.method static blacklist isNationalPrefixPresentIfRequired(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;)Z
    .registers 6

    .line 661
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_a

    return v2

    .line 665
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-nez v0, :cond_19

    return v2

    .line 671
    :cond_19
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 673
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 676
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_56

    .line 677
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v3

    if-eqz v3, :cond_38

    return v2

    .line 683
    :cond_38
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    return v2

    .line 688
    :cond_43
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 692
    invoke-virtual {p1, v1, v0, p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0

    :cond_56
    return v2
.end method

.method private static blacklist limit(II)Ljava/lang/String;
    .registers 4

    if-ltz p0, :cond_25

    if-lez p1, :cond_25

    if-lt p1, p0, :cond_25

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private blacklist parseAndVerify(Ljava/lang/CharSequence;I)Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;
    .registers 7

    const/4 v0, 0x0

    .line 396
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_8c

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_8c

    .line 402
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_67

    if-lez p2, :cond_47

    .line 405
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_47

    .line 406
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 408
    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v1

    if-eqz v1, :cond_47

    :cond_46
    return-object v0

    .line 412
    :cond_47
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, p2

    .line 413
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_67

    .line 414
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 415
    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v2

    if-nez v2, :cond_66

    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v1

    if-eqz v1, :cond_67

    :cond_66
    return-object v0

    .line 421
    :cond_67
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 423
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v2, v1, p1, v3, p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->verify(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;)Z

    move-result p0

    if-eqz p0, :cond_8c

    .line 427
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 428
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 429
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 430
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;-><init>(ILjava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V
    :try_end_8b
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_8b} :catch_8c

    return-object p0

    :catch_8c
    :cond_8c
    :goto_8c
    return-object v0
.end method

.method private static blacklist trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    .line 283
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 284
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_14
    return-object p1
.end method


# virtual methods
.method blacklist checkNumberGroupingIsValid(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;)Z
    .registers 12

    const/4 v0, 0x1

    .line 572
    invoke-static {p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 573
    invoke-static {p3, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->getNationalNumberGroups(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-interface {p4, p3, p1, p2, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    .line 579
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getInstance()Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    move-result-object v1

    .line 580
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getAlternateFormatsMetadataSource()Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSource;

    move-result-object v1

    .line 581
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/phonenumbers/metadata/source/FormattingMetadataSource;->getFormattingMetadataForCountryCallingCode(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 582
    invoke-virtual {p3, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_61

    .line 584
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 585
    invoke-virtual {v4}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v5

    if-lez v5, :cond_56

    .line 587
    iget-object v5, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    .line 588
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 589
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_56

    goto :goto_2f

    .line 594
    :cond_56
    invoke-static {p3, p1, v4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->getNationalNumberGroups(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v4

    .line 595
    invoke-interface {p4, p3, p1, p2, v4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    return v0

    :cond_61
    return v3
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_1f

    .line 700
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->find(I)Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    if-nez v0, :cond_15

    .line 702
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    goto :goto_1f

    .line 704
    :cond_15
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->end()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    .line 705
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    .line 708
    :cond_1f
    :goto_1f
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    if-ne p0, v0, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist next()Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;
    .registers 3

    .line 714
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    const/4 v1, 0x0

    .line 720
    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    .line 721
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    return-object v0

    .line 715
    :cond_10
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->next()Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api remove()V
    .registers 1

    .line 730
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
