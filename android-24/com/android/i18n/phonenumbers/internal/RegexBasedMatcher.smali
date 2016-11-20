.class public final Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;
.super Ljava/lang/Object;
.source "RegexBasedMatcher.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/internal/MatcherApi;


# instance fields
.field private final regexCache:Lcom/android/i18n/phonenumbers/RegexCache;


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Lcom/android/i18n/phonenumbers/RegexCache;

    #@5
    const/16 v1, 0x64

    #@7
    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/RegexCache;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@c
    .line 35
    return-void
.end method

.method public static create()Lcom/android/i18n/phonenumbers/internal/MatcherApi;
    .locals 1

    #@0
    .prologue
    .line 30
    new-instance v0, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;

    #@2
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method public matchesNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z
    .locals 3
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .param p3, "allowPrefixMatch"    # Z

    #@0
    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@2
    .line 41
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 40
    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@d
    move-result-object v0

    #@e
    .line 42
    .local v0, "nationalNumberPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 43
    if-eqz p3, :cond_1

    #@16
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@19
    move-result v1

    #@1a
    .line 42
    :goto_0
    return v1

    #@1b
    :cond_0
    const/4 v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 43
    :cond_1
    const/4 v1, 0x0

    #@1e
    goto :goto_0
.end method

.method public matchesPossibleNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 3
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@2
    .line 49
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 48
    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@d
    move-result-object v0

    #@e
    .line 50
    .local v0, "possibleNumberPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@11
    move-result v1

    #@12
    return v1
.end method
