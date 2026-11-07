.class public final Landroid/provider/Telephony$Mms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$BaseMmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$Mms$Intents;,
        Landroid/provider/Telephony$Mms$Rate;,
        Landroid/provider/Telephony$Mms$Part;,
        Landroid/provider/Telephony$Mms$Addr;,
        Landroid/provider/Telephony$Mms$Outbox;,
        Landroid/provider/Telephony$Mms$Draft;,
        Landroid/provider/Telephony$Mms$Sent;,
        Landroid/provider/Telephony$Mms$Inbox;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final greylist NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field public static final whitelist REPORT_REQUEST_URI:Landroid/net/Uri;

.field public static final whitelist REPORT_STATUS_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2257
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 2262
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "report-request"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    .line 2268
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "report-status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    .line 2286
    nop

    .line 2287
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Mms;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 2286
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2252
    return-void
.end method

.method public static greylist extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "address"    # Ljava/lang/String;

    .line 2315
    sget-object v0, Landroid/provider/Telephony$Mms;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2317
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2318
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2320
    :cond_12
    return-object p0
.end method

.method public static greylist isEmailAddress(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .line 2332
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2333
    const/4 v0, 0x0

    return v0

    .line 2336
    :cond_8
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2337
    .local v0, "s":Ljava/lang/String;
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2338
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static greylist isPhoneNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;

    .line 2350
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2351
    const/4 v0, 0x0

    return v0

    .line 2354
    :cond_8
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2355
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static greylist-max-o query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;

    .line 2295
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "date DESC"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .end local p1    # "projection":[Ljava/lang/String;
    .local v0, "cr":Landroid/content/ContentResolver;
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;

    .line 2305
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 2306
    if-nez p3, :cond_8

    const-string v0, "date DESC"

    move-object v5, v0

    goto :goto_9

    :cond_8
    move-object v5, p3

    .line 2305
    :goto_9
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .end local p0    # "cr":Landroid/content/ContentResolver;
    .end local p1    # "projection":[Ljava/lang/String;
    .end local p2    # "where":Ljava/lang/String;
    .local v0, "cr":Landroid/content/ContentResolver;
    .local v2, "projection":[Ljava/lang/String;
    .local v3, "where":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
