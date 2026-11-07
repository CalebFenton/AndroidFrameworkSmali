.class public Lcom/android/internal/telephony/SmsUsageMonitor;
.super Ljava/lang/Object;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;,
        Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;,
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;
    }
.end annotation


# static fields
.field public static final blacklist PREMIUM_SMS_PERMISSION_ALWAYS_ALLOW:I = 0x3

.field public static final blacklist PREMIUM_SMS_PERMISSION_ASK_USER:I = 0x1

.field public static final blacklist PREMIUM_SMS_PERMISSION_NEVER_ALLOW:I = 0x2

.field public static final blacklist PREMIUM_SMS_PERMISSION_UNKNOWN:I


# instance fields
.field private final blacklist mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mCheckPeriod:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentCountry:Ljava/lang/String;

.field private blacklist mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mMaxAllowed:I

.field private final blacklist mPatternFile:Ljava/io/File;

.field private blacklist mPatternFileLastModified:J

.field private blacklist mPatternFileVersion:I

.field private blacklist mPolicyFile:Landroid/util/AtomicFile;

.field private final blacklist mPremiumSmsPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRoleManager:Landroid/app/role/RoleManager;

.field private final blacklist mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

.field private final blacklist mSmsStamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwritePremiumSmsPolicyDb(Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->writePremiumSmsPolicyDb()V

    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 6

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/sms/codes"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    const-wide/16 v1, 0x0

    .line 135
    iput-wide v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    const/4 v1, -0x1

    .line 137
    iput v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileVersion:I

    .line 172
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    .line 262
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    .line 263
    iput-object p2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 265
    const-string v1, "role"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mRoleManager:Landroid/app/role/RoleManager;

    .line 267
    const-string v1, "sms_outgoing_check_max_count"

    const/16 v2, 0x1e

    invoke-static {p2, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    .line 271
    const-string v1, "sms_outgoing_check_interval_ms"

    const v2, 0xea60

    invoke-static {p2, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    .line 275
    new-instance p2, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    invoke-direct {p2, p1, v0}, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;-><init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    .line 277
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->loadPremiumSmsPolicyDb()V

    return-void
.end method

.method private static blacklist checkCallerIsSystemOrPhoneApp()V
    .registers 4

    .line 624
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 625
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2a

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_2a

    if-nez v0, :cond_13

    goto :goto_2a

    .line 629
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    :goto_2a
    return-void
.end method

.method private blacklist checkCallerIsSystemOrPhoneOrSameApp(Ljava/lang/String;)V
    .registers 6

    .line 602
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 603
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_59

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_59

    if-nez v0, :cond_13

    goto :goto_59

    .line 609
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gave package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which is either unknown or owned by another uid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 612
    :try_start_31
    iget-object p0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 613
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 612
    invoke-virtual {p0, p1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 615
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-ne p0, p1, :cond_4d

    goto :goto_59

    .line 616
    :cond_4d
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_53} :catch_53

    .line 619
    :catch_53
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    :goto_59
    return-void
.end method

.method private blacklist getPatternFileVersionFromFile()I
    .registers 6

    .line 671
    const-string p0, "File reader exception closing short code pattern file version reader"

    const-string v0, "SmsUsageMonitor"

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/sms/metadata/version"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_57

    const/4 v2, 0x0

    .line 675
    :try_start_12
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_40
    .catchall {:try_start_12 .. :try_end_1c} :catchall_3e

    .line 676
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 678
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_26} :catch_32
    .catchall {:try_start_1c .. :try_end_26} :catchall_2f

    .line 686
    :try_start_26
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    return v1

    :catch_2a
    move-exception v2

    .line 689
    invoke-static {v0, p0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catchall_2f
    move-exception v1

    move-object v2, v3

    goto :goto_4c

    :catch_32
    move-exception v1

    move-object v2, v3

    goto :goto_41

    .line 686
    :cond_35
    :try_start_35
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_57

    :catch_39
    move-exception v1

    .line 689
    invoke-static {v0, p0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    :catchall_3e
    move-exception v1

    goto :goto_4c

    :catch_40
    move-exception v1

    .line 681
    :goto_41
    :try_start_41
    const-string v3, "File reader exception reading short code pattern file version"

    invoke-static {v0, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_3e

    if-eqz v2, :cond_57

    .line 686
    :try_start_48
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_39

    goto :goto_57

    :goto_4c
    if-eqz v2, :cond_56

    :try_start_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception v2

    .line 689
    invoke-static {v0, p0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    :cond_56
    :goto_56
    throw v1

    :cond_57
    :goto_57
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getPatternMatcherFromFile(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .registers 7

    .line 286
    const-string v0, "SmsUsageMonitor"

    const/4 v1, 0x0

    .line 289
    :try_start_3
    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_2b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_a} :catch_28
    .catchall {:try_start_3 .. :try_end_a} :catchall_26

    .line 290
    :try_start_a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 291
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 292
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    move-result-object p1
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_15} :catch_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_15} :catch_24
    .catchall {:try_start_a .. :try_end_15} :catchall_21

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 301
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_20

    :catch_20
    return-object p1

    :catchall_21
    move-exception p1

    move-object v1, v2

    goto :goto_51

    :catch_24
    move-exception p1

    goto :goto_2d

    :catchall_26
    move-exception p1

    goto :goto_51

    :catch_28
    move-exception p1

    move-object v2, v1

    goto :goto_2d

    :catch_2b
    move-object v2, v1

    goto :goto_40

    .line 296
    :goto_2d
    :try_start_2d
    const-string v3, "XML parser exception reading short code pattern file"

    invoke-static {v0, v3, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_21

    .line 298
    iget-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    if-eqz v2, :cond_50

    .line 301
    :goto_3c
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_50

    goto :goto_50

    .line 294
    :catch_40
    :goto_40
    :try_start_40
    const-string p1, "Short Code Pattern File not found"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_21

    .line 298
    iget-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    if-eqz v2, :cond_50

    goto :goto_3c

    :catch_50
    :cond_50
    :goto_50
    return-object v1

    :goto_51
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    if-eqz v1, :cond_5e

    .line 301
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5e

    .line 304
    :catch_5e
    :cond_5e
    throw p1
.end method

.method private blacklist getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .registers 5

    const/4 v0, 0x0

    .line 312
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1170019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 313
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    if-eqz v0, :cond_17

    .line 315
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_17
    return-object p0

    :catchall_18
    move-exception p0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 316
    :cond_1e
    throw p0
.end method

.method private blacklist getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .registers 7

    .line 322
    const-string p0, "SmsUsageMonitor"

    const/4 v0, 0x0

    :try_start_3
    const-string v1, "shortcodes"

    invoke-static {p1, v1}, Lcom/android/internal/telephony/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 325
    :cond_8
    :goto_8
    invoke-static {p1}, Lcom/android/internal/telephony/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 326
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 328
    const-string p1, "Parsing pattern data found null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :catch_17
    move-exception p1

    goto :goto_62

    :catch_19
    move-exception p1

    goto :goto_68

    .line 332
    :cond_1b
    const-string v2, "shortcode"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 333
    const-string v1, "country"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 336
    const-string p2, "pattern"

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 337
    const-string v1, "premium"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    const-string v2, "free"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    const-string v3, "standard"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 340
    new-instance v3, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    invoke-direct {v3, p2, v1, v2, p1}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 343
    :cond_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: skipping unknown XML tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_61} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_61} :catch_17

    goto :goto_8

    .line 349
    :goto_62
    const-string p2, "I/O exception reading short code patterns"

    invoke-static {p0, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6d

    .line 347
    :goto_68
    const-string p2, "XML parser exception reading short code patterns"

    invoke-static {p0, p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6d
    return-object v0
.end method

.method private blacklist isUnderLimit(Ljava/util/ArrayList;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 653
    iget v3, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    .line 657
    :goto_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_25

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v0

    if-gez v3, :cond_25

    .line 658
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_c

    .line 661
    :cond_25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p2

    iget p0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    if-gt v0, p0, :cond_38

    :goto_2e
    if-ge v4, p2, :cond_36

    .line 663
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_36
    const/4 p0, 0x1

    return p0

    :cond_38
    return v4
.end method

.method private blacklist loadPremiumSmsPolicyDb()V
    .registers 9

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v0

    .line 458
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    if-nez v1, :cond_f5

    .line 459
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/sms"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "premium_sms_policy.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    .line 462
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_4a

    const/4 v1, 0x0

    .line 466
    :try_start_22
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_28} :catch_f2
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_28} :catch_c7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_28} :catch_c5
    .catchall {:try_start_22 .. :try_end_28} :catchall_c3

    .line 467
    :try_start_28
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 468
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 470
    const-string v4, "premium-sms-policy"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 473
    :goto_3a
    invoke-static {v3}, Lcom/android/internal/telephony/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 475
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_41} :catch_79
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_41} :catch_75
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_41} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_41} :catch_6f
    .catchall {:try_start_28 .. :try_end_41} :catchall_6b

    if-nez v4, :cond_4d

    if-eqz v2, :cond_f5

    .line 505
    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_f5
    .catchall {:try_start_45 .. :try_end_48} :catchall_4a

    goto/16 :goto_f5

    :catchall_4a
    move-exception p0

    goto/16 :goto_f7

    .line 478
    :cond_4d
    :try_start_4d
    const-string v5, "package"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 479
    const-string v4, "name"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 480
    const-string v5, "sms-policy"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_7c

    .line 482
    const-string v4, "SmsUsageMonitor"

    const-string v5, "Error: missing package name attribute"

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :catchall_6b
    move-exception p0

    move-object v1, v2

    goto/16 :goto_ec

    :catch_6f
    move-exception p0

    move-object v1, v2

    goto :goto_cb

    :catch_72
    move-exception p0

    move-object v1, v2

    goto :goto_d8

    :catch_75
    move-exception p0

    move-object v1, v2

    goto/16 :goto_e2

    :catch_79
    move-object v1, v2

    goto/16 :goto_f2

    :cond_7c
    if-nez v5, :cond_86

    .line 484
    const-string v4, "SmsUsageMonitor"

    const-string v5, "Error: missing package policy attribute"

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_85} :catch_79
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_85} :catch_75
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_85} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d .. :try_end_85} :catch_6f
    .catchall {:try_start_4d .. :try_end_85} :catchall_6b

    goto :goto_3a

    .line 486
    :cond_86
    :try_start_86
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_86 .. :try_end_93} :catch_94
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_93} :catch_79
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_93} :catch_75
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_93} :catch_6f
    .catchall {:try_start_86 .. :try_end_93} :catchall_6b

    goto :goto_3a

    .line 488
    :catch_94
    :try_start_94
    const-string v4, "SmsUsageMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: non-numeric policy type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 491
    :cond_ab
    const-string v5, "SmsUsageMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: skipping unknown XML tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Ljava/io/FileNotFoundException; {:try_start_94 .. :try_end_c1} :catch_79
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_c1} :catch_75
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_c1} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_94 .. :try_end_c1} :catch_6f
    .catchall {:try_start_94 .. :try_end_c1} :catchall_6b

    goto/16 :goto_3a

    :catchall_c3
    move-exception p0

    goto :goto_ec

    :catch_c5
    move-exception p0

    goto :goto_cb

    :catch_c7
    move-exception p0

    goto :goto_d8

    :catch_c9
    move-exception p0

    goto :goto_e2

    .line 501
    :goto_cb
    :try_start_cb
    const-string v2, "SmsUsageMonitor"

    const-string v3, "Unable to parse premium SMS policy database"

    invoke-static {v2, v3, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_c3

    if-eqz v1, :cond_f5

    .line 505
    :goto_d4
    :try_start_d4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_f5
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_4a

    goto :goto_f5

    .line 499
    :goto_d8
    :try_start_d8
    const-string v2, "SmsUsageMonitor"

    const-string v3, "Unable to parse premium SMS policy database"

    invoke-static {v2, v3, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_f5

    goto :goto_d4

    .line 497
    :goto_e2
    const-string v2, "SmsUsageMonitor"

    const-string v3, "Unable to read premium SMS policy database"

    invoke-static {v2, v3, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e9
    .catchall {:try_start_d8 .. :try_end_e9} :catchall_c3

    if-eqz v1, :cond_f5

    goto :goto_d4

    :goto_ec
    if-eqz v1, :cond_f1

    .line 505
    :try_start_ee
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_4a

    .line 509
    :catch_f1
    :cond_f1
    :try_start_f1
    throw p0

    :catch_f2
    :goto_f2
    if-eqz v1, :cond_f5

    goto :goto_d4

    .line 511
    :catch_f5
    :cond_f5
    :goto_f5
    monitor-exit v0

    return-void

    :goto_f7
    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_f1 .. :try_end_f8} :catchall_4a

    throw p0
.end method

.method public static blacklist mergeShortCodeCategories(II)I
    .registers 2

    .line 0
    if-le p0, p1, :cond_3

    return p0

    :cond_3
    return p1
.end method

.method private blacklist removeExpiredTimestamps()V
    .registers 6

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 639
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    monitor-enter v2

    .line 640
    :try_start_b
    iget-object p0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 641
    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 642
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 643
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 644
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-gez v3, :cond_15

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_4a

    .line 645
    :cond_44
    :goto_44
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    .line 648
    :cond_48
    monitor-exit v2

    return-void

    :goto_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_b .. :try_end_4b} :catchall_42

    throw p0
.end method

.method private blacklist writePremiumSmsPolicyDb()V
    .registers 10

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x0

    .line 522
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_6f
    .catchall {:try_start_4 .. :try_end_a} :catchall_5d

    .line 524
    :try_start_a
    new-instance v3, Lcom/android/internal/telephony/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/telephony/FastXmlSerializer;-><init>()V

    .line 525
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 527
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 529
    const-string v4, "premium-sms-policy"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 531
    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 532
    const-string v6, "package"

    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 533
    const-string v6, "name"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 534
    const-string v6, "sms-policy"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 535
    const-string v5, "package"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2c

    :catchall_5d
    move-exception p0

    goto :goto_83

    :catch_5f
    move-exception v1

    goto :goto_73

    .line 538
    :cond_61
    const-string v4, "premium-sms-policy"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 541
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_6e} :catch_5f
    .catchall {:try_start_a .. :try_end_6e} :catchall_5d

    goto :goto_81

    :catch_6f
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 543
    :goto_73
    :try_start_73
    const-string v3, "SmsUsageMonitor"

    const-string v4, "Unable to write premium SMS policy database"

    invoke-static {v3, v4, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_81

    .line 545
    iget-object p0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 548
    :cond_81
    :goto_81
    monitor-exit v0

    return-void

    :goto_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_73 .. :try_end_84} :catchall_5d

    throw p0
.end method


# virtual methods
.method public greylist-max-r check(Ljava/lang/String;I)Z
    .registers 7

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    monitor-enter v0

    .line 373
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->removeExpiredTimestamps()V

    .line 375
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1d

    .line 377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 378
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_34

    .line 381
    :cond_1d
    :goto_1d
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mRoleManager:Landroid/app/role/RoleManager;

    const-string v3, "android.app.role.SMS"

    invoke-virtual {v2, v3}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 382
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p0, 0x1

    .line 383
    monitor-exit v0

    return p0

    .line 385
    :cond_2e
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->isUnderLimit(Ljava/util/ArrayList;I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 387
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_1b

    throw p0
.end method

.method public blacklist checkDestination(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    monitor-enter v0

    .line 409
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 411
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsTelephonyCalling(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_25

    if-eqz v1, :cond_25

    .line 412
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 414
    monitor-exit v0

    return v3

    :catchall_22
    move-exception p0

    goto/16 :goto_98

    .line 417
    :cond_25
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 419
    monitor-exit v0

    return v3

    :cond_2f
    if-eqz p2, :cond_67

    .line 423
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    if-eqz v1, :cond_47

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    .line 424
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_67

    .line 425
    :cond_47
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 427
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromFile(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    .line 428
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternFileVersionFromFile()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileVersion:I

    goto :goto_65

    .line 431
    :cond_5c
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    const/4 v1, -0x1

    .line 432
    iput v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileVersion:I

    .line 434
    :goto_65
    iput-object p2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    .line 438
    :cond_67
    iget-object p0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    if-eqz p0, :cond_71

    .line 439
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->getNumberCategory(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 442
    :cond_71
    const-string p0, "SmsUsageMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No patterns for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\": using generic short code rule"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x5

    if-gt p0, p1, :cond_96

    const/4 p0, 0x3

    .line 444
    monitor-exit v0

    return p0

    .line 446
    :cond_96
    monitor-exit v0

    return v3

    .line 449
    :goto_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_22

    throw p0
.end method

.method public blacklist getPremiumSmsPermission(Ljava/lang/String;)I
    .registers 3

    .line 563
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrPhoneOrSameApp(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v0

    .line 565
    :try_start_6
    iget-object p0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_15

    const/4 p0, 0x0

    .line 567
    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    goto :goto_1b

    .line 569
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 571
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_13

    throw p0
.end method

.method public blacklist getShortCodeXmlFileVersion()I
    .registers 1

    .line 698
    iget p0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileVersion:I

    return p0
.end method

.method public blacklist setPremiumSmsPermission(Ljava/lang/String;I)V
    .registers 5

    .line 584
    invoke-static {}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrPhoneApp()V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_27

    const/4 v0, 0x3

    if-gt p2, v0, :cond_27

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v0

    .line 590
    :try_start_c
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_24

    .line 593
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/internal/telephony/SmsUsageMonitor$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SmsUsageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsUsageMonitor;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 598
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_24
    move-exception p0

    .line 591
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0

    .line 587
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid SMS permission type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
