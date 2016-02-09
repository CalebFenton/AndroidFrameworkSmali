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
        Landroid/provider/Telephony$Mms$Inbox;,
        Landroid/provider/Telephony$Mms$Sent;,
        Landroid/provider/Telephony$Mms$Draft;,
        Landroid/provider/Telephony$Mms$Outbox;,
        Landroid/provider/Telephony$Mms$Addr;,
        Landroid/provider/Telephony$Mms$Part;,
        Landroid/provider/Telephony$Mms$Rate;,
        Landroid/provider/Telephony$Mms$Intents;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field public static final REPORT_REQUEST_URI:Landroid/net/Uri;

.field public static final REPORT_STATUS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1856
    const-string/jumbo v0, "content://mms"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 1862
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    #@b
    const-string/jumbo v1, "report-request"

    #@e
    .line 1861
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    #@14
    .line 1868
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    #@16
    const-string/jumbo v1, "report-status"

    #@19
    .line 1867
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    #@1f
    .line 1885
    const-string/jumbo v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    #@22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@25
    move-result-object v0

    #@26
    .line 1884
    sput-object v0, Landroid/provider/Telephony$Mms;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    #@28
    .line 1844
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1912
    sget-object v1, Landroid/provider/Telephony$Mms;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    .line 1914
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1915
    const/4 v1, 0x2

    #@d
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 1917
    :cond_0
    return-object p0
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1928
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1929
    const/4 v2, 0x0

    #@7
    return v2

    #@8
    .line 1932
    :cond_0
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 1933
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@11
    move-result-object v0

    #@12
    .line 1934
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@15
    move-result v2

    #@16
    return v2
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1945
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1946
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 1949
    :cond_0
    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    #@a
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@d
    move-result-object v0

    #@e
    .line 1950
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@11
    move-result v1

    #@12
    return v1
.end method

.method public static query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1893
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    #@3
    const-string/jumbo v5, "date DESC"

    #@6
    move-object v0, p0

    #@7
    move-object v2, p1

    #@8
    move-object v4, v3

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1903
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    #@3
    .line 1904
    if-nez p3, :cond_0

    #@5
    const-string/jumbo v5, "date DESC"

    #@8
    :goto_0
    move-object v0, p0

    #@9
    move-object v2, p1

    #@a
    move-object v3, p2

    #@b
    .line 1903
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    :cond_0
    move-object v5, p3

    #@11
    .line 1904
    goto :goto_0
.end method
