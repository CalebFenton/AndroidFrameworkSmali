.class final Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;
.super Ljava/lang/Object;
.source "PhoneNumberMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;,
        Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final INNER_MATCHES:[Ljava/util/regex/Pattern;

.field private static final LEAD_CLASS:Ljava/util/regex/Pattern;

.field private static final MATCHING_BRACKETS:Ljava/util/regex/Pattern;

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final PUB_PAGES:Ljava/util/regex/Pattern;

.field private static final SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;


# instance fields
.field private lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

.field private final leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field private maxTries:J

.field private final phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private final preferredRegion:Ljava/lang/String;

.field private searchIndex:I

.field private state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    #@0
    .prologue
    .line 67
    const-string/jumbo v12, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    #@3
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v12

    #@7
    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    #@9
    .line 74
    const-string/jumbo v12, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    #@c
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@f
    move-result-object v12

    #@10
    .line 73
    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    #@12
    .line 81
    const-string/jumbo v12, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$"

    #@15
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@18
    move-result-object v12

    #@19
    .line 80
    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    #@1b
    .line 82
    const-string/jumbo v12, ":[0-5]\\d"

    #@1e
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@21
    move-result-object v12

    #@22
    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    #@24
    .line 101
    const/4 v12, 0x6

    #@25
    new-array v12, v12, [Ljava/util/regex/Pattern;

    #@27
    .line 103
    const-string/jumbo v13, "/+(.*)"

    #@2a
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@2d
    move-result-object v13

    #@2e
    const/4 v14, 0x0

    #@2f
    aput-object v13, v12, v14

    #@31
    .line 106
    const-string/jumbo v13, "(\\([^(]*)"

    #@34
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@37
    move-result-object v13

    #@38
    const/4 v14, 0x1

    #@39
    aput-object v13, v12, v14

    #@3b
    .line 109
    const-string/jumbo v13, "(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"

    #@3e
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@41
    move-result-object v13

    #@42
    const/4 v14, 0x2

    #@43
    aput-object v13, v12, v14

    #@45
    .line 113
    const-string/jumbo v13, "[\u2012-\u2015\uff0d]\\p{Z}*(.+)"

    #@48
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@4b
    move-result-object v13

    #@4c
    const/4 v14, 0x3

    #@4d
    aput-object v13, v12, v14

    #@4f
    .line 115
    const-string/jumbo v13, "\\.+\\p{Z}*([^.]+)"

    #@52
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@55
    move-result-object v13

    #@56
    const/4 v14, 0x4

    #@57
    aput-object v13, v12, v14

    #@59
    .line 117
    const-string/jumbo v13, "\\p{Z}+(\\P{Z}+)"

    #@5c
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@5f
    move-result-object v13

    #@60
    const/4 v14, 0x5

    #@61
    aput-object v13, v12, v14

    #@63
    .line 101
    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    #@65
    .line 129
    const-string/jumbo v9, "(\\[\uff08\uff3b"

    #@68
    .line 130
    .local v9, "openingParens":Ljava/lang/String;
    const-string/jumbo v2, ")\\]\uff09\uff3d"

    #@6b
    .line 131
    .local v2, "closingParens":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v13, "[^"

    #@73
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v12

    #@77
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v12

    #@7b
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v12

    #@7f
    const-string/jumbo v13, "]"

    #@82
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v12

    #@86
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v8

    #@8a
    .line 134
    .local v8, "nonParens":Ljava/lang/String;
    const/4 v12, 0x0

    #@8b
    const/4 v13, 0x3

    #@8c
    invoke-static {v12, v13}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    #@8f
    move-result-object v1

    #@90
    .line 141
    .local v1, "bracketPairLimit":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v13, "(?:["

    #@98
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v12

    #@9c
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v12

    #@a0
    const-string/jumbo v13, "])?"

    #@a3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v12

    #@a7
    const-string/jumbo v13, "(?:"

    #@aa
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v12

    #@ae
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v12

    #@b2
    const-string/jumbo v13, "+"

    #@b5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v12

    #@b9
    const-string/jumbo v13, "["

    #@bc
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v12

    #@c0
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v12

    #@c4
    const-string/jumbo v13, "])?"

    #@c7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v12

    #@cb
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v12

    #@cf
    .line 142
    const-string/jumbo v13, "+"

    #@d2
    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v12

    #@d6
    .line 143
    const-string/jumbo v13, "(?:["

    #@d9
    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v12

    #@dd
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v12

    #@e1
    .line 143
    const-string/jumbo v13, "]"

    #@e4
    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v12

    #@e8
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v12

    #@ec
    .line 143
    const-string/jumbo v13, "+["

    #@ef
    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v12

    #@f3
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v12

    #@f7
    .line 143
    const-string/jumbo v13, "])"

    #@fa
    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v12

    #@fe
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v12

    #@102
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v12

    #@106
    .line 144
    const-string/jumbo v13, "*"

    #@109
    .line 141
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v12

    #@10d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v12

    #@111
    .line 140
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@114
    move-result-object v12

    #@115
    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    #@117
    .line 147
    const/4 v12, 0x0

    #@118
    const/4 v13, 0x2

    #@119
    invoke-static {v12, v13}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    #@11c
    move-result-object v7

    #@11d
    .line 149
    .local v7, "leadLimit":Ljava/lang/String;
    const/4 v12, 0x0

    #@11e
    const/4 v13, 0x4

    #@11f
    invoke-static {v12, v13}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    #@122
    move-result-object v11

    #@123
    .line 154
    .local v11, "punctuationLimit":Ljava/lang/String;
    const/16 v3, 0x14

    #@125
    .line 157
    .local v3, "digitBlockLimit":I
    const/4 v12, 0x0

    #@126
    invoke-static {v12, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    #@129
    move-result-object v0

    #@12a
    .line 160
    .local v0, "blockLimit":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    #@12c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@12f
    const-string/jumbo v13, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    #@132
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v12

    #@136
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v12

    #@13a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v10

    #@13e
    .line 162
    .local v10, "punctuation":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    #@140
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    const-string/jumbo v13, "\\p{Nd}"

    #@146
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v12

    #@14a
    const/4 v13, 0x1

    #@14b
    invoke-static {v13, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    #@14e
    move-result-object v13

    #@14f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v12

    #@153
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@156
    move-result-object v4

    #@157
    .line 164
    .local v4, "digitSequence":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    #@159
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@15c
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v12

    #@160
    const-string/jumbo v13, "+\uff0b"

    #@163
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v12

    #@167
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v6

    #@16b
    .line 165
    .local v6, "leadClassChars":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    #@16d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@170
    const-string/jumbo v13, "["

    #@173
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v12

    #@177
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v12

    #@17b
    const-string/jumbo v13, "]"

    #@17e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v12

    #@182
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@185
    move-result-object v5

    #@186
    .line 166
    .local v5, "leadClass":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@189
    move-result-object v12

    #@18a
    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    #@18c
    .line 170
    new-instance v12, Ljava/lang/StringBuilder;

    #@18e
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@191
    const-string/jumbo v13, "(?:"

    #@194
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v12

    #@198
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v12

    #@19c
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v12

    #@1a0
    const-string/jumbo v13, ")"

    #@1a3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v12

    #@1a7
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v12

    #@1ab
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v12

    #@1af
    .line 171
    const-string/jumbo v13, "(?:"

    #@1b2
    .line 170
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v12

    #@1b6
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v12

    #@1ba
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v12

    #@1be
    .line 171
    const-string/jumbo v13, ")"

    #@1c1
    .line 170
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v12

    #@1c5
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v12

    #@1c9
    .line 172
    const-string/jumbo v13, "(?:"

    #@1cc
    .line 170
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v12

    #@1d0
    .line 172
    sget-object v13, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    #@1d2
    .line 170
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v12

    #@1d6
    .line 172
    const-string/jumbo v13, ")?"

    #@1d9
    .line 170
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v12

    #@1dd
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e0
    move-result-object v12

    #@1e1
    .line 173
    const/16 v13, 0x42

    #@1e3
    .line 169
    invoke-static {v12, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@1e6
    move-result-object v12

    #@1e7
    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    #@1e9
    .line 43
    return-void
.end method

.method constructor <init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V
    .locals 3
    .param p1, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "leniency"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .param p5, "maxTries"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 204
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@6
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@8
    .line 206
    iput-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@a
    .line 208
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    #@d
    .line 228
    if-eqz p1, :cond_0

    #@f
    if-nez p4, :cond_1

    #@11
    .line 229
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@16
    throw v0

    #@17
    .line 231
    :cond_1
    const-wide/16 v0, 0x0

    #@19
    cmp-long v0, p5, v0

    #@1b
    if-gez v0, :cond_2

    #@1d
    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@22
    throw v0

    #@23
    .line 234
    :cond_2
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@25
    .line 235
    if-eqz p2, :cond_3

    #@27
    .end local p2    # "text":Ljava/lang/CharSequence;
    :goto_0
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    #@29
    .line 236
    iput-object p3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    #@2b
    .line 237
    iput-object p4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@2d
    .line 238
    iput-wide p5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    #@2f
    .line 226
    return-void

    #@30
    .line 235
    .restart local p2    # "text":Ljava/lang/CharSequence;
    :cond_3
    const-string/jumbo p2, ""

    #@33
    goto :goto_0
.end method

.method static allNumberGroupsAreExactlyPresent(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p3, "formattedNumberGroups"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 520
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    #@4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 523
    .local v0, "candidateGroups":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    array-length v4, v0

    #@13
    add-int/lit8 v1, v4, -0x2

    #@15
    .line 527
    .local v1, "candidateNumberGroupIndex":I
    :goto_0
    array-length v4, v0

    #@16
    if-eq v4, v6, :cond_0

    #@18
    .line 528
    aget-object v4, v0, v1

    #@1a
    .line 529
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    .line 528
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@21
    move-result v4

    #@22
    .line 527
    if-eqz v4, :cond_2

    #@24
    .line 530
    :cond_0
    return v6

    #@25
    .line 523
    .end local v1    # "candidateNumberGroupIndex":I
    :cond_1
    array-length v4, v0

    #@26
    add-int/lit8 v1, v4, -0x1

    #@28
    .restart local v1    # "candidateNumberGroupIndex":I
    goto :goto_0

    #@29
    .line 534
    :cond_2
    array-length v4, p3

    #@2a
    add-int/lit8 v2, v4, -0x1

    #@2c
    .line 535
    .local v2, "formattedNumberGroupIndex":I
    :goto_1
    if-lez v2, :cond_4

    #@2e
    if-ltz v1, :cond_4

    #@30
    .line 537
    aget-object v4, v0, v1

    #@32
    .line 538
    aget-object v5, p3, v2

    #@34
    .line 537
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v4

    #@38
    if-nez v4, :cond_3

    #@3a
    .line 539
    return v3

    #@3b
    .line 536
    :cond_3
    add-int/lit8 v2, v2, -0x1

    #@3d
    add-int/lit8 v1, v1, -0x1

    #@3f
    goto :goto_1

    #@40
    .line 544
    :cond_4
    if-ltz v1, :cond_5

    #@42
    .line 545
    aget-object v4, v0, v1

    #@44
    aget-object v3, p3, v3

    #@46
    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@49
    move-result v3

    #@4a
    .line 544
    :cond_5
    return v3
.end method

.method static allNumberGroupsRemainGrouped(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 8
    .param p0, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p3, "formattedNumberGroups"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 475
    const/4 v1, 0x0

    #@2
    .line 476
    .local v1, "fromIndex":I
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@5
    move-result-object v5

    #@6
    sget-object v6, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@8
    if-eq v5, v6, :cond_0

    #@a
    .line 478
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@d
    move-result v5

    #@e
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 479
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@15
    move-result v5

    #@16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@19
    move-result v6

    #@1a
    add-int v1, v5, v6

    #@1c
    .line 483
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    #@1d
    .local v2, "i":I
    :goto_0
    array-length v5, p3

    #@1e
    if-ge v2, v5, :cond_3

    #@20
    .line 486
    aget-object v5, p3, v2

    #@22
    invoke-virtual {p2, v5, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    #@25
    move-result v1

    #@26
    .line 487
    if-gez v1, :cond_1

    #@28
    .line 488
    return v7

    #@29
    .line 491
    :cond_1
    aget-object v5, p3, v2

    #@2b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@2e
    move-result v5

    #@2f
    add-int/2addr v1, v5

    #@30
    .line 492
    if-nez v2, :cond_2

    #@32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@35
    move-result v5

    #@36
    if-ge v1, v5, :cond_2

    #@38
    .line 497
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@3b
    move-result v5

    #@3c
    invoke-virtual {p0, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 498
    .local v4, "region":Ljava/lang/String;
    const/4 v5, 0x1

    #@41
    invoke-virtual {p0, v4, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    if-eqz v5, :cond_2

    #@47
    .line 499
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@4a
    move-result v5

    #@4b
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    #@4e
    move-result v5

    #@4f
    .line 498
    if-eqz v5, :cond_2

    #@51
    .line 503
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    .line 504
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    aget-object v5, p3, v2

    #@57
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@5a
    move-result v5

    #@5b
    sub-int v5, v1, v5

    #@5d
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@64
    move-result v5

    #@65
    return v5

    #@66
    .line 483
    .end local v3    # "nationalSignificantNumber":Ljava/lang/String;
    .end local v4    # "region":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@68
    goto :goto_0

    #@69
    .line 512
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@74
    move-result v5

    #@75
    return v5
.end method

.method static checkNumberGroupingIsValid(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;)Z
    .locals 7
    .param p0, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p3, "checker"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 579
    invoke-static {p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    #@5
    move-result-object v4

    #@6
    .line 580
    .local v4, "normalizedCandidate":Ljava/lang/StringBuilder;
    invoke-static {p2, p0, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 581
    .local v3, "formattedNumberGroups":[Ljava/lang/String;
    invoke-interface {p3, p2, p0, v4, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 582
    return v6

    #@11
    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@14
    move-result v5

    #@15
    invoke-static {v5}, Lcom/android/i18n/phonenumbers/MetadataManager;->getAlternateFormatsForCountry(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@18
    move-result-object v2

    #@19
    .line 587
    .local v2, "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_2

    #@1b
    .line 588
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    #@1e
    move-result-object v5

    #@1f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v1

    #@23
    .local v1, "alternateFormat$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_2

    #@29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@2f
    .line 589
    .local v0, "alternateFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-static {p2, p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 590
    invoke-interface {p3, p2, p0, v4, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_1

    #@39
    .line 591
    return v6

    #@3a
    .line 595
    .end local v0    # "alternateFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v1    # "alternateFormat$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x0

    #@3b
    return v5
.end method

.method static containsMoreThanOneSlashInNationalNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 6
    .param p0, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0x2f

    #@2
    const/4 v5, 0x0

    #@3
    .line 599
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v1

    #@7
    .line 600
    .local v1, "firstSlashInBodyIndex":I
    if-gez v1, :cond_0

    #@9
    .line 602
    return v5

    #@a
    .line 605
    :cond_0
    add-int/lit8 v3, v1, 0x1

    #@c
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    #@f
    move-result v2

    #@10
    .line 606
    .local v2, "secondSlashInBodyIndex":I
    if-gez v2, :cond_1

    #@12
    .line 608
    return v5

    #@13
    .line 613
    :cond_1
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@16
    move-result-object v3

    #@17
    sget-object v4, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@19
    if-eq v3, v4, :cond_2

    #@1b
    .line 614
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@1e
    move-result-object v3

    #@1f
    sget-object v4, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@21
    if-ne v3, v4, :cond_3

    #@23
    const/4 v0, 0x1

    #@24
    .line 615
    .local v0, "candidateHasCountryCode":Z
    :goto_0
    if-eqz v0, :cond_4

    #@26
    .line 616
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 617
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@31
    move-result v4

    #@32
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    .line 616
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v3

    #@3a
    .line 615
    if-eqz v3, :cond_4

    #@3c
    .line 619
    add-int/lit8 v3, v2, 0x1

    #@3e
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    const-string/jumbo v4, "/"

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@48
    move-result v3

    #@49
    return v3

    #@4a
    .line 613
    .end local v0    # "candidateHasCountryCode":Z
    :cond_2
    const/4 v0, 0x1

    #@4b
    .restart local v0    # "candidateHasCountryCode":Z
    goto :goto_0

    #@4c
    .line 614
    .end local v0    # "candidateHasCountryCode":Z
    :cond_3
    const/4 v0, 0x0

    #@4d
    .restart local v0    # "candidateHasCountryCode":Z
    goto :goto_0

    #@4e
    .line 621
    :cond_4
    const/4 v3, 0x1

    #@4f
    return v3
.end method

.method static containsOnlyValidXChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 8
    .param p0, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@0
    .prologue
    const/16 v7, 0x78

    #@2
    const/16 v6, 0x58

    #@4
    const/4 v5, 0x0

    #@5
    .line 631
    const/4 v2, 0x0

    #@6
    .local v2, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    add-int/lit8 v3, v3, -0x1

    #@c
    if-ge v2, v3, :cond_4

    #@e
    .line 632
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 633
    .local v0, "charAtIndex":C
    if-eq v0, v7, :cond_0

    #@14
    if-ne v0, v6, :cond_3

    #@16
    .line 634
    :cond_0
    add-int/lit8 v3, v2, 0x1

    #@18
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v1

    #@1c
    .line 635
    .local v1, "charAtNextIndex":C
    if-eq v1, v7, :cond_1

    #@1e
    if-ne v1, v6, :cond_2

    #@20
    .line 638
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@22
    .line 639
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {p2, p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@29
    move-result-object v3

    #@2a
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@2c
    if-eq v3, v4, :cond_3

    #@2e
    .line 640
    return v5

    #@2f
    .line 644
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 645
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v3

    #@3f
    if-nez v3, :cond_3

    #@41
    .line 646
    return v5

    #@42
    .line 631
    .end local v1    # "charAtNextIndex":C
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_0

    #@45
    .line 650
    .end local v0    # "charAtIndex":C
    :cond_4
    const/4 v3, 0x1

    #@46
    return v3
.end method

.method private extractInnerMatch(Ljava/lang/String;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 12
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 349
    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    #@2
    const/4 v5, 0x0

    #@3
    array-length v7, v6

    #@4
    :goto_0
    if-ge v5, v7, :cond_4

    #@6
    aget-object v4, v6, v5

    #@8
    .line 350
    .local v4, "possibleInnerMatch":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@b
    move-result-object v1

    #@c
    .line 351
    .local v1, "groupMatcher":Ljava/util/regex/Matcher;
    const/4 v2, 0x1

    #@d
    .line 352
    .local v2, "isFirstMatch":Z
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@10
    move-result v8

    #@11
    if-eqz v8, :cond_3

    #@13
    iget-wide v8, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    #@15
    const-wide/16 v10, 0x0

    #@17
    cmp-long v8, v8, v10

    #@19
    if-lez v8, :cond_3

    #@1b
    .line 353
    if-eqz v2, :cond_1

    #@1d
    .line 356
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    #@1f
    .line 357
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    #@22
    move-result v9

    #@23
    const/4 v10, 0x0

    #@24
    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v9

    #@28
    .line 355
    invoke-static {v8, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@2b
    move-result-object v0

    #@2c
    .line 358
    .local v0, "group":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2f
    move-result-object v8

    #@30
    invoke-direct {p0, v8, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@33
    move-result-object v3

    #@34
    .line 359
    .local v3, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v3, :cond_0

    #@36
    .line 360
    return-object v3

    #@37
    .line 362
    :cond_0
    iget-wide v8, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    #@39
    const-wide/16 v10, 0x1

    #@3b
    sub-long/2addr v8, v10

    #@3c
    iput-wide v8, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    #@3e
    .line 363
    const/4 v2, 0x0

    #@3f
    .line 366
    .end local v0    # "group":Ljava/lang/CharSequence;
    .end local v3    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    :cond_1
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    #@41
    const/4 v9, 0x1

    #@42
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@45
    move-result-object v9

    #@46
    .line 365
    invoke-static {v8, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@49
    move-result-object v0

    #@4a
    .line 367
    .restart local v0    # "group":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4d
    move-result-object v8

    #@4e
    const/4 v9, 0x1

    #@4f
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->start(I)I

    #@52
    move-result v9

    #@53
    add-int/2addr v9, p2

    #@54
    invoke-direct {p0, v8, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@57
    move-result-object v3

    #@58
    .line 368
    .restart local v3    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v3, :cond_2

    #@5a
    .line 369
    return-object v3

    #@5b
    .line 371
    :cond_2
    iget-wide v8, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    #@5d
    const-wide/16 v10, 0x1

    #@5f
    sub-long/2addr v8, v10

    #@60
    iput-wide v8, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    #@62
    goto :goto_1

    #@63
    .line 349
    .end local v0    # "group":Ljava/lang/CharSequence;
    .end local v3    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@65
    goto :goto_0

    #@66
    .line 374
    .end local v1    # "groupMatcher":Ljava/util/regex/Matcher;
    .end local v2    # "isFirstMatch":Z
    .end local v4    # "possibleInnerMatch":Ljava/util/regex/Pattern;
    :cond_4
    const/4 v5, 0x0

    #@67
    return-object v5
.end method

.method private extractMatch(Ljava/lang/CharSequence;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 6
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 316
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    #@3
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 317
    return-object v5

    #@e
    .line 321
    :cond_0
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    #@10
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 322
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    #@1c
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@23
    move-result v4

    #@24
    add-int/2addr v4, p2

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 323
    .local v0, "followingText":Ljava/lang/String;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    #@2b
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_1

    #@35
    .line 324
    return-object v5

    #@36
    .line 329
    .end local v0    # "followingText":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 330
    .local v2, "rawString":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@3d
    move-result-object v1

    #@3e
    .line 331
    .local v1, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v1, :cond_2

    #@40
    .line 332
    return-object v1

    #@41
    .line 337
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->extractInnerMatch(Ljava/lang/String;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@44
    move-result-object v3

    #@45
    return-object v3
.end method

.method private find(I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 9
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 249
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    #@3
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    #@5
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@8
    move-result-object v2

    #@9
    .line 250
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    iget-wide v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    #@b
    const-wide/16 v6, 0x0

    #@d
    cmp-long v4, v4, v6

    #@f
    if-lez v4, :cond_1

    #@11
    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->find(I)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    .line 251
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    #@1a
    move-result v3

    #@1b
    .line 252
    .local v3, "start":I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    #@1d
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    #@20
    move-result v5

    #@21
    invoke-interface {v4, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@24
    move-result-object v0

    #@25
    .line 257
    .local v0, "candidate":Ljava/lang/CharSequence;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    #@27
    invoke-static {v4, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@2a
    move-result-object v0

    #@2b
    .line 259
    invoke-direct {p0, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->extractMatch(Ljava/lang/CharSequence;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@2e
    move-result-object v1

    #@2f
    .line 260
    .local v1, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v1, :cond_0

    #@31
    .line 261
    return-object v1

    #@32
    .line 264
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@35
    move-result v4

    #@36
    add-int p1, v3, v4

    #@38
    .line 265
    iget-wide v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    #@3a
    const-wide/16 v6, 0x1

    #@3c
    sub-long/2addr v4, v6

    #@3d
    iput-wide v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    #@3f
    goto :goto_0

    #@40
    .line 268
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    .end local v1    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v3    # "start":I
    :cond_1
    return-object v8
.end method

.method private static getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;
    .locals 6
    .param p0, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "formattingPattern"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@0
    .prologue
    .line 554
    if-nez p2, :cond_1

    #@2
    .line 556
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@4
    invoke-virtual {p0, p1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 559
    .local v2, "rfc3966Format":Ljava/lang/String;
    const/16 v4, 0x3b

    #@a
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v0

    #@e
    .line 560
    .local v0, "endIndex":I
    if-gez v0, :cond_0

    #@10
    .line 561
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@13
    move-result v0

    #@14
    .line 564
    :cond_0
    const/16 v4, 0x2d

    #@16
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    #@19
    move-result v4

    #@1a
    add-int/lit8 v3, v4, 0x1

    #@1c
    .line 565
    .local v3, "startIndex":I
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    const-string/jumbo v5, "-"

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    return-object v4

    #@28
    .line 568
    .end local v0    # "endIndex":I
    .end local v2    # "rfc3966Format":Ljava/lang/String;
    .end local v3    # "startIndex":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 570
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@2e
    .line 569
    invoke-virtual {p0, v1, p2, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    .line 570
    const-string/jumbo v5, "-"

    #@35
    .line 569
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    return-object v4
.end method

.method private static isInvalidPunctuationSymbol(C)Z
    .locals 3
    .param p0, "character"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 304
    const/16 v1, 0x25

    #@3
    if-eq p0, v1, :cond_0

    #@5
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    #@8
    move-result v1

    #@9
    const/16 v2, 0x1a

    #@b
    if-ne v1, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method static isLatinLetter(C)Z
    .locals 3
    .param p0, "letter"    # C

    #@0
    .prologue
    .line 291
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x6

    #@b
    if-eq v1, v2, :cond_0

    #@d
    .line 292
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    .line 294
    :cond_0
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    #@12
    move-result-object v0

    #@13
    .line 295
    .local v0, "block":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 296
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    .line 295
    if-nez v1, :cond_1

    #@23
    .line 297
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    .line 295
    if-nez v1, :cond_1

    #@2b
    .line 298
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    .line 295
    if-nez v1, :cond_1

    #@33
    .line 299
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    .line 295
    if-nez v1, :cond_1

    #@3b
    .line 300
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v1

    #@41
    .line 295
    :goto_0
    return v1

    #@42
    :cond_1
    const/4 v1, 0x1

    #@43
    goto :goto_0
.end method

.method static isNationalPrefixPresentIfRequired(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 10
    .param p0, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 656
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@5
    move-result-object v6

    #@6
    sget-object v7, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@8
    if-eq v6, v7, :cond_0

    #@a
    .line 657
    return v8

    #@b
    .line 660
    :cond_0
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@e
    move-result v6

    #@f
    invoke-virtual {p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 661
    .local v3, "phoneNumberRegion":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@16
    move-result-object v1

    #@17
    .line 662
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_1

    #@19
    .line 663
    return v8

    #@1a
    .line 666
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 668
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {p1, v6, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@25
    move-result-object v0

    #@26
    .line 671
    .local v0, "formatRule":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v0, :cond_4

    #@28
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@2f
    move-result v6

    #@30
    if-lez v6, :cond_4

    #@32
    .line 672
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->isNationalPrefixOptionalWhenFormatting()Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_2

    #@38
    .line 675
    return v8

    #@39
    .line 678
    :cond_2
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    .line 677
    invoke-static {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_3

    #@43
    .line 680
    return v8

    #@44
    .line 683
    :cond_3
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    invoke-static {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    .line 684
    .local v5, "rawInputCopy":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@51
    .line 687
    .local v4, "rawInput":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v4, v1, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    #@54
    move-result v6

    #@55
    return v6

    #@56
    .line 689
    .end local v4    # "rawInput":Ljava/lang/StringBuilder;
    .end local v5    # "rawInputCopy":Ljava/lang/String;
    :cond_4
    return v8
.end method

.method private static limit(II)Ljava/lang/String;
    .locals 2
    .param p0, "lower"    # I
    .param p1, "upper"    # I

    #@0
    .prologue
    .line 178
    if-ltz p0, :cond_0

    #@2
    if-gtz p1, :cond_1

    #@4
    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v0

    #@a
    .line 178
    :cond_1
    if-lt p1, p0, :cond_0

    #@c
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "{"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, ","

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string/jumbo v1, "}"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

.method private parseAndVerify(Ljava/lang/String;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 8
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 390
    :try_start_0
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    #@3
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6
    move-result-object v5

    #@7
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_0

    #@d
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    #@f
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_1

    #@19
    .line 391
    :cond_0
    return-object v7

    #@1a
    .line 396
    :cond_1
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@1c
    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@1e
    invoke-virtual {v5, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->compareTo(Ljava/lang/Enum;)I

    #@21
    move-result v5

    #@22
    if-ltz v5, :cond_6

    #@24
    .line 399
    if-lez p2, :cond_2

    #@26
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    #@28
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_4

    #@32
    .line 406
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@35
    move-result v5

    #@36
    add-int v1, p2, v5

    #@38
    .line 407
    .local v1, "lastCharIndex":I
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    #@3a
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    #@3d
    move-result v5

    #@3e
    if-ge v1, v5, :cond_6

    #@40
    .line 408
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    #@42
    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@45
    move-result v2

    #@46
    .line 409
    .local v2, "nextChar":C
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    #@49
    move-result v5

    #@4a
    if-nez v5, :cond_3

    #@4c
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    #@4f
    move-result v5

    #@50
    if-eqz v5, :cond_6

    #@52
    .line 410
    :cond_3
    return-object v7

    #@53
    .line 400
    .end local v1    # "lastCharIndex":I
    .end local v2    # "nextChar":C
    :cond_4
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    #@55
    add-int/lit8 v6, p2, -0x1

    #@57
    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@5a
    move-result v4

    #@5b
    .line 402
    .local v4, "previousChar":C
    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    #@5e
    move-result v5

    #@5f
    if-nez v5, :cond_5

    #@61
    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    #@64
    move-result v5

    #@65
    if-eqz v5, :cond_2

    #@67
    .line 403
    :cond_5
    return-object v7

    #@68
    .line 415
    .end local v4    # "previousChar":C
    :cond_6
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@6a
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    #@6c
    invoke-virtual {v5, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@6f
    move-result-object v3

    #@70
    .line 429
    .local v3, "number":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@72
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@75
    move-result v6

    #@76
    invoke-virtual {v5, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@79
    move-result-object v5

    #@7a
    const-string/jumbo v6, "IL"

    #@7d
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v5

    #@81
    if-eqz v5, :cond_8

    #@83
    .line 430
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@85
    invoke-virtual {v5, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@8c
    move-result v5

    #@8d
    const/4 v6, 0x4

    #@8e
    if-ne v5, v6, :cond_8

    #@90
    .line 431
    if-eqz p2, :cond_7

    #@92
    if-lez p2, :cond_8

    #@94
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    #@96
    add-int/lit8 v6, p2, -0x1

    #@98
    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@9b
    move-result v5

    #@9c
    const/16 v6, 0x2a

    #@9e
    if-eq v5, v6, :cond_8

    #@a0
    .line 433
    :cond_7
    return-object v7

    #@a1
    .line 436
    :cond_8
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@a3
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@a5
    invoke-virtual {v5, v3, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z

    #@a8
    move-result v5

    #@a9
    if-eqz v5, :cond_9

    #@ab
    .line 440
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@ae
    .line 441
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@b1
    .line 442
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@b4
    .line 443
    new-instance v5, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@b6
    invoke-direct {v5, p2, p1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;-><init>(ILjava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@b9
    return-object v5

    #@ba
    .line 445
    .end local v3    # "number":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v0

    #@bb
    .line 448
    :cond_9
    return-object v7
.end method

.method private static trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 276
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@3
    move-result-object v0

    #@4
    .line 277
    .local v0, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 278
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x0

    #@f
    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@12
    move-result-object p1

    #@13
    .line 280
    :cond_0
    return-object p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@2
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 695
    iget v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    #@8
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->find(I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@e
    .line 696
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@10
    if-nez v0, :cond_1

    #@12
    .line 697
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@14
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@16
    .line 703
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@18
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@1a
    if-ne v0, v1, :cond_2

    #@1c
    const/4 v0, 0x1

    #@1d
    :goto_1
    return v0

    #@1e
    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@20
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    #@26
    .line 700
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@28
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@2a
    goto :goto_0

    #@2b
    .line 703
    :cond_2
    const/4 v0, 0x0

    #@2c
    goto :goto_1
.end method

.method public next()Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 2

    #@0
    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->hasNext()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 710
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 714
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@e
    .line 715
    .local v0, "result":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    const/4 v1, 0x0

    #@f
    iput-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@11
    .line 716
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@13
    iput-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@15
    .line 717
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->next()Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 725
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
