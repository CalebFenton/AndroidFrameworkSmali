.class public final Llibcore/net/http/HttpDate;
.super Ljava/lang/Object;
.source "HttpDate.java"


# static fields
.field private static final blacklist BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/lang/String;

.field private static final blacklist STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 36
    new-instance v0, Llibcore/net/http/HttpDate$1;

    invoke-direct {v0}, Llibcore/net/http/HttpDate$1;-><init>()V

    sput-object v0, Llibcore/net/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    .line 48
    const-string v13, "EEE, dd-MM-yyyy HH:mm:ss z"

    const-string v14, "EEE MMM d yyyy HH:mm:ss z"

    const-string v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    const-string v3, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const-string v4, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const-string v5, "EEE, dd MMM yy HH:mm:ss z"

    const-string v6, "EEE dd-MMM-yyyy HH:mm:ss z"

    const-string v7, "EEE dd MMM yyyy HH:mm:ss z"

    const-string v8, "EEE dd-MMM-yyyy HH-mm-ss z"

    const-string v9, "EEE dd-MMM-yy HH:mm:ss z"

    const-string v10, "EEE dd MMM yy HH:mm:ss z"

    const-string v11, "EEE,dd-MMM-yy HH:mm:ss z"

    const-string v12, "EEE,dd-MMM-yyyy HH:mm:ss z"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/net/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist format(Ljava/util/Date;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/util/Date;

    .line 92
    sget-object v0, Llibcore/net/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 7
    .param p0, "value"    # Ljava/lang/String;

    .line 75
    :try_start_0
    sget-object v0, Llibcore/net/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 76
    :catch_d
    move-exception v0

    .line 78
    sget-object v0, Llibcore/net/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_26

    aget-object v3, v0, v2

    .line 80
    .local v3, "formatString":Ljava/lang/String;
    :try_start_16
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_21
    .catch Ljava/text/ParseException; {:try_start_16 .. :try_end_21} :catch_22

    return-object v0

    .line 81
    :catch_22
    move-exception v4

    .line 78
    .end local v3    # "formatString":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 84
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method
