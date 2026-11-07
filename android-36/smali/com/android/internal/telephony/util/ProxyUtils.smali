.class public final Lcom/android/internal/telephony/util/ProxyUtils;
.super Ljava/lang/Object;
.source "ProxyUtils.java"


# static fields
.field private static final blacklist EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final blacklist PROXY_EXCLLIST_INVALID:I = 0x5

.field public static final blacklist PROXY_HOSTNAME_EMPTY:I = 0x1

.field public static final blacklist PROXY_HOSTNAME_INVALID:I = 0x2

.field public static final blacklist PROXY_PORT_EMPTY:I = 0x3

.field public static final blacklist PROXY_PORT_INVALID:I = 0x4

.field public static final blacklist PROXY_VALID:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/util/ProxyUtils;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 54
    const-string v0, "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/util/ProxyUtils;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 68
    const-string p0, ""

    return-object p0

    .line 70
    :cond_5
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist exclusionStringAsList(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_5

    .line 60
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 62
    :cond_5
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 77
    sget-object v0, Lcom/android/internal/telephony/util/ProxyUtils;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/android/internal/telephony/util/ProxyUtils;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 80
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p0, 0x2

    return p0

    .line 82
    :cond_14
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-nez p2, :cond_1c

    const/4 p0, 0x5

    return p0

    .line 84
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2a

    const/4 p0, 0x3

    return p0

    .line 86
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_45

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_38

    const/4 p0, 0x1

    return p0

    :cond_38
    const/4 p0, 0x4

    .line 90
    :try_start_39
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3d} :catch_44

    if-lez p1, :cond_44

    const p2, 0xffff

    if-le p1, p2, :cond_45

    :catch_44
    :cond_44
    return p0

    :cond_45
    const/4 p0, 0x0

    return p0
.end method
