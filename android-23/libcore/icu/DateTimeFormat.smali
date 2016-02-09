.class public Llibcore/icu/DateTimeFormat;
.super Ljava/lang/Object;
.source "DateTimeFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/DateTimeFormat$FormatterCache;
    }
.end annotation


# static fields
.field private static final CACHED_FORMATTERS:Llibcore/icu/DateTimeFormat$FormatterCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 32
    new-instance v0, Llibcore/icu/DateTimeFormat$FormatterCache;

    #@2
    invoke-direct {v0}, Llibcore/icu/DateTimeFormat$FormatterCache;-><init>()V

    #@5
    sput-object v0, Llibcore/icu/DateTimeFormat;->CACHED_FORMATTERS:Llibcore/icu/DateTimeFormat$FormatterCache;

    #@7
    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .locals 6
    .param p0, "icuLocale"    # Landroid/icu/util/ULocale;
    .param p1, "time"    # Landroid/icu/util/Calendar;
    .param p2, "flags"    # I
    .param p3, "displayContext"    # Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 45
    invoke-static {p1, p2}, Llibcore/icu/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;I)Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 46
    .local v3, "skeleton":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v4

    #@d
    const-string/jumbo v5, "\t"

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    const-string/jumbo v5, "\t"

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 47
    .local v2, "key":Ljava/lang/String;
    sget-object v5, Llibcore/icu/DateTimeFormat;->CACHED_FORMATTERS:Llibcore/icu/DateTimeFormat$FormatterCache;

    #@2d
    monitor-enter v5

    #@2e
    .line 48
    :try_start_0
    sget-object v4, Llibcore/icu/DateTimeFormat;->CACHED_FORMATTERS:Llibcore/icu/DateTimeFormat$FormatterCache;

    #@30
    invoke-virtual {v4, v2}, Llibcore/icu/DateTimeFormat$FormatterCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Landroid/icu/text/DateFormat;

    #@36
    .line 49
    .local v0, "formatter":Landroid/icu/text/DateFormat;
    if-nez v0, :cond_0

    #@38
    .line 50
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    #@3b
    move-result-object v1

    #@3c
    .line 51
    .local v1, "generator":Landroid/icu/text/DateTimePatternGenerator;
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    #@3e
    .end local v0    # "formatter":Landroid/icu/text/DateFormat;
    invoke-virtual {v1, v3}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-direct {v0, v4, p0}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@45
    .line 52
    .restart local v0    # "formatter":Landroid/icu/text/DateFormat;
    sget-object v4, Llibcore/icu/DateTimeFormat;->CACHED_FORMATTERS:Llibcore/icu/DateTimeFormat$FormatterCache;

    #@47
    invoke-virtual {v4, v2, v0}, Llibcore/icu/DateTimeFormat$FormatterCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 54
    .end local v1    # "generator":Landroid/icu/text/DateTimePatternGenerator;
    :cond_0
    invoke-virtual {v0, p3}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    #@4d
    .line 55
    invoke-virtual {v0, p1}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    move-result-object v4

    #@51
    monitor-exit v5

    #@52
    return-object v4

    #@53
    .line 47
    .end local v0    # "formatter":Landroid/icu/text/DateFormat;
    :catchall_0
    move-exception v4

    #@54
    monitor-exit v5

    #@55
    throw v4
.end method
