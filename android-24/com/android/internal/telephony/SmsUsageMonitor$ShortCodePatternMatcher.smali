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
.field private final mFreeShortCodePattern:Ljava/util/regex/Pattern;

.field private final mPremiumShortCodePattern:Ljava/util/regex/Pattern;

.field private final mShortCodePattern:Ljava/util/regex/Pattern;

.field private final mStandardShortCodePattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "shortCodeRegex"    # Ljava/lang/String;
    .param p2, "premiumShortCodeRegex"    # Ljava/lang/String;
    .param p3, "freeShortCodeRegex"    # Ljava/lang/String;
    .param p4, "standardShortCodeRegex"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 194
    if-eqz p1, :cond_1

    #@6
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@9
    move-result-object v0

    #@a
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mShortCodePattern:Ljava/util/regex/Pattern;

    #@c
    .line 195
    if-eqz p2, :cond_2

    #@e
    .line 196
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@11
    move-result-object v0

    #@12
    .line 195
    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mPremiumShortCodePattern:Ljava/util/regex/Pattern;

    #@14
    .line 197
    if-eqz p3, :cond_3

    #@16
    .line 198
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@19
    move-result-object v0

    #@1a
    .line 197
    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mFreeShortCodePattern:Ljava/util/regex/Pattern;

    #@1c
    .line 199
    if-eqz p4, :cond_0

    #@1e
    .line 200
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@21
    move-result-object v1

    #@22
    .line 199
    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mStandardShortCodePattern:Ljava/util/regex/Pattern;

    #@24
    .line 193
    return-void

    #@25
    :cond_1
    move-object v0, v1

    #@26
    .line 194
    goto :goto_0

    #@27
    :cond_2
    move-object v0, v1

    #@28
    .line 196
    goto :goto_1

    #@29
    :cond_3
    move-object v0, v1

    #@2a
    .line 198
    goto :goto_2
.end method


# virtual methods
.method getNumberCategory(Ljava/lang/String;)I
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mFreeShortCodePattern:Ljava/util/regex/Pattern;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mFreeShortCodePattern:Ljava/util/regex/Pattern;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 206
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mStandardShortCodePattern:Ljava/util/regex/Pattern;

    #@14
    if-eqz v0, :cond_1

    #@16
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mStandardShortCodePattern:Ljava/util/regex/Pattern;

    #@18
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 210
    const/4 v0, 0x2

    #@23
    return v0

    #@24
    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mPremiumShortCodePattern:Ljava/util/regex/Pattern;

    #@26
    if-eqz v0, :cond_2

    #@28
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mPremiumShortCodePattern:Ljava/util/regex/Pattern;

    #@2a
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_2

    #@34
    .line 214
    const/4 v0, 0x4

    #@35
    return v0

    #@36
    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mShortCodePattern:Ljava/util/regex/Pattern;

    #@38
    if-eqz v0, :cond_3

    #@3a
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mShortCodePattern:Ljava/util/regex/Pattern;

    #@3c
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_3

    #@46
    .line 217
    const/4 v0, 0x3

    #@47
    return v0

    #@48
    .line 219
    :cond_3
    const/4 v0, 0x0

    #@49
    return v0
.end method
