.class public final Llibcore/net/http/HttpDate;
.super Ljava/lang/Object;
.source "HttpDate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HttpDate$1;
    }
.end annotation


# static fields
.field private static final BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 36
    new-instance v0, Llibcore/net/http/HttpDate$1;

    #@2
    invoke-direct {v0}, Llibcore/net/http/HttpDate$1;-><init>()V

    #@5
    .line 35
    sput-object v0, Llibcore/net/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    #@7
    .line 47
    const/16 v0, 0xe

    #@9
    new-array v0, v0, [Ljava/lang/String;

    #@b
    .line 49
    const-string/jumbo v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    .line 50
    const-string/jumbo v1, "EEE MMM d HH:mm:ss yyyy"

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    .line 51
    const-string/jumbo v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    #@1a
    const/4 v2, 0x2

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 52
    const-string/jumbo v1, "EEE, dd-MMM-yyyy HH-mm-ss z"

    #@20
    const/4 v2, 0x3

    #@21
    aput-object v1, v0, v2

    #@23
    .line 53
    const-string/jumbo v1, "EEE, dd MMM yy HH:mm:ss z"

    #@26
    const/4 v2, 0x4

    #@27
    aput-object v1, v0, v2

    #@29
    .line 54
    const-string/jumbo v1, "EEE dd-MMM-yyyy HH:mm:ss z"

    #@2c
    const/4 v2, 0x5

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 55
    const-string/jumbo v1, "EEE dd MMM yyyy HH:mm:ss z"

    #@32
    const/4 v2, 0x6

    #@33
    aput-object v1, v0, v2

    #@35
    .line 56
    const-string/jumbo v1, "EEE dd-MMM-yyyy HH-mm-ss z"

    #@38
    const/4 v2, 0x7

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 57
    const-string/jumbo v1, "EEE dd-MMM-yy HH:mm:ss z"

    #@3e
    const/16 v2, 0x8

    #@40
    aput-object v1, v0, v2

    #@42
    .line 58
    const-string/jumbo v1, "EEE dd MMM yy HH:mm:ss z"

    #@45
    const/16 v2, 0x9

    #@47
    aput-object v1, v0, v2

    #@49
    .line 59
    const-string/jumbo v1, "EEE,dd-MMM-yy HH:mm:ss z"

    #@4c
    const/16 v2, 0xa

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 60
    const-string/jumbo v1, "EEE,dd-MMM-yyyy HH:mm:ss z"

    #@53
    const/16 v2, 0xb

    #@55
    aput-object v1, v0, v2

    #@57
    .line 61
    const-string/jumbo v1, "EEE, dd-MM-yyyy HH:mm:ss z"

    #@5a
    const/16 v2, 0xc

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 64
    const-string/jumbo v1, "EEE MMM d yyyy HH:mm:ss z"

    #@61
    const/16 v2, 0xd

    #@63
    aput-object v1, v0, v2

    #@65
    .line 47
    sput-object v0, Llibcore/net/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/lang/String;

    #@67
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/util/Date;

    #@0
    .prologue
    .line 89
    sget-object v0, Llibcore/net/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

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
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    :try_start_0
    sget-object v2, Llibcore/net/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/text/DateFormat;

    #@8
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 74
    :catch_0
    move-exception v1

    #@e
    .line 76
    .local v1, "ignore":Ljava/text/ParseException;
    sget-object v3, Llibcore/net/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/lang/String;

    #@10
    const/4 v2, 0x0

    #@11
    array-length v4, v3

    #@12
    :goto_0
    if-ge v2, v4, :cond_0

    #@14
    aget-object v0, v3, v2

    #@16
    .line 78
    .local v0, "formatString":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    #@18
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1a
    invoke-direct {v5, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@1d
    invoke-virtual {v5, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    move-result-object v2

    #@21
    return-object v2

    #@22
    .line 79
    :catch_1
    move-exception v1

    #@23
    .line 76
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 82
    .end local v0    # "formatString":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    #@27
    return-object v2
.end method
