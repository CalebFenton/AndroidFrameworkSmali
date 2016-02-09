.class public Lcom/android/internal/telephony/SmsUsageMonitor;
.super Ljava/lang/Object;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;,
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;,
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;
    }
.end annotation


# static fields
.field private static final ATTR_COUNTRY:Ljava/lang/String; = "country"

.field private static final ATTR_FREE:Ljava/lang/String; = "free"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE_SMS_POLICY:Ljava/lang/String; = "sms-policy"

.field private static final ATTR_PATTERN:Ljava/lang/String; = "pattern"

.field private static final ATTR_PREMIUM:Ljava/lang/String; = "premium"

.field private static final ATTR_STANDARD:Ljava/lang/String; = "standard"

.field static final CATEGORY_FREE_SHORT_CODE:I = 0x1

.field static final CATEGORY_NOT_SHORT_CODE:I = 0x0

.field static final CATEGORY_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x3

.field static final CATEGORY_PREMIUM_SHORT_CODE:I = 0x4

.field static final CATEGORY_STANDARD_SHORT_CODE:I = 0x2

.field private static final DBG:Z = false

.field private static final DEFAULT_SMS_CHECK_PERIOD:I = 0xea60

.field private static final DEFAULT_SMS_MAX_COUNT:I = 0x1e

.field public static final PREMIUM_SMS_PERMISSION_ALWAYS_ALLOW:I = 0x3

.field public static final PREMIUM_SMS_PERMISSION_ASK_USER:I = 0x1

.field public static final PREMIUM_SMS_PERMISSION_NEVER_ALLOW:I = 0x2

.field public static final PREMIUM_SMS_PERMISSION_UNKNOWN:I = 0x0

.field private static final SHORT_CODE_PATH:Ljava/lang/String; = "/data/misc/sms/codes"

.field private static final SMS_POLICY_FILE_DIRECTORY:Ljava/lang/String; = "/data/misc/sms"

.field private static final SMS_POLICY_FILE_NAME:Ljava/lang/String; = "premium_sms_policy.xml"

.field private static final TAG:Ljava/lang/String; = "SmsUsageMonitor"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_SHORTCODE:Ljava/lang/String; = "shortcode"

.field private static final TAG_SHORTCODES:Ljava/lang/String; = "shortcodes"

.field private static final TAG_SMS_POLICY_BODY:Ljava/lang/String; = "premium-sms-policy"

.field private static final VDBG:Z


# instance fields
.field private final mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCheckPeriod:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentCountry:Ljava/lang/String;

.field private mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

.field private final mMaxAllowed:I

.field private final mPatternFile:Ljava/io/File;

.field private mPatternFileLastModified:J

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private final mPremiumSmsPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

.field private final mSmsStamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->writePremiumSmsPolicyDb()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 115
    new-instance v1, Ljava/util/HashMap;

    #@5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 114
    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    #@a
    .line 127
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@c
    const/4 v2, 0x1

    #@d
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@10
    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@12
    .line 133
    new-instance v1, Ljava/io/File;

    #@14
    const-string/jumbo v2, "/data/misc/sms/codes"

    #@17
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1a
    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    #@1c
    .line 136
    const-wide/16 v2, 0x0

    #@1e
    iput-wide v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    #@20
    .line 169
    new-instance v1, Ljava/util/HashMap;

    #@22
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@25
    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    #@27
    .line 258
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    #@29
    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2c
    move-result-object v0

    #@2d
    .line 262
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "sms_outgoing_check_max_count"

    #@30
    .line 263
    const/16 v2, 0x1e

    #@32
    .line 261
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@35
    move-result v1

    #@36
    iput v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    #@38
    .line 266
    const-string/jumbo v1, "sms_outgoing_check_interval_ms"

    #@3b
    .line 267
    const v2, 0xea60

    #@3e
    .line 265
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@41
    move-result v1

    #@42
    iput v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    #@44
    .line 269
    new-instance v1, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    #@46
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    #@48
    iget-object v3, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@4a
    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;-><init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    #@4d
    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    #@4f
    .line 271
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->loadPremiumSmsPolicyDb()V

    #@52
    .line 257
    return-void
.end method

.method private static checkCallerIsSystemOrPhoneApp()V
    .locals 5

    #@0
    .prologue
    .line 601
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 602
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@7
    move-result v0

    #@8
    .line 603
    .local v0, "appId":I
    const/16 v2, 0x3e8

    #@a
    if-eq v0, v2, :cond_0

    #@c
    const/16 v2, 0x3e9

    #@e
    if-ne v0, v2, :cond_1

    #@10
    .line 604
    :cond_0
    return-void

    #@11
    .line 603
    :cond_1
    if-eqz v1, :cond_0

    #@13
    .line 606
    new-instance v2, Ljava/lang/SecurityException;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Disallowed call for uid "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2
.end method

.method private static checkCallerIsSystemOrPhoneOrSameApp(Ljava/lang/String;)V
    .locals 7
    .param p0, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    .line 584
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    #@7
    move-result v1

    #@8
    .line 585
    .local v1, "appId":I
    const/16 v4, 0x3e8

    #@a
    if-eq v1, v4, :cond_0

    #@c
    const/16 v4, 0x3e9

    #@e
    if-ne v1, v4, :cond_1

    #@10
    .line 586
    :cond_0
    return-void

    #@11
    .line 585
    :cond_1
    if-eqz v3, :cond_0

    #@13
    .line 589
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@16
    move-result-object v4

    #@17
    .line 590
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@1a
    move-result v5

    #@1b
    const/4 v6, 0x0

    #@1c
    .line 589
    invoke-interface {v4, p0, v6, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@1f
    move-result-object v0

    #@20
    .line 591
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@22
    invoke-static {v4, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@25
    move-result v4

    #@26
    if-nez v4, :cond_2

    #@28
    .line 592
    new-instance v4, Ljava/lang/SecurityException;

    #@2a
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v6, "Calling uid "

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    const-string/jumbo v6, " gave package"

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    .line 593
    const-string/jumbo v6, " which is owned by uid "

    #@48
    .line 592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    .line 593
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4e
    .line 592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@59
    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .line 595
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    #@5b
    .line 596
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/SecurityException;

    #@5d
    new-instance v5, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v6, "Unknown package "

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    const-string/jumbo v6, "\n"

    #@70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v5

    #@78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v4

    #@80
    .line 582
    .end local v2    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    return-void
.end method

.method private getPatternMatcherFromFile(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 10
    .param p1, "country"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 280
    const/4 v4, 0x0

    #@2
    .line 281
    .local v4, "patternReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    #@3
    .line 283
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    #@5
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    #@7
    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 284
    .end local v4    # "patternReader":Ljava/io/FileReader;
    .local v5, "patternReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@d
    move-result-object v3

    #@e
    .line 285
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@11
    .line 286
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@14
    move-result-object v6

    #@15
    .line 292
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    #@17
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    #@1a
    move-result-wide v8

    #@1b
    iput-wide v8, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    #@1d
    .line 293
    if-eqz v5, :cond_0

    #@1f
    .line 295
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@22
    .line 286
    :cond_0
    :goto_0
    return-object v6

    #@23
    .line 296
    :catch_0
    move-exception v1

    #@24
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@25
    .line 289
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "patternReader":Ljava/io/FileReader;
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "patternReader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    #@26
    .line 290
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "patternReader":Ljava/io/FileReader;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "SmsUsageMonitor"

    #@29
    const-string/jumbo v7, "XML parser exception reading short code pattern file"

    #@2c
    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2f
    .line 292
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    #@31
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    #@34
    move-result-wide v6

    #@35
    iput-wide v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    #@37
    .line 293
    if-eqz v4, :cond_1

    #@39
    .line 295
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@3c
    .line 299
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    return-object v8

    #@3d
    .line 296
    .restart local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    #@3e
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    #@3f
    .line 287
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "patternReader":Ljava/io/FileReader;
    :catch_3
    move-exception v0

    #@40
    .line 288
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "patternReader":Ljava/io/FileReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string/jumbo v6, "SmsUsageMonitor"

    #@43
    const-string/jumbo v7, "Short Code Pattern File not found"

    #@46
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@49
    .line 292
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    #@4b
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    #@4e
    move-result-wide v6

    #@4f
    iput-wide v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    #@51
    .line 293
    if-eqz v4, :cond_1

    #@53
    .line 295
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@56
    goto :goto_2

    #@57
    .line 296
    :catch_4
    move-exception v1

    #@58
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    #@59
    .line 291
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@5a
    .line 292
    :goto_4
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    #@5c
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    #@5f
    move-result-wide v8

    #@60
    iput-wide v8, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    #@62
    .line 293
    if-eqz v4, :cond_2

    #@64
    .line 295
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@67
    .line 291
    :cond_2
    :goto_5
    throw v6

    #@68
    .line 296
    :catch_5
    move-exception v1

    #@69
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    #@6a
    .line 291
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "patternReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    #@6b
    move-object v4, v5

    #@6c
    .end local v5    # "patternReader":Ljava/io/FileReader;
    .local v4, "patternReader":Ljava/io/FileReader;
    goto :goto_4

    #@6d
    .line 287
    .end local v4    # "patternReader":Ljava/io/FileReader;
    .restart local v5    # "patternReader":Ljava/io/FileReader;
    :catch_6
    move-exception v0

    #@6e
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    #@6f
    .end local v5    # "patternReader":Ljava/io/FileReader;
    .restart local v4    # "patternReader":Ljava/io/FileReader;
    goto :goto_3

    #@70
    .line 289
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "patternReader":Ljava/io/FileReader;
    .restart local v5    # "patternReader":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    #@71
    .restart local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v4, v5

    #@72
    .end local v5    # "patternReader":Ljava/io/FileReader;
    .restart local v4    # "patternReader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 3
    .param p1, "country"    # Ljava/lang/String;

    #@0
    .prologue
    .line 303
    const v0, 0x1110012

    #@3
    .line 304
    .local v0, "id":I
    const/4 v1, 0x0

    #@4
    .line 306
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@d
    move-result-object v1

    #@e
    .line 307
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v2

    #@12
    .line 309
    if-eqz v1, :cond_0

    #@14
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    #@17
    .line 307
    :cond_0
    return-object v2

    #@18
    .line 308
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v2

    #@19
    .line 309
    if-eqz v1, :cond_1

    #@1b
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    #@1e
    .line 308
    :cond_1
    throw v2
.end method

.method private getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "country"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 316
    :try_start_0
    const-string/jumbo v8, "shortcodes"

    #@4
    invoke-static {p1, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@7
    .line 319
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@a
    .line 320
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 321
    .local v3, "element":Ljava/lang/String;
    if-nez v3, :cond_1

    #@10
    .line 322
    const-string/jumbo v8, "SmsUsageMonitor"

    #@13
    const-string/jumbo v9, "Parsing pattern data found null"

    #@16
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 346
    .end local v3    # "element":Ljava/lang/String;
    :goto_1
    return-object v11

    #@1a
    .line 326
    .restart local v3    # "element":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "shortcode"

    #@1d
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v8

    #@21
    if-eqz v8, :cond_2

    #@23
    .line 327
    const-string/jumbo v8, "country"

    #@26
    const/4 v9, 0x0

    #@27
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 329
    .local v0, "currentCountry":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_0

    #@31
    .line 330
    const-string/jumbo v8, "pattern"

    #@34
    const/4 v9, 0x0

    #@35
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    .line 331
    .local v5, "pattern":Ljava/lang/String;
    const-string/jumbo v8, "premium"

    #@3c
    const/4 v9, 0x0

    #@3d
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    .line 332
    .local v6, "premium":Ljava/lang/String;
    const-string/jumbo v8, "free"

    #@44
    const/4 v9, 0x0

    #@45
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    .line 333
    .local v4, "free":Ljava/lang/String;
    const-string/jumbo v8, "standard"

    #@4c
    const/4 v9, 0x0

    #@4d
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    .line 334
    .local v7, "standard":Ljava/lang/String;
    new-instance v8, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    #@53
    invoke-direct {v8, v5, v6, v4, v7}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@56
    return-object v8

    #@57
    .line 337
    .end local v0    # "currentCountry":Ljava/lang/String;
    .end local v4    # "free":Ljava/lang/String;
    .end local v5    # "pattern":Ljava/lang/String;
    .end local v6    # "premium":Ljava/lang/String;
    .end local v7    # "standard":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "SmsUsageMonitor"

    #@5a
    new-instance v9, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v10, "Error: skipping unknown XML tag "

    #@62
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v9

    #@66
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v9

    #@6a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v9

    #@6e
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@71
    goto :goto_0

    #@72
    .line 340
    .end local v3    # "element":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@73
    .line 341
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v8, "SmsUsageMonitor"

    #@76
    const-string/jumbo v9, "XML parser exception reading short code patterns"

    #@79
    invoke-static {v8, v9, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7c
    goto :goto_1

    #@7d
    .line 342
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    #@7e
    .line 343
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "SmsUsageMonitor"

    #@81
    const-string/jumbo v9, "I/O exception reading short code patterns"

    #@84
    invoke-static {v8, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@87
    goto :goto_1
.end method

.method private isUnderLimit(Ljava/util/ArrayList;I)Z
    .locals 9
    .param p2, "smsWaiting"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "sent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    #@1
    .line 629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v4

    #@5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8
    move-result-object v2

    #@9
    .line 630
    .local v2, "ct":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@c
    move-result-wide v4

    #@d
    iget v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    #@f
    int-to-long v6, v6

    #@10
    sub-long v0, v4, v6

    #@12
    .line 634
    .local v0, "beginCheckPeriod":J
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    #@15
    move-result v4

    #@16
    if-nez v4, :cond_0

    #@18
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Ljava/lang/Long;

    #@1e
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@21
    move-result-wide v4

    #@22
    cmp-long v4, v4, v0

    #@24
    if-gez v4, :cond_0

    #@26
    .line 635
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@29
    goto :goto_0

    #@2a
    .line 638
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v4

    #@2e
    add-int/2addr v4, p2

    #@2f
    iget v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    #@31
    if-gt v4, v5, :cond_2

    #@33
    .line 639
    const/4 v3, 0x0

    #@34
    .local v3, "i":I
    :goto_1
    if-ge v3, p2, :cond_1

    #@36
    .line 640
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    .line 639
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 642
    :cond_1
    const/4 v4, 0x1

    #@3d
    return v4

    #@3e
    .line 644
    .end local v3    # "i":I
    :cond_2
    return v8
.end method

.method private loadPremiumSmsPolicyDb()V
    .locals 15

    #@0
    .prologue
    .line 438
    iget-object v12, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    #@2
    monitor-enter v12

    #@3
    .line 439
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    #@5
    if-nez v11, :cond_0

    #@7
    .line 440
    new-instance v0, Ljava/io/File;

    #@9
    const-string/jumbo v11, "/data/misc/sms"

    #@c
    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f
    .line 441
    .local v0, "dir":Ljava/io/File;
    new-instance v11, Landroid/util/AtomicFile;

    #@11
    new-instance v13, Ljava/io/File;

    #@13
    const-string/jumbo v14, "premium_sms_policy.xml"

    #@16
    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@19
    invoke-direct {v11, v13}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@1c
    iput-object v11, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    #@1e
    .line 443
    iget-object v11, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    #@20
    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@23
    .line 445
    const/4 v7, 0x0

    #@24
    .line 447
    .local v7, "infile":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    #@26
    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@29
    move-result-object v7

    #@2a
    .line 448
    .local v7, "infile":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@2d
    move-result-object v9

    #@2e
    .line 449
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@30
    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@33
    move-result-object v11

    #@34
    invoke-interface {v9, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@37
    .line 451
    const-string/jumbo v11, "premium-sms-policy"

    #@3a
    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@3d
    .line 454
    :goto_0
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@40
    .line 456
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    move-result-object v5

    #@44
    .line 457
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_1

    #@46
    .line 484
    if-eqz v7, :cond_0

    #@48
    .line 486
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4b
    .end local v0    # "dir":Ljava/io/File;
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "infile":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_1
    monitor-exit v12

    #@4c
    .line 437
    return-void

    #@4d
    .line 459
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "infile":Ljava/io/FileInputStream;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_3
    const-string/jumbo v11, "package"

    #@50
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v11

    #@54
    if-eqz v11, :cond_4

    #@56
    .line 460
    const-string/jumbo v11, "name"

    #@59
    const/4 v13, 0x0

    #@5a
    invoke-interface {v9, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    .line 461
    .local v8, "packageName":Ljava/lang/String;
    const-string/jumbo v11, "sms-policy"

    #@61
    const/4 v13, 0x0

    #@62
    invoke-interface {v9, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v10

    #@66
    .line 462
    .local v10, "policy":Ljava/lang/String;
    if-nez v8, :cond_2

    #@68
    .line 463
    const-string/jumbo v11, "SmsUsageMonitor"

    #@6b
    const-string/jumbo v13, "Error: missing package name attribute"

    #@6e
    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@71
    goto :goto_0

    #@72
    .line 475
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "infile":Ljava/io/FileInputStream;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "policy":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@73
    .line 484
    .local v1, "e":Ljava/io/FileNotFoundException;
    if-eqz v7, :cond_0

    #@75
    .line 486
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@78
    goto :goto_1

    #@79
    .line 487
    :catch_1
    move-exception v6

    #@7a
    .local v6, "ignored":Ljava/io/IOException;
    goto :goto_1

    #@7b
    .line 464
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "ignored":Ljava/io/IOException;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "infile":Ljava/io/FileInputStream;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policy":Ljava/lang/String;
    :cond_2
    if-nez v10, :cond_3

    #@7d
    .line 465
    :try_start_5
    const-string/jumbo v11, "SmsUsageMonitor"

    #@80
    const-string/jumbo v13, "Error: missing package policy attribute"

    #@83
    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@86
    goto :goto_0

    #@87
    .line 477
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "infile":Ljava/io/FileInputStream;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "policy":Ljava/lang/String;
    :catch_2
    move-exception v2

    #@88
    .line 478
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v11, "SmsUsageMonitor"

    #@8b
    const-string/jumbo v13, "Unable to read premium SMS policy database"

    #@8e
    invoke-static {v11, v13, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@91
    .line 484
    if-eqz v7, :cond_0

    #@93
    .line 486
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@96
    goto :goto_1

    #@97
    .line 487
    :catch_3
    move-exception v6

    #@98
    .restart local v6    # "ignored":Ljava/io/IOException;
    goto :goto_1

    #@99
    .line 467
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "ignored":Ljava/io/IOException;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "infile":Ljava/io/FileInputStream;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "policy":Ljava/lang/String;
    :cond_3
    :try_start_8
    iget-object v11, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    #@9b
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9e
    move-result v13

    #@9f
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a2
    move-result-object v13

    #@a3
    invoke-virtual {v11, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@a6
    goto :goto_0

    #@a7
    .line 468
    :catch_4
    move-exception v3

    #@a8
    .line 469
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_9
    const-string/jumbo v11, "SmsUsageMonitor"

    #@ab
    new-instance v13, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v14, "Error: non-numeric policy type "

    #@b3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v13

    #@b7
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v13

    #@bb
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v13

    #@bf
    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@c2
    goto/16 :goto_0

    #@c4
    .line 479
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "infile":Ljava/io/FileInputStream;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "policy":Ljava/lang/String;
    :catch_5
    move-exception v3

    #@c5
    .line 480
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    :try_start_a
    const-string/jumbo v11, "SmsUsageMonitor"

    #@c8
    const-string/jumbo v13, "Unable to parse premium SMS policy database"

    #@cb
    invoke-static {v11, v13, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@ce
    .line 484
    if-eqz v7, :cond_0

    #@d0
    .line 486
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@d3
    goto/16 :goto_1

    #@d5
    .line 487
    :catch_6
    move-exception v6

    #@d6
    .restart local v6    # "ignored":Ljava/io/IOException;
    goto/16 :goto_1

    #@d8
    .line 472
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "ignored":Ljava/io/IOException;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "infile":Ljava/io/FileInputStream;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_c
    const-string/jumbo v11, "SmsUsageMonitor"

    #@db
    new-instance v13, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v14, "Error: skipping unknown XML tag "

    #@e3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v13

    #@e7
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v13

    #@eb
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v13

    #@ef
    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@f2
    goto/16 :goto_0

    #@f4
    .line 481
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "infile":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v4

    #@f5
    .line 482
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d
    const-string/jumbo v11, "SmsUsageMonitor"

    #@f8
    const-string/jumbo v13, "Unable to parse premium SMS policy database"

    #@fb
    invoke-static {v11, v13, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@fe
    .line 484
    if-eqz v7, :cond_0

    #@100
    .line 486
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    #@103
    goto/16 :goto_1

    #@105
    .line 487
    :catch_8
    move-exception v6

    #@106
    .restart local v6    # "ignored":Ljava/io/IOException;
    goto/16 :goto_1

    #@108
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v6    # "ignored":Ljava/io/IOException;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "infile":Ljava/io/FileInputStream;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_9
    move-exception v6

    #@109
    .restart local v6    # "ignored":Ljava/io/IOException;
    goto/16 :goto_1

    #@10b
    .line 483
    .end local v5    # "element":Ljava/lang/String;
    .end local v6    # "ignored":Ljava/io/IOException;
    .end local v7    # "infile":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v11

    #@10c
    .line 484
    if-eqz v7, :cond_5

    #@10e
    .line 486
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    #@111
    .line 483
    :cond_5
    :goto_2
    :try_start_10
    throw v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    #@112
    .line 438
    .end local v0    # "dir":Ljava/io/File;
    :catchall_1
    move-exception v11

    #@113
    monitor-exit v12

    #@114
    throw v11

    #@115
    .line 487
    .restart local v0    # "dir":Ljava/io/File;
    :catch_a
    move-exception v6

    #@116
    .restart local v6    # "ignored":Ljava/io/IOException;
    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 648
    const-string/jumbo v0, "SmsUsageMonitor"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 647
    return-void
.end method

.method public static mergeShortCodeCategories(II)I
    .locals 0
    .param p0, "type1"    # I
    .param p1, "type2"    # I

    #@0
    .prologue
    .line 95
    if-le p0, p1, :cond_0

    #@2
    return p0

    #@3
    .line 96
    :cond_0
    return p1
.end method

.method private removeExpiredTimestamps()V
    .locals 10

    #@0
    .prologue
    .line 614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v6

    #@4
    iget v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    #@6
    int-to-long v8, v5

    #@7
    sub-long v0, v6, v8

    #@9
    .line 616
    .local v0, "beginCheckPeriod":J
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    #@b
    monitor-enter v6

    #@c
    .line 617
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    #@e
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@11
    move-result-object v5

    #@12
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v3

    #@16
    .line 618
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_2

    #@1c
    .line 619
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/util/Map$Entry;

    #@22
    .line 620
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Ljava/util/ArrayList;

    #@28
    .line 621
    .local v4, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@2b
    move-result v5

    #@2c
    if-nez v5, :cond_1

    #@2e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v5

    #@32
    add-int/lit8 v5, v5, -0x1

    #@34
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v5

    #@38
    check-cast v5, Ljava/lang/Long;

    #@3a
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    #@3d
    move-result-wide v8

    #@3e
    cmp-long v5, v8, v0

    #@40
    if-gez v5, :cond_0

    #@42
    .line 622
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 616
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    .end local v4    # "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    #@47
    monitor-exit v6

    #@48
    throw v5

    #@49
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    :cond_2
    monitor-exit v6

    #@4a
    .line 613
    return-void
.end method

.method private writePremiumSmsPolicyDb()V
    .locals 9

    #@0
    .prologue
    .line 500
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    #@2
    monitor-enter v6

    #@3
    .line 501
    const/4 v2, 0x0

    #@4
    .line 503
    .local v2, "outfile":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    #@6
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@9
    move-result-object v2

    #@a
    .line 505
    .local v2, "outfile":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    #@c
    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@f
    .line 506
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@11
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@18
    .line 508
    const/4 v5, 0x1

    #@19
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1c
    move-result-object v5

    #@1d
    const/4 v7, 0x0

    #@1e
    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@21
    .line 510
    const-string/jumbo v5, "premium-sms-policy"

    #@24
    const/4 v7, 0x0

    #@25
    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@28
    .line 512
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@2d
    move-result-object v5

    #@2e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v4

    #@32
    .local v4, "policy$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_1

    #@38
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Ljava/util/Map$Entry;

    #@3e
    .line 513
    .local v3, "policy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v5, "package"

    #@41
    const/4 v7, 0x0

    #@42
    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@45
    .line 514
    const-string/jumbo v7, "name"

    #@48
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4b
    move-result-object v5

    #@4c
    check-cast v5, Ljava/lang/String;

    #@4e
    const/4 v8, 0x0

    #@4f
    invoke-interface {v1, v8, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@52
    .line 515
    const-string/jumbo v7, "sms-policy"

    #@55
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@58
    move-result-object v5

    #@59
    check-cast v5, Ljava/lang/Integer;

    #@5b
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    const/4 v8, 0x0

    #@60
    invoke-interface {v1, v8, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@63
    .line 516
    const-string/jumbo v5, "package"

    #@66
    const/4 v7, 0x0

    #@67
    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6a
    goto :goto_0

    #@6b
    .line 523
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "outfile":Ljava/io/FileOutputStream;
    .end local v3    # "policy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "policy$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@6c
    .line 524
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v5, "SmsUsageMonitor"

    #@6f
    const-string/jumbo v7, "Unable to write premium SMS policy database"

    #@72
    invoke-static {v5, v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@75
    .line 525
    if-eqz v2, :cond_0

    #@77
    .line 526
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    #@79
    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7c
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-exit v6

    #@7d
    .line 499
    return-void

    #@7e
    .line 519
    .restart local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v2    # "outfile":Ljava/io/FileOutputStream;
    .restart local v4    # "policy$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    const-string/jumbo v5, "premium-sms-policy"

    #@81
    const/4 v7, 0x0

    #@82
    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@85
    .line 520
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@88
    .line 522
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    #@8a
    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8d
    goto :goto_1

    #@8e
    .line 500
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "outfile":Ljava/io/FileOutputStream;
    .end local v4    # "policy$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@8f
    monitor-exit v6

    #@90
    throw v5
.end method


# virtual methods
.method public check(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "smsWaiting"    # I

    #@0
    .prologue
    .line 365
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 366
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->removeExpiredTimestamps()V

    #@6
    .line 368
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    #@8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/ArrayList;

    #@e
    .line 369
    .local v0, "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    #@10
    .line 370
    new-instance v0, Ljava/util/ArrayList;

    #@12
    .end local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 371
    .restart local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    #@17
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 374
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->isUnderLimit(Ljava/util/ArrayList;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v1

    #@1e
    monitor-exit v2

    #@1f
    return v1

    #@20
    .line 365
    .end local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method public checkDestination(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "destAddress"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 393
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    #@3
    monitor-enter v1

    #@4
    .line 395
    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    monitor-exit v1

    #@b
    .line 397
    return v6

    #@c
    .line 400
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@e
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    monitor-exit v1

    #@15
    .line 402
    return v6

    #@16
    .line 405
    :cond_1
    if-eqz p2, :cond_3

    #@18
    .line 406
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    #@1e
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    #@26
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@29
    move-result-wide v2

    #@2a
    iget-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    #@2c
    cmp-long v0, v2, v4

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 408
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    #@32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_4

    #@38
    .line 410
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromFile(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    #@3e
    .line 415
    :goto_0
    iput-object p2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    #@40
    .line 419
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    #@42
    if-eqz v0, :cond_5

    #@44
    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    #@46
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->getNumberCategory(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    move-result v0

    #@4a
    monitor-exit v1

    #@4b
    return v0

    #@4c
    .line 413
    :cond_4
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    #@4f
    move-result-object v0

    #@50
    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 393
    :catchall_0
    move-exception v0

    #@54
    monitor-exit v1

    #@55
    throw v0

    #@56
    .line 423
    :cond_5
    :try_start_4
    const-string/jumbo v0, "SmsUsageMonitor"

    #@59
    new-instance v2, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v3, "No patterns for \""

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    const-string/jumbo v3, "\": using generic short code rule"

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v2

    #@74
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7a
    move-result v0

    #@7b
    const/4 v2, 0x5

    #@7c
    if-gt v0, v2, :cond_6

    #@7e
    .line 425
    const/4 v0, 0x3

    #@7f
    monitor-exit v1

    #@80
    return v0

    #@81
    :cond_6
    monitor-exit v1

    #@82
    .line 427
    return v6
.end method

.method dispose()V
    .locals 1

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 350
    return-void
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 544
    invoke-static {p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrPhoneOrSameApp(Ljava/lang/String;)V

    #@3
    .line 545
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    #@5
    monitor-enter v2

    #@6
    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    #@8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 547
    .local v0, "policy":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@10
    .line 548
    const/4 v1, 0x0

    #@11
    monitor-exit v2

    #@12
    return v1

    #@13
    .line 550
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v1

    #@17
    monitor-exit v2

    #@18
    return v1

    #@19
    .line 545
    .end local v0    # "policy":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    #@0
    .prologue
    .line 565
    invoke-static {}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrPhoneApp()V

    #@3
    .line 566
    const/4 v0, 0x1

    #@4
    if-lt p2, v0, :cond_0

    #@6
    .line 567
    const/4 v0, 0x3

    #@7
    if-le p2, v0, :cond_1

    #@9
    .line 568
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "invalid SMS permission type "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 570
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    #@25
    monitor-enter v1

    #@26
    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    #@28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v1

    #@30
    .line 574
    new-instance v0, Ljava/lang/Thread;

    #@32
    new-instance v1, Lcom/android/internal/telephony/SmsUsageMonitor$1;

    #@34
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsUsageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsUsageMonitor;)V

    #@37
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@3a
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@3d
    .line 564
    return-void

    #@3e
    .line 570
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit v1

    #@40
    throw v0
.end method
