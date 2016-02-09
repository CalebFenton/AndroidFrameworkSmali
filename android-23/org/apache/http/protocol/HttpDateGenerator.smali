.class public Lorg/apache/http/protocol/HttpDateGenerator;
.super Ljava/lang/Object;
.source "HttpDateGenerator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final GMT:Ljava/util/TimeZone;

.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# instance fields
.field private dateAsLong:J

.field private dateAsText:Ljava/lang/String;

.field private final dateformat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 62
    const-string/jumbo v0, "GMT"

    #@3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lorg/apache/http/protocol/HttpDateGenerator;->GMT:Ljava/util/TimeZone;

    #@9
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lorg/apache/http/protocol/HttpDateGenerator;->dateAsLong:J

    #@7
    .line 68
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lorg/apache/http/protocol/HttpDateGenerator;->dateAsText:Ljava/lang/String;

    #@a
    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@c
    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    #@f
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@11
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@14
    iput-object v0, p0, Lorg/apache/http/protocol/HttpDateGenerator;->dateformat:Ljava/text/DateFormat;

    #@16
    .line 73
    iget-object v0, p0, Lorg/apache/http/protocol/HttpDateGenerator;->dateformat:Ljava/text/DateFormat;

    #@18
    sget-object v1, Lorg/apache/http/protocol/HttpDateGenerator;->GMT:Ljava/util/TimeZone;

    #@1a
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@1d
    .line 70
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentDate()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 77
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v0

    #@5
    .line 78
    .local v0, "now":J
    iget-wide v2, p0, Lorg/apache/http/protocol/HttpDateGenerator;->dateAsLong:J

    #@7
    sub-long v2, v0, v2

    #@9
    const-wide/16 v4, 0x3e8

    #@b
    cmp-long v2, v2, v4

    #@d
    if-lez v2, :cond_0

    #@f
    .line 80
    iget-object v2, p0, Lorg/apache/http/protocol/HttpDateGenerator;->dateformat:Ljava/text/DateFormat;

    #@11
    new-instance v3, Ljava/util/Date;

    #@13
    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@16
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Lorg/apache/http/protocol/HttpDateGenerator;->dateAsText:Ljava/lang/String;

    #@1c
    .line 81
    iput-wide v0, p0, Lorg/apache/http/protocol/HttpDateGenerator;->dateAsLong:J

    #@1e
    .line 83
    :cond_0
    iget-object v2, p0, Lorg/apache/http/protocol/HttpDateGenerator;->dateAsText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit p0

    #@21
    return-object v2

    #@22
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    #@23
    monitor-exit p0

    #@24
    throw v2
.end method
