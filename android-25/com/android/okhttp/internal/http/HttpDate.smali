.class public final Lcom/android/okhttp/internal/http/HttpDate;
.super Ljava/lang/Object;
.source "HttpDate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/HttpDate$1;
    }
.end annotation


# static fields
.field private static final BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

.field private static final BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

.field private static final GMT:Ljava/util/TimeZone;

.field private static final STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/TimeZone;
    .locals 1

    #@0
    sget-object v0, Lcom/android/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 31
    const-string/jumbo v0, "GMT"

    #@3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;

    #@9
    .line 38
    new-instance v0, Lcom/android/okhttp/internal/http/HttpDate$1;

    #@b
    invoke-direct {v0}, Lcom/android/okhttp/internal/http/HttpDate$1;-><init>()V

    #@e
    .line 37
    sput-object v0, Lcom/android/okhttp/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    #@10
    .line 49
    const/16 v0, 0xf

    #@12
    new-array v0, v0, [Ljava/lang/String;

    #@14
    .line 51
    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    #@17
    const/4 v2, 0x0

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 52
    const-string/jumbo v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    #@1d
    const/4 v2, 0x1

    #@1e
    aput-object v1, v0, v2

    #@20
    .line 53
    const-string/jumbo v1, "EEE MMM d HH:mm:ss yyyy"

    #@23
    const/4 v2, 0x2

    #@24
    aput-object v1, v0, v2

    #@26
    .line 55
    const-string/jumbo v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    #@29
    const/4 v2, 0x3

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 56
    const-string/jumbo v1, "EEE, dd-MMM-yyyy HH-mm-ss z"

    #@2f
    const/4 v2, 0x4

    #@30
    aput-object v1, v0, v2

    #@32
    .line 57
    const-string/jumbo v1, "EEE, dd MMM yy HH:mm:ss z"

    #@35
    const/4 v2, 0x5

    #@36
    aput-object v1, v0, v2

    #@38
    .line 58
    const-string/jumbo v1, "EEE dd-MMM-yyyy HH:mm:ss z"

    #@3b
    const/4 v2, 0x6

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 59
    const-string/jumbo v1, "EEE dd MMM yyyy HH:mm:ss z"

    #@41
    const/4 v2, 0x7

    #@42
    aput-object v1, v0, v2

    #@44
    .line 60
    const-string/jumbo v1, "EEE dd-MMM-yyyy HH-mm-ss z"

    #@47
    const/16 v2, 0x8

    #@49
    aput-object v1, v0, v2

    #@4b
    .line 61
    const-string/jumbo v1, "EEE dd-MMM-yy HH:mm:ss z"

    #@4e
    const/16 v2, 0x9

    #@50
    aput-object v1, v0, v2

    #@52
    .line 62
    const-string/jumbo v1, "EEE dd MMM yy HH:mm:ss z"

    #@55
    const/16 v2, 0xa

    #@57
    aput-object v1, v0, v2

    #@59
    .line 63
    const-string/jumbo v1, "EEE,dd-MMM-yy HH:mm:ss z"

    #@5c
    const/16 v2, 0xb

    #@5e
    aput-object v1, v0, v2

    #@60
    .line 64
    const-string/jumbo v1, "EEE,dd-MMM-yyyy HH:mm:ss z"

    #@63
    const/16 v2, 0xc

    #@65
    aput-object v1, v0, v2

    #@67
    .line 65
    const-string/jumbo v1, "EEE, dd-MM-yyyy HH:mm:ss z"

    #@6a
    const/16 v2, 0xd

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 68
    const-string/jumbo v1, "EEE MMM d yyyy HH:mm:ss z"

    #@71
    const/16 v2, 0xe

    #@73
    aput-object v1, v0, v2

    #@75
    .line 49
    sput-object v0, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    #@77
    .line 72
    sget-object v0, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    #@79
    array-length v0, v0

    #@7a
    new-array v0, v0, [Ljava/text/DateFormat;

    #@7c
    .line 71
    sput-object v0, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    #@7e
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/util/Date;

    #@0
    .prologue
    .line 114
    sget-object v0, Lcom/android/okhttp/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/text/DateFormat;

    #@8
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v5

    #@6
    if-nez v5, :cond_0

    #@8
    .line 77
    return-object v8

    #@9
    .line 80
    :cond_0
    new-instance v3, Ljava/text/ParsePosition;

    #@b
    invoke-direct {v3, v6}, Ljava/text/ParsePosition;-><init>(I)V

    #@e
    .line 81
    .local v3, "position":Ljava/text/ParsePosition;
    sget-object v5, Lcom/android/okhttp/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    #@10
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@13
    move-result-object v5

    #@14
    check-cast v5, Ljava/text/DateFormat;

    #@16
    invoke-virtual {v5, p0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    #@19
    move-result-object v4

    #@1a
    .line 82
    .local v4, "result":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    #@1d
    move-result v5

    #@1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@21
    move-result v6

    #@22
    if-ne v5, v6, :cond_1

    #@24
    .line 85
    return-object v4

    #@25
    .line 87
    :cond_1
    sget-object v6, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    #@27
    monitor-enter v6

    #@28
    .line 88
    const/4 v2, 0x0

    #@29
    .local v2, "i":I
    :try_start_0
    sget-object v5, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    #@2b
    array-length v0, v5

    #@2c
    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@2e
    .line 89
    sget-object v5, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    #@30
    aget-object v1, v5, v2

    #@32
    .line 90
    .local v1, "format":Ljava/text/DateFormat;
    if-nez v1, :cond_2

    #@34
    .line 91
    new-instance v1, Ljava/text/SimpleDateFormat;

    #@36
    .end local v1    # "format":Ljava/text/DateFormat;
    sget-object v5, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    #@38
    aget-object v5, v5, v2

    #@3a
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@3c
    invoke-direct {v1, v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@3f
    .line 94
    .restart local v1    # "format":Ljava/text/DateFormat;
    sget-object v5, Lcom/android/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;

    #@41
    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@44
    .line 95
    sget-object v5, Lcom/android/okhttp/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    #@46
    aput-object v1, v5, v2

    #@48
    .line 97
    :cond_2
    const/4 v5, 0x0

    #@49
    invoke-virtual {v3, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    #@4c
    .line 98
    invoke-virtual {v1, p0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    #@4f
    move-result-object v4

    #@50
    .line 99
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_3

    #@56
    monitor-exit v6

    #@57
    .line 105
    return-object v4

    #@58
    .line 88
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@5a
    goto :goto_0

    #@5b
    .end local v1    # "format":Ljava/text/DateFormat;
    :cond_4
    monitor-exit v6

    #@5c
    .line 109
    return-object v8

    #@5d
    .line 87
    .end local v0    # "count":I
    :catchall_0
    move-exception v5

    #@5e
    monitor-exit v6

    #@5f
    throw v5
.end method
