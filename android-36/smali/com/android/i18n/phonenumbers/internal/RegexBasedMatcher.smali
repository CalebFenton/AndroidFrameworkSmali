.class public final Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;
.super Ljava/lang/Object;
.source "RegexBasedMatcher.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/internal/MatcherApi;


# instance fields
.field private final blacklist regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/i18n/phonenumbers/internal/RegexCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    .line 37
    return-void
.end method

.method public static blacklist create()Lcom/android/i18n/phonenumbers/internal/MatcherApi;
    .registers 1

    .line 32
    new-instance v0, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;-><init>()V

    return-object v0
.end method

.method private static blacklist match(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;Z)Z
    .registers 5
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "allowPrefixMatch"    # Z

    .line 52
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 53
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_c

    .line 54
    const/4 v1, 0x0

    return v1

    .line 56
    :cond_c
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    move v1, p2

    :goto_15
    return v1
.end method


# virtual methods
.method public blacklist matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z
    .registers 6
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "numberDesc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .param p3, "allowPrefixMatch"    # Z

    .line 42
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "nationalNumberPattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 46
    const/4 v1, 0x0

    return v1

    .line 48
    :cond_c
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {v1, v0}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;->match(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    return v1
.end method
