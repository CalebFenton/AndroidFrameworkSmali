.class final Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
.super Ljava/lang/Object;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShortCodePatternMatcher"
.end annotation


# instance fields
.field private final blacklist mFreeShortCodePattern:Ljava/util/regex/Pattern;

.field private final blacklist mPremiumShortCodePattern:Ljava/util/regex/Pattern;

.field private final blacklist mShortCodePattern:Ljava/util/regex/Pattern;

.field private final blacklist mStandardShortCodePattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 197
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    goto :goto_c

    :cond_b
    move-object p1, v0

    :goto_c
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz p2, :cond_15

    .line 199
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    goto :goto_16

    :cond_15
    move-object p1, v0

    :goto_16
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mPremiumShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz p3, :cond_1f

    .line 201
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    goto :goto_20

    :cond_1f
    move-object p1, v0

    :goto_20
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mFreeShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz p4, :cond_28

    .line 203
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    :cond_28
    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mStandardShortCodePattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method blacklist getNumberCategory(Ljava/lang/String;)I
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mFreeShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 211
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mStandardShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p0, 0x2

    return p0

    .line 215
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mPremiumShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_30

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 p0, 0x4

    return p0

    .line 219
    :cond_30
    iget-object p0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz p0, :cond_40

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_40

    const/4 p0, 0x3

    return p0

    :cond_40
    const/4 p0, 0x0

    return p0
.end method
