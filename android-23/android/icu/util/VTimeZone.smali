.class public Landroid/icu/util/VTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "VTimeZone.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final DEF_DSTSAVINGS:I = 0x36ee80

.field private static final DEF_TZSTARTTIME:J = 0x0L

.field private static final EQUALS_SIGN:Ljava/lang/String; = "="

.field private static final ERR:I = 0x3

.field private static final ICAL_BEGIN:Ljava/lang/String; = "BEGIN"

.field private static final ICAL_BEGIN_VTIMEZONE:Ljava/lang/String; = "BEGIN:VTIMEZONE"

.field private static final ICAL_BYDAY:Ljava/lang/String; = "BYDAY"

.field private static final ICAL_BYMONTH:Ljava/lang/String; = "BYMONTH"

.field private static final ICAL_BYMONTHDAY:Ljava/lang/String; = "BYMONTHDAY"

.field private static final ICAL_DAYLIGHT:Ljava/lang/String; = "DAYLIGHT"

.field private static final ICAL_DOW_NAMES:[Ljava/lang/String;

.field private static final ICAL_DTSTART:Ljava/lang/String; = "DTSTART"

.field private static final ICAL_END:Ljava/lang/String; = "END"

.field private static final ICAL_END_VTIMEZONE:Ljava/lang/String; = "END:VTIMEZONE"

.field private static final ICAL_FREQ:Ljava/lang/String; = "FREQ"

.field private static final ICAL_LASTMOD:Ljava/lang/String; = "LAST-MODIFIED"

.field private static final ICAL_RDATE:Ljava/lang/String; = "RDATE"

.field private static final ICAL_RRULE:Ljava/lang/String; = "RRULE"

.field private static final ICAL_STANDARD:Ljava/lang/String; = "STANDARD"

.field private static final ICAL_TZID:Ljava/lang/String; = "TZID"

.field private static final ICAL_TZNAME:Ljava/lang/String; = "TZNAME"

.field private static final ICAL_TZOFFSETFROM:Ljava/lang/String; = "TZOFFSETFROM"

.field private static final ICAL_TZOFFSETTO:Ljava/lang/String; = "TZOFFSETTO"

.field private static final ICAL_TZURL:Ljava/lang/String; = "TZURL"

.field private static final ICAL_UNTIL:Ljava/lang/String; = "UNTIL"

.field private static final ICAL_VTIMEZONE:Ljava/lang/String; = "VTIMEZONE"

.field private static final ICAL_YEARLY:Ljava/lang/String; = "YEARLY"

.field private static final ICU_TZINFO_PROP:Ljava/lang/String; = "X-TZINFO"

.field private static ICU_TZVERSION:Ljava/lang/String; = null

.field private static final INI:I = 0x0

.field private static final MAX_TIME:J = 0x7fffffffffffffffL

.field private static final MIN_TIME:J = -0x8000000000000000L

.field private static final MONTHLENGTH:[I

.field private static final NEWLINE:Ljava/lang/String; = "\r\n"

.field private static final SEMICOLON:Ljava/lang/String; = ";"

.field private static final TZI:I = 0x2

.field private static final VTZ:I = 0x1

.field private static final serialVersionUID:J = -0x5f154d3410b1aebeL


# instance fields
.field private volatile transient isFrozen:Z

.field private lastmod:Ljava/util/Date;

.field private olsonzid:Ljava/lang/String;

.field private tz:Landroid/icu/util/BasicTimeZone;

.field private tzurl:Ljava/lang/String;

.field private vtzlines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const-class v1, Landroid/icu/util/VTimeZone;

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    move v1, v2

    #@b
    :goto_0
    sput-boolean v1, Landroid/icu/util/VTimeZone;->-assertionsDisabled:Z

    #@d
    .line 443
    const/4 v1, 0x7

    #@e
    new-array v1, v1, [Ljava/lang/String;

    #@10
    const-string/jumbo v4, "SU"

    #@13
    aput-object v4, v1, v2

    #@15
    const-string/jumbo v2, "MO"

    #@18
    aput-object v2, v1, v3

    #@1a
    const-string/jumbo v2, "TU"

    #@1d
    const/4 v3, 0x2

    #@1e
    aput-object v2, v1, v3

    #@20
    const-string/jumbo v2, "WE"

    #@23
    const/4 v3, 0x3

    #@24
    aput-object v2, v1, v3

    #@26
    const-string/jumbo v2, "TH"

    #@29
    const/4 v3, 0x4

    #@2a
    aput-object v2, v1, v3

    #@2c
    const-string/jumbo v2, "FR"

    #@2f
    const/4 v3, 0x5

    #@30
    aput-object v2, v1, v3

    #@32
    const-string/jumbo v2, "SA"

    #@35
    const/4 v3, 0x6

    #@36
    aput-object v2, v1, v3

    #@38
    .line 442
    sput-object v1, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    #@3a
    .line 446
    const/16 v1, 0xc

    #@3c
    new-array v1, v1, [I

    #@3e
    fill-array-data v1, :array_0

    #@41
    sput-object v1, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@43
    .line 451
    :try_start_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    sput-object v1, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 36
    .local v0, "e":Ljava/util/MissingResourceException;
    :goto_1
    return-void

    #@4a
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_0
    move v1, v3

    #@4b
    goto :goto_0

    #@4c
    .line 452
    :catch_0
    move-exception v0

    #@4d
    .line 454
    .restart local v0    # "e":Ljava/util/MissingResourceException;
    const/4 v1, 0x0

    #@4e
    sput-object v1, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    #@50
    goto :goto_1

    #@51
    .line 446
    nop

    #@52
    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 460
    invoke-direct {p0}, Landroid/icu/util/BasicTimeZone;-><init>()V

    #@4
    .line 393
    iput-object v0, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    #@6
    .line 394
    iput-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    #@8
    .line 395
    iput-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    #@a
    .line 2098
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    #@d
    .line 460
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tzid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 464
    invoke-direct {p0, p1}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    #@4
    .line 393
    iput-object v0, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    #@6
    .line 394
    iput-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    #@8
    .line 395
    iput-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    #@a
    .line 2098
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    #@d
    .line 463
    return-void
.end method

.method private static appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "until"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1869
    if-eqz p1, :cond_0

    #@2
    .line 1870
    const-string/jumbo v0, ";"

    #@5
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@8
    .line 1871
    const-string/jumbo v0, "UNTIL"

    #@b
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@e
    .line 1872
    const-string/jumbo v0, "="

    #@11
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@14
    .line 1873
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@17
    .line 1868
    :cond_0
    return-void
.end method

.method private static beginRRULE(Ljava/io/Writer;I)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "month"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1853
    const-string/jumbo v0, "RRULE"

    #@3
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6
    .line 1854
    const-string/jumbo v0, ":"

    #@9
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@c
    .line 1855
    const-string/jumbo v0, "FREQ"

    #@f
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@12
    .line 1856
    const-string/jumbo v0, "="

    #@15
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@18
    .line 1857
    const-string/jumbo v0, "YEARLY"

    #@1b
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1e
    .line 1858
    const-string/jumbo v0, ";"

    #@21
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@24
    .line 1859
    const-string/jumbo v0, "BYMONTH"

    #@27
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@2a
    .line 1860
    const-string/jumbo v0, "="

    #@2d
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@30
    .line 1861
    add-int/lit8 v0, p1, 0x1

    #@32
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@39
    .line 1862
    const-string/jumbo v0, ";"

    #@3c
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@3f
    .line 1852
    return-void
.end method

.method private static beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V
    .locals 3
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "isDst"    # Z
    .param p2, "tzname"    # Ljava/lang/String;
    .param p3, "fromOffset"    # I
    .param p4, "toOffset"    # I
    .param p5, "startTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1800
    const-string/jumbo v0, "BEGIN"

    #@3
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6
    .line 1801
    const-string/jumbo v0, ":"

    #@9
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@c
    .line 1802
    if-eqz p1, :cond_0

    #@e
    .line 1803
    const-string/jumbo v0, "DAYLIGHT"

    #@11
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@14
    .line 1807
    :goto_0
    const-string/jumbo v0, "\r\n"

    #@17
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1a
    .line 1810
    const-string/jumbo v0, "TZOFFSETTO"

    #@1d
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@20
    .line 1811
    const-string/jumbo v0, ":"

    #@23
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@26
    .line 1812
    invoke-static {p4}, Landroid/icu/util/VTimeZone;->millisToOffset(I)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@2d
    .line 1813
    const-string/jumbo v0, "\r\n"

    #@30
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@33
    .line 1816
    const-string/jumbo v0, "TZOFFSETFROM"

    #@36
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@39
    .line 1817
    const-string/jumbo v0, ":"

    #@3c
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@3f
    .line 1818
    invoke-static {p3}, Landroid/icu/util/VTimeZone;->millisToOffset(I)Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@46
    .line 1819
    const-string/jumbo v0, "\r\n"

    #@49
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@4c
    .line 1822
    const-string/jumbo v0, "TZNAME"

    #@4f
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@52
    .line 1823
    const-string/jumbo v0, ":"

    #@55
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@58
    .line 1824
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@5b
    .line 1825
    const-string/jumbo v0, "\r\n"

    #@5e
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@61
    .line 1828
    const-string/jumbo v0, "DTSTART"

    #@64
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@67
    .line 1829
    const-string/jumbo v0, ":"

    #@6a
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6d
    .line 1830
    int-to-long v0, p3

    #@6e
    add-long/2addr v0, p5

    #@6f
    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@76
    .line 1831
    const-string/jumbo v0, "\r\n"

    #@79
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@7c
    .line 1799
    return-void

    #@7d
    .line 1805
    :cond_0
    const-string/jumbo v0, "STANDARD"

    #@80
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@83
    goto :goto_0
.end method

.method public static create(Ljava/io/Reader;)Landroid/icu/util/VTimeZone;
    .locals 2
    .param p0, "reader"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 67
    new-instance v0, Landroid/icu/util/VTimeZone;

    #@2
    invoke-direct {v0}, Landroid/icu/util/VTimeZone;-><init>()V

    #@5
    .line 68
    .local v0, "vtz":Landroid/icu/util/VTimeZone;
    invoke-direct {v0, p0}, Landroid/icu/util/VTimeZone;->load(Ljava/io/Reader;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 69
    return-object v0

    #@c
    .line 71
    :cond_0
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public static create(Ljava/lang/String;)Landroid/icu/util/VTimeZone;
    .locals 2
    .param p0, "tzid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    new-instance v0, Landroid/icu/util/VTimeZone;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/VTimeZone;-><init>(Ljava/lang/String;)V

    #@5
    .line 51
    .local v0, "vtz":Landroid/icu/util/VTimeZone;
    const/4 v1, 0x0

    #@6
    invoke-static {p0, v1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;I)Landroid/icu/util/TimeZone;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/icu/util/BasicTimeZone;

    #@c
    iput-object v1, v0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@e
    .line 52
    iget-object v1, v0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@10
    invoke-virtual {v1}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, v0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    #@16
    .line 54
    return-object v0
.end method

.method private static createRuleByRDATE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;
    .locals 13
    .param p0, "tzname"    # Ljava/lang/String;
    .param p1, "rawOffset"    # I
    .param p2, "dstSavings"    # I
    .param p3, "start"    # J
    .param p6, "fromOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/icu/util/TimeZoneRule;"
        }
    .end annotation

    #@0
    .prologue
    .line 1219
    .local p5, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    #@2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_2

    #@8
    .line 1222
    :cond_0
    const/4 v2, 0x1

    #@9
    new-array v6, v2, [J

    #@b
    .line 1223
    .local v6, "times":[J
    const/4 v2, 0x0

    #@c
    aput-wide p3, v6, v2

    #@e
    .line 1235
    :cond_1
    new-instance v2, Landroid/icu/util/TimeArrayTimeZoneRule;

    #@10
    const/4 v7, 0x2

    #@11
    move-object v3, p0

    #@12
    move v4, p1

    #@13
    move v5, p2

    #@14
    invoke-direct/range {v2 .. v7}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    #@17
    return-object v2

    #@18
    .line 1225
    .end local v6    # "times":[J
    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    #@1b
    move-result v2

    #@1c
    new-array v6, v2, [J

    #@1e
    .line 1226
    .restart local v6    # "times":[J
    const/4 v11, 0x0

    #@1f
    .line 1228
    .local v11, "idx":I
    :try_start_0
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v9

    #@23
    .local v9, "date$iterator":Ljava/util/Iterator;
    move v12, v11

    #@24
    .end local v11    # "idx":I
    .local v12, "idx":I
    :goto_0
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_1

    #@2a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v8

    #@2e
    check-cast v8, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@30
    .line 1229
    .local v8, "date":Ljava/lang/String;
    add-int/lit8 v11, v12, 0x1

    #@32
    .end local v12    # "idx":I
    .restart local v11    # "idx":I
    :try_start_2
    move/from16 v0, p6

    #@34
    invoke-static {v8, v0}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    #@37
    move-result-wide v2

    #@38
    aput-wide v2, v6, v12
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    #@3a
    move v12, v11

    #@3b
    .end local v11    # "idx":I
    .restart local v12    # "idx":I
    goto :goto_0

    #@3c
    .line 1231
    .end local v8    # "date":Ljava/lang/String;
    .end local v9    # "date$iterator":Ljava/util/Iterator;
    .end local v12    # "idx":I
    .restart local v11    # "idx":I
    :catch_0
    move-exception v10

    #@3d
    .line 1232
    .local v10, "iae":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v2, 0x0

    #@3e
    return-object v2

    #@3f
    .line 1231
    .end local v10    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v11    # "idx":I
    .restart local v9    # "date$iterator":Ljava/util/Iterator;
    .restart local v12    # "idx":I
    :catch_1
    move-exception v10

    #@40
    .restart local v10    # "iae":Ljava/lang/IllegalArgumentException;
    move v11, v12

    #@41
    .end local v12    # "idx":I
    .restart local v11    # "idx":I
    goto :goto_1
.end method

.method private static createRuleByRRULE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;
    .locals 35
    .param p0, "tzname"    # Ljava/lang/String;
    .param p1, "rawOffset"    # I
    .param p2, "dstSavings"    # I
    .param p3, "start"    # J
    .param p6, "fromOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/icu/util/TimeZoneRule;"
        }
    .end annotation

    #@0
    .prologue
    .line 859
    .local p5, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    #@2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    #@5
    move-result v7

    #@6
    if-nez v7, :cond_1

    #@8
    .line 860
    :cond_0
    const/4 v7, 0x0

    #@9
    return-object v7

    #@a
    .line 863
    :cond_1
    const/4 v7, 0x0

    #@b
    move-object/from16 v0, p5

    #@d
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v31

    #@11
    check-cast v31, Ljava/lang/String;

    #@13
    .line 865
    .local v31, "rrule":Ljava/lang/String;
    const/4 v7, 0x1

    #@14
    new-array v0, v7, [J

    #@16
    move-object/from16 v34, v0

    #@18
    .line 866
    .local v34, "until":[J
    move-object/from16 v0, v31

    #@1a
    move-object/from16 v1, v34

    #@1c
    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->parseRRULE(Ljava/lang/String;[J)[I

    #@1f
    move-result-object v32

    #@20
    .line 867
    .local v32, "ruleFields":[I
    if-nez v32, :cond_2

    #@22
    .line 869
    const/4 v7, 0x0

    #@23
    return-object v7

    #@24
    .line 872
    :cond_2
    const/4 v7, 0x0

    #@25
    aget v3, v32, v7

    #@27
    .line 873
    .local v3, "month":I
    const/4 v7, 0x1

    #@28
    aget v5, v32, v7

    #@2a
    .line 874
    .local v5, "dayOfWeek":I
    const/4 v7, 0x2

    #@2b
    aget v4, v32, v7

    #@2d
    .line 875
    .local v4, "nthDayOfWeek":I
    const/4 v7, 0x3

    #@2e
    aget v9, v32, v7

    #@30
    .line 877
    .local v9, "dayOfMonth":I
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    #@33
    move-result v7

    #@34
    const/4 v8, 0x1

    #@35
    if-ne v7, v8, :cond_10

    #@37
    .line 879
    move-object/from16 v0, v32

    #@39
    array-length v7, v0

    #@3a
    const/4 v8, 0x4

    #@3b
    if-le v7, v8, :cond_c

    #@3d
    .line 882
    move-object/from16 v0, v32

    #@3f
    array-length v7, v0

    #@40
    const/16 v8, 0xa

    #@42
    if-ne v7, v8, :cond_3

    #@44
    const/4 v7, -0x1

    #@45
    if-ne v3, v7, :cond_4

    #@47
    .line 885
    :cond_3
    const/4 v7, 0x0

    #@48
    return-object v7

    #@49
    .line 882
    :cond_4
    if-eqz v5, :cond_3

    #@4b
    .line 887
    const/16 v27, 0x1f

    #@4d
    .line 888
    .local v27, "firstDay":I
    const/4 v7, 0x7

    #@4e
    new-array v0, v7, [I

    #@50
    move-object/from16 v19, v0

    #@52
    .line 889
    .local v19, "days":[I
    const/16 v29, 0x0

    #@54
    .local v29, "i":I
    :goto_0
    const/4 v7, 0x7

    #@55
    move/from16 v0, v29

    #@57
    if-ge v0, v7, :cond_7

    #@59
    .line 890
    add-int/lit8 v7, v29, 0x3

    #@5b
    aget v7, v32, v7

    #@5d
    aput v7, v19, v29

    #@5f
    .line 894
    aget v7, v19, v29

    #@61
    if-lez v7, :cond_6

    #@63
    aget v7, v19, v29

    #@65
    :goto_1
    aput v7, v19, v29

    #@67
    .line 895
    aget v7, v19, v29

    #@69
    move/from16 v0, v27

    #@6b
    if-ge v7, v0, :cond_5

    #@6d
    aget v27, v19, v29

    #@6f
    .line 889
    :cond_5
    add-int/lit8 v29, v29, 0x1

    #@71
    goto :goto_0

    #@72
    .line 894
    :cond_6
    sget-object v7, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@74
    aget v7, v7, v3

    #@76
    aget v8, v19, v29

    #@78
    add-int/2addr v7, v8

    #@79
    add-int/lit8 v7, v7, 0x1

    #@7b
    goto :goto_1

    #@7c
    .line 898
    :cond_7
    const/16 v29, 0x1

    #@7e
    :goto_2
    const/4 v7, 0x7

    #@7f
    move/from16 v0, v29

    #@81
    if-ge v0, v7, :cond_b

    #@83
    .line 899
    const/16 v28, 0x0

    #@85
    .line 900
    .local v28, "found":Z
    const/16 v30, 0x0

    #@87
    .local v30, "j":I
    :goto_3
    const/4 v7, 0x7

    #@88
    move/from16 v0, v30

    #@8a
    if-ge v0, v7, :cond_8

    #@8c
    .line 901
    aget v7, v19, v30

    #@8e
    add-int v8, v27, v29

    #@90
    if-ne v7, v8, :cond_9

    #@92
    .line 902
    const/16 v28, 0x1

    #@94
    .line 906
    :cond_8
    if-nez v28, :cond_a

    #@96
    .line 908
    const/4 v7, 0x0

    #@97
    return-object v7

    #@98
    .line 900
    :cond_9
    add-int/lit8 v30, v30, 0x1

    #@9a
    goto :goto_3

    #@9b
    .line 898
    :cond_a
    add-int/lit8 v29, v29, 0x1

    #@9d
    goto :goto_2

    #@9e
    .line 912
    .end local v28    # "found":Z
    .end local v30    # "j":I
    :cond_b
    move/from16 v9, v27

    #@a0
    .line 1007
    .end local v19    # "days":[I
    .end local v27    # "firstDay":I
    .end local v29    # "i":I
    :cond_c
    :goto_4
    move/from16 v0, p6

    #@a2
    int-to-long v10, v0

    #@a3
    add-long v10, v10, p3

    #@a5
    const/4 v7, 0x0

    #@a6
    invoke-static {v10, v11, v7}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@a9
    move-result-object v21

    #@aa
    .line 1008
    .local v21, "dfields":[I
    const/4 v7, 0x0

    #@ab
    aget v15, v21, v7

    #@ad
    .line 1009
    .local v15, "startYear":I
    const/4 v7, -0x1

    #@ae
    if-ne v3, v7, :cond_d

    #@b0
    .line 1011
    const/4 v7, 0x1

    #@b1
    aget v3, v21, v7

    #@b3
    .line 1013
    :cond_d
    if-nez v5, :cond_e

    #@b5
    if-nez v4, :cond_e

    #@b7
    if-nez v9, :cond_e

    #@b9
    .line 1015
    const/4 v7, 0x2

    #@ba
    aget v9, v21, v7

    #@bc
    .line 1017
    :cond_e
    const/4 v7, 0x5

    #@bd
    aget v6, v21, v7

    #@bf
    .line 1019
    .local v6, "timeInDay":I
    const v16, 0x7fffffff

    #@c2
    .line 1020
    .local v16, "endYear":I
    const/4 v7, 0x0

    #@c3
    aget-wide v10, v34, v7

    #@c5
    const-wide/high16 v12, -0x8000000000000000L

    #@c7
    cmp-long v7, v10, v12

    #@c9
    if-eqz v7, :cond_f

    #@cb
    .line 1021
    const/4 v7, 0x0

    #@cc
    aget-wide v10, v34, v7

    #@ce
    move-object/from16 v0, v21

    #@d0
    invoke-static {v10, v11, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@d3
    .line 1022
    const/4 v7, 0x0

    #@d4
    aget v16, v21, v7

    #@d6
    .line 1026
    :cond_f
    const/4 v2, 0x0

    #@d7
    .line 1027
    .local v2, "adtr":Landroid/icu/util/DateTimeRule;
    if-nez v5, :cond_27

    #@d9
    if-nez v4, :cond_27

    #@db
    if-eqz v9, :cond_27

    #@dd
    .line 1029
    new-instance v2, Landroid/icu/util/DateTimeRule;

    #@df
    .end local v2    # "adtr":Landroid/icu/util/DateTimeRule;
    const/4 v7, 0x0

    #@e0
    invoke-direct {v2, v3, v9, v6, v7}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    #@e3
    .line 1042
    .local v2, "adtr":Landroid/icu/util/DateTimeRule;
    :goto_5
    new-instance v10, Landroid/icu/util/AnnualTimeZoneRule;

    #@e5
    move-object/from16 v11, p0

    #@e7
    move/from16 v12, p1

    #@e9
    move/from16 v13, p2

    #@eb
    move-object v14, v2

    #@ec
    invoke-direct/range {v10 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    #@ef
    return-object v10

    #@f0
    .line 917
    .end local v2    # "adtr":Landroid/icu/util/DateTimeRule;
    .end local v6    # "timeInDay":I
    .end local v15    # "startYear":I
    .end local v16    # "endYear":I
    .end local v21    # "dfields":[I
    :cond_10
    const/4 v7, -0x1

    #@f1
    if-eq v3, v7, :cond_11

    #@f3
    if-nez v5, :cond_12

    #@f5
    .line 919
    :cond_11
    const/4 v7, 0x0

    #@f6
    return-object v7

    #@f7
    .line 917
    :cond_12
    if-eqz v9, :cond_11

    #@f9
    .line 923
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    #@fc
    move-result v7

    #@fd
    const/4 v8, 0x7

    #@fe
    if-le v7, v8, :cond_13

    #@100
    .line 924
    const/4 v7, 0x0

    #@101
    return-object v7

    #@102
    .line 931
    :cond_13
    move/from16 v25, v3

    #@104
    .line 932
    .local v25, "earliestMonth":I
    move-object/from16 v0, v32

    #@106
    array-length v7, v0

    #@107
    add-int/lit8 v20, v7, -0x3

    #@109
    .line 933
    .local v20, "daysCount":I
    const/16 v24, 0x1f

    #@10b
    .line 934
    .local v24, "earliestDay":I
    const/16 v29, 0x0

    #@10d
    .restart local v29    # "i":I
    :goto_6
    move/from16 v0, v29

    #@10f
    move/from16 v1, v20

    #@111
    if-ge v0, v1, :cond_16

    #@113
    .line 935
    add-int/lit8 v7, v29, 0x3

    #@115
    aget v23, v32, v7

    #@117
    .line 936
    .local v23, "dom":I
    if-lez v23, :cond_15

    #@119
    .line 937
    :goto_7
    move/from16 v0, v23

    #@11b
    move/from16 v1, v24

    #@11d
    if-ge v0, v1, :cond_14

    #@11f
    move/from16 v24, v23

    #@121
    .line 934
    :cond_14
    add-int/lit8 v29, v29, 0x1

    #@123
    goto :goto_6

    #@124
    .line 936
    :cond_15
    sget-object v7, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@126
    aget v7, v7, v3

    #@128
    add-int v7, v7, v23

    #@12a
    add-int/lit8 v23, v7, 0x1

    #@12c
    goto :goto_7

    #@12d
    .line 940
    .end local v23    # "dom":I
    :cond_16
    const/16 v17, -0x1

    #@12f
    .line 941
    .local v17, "anotherMonth":I
    const/16 v29, 0x1

    #@131
    :goto_8
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    #@134
    move-result v7

    #@135
    move/from16 v0, v29

    #@137
    if-ge v0, v7, :cond_25

    #@139
    .line 942
    move-object/from16 v0, p5

    #@13b
    move/from16 v1, v29

    #@13d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@140
    move-result-object v31

    #@141
    .end local v31    # "rrule":Ljava/lang/String;
    check-cast v31, Ljava/lang/String;

    #@143
    .line 943
    .restart local v31    # "rrule":Ljava/lang/String;
    const/4 v7, 0x1

    #@144
    new-array v0, v7, [J

    #@146
    move-object/from16 v33, v0

    #@148
    .line 944
    .local v33, "unt":[J
    move-object/from16 v0, v31

    #@14a
    move-object/from16 v1, v33

    #@14c
    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->parseRRULE(Ljava/lang/String;[J)[I

    #@14f
    move-result-object v26

    #@150
    .line 947
    .local v26, "fields":[I
    const/4 v7, 0x0

    #@151
    aget-wide v10, v33, v7

    #@153
    const/4 v7, 0x0

    #@154
    aget-wide v12, v34, v7

    #@156
    cmp-long v7, v10, v12

    #@158
    if-lez v7, :cond_17

    #@15a
    .line 948
    move-object/from16 v34, v33

    #@15c
    .line 952
    :cond_17
    const/4 v7, 0x0

    #@15d
    aget v7, v26, v7

    #@15f
    const/4 v8, -0x1

    #@160
    if-eq v7, v8, :cond_18

    #@162
    const/4 v7, 0x1

    #@163
    aget v7, v26, v7

    #@165
    if-nez v7, :cond_19

    #@167
    .line 953
    :cond_18
    const/4 v7, 0x0

    #@168
    return-object v7

    #@169
    .line 952
    :cond_19
    const/4 v7, 0x3

    #@16a
    aget v7, v26, v7

    #@16c
    if-eqz v7, :cond_18

    #@16e
    .line 956
    move-object/from16 v0, v26

    #@170
    array-length v7, v0

    #@171
    add-int/lit8 v18, v7, -0x3

    #@173
    .line 957
    .local v18, "count":I
    add-int v7, v20, v18

    #@175
    const/4 v8, 0x7

    #@176
    if-le v7, v8, :cond_1a

    #@178
    .line 959
    const/4 v7, 0x0

    #@179
    return-object v7

    #@17a
    .line 963
    :cond_1a
    const/4 v7, 0x1

    #@17b
    aget v7, v26, v7

    #@17d
    if-eq v7, v5, :cond_1b

    #@17f
    .line 964
    const/4 v7, 0x0

    #@180
    return-object v7

    #@181
    .line 967
    :cond_1b
    const/4 v7, 0x0

    #@182
    aget v7, v26, v7

    #@184
    if-eq v7, v3, :cond_1d

    #@186
    .line 968
    const/4 v7, -0x1

    #@187
    move/from16 v0, v17

    #@189
    if-ne v0, v7, :cond_22

    #@18b
    .line 969
    const/4 v7, 0x0

    #@18c
    aget v7, v26, v7

    #@18e
    sub-int v22, v7, v3

    #@190
    .line 970
    .local v22, "diff":I
    const/16 v7, -0xb

    #@192
    move/from16 v0, v22

    #@194
    if-eq v0, v7, :cond_1c

    #@196
    const/4 v7, -0x1

    #@197
    move/from16 v0, v22

    #@199
    if-ne v0, v7, :cond_1f

    #@19b
    .line 972
    :cond_1c
    const/4 v7, 0x0

    #@19c
    aget v17, v26, v7

    #@19e
    .line 973
    move/from16 v25, v17

    #@1a0
    .line 975
    const/16 v24, 0x1f

    #@1a2
    .line 989
    .end local v22    # "diff":I
    :cond_1d
    :goto_9
    const/4 v7, 0x0

    #@1a3
    aget v7, v26, v7

    #@1a5
    move/from16 v0, v25

    #@1a7
    if-ne v7, v0, :cond_24

    #@1a9
    .line 990
    const/16 v30, 0x0

    #@1ab
    .restart local v30    # "j":I
    :goto_a
    move/from16 v0, v30

    #@1ad
    move/from16 v1, v18

    #@1af
    if-ge v0, v1, :cond_24

    #@1b1
    .line 991
    add-int/lit8 v7, v30, 0x3

    #@1b3
    aget v23, v26, v7

    #@1b5
    .line 992
    .restart local v23    # "dom":I
    if-lez v23, :cond_23

    #@1b7
    .line 993
    :goto_b
    move/from16 v0, v23

    #@1b9
    move/from16 v1, v24

    #@1bb
    if-ge v0, v1, :cond_1e

    #@1bd
    move/from16 v24, v23

    #@1bf
    .line 990
    :cond_1e
    add-int/lit8 v30, v30, 0x1

    #@1c1
    goto :goto_a

    #@1c2
    .line 976
    .end local v23    # "dom":I
    .end local v30    # "j":I
    .restart local v22    # "diff":I
    :cond_1f
    const/16 v7, 0xb

    #@1c4
    move/from16 v0, v22

    #@1c6
    if-eq v0, v7, :cond_20

    #@1c8
    const/4 v7, 0x1

    #@1c9
    move/from16 v0, v22

    #@1cb
    if-ne v0, v7, :cond_21

    #@1cd
    .line 978
    :cond_20
    const/4 v7, 0x0

    #@1ce
    aget v17, v26, v7

    #@1d0
    goto :goto_9

    #@1d1
    .line 981
    :cond_21
    const/4 v7, 0x0

    #@1d2
    return-object v7

    #@1d3
    .line 983
    .end local v22    # "diff":I
    :cond_22
    const/4 v7, 0x0

    #@1d4
    aget v7, v26, v7

    #@1d6
    if-eq v7, v3, :cond_1d

    #@1d8
    const/4 v7, 0x0

    #@1d9
    aget v7, v26, v7

    #@1db
    move/from16 v0, v17

    #@1dd
    if-eq v7, v0, :cond_1d

    #@1df
    .line 985
    const/4 v7, 0x0

    #@1e0
    return-object v7

    #@1e1
    .line 992
    .restart local v23    # "dom":I
    .restart local v30    # "j":I
    :cond_23
    sget-object v7, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@1e3
    const/4 v8, 0x0

    #@1e4
    aget v8, v26, v8

    #@1e6
    aget v7, v7, v8

    #@1e8
    add-int v7, v7, v23

    #@1ea
    add-int/lit8 v23, v7, 0x1

    #@1ec
    goto :goto_b

    #@1ed
    .line 996
    .end local v23    # "dom":I
    .end local v30    # "j":I
    :cond_24
    add-int v20, v20, v18

    #@1ef
    .line 941
    add-int/lit8 v29, v29, 0x1

    #@1f1
    goto/16 :goto_8

    #@1f3
    .line 998
    .end local v18    # "count":I
    .end local v26    # "fields":[I
    .end local v33    # "unt":[J
    :cond_25
    const/4 v7, 0x7

    #@1f4
    move/from16 v0, v20

    #@1f6
    if-eq v0, v7, :cond_26

    #@1f8
    .line 1000
    const/4 v7, 0x0

    #@1f9
    return-object v7

    #@1fa
    .line 1002
    :cond_26
    move/from16 v3, v25

    #@1fc
    .line 1003
    move/from16 v9, v24

    #@1fe
    goto/16 :goto_4

    #@200
    .line 1030
    .end local v17    # "anotherMonth":I
    .end local v20    # "daysCount":I
    .end local v24    # "earliestDay":I
    .end local v25    # "earliestMonth":I
    .end local v29    # "i":I
    .local v2, "adtr":Landroid/icu/util/DateTimeRule;
    .restart local v6    # "timeInDay":I
    .restart local v15    # "startYear":I
    .restart local v16    # "endYear":I
    .restart local v21    # "dfields":[I
    :cond_27
    if-eqz v5, :cond_28

    #@202
    if-eqz v4, :cond_28

    #@204
    if-nez v9, :cond_28

    #@206
    .line 1032
    new-instance v2, Landroid/icu/util/DateTimeRule;

    #@208
    .end local v2    # "adtr":Landroid/icu/util/DateTimeRule;
    const/4 v7, 0x0

    #@209
    invoke-direct/range {v2 .. v7}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    #@20c
    .line 1030
    .local v2, "adtr":Landroid/icu/util/DateTimeRule;
    goto/16 :goto_5

    #@20e
    .line 1033
    .local v2, "adtr":Landroid/icu/util/DateTimeRule;
    :cond_28
    if-eqz v5, :cond_29

    #@210
    if-nez v4, :cond_29

    #@212
    if-eqz v9, :cond_29

    #@214
    .line 1036
    new-instance v2, Landroid/icu/util/DateTimeRule;

    #@216
    .end local v2    # "adtr":Landroid/icu/util/DateTimeRule;
    const/4 v11, 0x1

    #@217
    const/4 v13, 0x0

    #@218
    move-object v7, v2

    #@219
    move v8, v3

    #@21a
    move v10, v5

    #@21b
    move v12, v6

    #@21c
    invoke-direct/range {v7 .. v13}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    #@21f
    .line 1033
    .local v2, "adtr":Landroid/icu/util/DateTimeRule;
    goto/16 :goto_5

    #@221
    .line 1039
    .local v2, "adtr":Landroid/icu/util/DateTimeRule;
    :cond_29
    const/4 v7, 0x0

    #@222
    return-object v7
.end method

.method private static endZoneProps(Ljava/io/Writer;Z)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "isDst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1839
    const-string/jumbo v0, "END"

    #@3
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6
    .line 1840
    const-string/jumbo v0, ":"

    #@9
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@c
    .line 1841
    if-eqz p1, :cond_0

    #@e
    .line 1842
    const-string/jumbo v0, "DAYLIGHT"

    #@11
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@14
    .line 1846
    :goto_0
    const-string/jumbo v0, "\r\n"

    #@17
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1a
    .line 1837
    return-void

    #@1b
    .line 1844
    :cond_0
    const-string/jumbo v0, "STANDARD"

    #@1e
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@21
    goto :goto_0
.end method

.method private static getDateTimeString(J)Ljava/lang/String;
    .locals 12
    .param p0, "time"    # J

    #@0
    .prologue
    const v10, 0x36ee80

    #@3
    const v9, 0xea60

    #@6
    const/4 v8, 0x2

    #@7
    .line 1917
    const/4 v6, 0x0

    #@8
    invoke-static {p0, p1, v6}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@b
    move-result-object v0

    #@c
    .line 1918
    .local v0, "fields":[I
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    const/16 v6, 0xf

    #@10
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    .line 1919
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    #@14
    aget v6, v0, v6

    #@16
    const/4 v7, 0x4

    #@17
    invoke-static {v6, v7}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 1920
    const/4 v6, 0x1

    #@1f
    aget v6, v0, v6

    #@21
    add-int/lit8 v6, v6, 0x1

    #@23
    invoke-static {v6, v8}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 1921
    aget v6, v0, v8

    #@2c
    invoke-static {v6, v8}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 1922
    const/16 v6, 0x54

    #@35
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    .line 1924
    const/4 v6, 0x5

    #@39
    aget v5, v0, v6

    #@3b
    .line 1925
    .local v5, "t":I
    div-int v1, v5, v10

    #@3d
    .line 1926
    .local v1, "hour":I
    rem-int/2addr v5, v10

    #@3e
    .line 1927
    div-int v2, v5, v9

    #@40
    .line 1928
    .local v2, "min":I
    rem-int/2addr v5, v9

    #@41
    .line 1929
    div-int/lit16 v4, v5, 0x3e8

    #@43
    .line 1931
    .local v4, "sec":I
    invoke-static {v1, v8}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 1932
    invoke-static {v2, v8}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 1933
    invoke-static {v4, v8}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 1934
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    return-object v6
.end method

.method private static getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "tzid"    # Ljava/lang/String;
    .param p1, "isDST"    # Z

    #@0
    .prologue
    .line 848
    if-eqz p1, :cond_0

    #@2
    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "(DST)"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 851
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, "(STD)"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method private static getUTCDateTimeString(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    #@0
    .prologue
    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "Z"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private static isEquivalentDateRule(IIILandroid/icu/util/DateTimeRule;)Z
    .locals 5
    .param p0, "month"    # I
    .param p1, "weekInMonth"    # I
    .param p2, "dayOfWeek"    # I
    .param p3, "dtrule"    # Landroid/icu/util/DateTimeRule;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 1486
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    #@5
    move-result v1

    #@6
    if-ne p0, v1, :cond_0

    #@8
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    #@b
    move-result v1

    #@c
    if-eq p2, v1, :cond_1

    #@e
    .line 1487
    :cond_0
    return v4

    #@f
    .line 1489
    :cond_1
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 1491
    return v4

    #@16
    .line 1493
    :cond_2
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    #@19
    move-result v1

    #@1a
    if-ne v1, v3, :cond_3

    #@1c
    .line 1494
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    #@1f
    move-result v1

    #@20
    if-ne v1, p1, :cond_3

    #@22
    .line 1495
    return v3

    #@23
    .line 1497
    :cond_3
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    #@26
    move-result v0

    #@27
    .line 1498
    .local v0, "ruleDOM":I
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    #@2a
    move-result v1

    #@2b
    const/4 v2, 0x2

    #@2c
    if-ne v1, v2, :cond_5

    #@2e
    .line 1499
    rem-int/lit8 v1, v0, 0x7

    #@30
    if-ne v1, v3, :cond_4

    #@32
    add-int/lit8 v1, v0, 0x6

    #@34
    div-int/lit8 v1, v1, 0x7

    #@36
    if-ne v1, p1, :cond_4

    #@38
    .line 1500
    return v3

    #@39
    .line 1502
    :cond_4
    if-eq p0, v3, :cond_5

    #@3b
    sget-object v1, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@3d
    aget v1, v1, p0

    #@3f
    sub-int/2addr v1, v0

    #@40
    rem-int/lit8 v1, v1, 0x7

    #@42
    const/4 v2, 0x6

    #@43
    if-ne v1, v2, :cond_5

    #@45
    .line 1503
    sget-object v1, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@47
    aget v1, v1, p0

    #@49
    sub-int/2addr v1, v0

    #@4a
    add-int/lit8 v1, v1, 0x1

    #@4c
    div-int/lit8 v1, v1, 0x7

    #@4e
    mul-int/lit8 v1, v1, -0x1

    #@50
    if-ne p1, v1, :cond_5

    #@52
    .line 1504
    return v3

    #@53
    .line 1507
    :cond_5
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    #@56
    move-result v1

    #@57
    const/4 v2, 0x3

    #@58
    if-ne v1, v2, :cond_7

    #@5a
    .line 1508
    rem-int/lit8 v1, v0, 0x7

    #@5c
    if-nez v1, :cond_6

    #@5e
    div-int/lit8 v1, v0, 0x7

    #@60
    if-ne v1, p1, :cond_6

    #@62
    .line 1509
    return v3

    #@63
    .line 1511
    :cond_6
    if-eq p0, v3, :cond_7

    #@65
    sget-object v1, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@67
    aget v1, v1, p0

    #@69
    sub-int/2addr v1, v0

    #@6a
    rem-int/lit8 v1, v1, 0x7

    #@6c
    if-nez v1, :cond_7

    #@6e
    .line 1512
    sget-object v1, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@70
    aget v1, v1, p0

    #@72
    sub-int/2addr v1, v0

    #@73
    div-int/lit8 v1, v1, 0x7

    #@75
    add-int/lit8 v1, v1, 0x1

    #@77
    mul-int/lit8 v1, v1, -0x1

    #@79
    if-ne p1, v1, :cond_7

    #@7b
    .line 1513
    return v3

    #@7c
    .line 1516
    :cond_7
    return v4
.end method

.method private load(Ljava/io/Reader;)Z
    .locals 10
    .param p1, "reader"    # Ljava/io/Reader;

    #@0
    .prologue
    const/16 v9, 0xa

    #@2
    const/4 v8, 0x0

    #@3
    .line 480
    :try_start_0
    new-instance v6, Ljava/util/LinkedList;

    #@5
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v6, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    #@a
    .line 481
    const/4 v1, 0x0

    #@b
    .line 482
    .local v1, "eol":Z
    const/4 v4, 0x0

    #@c
    .line 483
    .local v4, "start":Z
    const/4 v5, 0x0

    #@d
    .line 484
    .local v5, "success":Z
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    .line 486
    .local v3, "line":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    #@15
    move-result v0

    #@16
    .line 487
    .local v0, "ch":I
    const/4 v6, -0x1

    #@17
    if-ne v0, v6, :cond_2

    #@19
    .line 489
    if-eqz v4, :cond_1

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    const-string/jumbo v7, "END:VTIMEZONE"

    #@22
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_1

    #@28
    .line 490
    iget-object v6, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v7

    #@2e
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    .line 491
    const/4 v5, 0x1

    #@32
    .line 537
    :cond_1
    :goto_1
    if-nez v5, :cond_8

    #@34
    .line 538
    return v8

    #@35
    .line 495
    :cond_2
    const/16 v6, 0xd

    #@37
    if-eq v0, v6, :cond_0

    #@39
    .line 500
    if-eqz v1, :cond_5

    #@3b
    .line 501
    const/16 v6, 0x9

    #@3d
    if-eq v0, v6, :cond_4

    #@3f
    const/16 v6, 0x20

    #@41
    if-eq v0, v6, :cond_4

    #@43
    .line 503
    if-eqz v4, :cond_3

    #@45
    .line 504
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@48
    move-result v6

    #@49
    if-lez v6, :cond_3

    #@4b
    .line 505
    iget-object v6, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@54
    .line 508
    :cond_3
    const/4 v6, 0x0

    #@55
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@58
    .line 509
    if-eq v0, v9, :cond_4

    #@5a
    .line 510
    int-to-char v6, v0

    #@5b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5e
    .line 513
    :cond_4
    const/4 v1, 0x0

    #@5f
    goto :goto_0

    #@60
    .line 515
    :cond_5
    if-ne v0, v9, :cond_7

    #@62
    .line 517
    const/4 v1, 0x1

    #@63
    .line 518
    if-eqz v4, :cond_6

    #@65
    .line 519
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    const-string/jumbo v7, "END:VTIMEZONE"

    #@6c
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6f
    move-result v6

    #@70
    if-eqz v6, :cond_0

    #@72
    .line 520
    iget-object v6, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7b
    .line 521
    const/4 v5, 0x1

    #@7c
    .line 522
    goto :goto_1

    #@7d
    .line 525
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v6

    #@81
    const-string/jumbo v7, "BEGIN:VTIMEZONE"

    #@84
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@87
    move-result v6

    #@88
    if-eqz v6, :cond_0

    #@8a
    .line 526
    iget-object v6, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    #@8c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v7

    #@90
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@93
    .line 527
    const/4 v6, 0x0

    #@94
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@97
    .line 528
    const/4 v4, 0x1

    #@98
    .line 529
    const/4 v1, 0x0

    #@99
    goto/16 :goto_0

    #@9b
    .line 533
    :cond_7
    int-to-char v6, v0

    #@9c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9f
    goto/16 :goto_0

    #@a1
    .line 540
    .end local v0    # "ch":I
    .end local v1    # "eol":Z
    .end local v3    # "line":Ljava/lang/StringBuilder;
    .end local v4    # "start":Z
    .end local v5    # "success":Z
    :catch_0
    move-exception v2

    #@a2
    .line 542
    .local v2, "ioe":Ljava/io/IOException;
    return v8

    #@a3
    .line 545
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "ch":I
    .restart local v1    # "eol":Z
    .restart local v3    # "line":Ljava/lang/StringBuilder;
    .restart local v4    # "start":Z
    .restart local v5    # "success":Z
    :cond_8
    invoke-direct {p0}, Landroid/icu/util/VTimeZone;->parse()Z

    #@a6
    move-result v6

    #@a7
    return v6
.end method

.method private static millisToOffset(I)Ljava/lang/String;
    .locals 7
    .param p0, "millis"    # I

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    .line 2058
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    const/4 v5, 0x7

    #@4
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 2059
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-ltz p0, :cond_0

    #@9
    .line 2060
    const/16 v5, 0x2b

    #@b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    .line 2066
    :goto_0
    div-int/lit16 v4, p0, 0x3e8

    #@10
    .line 2068
    .local v4, "t":I
    rem-int/lit8 v3, v4, 0x3c

    #@12
    .line 2069
    .local v3, "sec":I
    sub-int v5, v4, v3

    #@14
    div-int/lit8 v4, v5, 0x3c

    #@16
    .line 2070
    rem-int/lit8 v1, v4, 0x3c

    #@18
    .line 2071
    .local v1, "min":I
    div-int/lit8 v0, v4, 0x3c

    #@1a
    .line 2073
    .local v0, "hour":I
    invoke-static {v0, v6}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 2074
    invoke-static {v1, v6}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 2075
    invoke-static {v3, v6}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 2077
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    return-object v5

    #@34
    .line 2062
    .end local v0    # "hour":I
    .end local v1    # "min":I
    .end local v3    # "sec":I
    .end local v4    # "t":I
    :cond_0
    const/16 v5, 0x2d

    #@36
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    .line 2063
    neg-int p0, p0

    #@3a
    goto :goto_0
.end method

.method private static numToString(II)Ljava/lang/String;
    .locals 5
    .param p0, "num"    # I
    .param p1, "width"    # I

    #@0
    .prologue
    .line 2084
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 2085
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    .line 2086
    .local v1, "len":I
    if-lt v1, p1, :cond_0

    #@a
    .line 2087
    sub-int v4, v1, p1

    #@c
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    return-object v4

    #@11
    .line 2089
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    .line 2090
    .local v2, "sb":Ljava/lang/StringBuilder;
    move v0, v1

    #@17
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    #@19
    .line 2091
    const/16 v4, 0x30

    #@1b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 2090
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 2093
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 2094
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    return-object v4
.end method

.method private static offsetStrToMillis(Ljava/lang/String;)I
    .locals 12
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x7

    #@1
    const/4 v9, 0x5

    #@2
    .line 2012
    const/4 v1, 0x0

    #@3
    .line 2013
    .local v1, "isValid":Z
    const/4 v8, 0x0

    #@4
    .local v8, "sign":I
    const/4 v0, 0x0

    #@5
    .local v0, "hour":I
    const/4 v4, 0x0

    #@6
    .local v4, "min":I
    const/4 v7, 0x0

    #@7
    .line 2016
    .local v7, "sec":I
    if-nez p0, :cond_1

    #@9
    .line 2047
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    #@b
    .line 2048
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v10, "Bad offset string"

    #@10
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v9

    #@14
    .line 2019
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@17
    move-result v2

    #@18
    .line 2020
    .local v2, "length":I
    if-eq v2, v9, :cond_2

    #@1a
    if-ne v2, v11, :cond_0

    #@1c
    .line 2025
    :cond_2
    const/4 v9, 0x0

    #@1d
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v6

    #@21
    .line 2026
    .local v6, "s":C
    const/16 v9, 0x2b

    #@23
    if-ne v6, v9, :cond_4

    #@25
    .line 2027
    const/4 v8, 0x1

    #@26
    .line 2036
    :goto_1
    const/4 v9, 0x1

    #@27
    const/4 v10, 0x3

    #@28
    :try_start_0
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v9

    #@2c
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f
    move-result v0

    #@30
    .line 2037
    const/4 v9, 0x3

    #@31
    const/4 v10, 0x5

    #@32
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v9

    #@36
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@39
    move-result v4

    #@3a
    .line 2038
    if-ne v2, v11, :cond_3

    #@3c
    .line 2039
    const/4 v9, 0x5

    #@3d
    const/4 v10, 0x7

    #@3e
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    move-result v7

    #@46
    .line 2044
    :cond_3
    const/4 v1, 0x1

    #@47
    goto :goto_0

    #@48
    .line 2028
    :cond_4
    const/16 v9, 0x2d

    #@4a
    if-ne v6, v9, :cond_0

    #@4c
    .line 2029
    const/4 v8, -0x1

    #@4d
    goto :goto_1

    #@4e
    .line 2050
    .end local v2    # "length":I
    .end local v6    # "s":C
    :cond_5
    mul-int/lit8 v9, v0, 0x3c

    #@50
    add-int/2addr v9, v4

    #@51
    mul-int/lit8 v9, v9, 0x3c

    #@53
    add-int/2addr v9, v7

    #@54
    mul-int/2addr v9, v8

    #@55
    mul-int/lit16 v3, v9, 0x3e8

    #@57
    .line 2051
    .local v3, "millis":I
    return v3

    #@58
    .line 2041
    .end local v3    # "millis":I
    .restart local v2    # "length":I
    .restart local v6    # "s":C
    :catch_0
    move-exception v5

    #@59
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private parse()Z
    .locals 58

    #@0
    .prologue
    .line 559
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    #@4
    if-eqz v15, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v15, v0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    #@a
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@d
    move-result v15

    #@e
    if-nez v15, :cond_1

    #@10
    .line 560
    :cond_0
    const/4 v15, 0x0

    #@11
    return v15

    #@12
    .line 565
    :cond_1
    const/16 v53, 0x0

    #@14
    .line 567
    .local v53, "tzid":Ljava/lang/String;
    const/16 v48, 0x0

    #@16
    .line 568
    .local v48, "state":I
    const/16 v21, 0x0

    #@18
    .line 569
    .local v21, "dst":Z
    const/16 v27, 0x0

    #@1a
    .line 570
    .local v27, "from":Ljava/lang/String;
    const/16 v51, 0x0

    #@1c
    .line 571
    .local v51, "to":Ljava/lang/String;
    const/4 v5, 0x0

    #@1d
    .line 572
    .local v5, "tzname":Ljava/lang/String;
    const/16 v22, 0x0

    #@1f
    .line 573
    .local v22, "dtstart":Ljava/lang/String;
    const/16 v36, 0x0

    #@21
    .line 574
    .local v36, "isRRULE":Z
    const/4 v10, 0x0

    #@22
    .line 575
    .local v10, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v45, Ljava/util/ArrayList;

    #@24
    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 576
    .local v45, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/TimeZoneRule;>;"
    const/16 v33, 0x0

    #@29
    .line 577
    .local v33, "initialRawOffset":I
    const/16 v32, 0x0

    #@2b
    .line 578
    .local v32, "initialDSTSavings":I
    const-wide v28, 0x7fffffffffffffffL

    #@30
    .line 580
    .local v28, "firstStart":J
    move-object/from16 v0, p0

    #@32
    iget-object v15, v0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    #@34
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v39

    #@38
    .end local v5    # "tzname":Ljava/lang/String;
    .end local v10    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "dst":Z
    .end local v22    # "dtstart":Ljava/lang/String;
    .end local v27    # "from":Ljava/lang/String;
    .end local v51    # "to":Ljava/lang/String;
    .end local v53    # "tzid":Ljava/lang/String;
    .local v39, "line$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v15

    #@3c
    if-eqz v15, :cond_1f

    #@3e
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v38

    #@42
    check-cast v38, Ljava/lang/String;

    #@44
    .line 581
    .local v38, "line":Ljava/lang/String;
    const-string/jumbo v15, ":"

    #@47
    move-object/from16 v0, v38

    #@49
    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@4c
    move-result v55

    #@4d
    .line 582
    .local v55, "valueSep":I
    if-ltz v55, :cond_2

    #@4f
    .line 585
    const/4 v15, 0x0

    #@50
    move-object/from16 v0, v38

    #@52
    move/from16 v1, v55

    #@54
    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@57
    move-result-object v40

    #@58
    .line 586
    .local v40, "name":Ljava/lang/String;
    add-int/lit8 v15, v55, 0x1

    #@5a
    move-object/from16 v0, v38

    #@5c
    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5f
    move-result-object v54

    #@60
    .line 588
    .local v54, "value":Ljava/lang/String;
    packed-switch v48, :pswitch_data_0

    #@63
    .line 749
    :cond_3
    :goto_0
    const/4 v15, 0x3

    #@64
    move/from16 v0, v48

    #@66
    if-ne v0, v15, :cond_2

    #@68
    .line 750
    const/4 v15, 0x0

    #@69
    move-object/from16 v0, p0

    #@6b
    iput-object v15, v0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    #@6d
    .line 751
    const/4 v15, 0x0

    #@6e
    return v15

    #@6f
    .line 590
    :pswitch_0
    const-string/jumbo v15, "BEGIN"

    #@72
    move-object/from16 v0, v40

    #@74
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v15

    #@78
    if-eqz v15, :cond_3

    #@7a
    const-string/jumbo v15, "VTIMEZONE"

    #@7d
    move-object/from16 v0, v54

    #@7f
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v15

    #@83
    if-eqz v15, :cond_3

    #@85
    .line 591
    const/16 v48, 0x1

    #@87
    goto :goto_0

    #@88
    .line 595
    :pswitch_1
    const-string/jumbo v15, "TZID"

    #@8b
    move-object/from16 v0, v40

    #@8d
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v15

    #@91
    if-eqz v15, :cond_4

    #@93
    .line 596
    move-object/from16 v53, v54

    #@95
    .local v53, "tzid":Ljava/lang/String;
    goto :goto_0

    #@96
    .line 597
    .end local v53    # "tzid":Ljava/lang/String;
    :cond_4
    const-string/jumbo v15, "TZURL"

    #@99
    move-object/from16 v0, v40

    #@9b
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v15

    #@9f
    if-eqz v15, :cond_5

    #@a1
    .line 598
    move-object/from16 v0, v54

    #@a3
    move-object/from16 v1, p0

    #@a5
    iput-object v0, v1, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    #@a7
    goto :goto_0

    #@a8
    .line 599
    :cond_5
    const-string/jumbo v15, "LAST-MODIFIED"

    #@ab
    move-object/from16 v0, v40

    #@ad
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v15

    #@b1
    if-eqz v15, :cond_6

    #@b3
    .line 602
    new-instance v15, Ljava/util/Date;

    #@b5
    const/16 v16, 0x0

    #@b7
    move-object/from16 v0, v54

    #@b9
    move/from16 v1, v16

    #@bb
    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    #@be
    move-result-wide v16

    #@bf
    invoke-direct/range {v15 .. v17}, Ljava/util/Date;-><init>(J)V

    #@c2
    move-object/from16 v0, p0

    #@c4
    iput-object v15, v0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    #@c6
    goto :goto_0

    #@c7
    .line 603
    :cond_6
    const-string/jumbo v15, "BEGIN"

    #@ca
    move-object/from16 v0, v40

    #@cc
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cf
    move-result v15

    #@d0
    if-eqz v15, :cond_a

    #@d2
    .line 604
    const-string/jumbo v15, "DAYLIGHT"

    #@d5
    move-object/from16 v0, v54

    #@d7
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@da
    move-result v35

    #@db
    .line 605
    .local v35, "isDST":Z
    const-string/jumbo v15, "STANDARD"

    #@de
    move-object/from16 v0, v54

    #@e0
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e3
    move-result v15

    #@e4
    if-nez v15, :cond_7

    #@e6
    if-eqz v35, :cond_9

    #@e8
    .line 607
    :cond_7
    if-nez v53, :cond_8

    #@ea
    .line 608
    const/16 v48, 0x3

    #@ec
    .line 609
    goto/16 :goto_0

    #@ee
    .line 612
    :cond_8
    const/4 v10, 0x0

    #@ef
    .line 613
    .restart local v10    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v36, 0x0

    #@f1
    .line 614
    const/16 v27, 0x0

    #@f3
    .line 615
    .restart local v27    # "from":Ljava/lang/String;
    const/16 v51, 0x0

    #@f5
    .line 616
    .restart local v51    # "to":Ljava/lang/String;
    const/4 v5, 0x0

    #@f6
    .line 617
    .restart local v5    # "tzname":Ljava/lang/String;
    move/from16 v21, v35

    #@f8
    .line 618
    .local v21, "dst":Z
    const/16 v48, 0x2

    #@fa
    goto/16 :goto_0

    #@fc
    .line 622
    .end local v5    # "tzname":Ljava/lang/String;
    .end local v10    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "dst":Z
    .end local v27    # "from":Ljava/lang/String;
    .end local v51    # "to":Ljava/lang/String;
    :cond_9
    const/16 v48, 0x3

    #@fe
    .line 623
    goto/16 :goto_0

    #@100
    .line 625
    .end local v35    # "isDST":Z
    :cond_a
    const-string/jumbo v15, "END"

    #@103
    move-object/from16 v0, v40

    #@105
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@108
    move-result v15

    #@109
    if-eqz v15, :cond_3

    #@10b
    goto/16 :goto_0

    #@10d
    .line 631
    :pswitch_2
    const-string/jumbo v15, "DTSTART"

    #@110
    move-object/from16 v0, v40

    #@112
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@115
    move-result v15

    #@116
    if-eqz v15, :cond_b

    #@118
    .line 632
    move-object/from16 v22, v54

    #@11a
    .local v22, "dtstart":Ljava/lang/String;
    goto/16 :goto_0

    #@11c
    .line 633
    .end local v22    # "dtstart":Ljava/lang/String;
    :cond_b
    const-string/jumbo v15, "TZNAME"

    #@11f
    move-object/from16 v0, v40

    #@121
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@124
    move-result v15

    #@125
    if-eqz v15, :cond_c

    #@127
    .line 634
    move-object/from16 v5, v54

    #@129
    .local v5, "tzname":Ljava/lang/String;
    goto/16 :goto_0

    #@12b
    .line 635
    .end local v5    # "tzname":Ljava/lang/String;
    :cond_c
    const-string/jumbo v15, "TZOFFSETFROM"

    #@12e
    move-object/from16 v0, v40

    #@130
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@133
    move-result v15

    #@134
    if-eqz v15, :cond_d

    #@136
    .line 636
    move-object/from16 v27, v54

    #@138
    .local v27, "from":Ljava/lang/String;
    goto/16 :goto_0

    #@13a
    .line 637
    .end local v27    # "from":Ljava/lang/String;
    :cond_d
    const-string/jumbo v15, "TZOFFSETTO"

    #@13d
    move-object/from16 v0, v40

    #@13f
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@142
    move-result v15

    #@143
    if-eqz v15, :cond_e

    #@145
    .line 638
    move-object/from16 v51, v54

    #@147
    .local v51, "to":Ljava/lang/String;
    goto/16 :goto_0

    #@149
    .line 639
    .end local v51    # "to":Ljava/lang/String;
    :cond_e
    const-string/jumbo v15, "RDATE"

    #@14c
    move-object/from16 v0, v40

    #@14e
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@151
    move-result v15

    #@152
    if-eqz v15, :cond_11

    #@154
    .line 641
    if-eqz v36, :cond_f

    #@156
    .line 642
    const/16 v48, 0x3

    #@158
    .line 643
    goto/16 :goto_0

    #@15a
    .line 645
    :cond_f
    if-nez v10, :cond_10

    #@15c
    .line 646
    new-instance v10, Ljava/util/LinkedList;

    #@15e
    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    #@161
    .line 650
    :cond_10
    new-instance v46, Ljava/util/StringTokenizer;

    #@163
    const-string/jumbo v15, ","

    #@166
    move-object/from16 v0, v46

    #@168
    move-object/from16 v1, v54

    #@16a
    invoke-direct {v0, v1, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@16d
    .line 651
    .local v46, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual/range {v46 .. v46}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@170
    move-result v15

    #@171
    if-eqz v15, :cond_3

    #@173
    .line 652
    invoke-virtual/range {v46 .. v46}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@176
    move-result-object v12

    #@177
    .line 653
    .local v12, "date":Ljava/lang/String;
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17a
    goto :goto_1

    #@17b
    .line 655
    .end local v12    # "date":Ljava/lang/String;
    .end local v46    # "st":Ljava/util/StringTokenizer;
    :cond_11
    const-string/jumbo v15, "RRULE"

    #@17e
    move-object/from16 v0, v40

    #@180
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@183
    move-result v15

    #@184
    if-eqz v15, :cond_14

    #@186
    .line 657
    if-nez v36, :cond_12

    #@188
    if-eqz v10, :cond_12

    #@18a
    .line 658
    const/16 v48, 0x3

    #@18c
    .line 659
    goto/16 :goto_0

    #@18e
    .line 660
    :cond_12
    if-nez v10, :cond_13

    #@190
    .line 661
    new-instance v10, Ljava/util/LinkedList;

    #@192
    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    #@195
    .line 663
    :cond_13
    const/16 v36, 0x1

    #@197
    .line 664
    move-object/from16 v0, v54

    #@199
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19c
    goto/16 :goto_0

    #@19e
    .line 665
    :cond_14
    const-string/jumbo v15, "END"

    #@1a1
    move-object/from16 v0, v40

    #@1a3
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a6
    move-result v15

    #@1a7
    if-eqz v15, :cond_3

    #@1a9
    .line 667
    if-eqz v22, :cond_15

    #@1ab
    if-nez v27, :cond_16

    #@1ad
    .line 668
    :cond_15
    const/16 v48, 0x3

    #@1af
    .line 669
    goto/16 :goto_0

    #@1b1
    .line 667
    :cond_16
    if-eqz v51, :cond_15

    #@1b3
    .line 672
    if-nez v5, :cond_17

    #@1b5
    .line 673
    move-object/from16 v0, v53

    #@1b7
    move/from16 v1, v21

    #@1b9
    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    #@1bc
    move-result-object v5

    #@1bd
    .line 677
    :cond_17
    const/16 v44, 0x0

    #@1bf
    .line 678
    .local v44, "rule":Landroid/icu/util/TimeZoneRule;
    const/4 v11, 0x0

    #@1c0
    .line 679
    .local v11, "fromOffset":I
    const/16 v52, 0x0

    #@1c2
    .line 680
    .local v52, "toOffset":I
    const/4 v6, 0x0

    #@1c3
    .line 681
    .local v6, "rawOffset":I
    const/4 v7, 0x0

    #@1c4
    .line 682
    .local v7, "dstSavings":I
    const-wide/16 v8, 0x0

    #@1c6
    .line 685
    .local v8, "start":J
    :try_start_0
    invoke-static/range {v27 .. v27}, Landroid/icu/util/VTimeZone;->offsetStrToMillis(Ljava/lang/String;)I

    #@1c9
    move-result v11

    #@1ca
    .line 686
    invoke-static/range {v51 .. v51}, Landroid/icu/util/VTimeZone;->offsetStrToMillis(Ljava/lang/String;)I

    #@1cd
    move-result v52

    #@1ce
    .line 688
    if-eqz v21, :cond_1a

    #@1d0
    .line 690
    sub-int v15, v52, v11

    #@1d2
    if-lez v15, :cond_19

    #@1d4
    .line 691
    move v6, v11

    #@1d5
    .line 692
    sub-int v7, v52, v11

    #@1d7
    .line 704
    :goto_2
    move-object/from16 v0, v22

    #@1d9
    invoke-static {v0, v11}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    #@1dc
    move-result-wide v8

    #@1dd
    .line 707
    const/4 v4, 0x0

    #@1de
    .line 708
    .local v4, "actualStart":Ljava/util/Date;
    if-eqz v36, :cond_1b

    #@1e0
    .line 709
    invoke-static/range {v5 .. v11}, Landroid/icu/util/VTimeZone;->createRuleByRRULE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;

    #@1e3
    move-result-object v44

    #@1e4
    .line 713
    .local v44, "rule":Landroid/icu/util/TimeZoneRule;
    :goto_3
    if-eqz v44, :cond_18

    #@1e6
    .line 714
    const/4 v15, 0x0

    #@1e7
    move-object/from16 v0, v44

    #@1e9
    invoke-virtual {v0, v11, v15}, Landroid/icu/util/TimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    #@1ec
    move-result-object v4

    #@1ed
    .line 715
    .local v4, "actualStart":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    #@1f0
    move-result-wide v16

    #@1f1
    cmp-long v15, v16, v28

    #@1f3
    if-gez v15, :cond_18

    #@1f5
    .line 717
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    #@1f8
    move-result-wide v28

    #@1f9
    .line 721
    if-lez v7, :cond_1c

    #@1fb
    .line 722
    move/from16 v33, v11

    #@1fd
    .line 723
    const/16 v32, 0x0

    #@1ff
    .line 739
    .end local v4    # "actualStart":Ljava/util/Date;
    .end local v44    # "rule":Landroid/icu/util/TimeZoneRule;
    :cond_18
    :goto_4
    if-nez v44, :cond_1e

    #@201
    .line 740
    const/16 v48, 0x3

    #@203
    goto/16 :goto_0

    #@205
    .line 695
    .local v44, "rule":Landroid/icu/util/TimeZoneRule;
    :cond_19
    const v15, 0x36ee80

    #@208
    sub-int v6, v52, v15

    #@20a
    .line 696
    const v7, 0x36ee80

    #@20d
    goto :goto_2

    #@20e
    .line 699
    :cond_1a
    move/from16 v6, v52

    #@210
    .line 700
    const/4 v7, 0x0

    #@211
    goto :goto_2

    #@212
    .line 711
    .local v4, "actualStart":Ljava/util/Date;
    :cond_1b
    invoke-static/range {v5 .. v11}, Landroid/icu/util/VTimeZone;->createRuleByRDATE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@215
    move-result-object v44

    #@216
    .local v44, "rule":Landroid/icu/util/TimeZoneRule;
    goto :goto_3

    #@217
    .line 725
    .local v4, "actualStart":Ljava/util/Date;
    :cond_1c
    sub-int v15, v11, v52

    #@219
    const v16, 0x36ee80

    #@21c
    move/from16 v0, v16

    #@21e
    if-ne v15, v0, :cond_1d

    #@220
    .line 726
    const v15, 0x36ee80

    #@223
    sub-int v33, v11, v15

    #@225
    .line 727
    const v32, 0x36ee80

    #@228
    goto :goto_4

    #@229
    .line 729
    :cond_1d
    move/from16 v33, v11

    #@22b
    .line 730
    const/16 v32, 0x0

    #@22d
    goto :goto_4

    #@22e
    .line 743
    .end local v4    # "actualStart":Ljava/util/Date;
    .end local v44    # "rule":Landroid/icu/util/TimeZoneRule;
    :cond_1e
    move-object/from16 v0, v45

    #@230
    move-object/from16 v1, v44

    #@232
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@235
    .line 744
    const/16 v48, 0x1

    #@237
    goto/16 :goto_0

    #@239
    .line 756
    .end local v6    # "rawOffset":I
    .end local v7    # "dstSavings":I
    .end local v8    # "start":J
    .end local v11    # "fromOffset":I
    .end local v38    # "line":Ljava/lang/String;
    .end local v40    # "name":Ljava/lang/String;
    .end local v52    # "toOffset":I
    .end local v54    # "value":Ljava/lang/String;
    .end local v55    # "valueSep":I
    :cond_1f
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    #@23c
    move-result v15

    #@23d
    if-nez v15, :cond_20

    #@23f
    .line 757
    const/4 v15, 0x0

    #@240
    return v15

    #@241
    .line 761
    :cond_20
    new-instance v34, Landroid/icu/util/InitialTimeZoneRule;

    #@243
    const/4 v15, 0x0

    #@244
    move-object/from16 v0, v53

    #@246
    invoke-static {v0, v15}, Landroid/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    #@249
    move-result-object v15

    #@24a
    move-object/from16 v0, v34

    #@24c
    move/from16 v1, v33

    #@24e
    move/from16 v2, v32

    #@250
    invoke-direct {v0, v15, v1, v2}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    #@253
    .line 765
    .local v34, "initialRule":Landroid/icu/util/InitialTimeZoneRule;
    new-instance v43, Landroid/icu/util/RuleBasedTimeZone;

    #@255
    move-object/from16 v0, v43

    #@257
    move-object/from16 v1, v53

    #@259
    move-object/from16 v2, v34

    #@25b
    invoke-direct {v0, v1, v2}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    #@25e
    .line 767
    .local v43, "rbtz":Landroid/icu/util/RuleBasedTimeZone;
    const/16 v25, -0x1

    #@260
    .line 768
    .local v25, "finalRuleIdx":I
    const/16 v24, 0x0

    #@262
    .line 769
    .local v24, "finalRuleCount":I
    const/16 v30, 0x0

    #@264
    .local v30, "i":I
    :goto_5
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    #@267
    move-result v15

    #@268
    move/from16 v0, v30

    #@26a
    if-ge v0, v15, :cond_22

    #@26c
    .line 770
    move-object/from16 v0, v45

    #@26e
    move/from16 v1, v30

    #@270
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@273
    move-result-object v41

    #@274
    check-cast v41, Landroid/icu/util/TimeZoneRule;

    #@276
    .line 771
    .local v41, "r":Landroid/icu/util/TimeZoneRule;
    move-object/from16 v0, v41

    #@278
    instance-of v15, v0, Landroid/icu/util/AnnualTimeZoneRule;

    #@27a
    if-eqz v15, :cond_21

    #@27c
    .line 772
    check-cast v41, Landroid/icu/util/AnnualTimeZoneRule;

    #@27e
    .end local v41    # "r":Landroid/icu/util/TimeZoneRule;
    invoke-virtual/range {v41 .. v41}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    #@281
    move-result v15

    #@282
    const v16, 0x7fffffff

    #@285
    move/from16 v0, v16

    #@287
    if-ne v15, v0, :cond_21

    #@289
    .line 773
    add-int/lit8 v24, v24, 0x1

    #@28b
    .line 774
    move/from16 v25, v30

    #@28d
    .line 769
    :cond_21
    add-int/lit8 v30, v30, 0x1

    #@28f
    goto :goto_5

    #@290
    .line 778
    :cond_22
    const/4 v15, 0x2

    #@291
    move/from16 v0, v24

    #@293
    if-le v0, v15, :cond_23

    #@295
    .line 780
    const/4 v15, 0x0

    #@296
    return v15

    #@297
    .line 783
    :cond_23
    const/4 v15, 0x1

    #@298
    move/from16 v0, v24

    #@29a
    if-ne v0, v15, :cond_24

    #@29c
    .line 784
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    #@29f
    move-result v15

    #@2a0
    const/16 v16, 0x1

    #@2a2
    move/from16 v0, v16

    #@2a4
    if-ne v15, v0, :cond_25

    #@2a6
    .line 788
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->clear()V

    #@2a9
    .line 835
    :cond_24
    :goto_6
    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2ac
    move-result-object v42

    #@2ad
    .local v42, "r$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    #@2b0
    move-result v15

    #@2b1
    if-eqz v15, :cond_2a

    #@2b3
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b6
    move-result-object v41

    #@2b7
    check-cast v41, Landroid/icu/util/TimeZoneRule;

    #@2b9
    .line 836
    .restart local v41    # "r":Landroid/icu/util/TimeZoneRule;
    move-object/from16 v0, v43

    #@2bb
    move-object/from16 v1, v41

    #@2bd
    invoke-virtual {v0, v1}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    #@2c0
    goto :goto_7

    #@2c1
    .line 791
    .end local v41    # "r":Landroid/icu/util/TimeZoneRule;
    .end local v42    # "r$iterator":Ljava/util/Iterator;
    :cond_25
    move-object/from16 v0, v45

    #@2c3
    move/from16 v1, v25

    #@2c5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c8
    move-result-object v13

    #@2c9
    check-cast v13, Landroid/icu/util/AnnualTimeZoneRule;

    #@2cb
    .line 792
    .local v13, "finalRule":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual {v13}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    #@2ce
    move-result v50

    #@2cf
    .line 793
    .local v50, "tmpRaw":I
    invoke-virtual {v13}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@2d2
    move-result v49

    #@2d3
    .line 796
    .local v49, "tmpDST":I
    move/from16 v0, v33

    #@2d5
    move/from16 v1, v32

    #@2d7
    invoke-virtual {v13, v0, v1}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    #@2da
    move-result-object v26

    #@2db
    .line 797
    .local v26, "finalStart":Ljava/util/Date;
    move-object/from16 v47, v26

    #@2dd
    .line 798
    .local v47, "start":Ljava/util/Date;
    const/16 v30, 0x0

    #@2df
    :goto_8
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    #@2e2
    move-result v15

    #@2e3
    move/from16 v0, v30

    #@2e5
    if-ge v0, v15, :cond_28

    #@2e7
    .line 799
    move/from16 v0, v25

    #@2e9
    move/from16 v1, v30

    #@2eb
    if-ne v0, v1, :cond_27

    #@2ed
    .line 798
    :cond_26
    :goto_9
    add-int/lit8 v30, v30, 0x1

    #@2ef
    goto :goto_8

    #@2f0
    .line 802
    :cond_27
    move-object/from16 v0, v45

    #@2f2
    move/from16 v1, v30

    #@2f4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2f7
    move-result-object v41

    #@2f8
    check-cast v41, Landroid/icu/util/TimeZoneRule;

    #@2fa
    .line 803
    .restart local v41    # "r":Landroid/icu/util/TimeZoneRule;
    move-object/from16 v0, v41

    #@2fc
    move/from16 v1, v50

    #@2fe
    move/from16 v2, v49

    #@300
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/TimeZoneRule;->getFinalStart(II)Ljava/util/Date;

    #@303
    move-result-object v37

    #@304
    .line 804
    .local v37, "lastStart":Ljava/util/Date;
    move-object/from16 v0, v37

    #@306
    move-object/from16 v1, v47

    #@308
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@30b
    move-result v15

    #@30c
    if-eqz v15, :cond_26

    #@30e
    .line 805
    invoke-virtual/range {v37 .. v37}, Ljava/util/Date;->getTime()J

    #@311
    move-result-wide v14

    #@312
    .line 806
    invoke-virtual/range {v41 .. v41}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@315
    move-result v16

    #@316
    .line 807
    invoke-virtual/range {v41 .. v41}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@319
    move-result v17

    #@31a
    .line 808
    const/16 v18, 0x0

    #@31c
    .line 805
    invoke-virtual/range {v13 .. v18}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@31f
    move-result-object v47

    #@320
    goto :goto_9

    #@321
    .line 812
    .end local v37    # "lastStart":Ljava/util/Date;
    .end local v41    # "r":Landroid/icu/util/TimeZoneRule;
    :cond_28
    move-object/from16 v0, v47

    #@323
    move-object/from16 v1, v26

    #@325
    if-ne v0, v1, :cond_29

    #@327
    .line 814
    new-instance v14, Landroid/icu/util/TimeArrayTimeZoneRule;

    #@329
    .line 815
    invoke-virtual {v13}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    #@32c
    move-result-object v15

    #@32d
    .line 816
    invoke-virtual {v13}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    #@330
    move-result v16

    #@331
    .line 817
    invoke-virtual {v13}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@334
    move-result v17

    #@335
    .line 818
    const/16 v18, 0x1

    #@337
    move/from16 v0, v18

    #@339
    new-array v0, v0, [J

    #@33b
    move-object/from16 v18, v0

    #@33d
    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J

    #@340
    move-result-wide v56

    #@341
    const/16 v19, 0x0

    #@343
    aput-wide v56, v18, v19

    #@345
    .line 819
    const/16 v19, 0x2

    #@347
    .line 814
    invoke-direct/range {v14 .. v19}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    #@34a
    .line 831
    .local v14, "newRule":Landroid/icu/util/TimeZoneRule;
    :goto_a
    move-object/from16 v0, v45

    #@34c
    move/from16 v1, v25

    #@34e
    invoke-interface {v0, v1, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@351
    goto/16 :goto_6

    #@353
    .line 822
    .end local v14    # "newRule":Landroid/icu/util/TimeZoneRule;
    :cond_29
    invoke-virtual/range {v47 .. v47}, Ljava/util/Date;->getTime()J

    #@356
    move-result-wide v16

    #@357
    const/4 v15, 0x0

    #@358
    move-wide/from16 v0, v16

    #@35a
    invoke-static {v0, v1, v15}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@35d
    move-result-object v23

    #@35e
    .line 823
    .local v23, "fields":[I
    new-instance v14, Landroid/icu/util/AnnualTimeZoneRule;

    #@360
    .line 824
    invoke-virtual {v13}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    #@363
    move-result-object v15

    #@364
    .line 825
    invoke-virtual {v13}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    #@367
    move-result v16

    #@368
    .line 826
    invoke-virtual {v13}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@36b
    move-result v17

    #@36c
    .line 827
    invoke-virtual {v13}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    #@36f
    move-result-object v18

    #@370
    .line 828
    invoke-virtual {v13}, Landroid/icu/util/AnnualTimeZoneRule;->getStartYear()I

    #@373
    move-result v19

    #@374
    .line 829
    const/16 v20, 0x0

    #@376
    aget v20, v23, v20

    #@378
    .line 823
    invoke-direct/range {v14 .. v20}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    #@37b
    .restart local v14    # "newRule":Landroid/icu/util/TimeZoneRule;
    goto :goto_a

    #@37c
    .line 839
    .end local v13    # "finalRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v14    # "newRule":Landroid/icu/util/TimeZoneRule;
    .end local v23    # "fields":[I
    .end local v26    # "finalStart":Ljava/util/Date;
    .end local v47    # "start":Ljava/util/Date;
    .end local v49    # "tmpDST":I
    .end local v50    # "tmpRaw":I
    .restart local v42    # "r$iterator":Ljava/util/Iterator;
    :cond_2a
    move-object/from16 v0, v43

    #@37e
    move-object/from16 v1, p0

    #@380
    iput-object v0, v1, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@382
    .line 840
    move-object/from16 v0, p0

    #@384
    move-object/from16 v1, v53

    #@386
    invoke-virtual {v0, v1}, Landroid/icu/util/VTimeZone;->setID(Ljava/lang/String;)V

    #@389
    .line 841
    const/4 v15, 0x1

    #@38a
    return v15

    #@38b
    .line 735
    .end local v24    # "finalRuleCount":I
    .end local v25    # "finalRuleIdx":I
    .end local v30    # "i":I
    .end local v34    # "initialRule":Landroid/icu/util/InitialTimeZoneRule;
    .end local v42    # "r$iterator":Ljava/util/Iterator;
    .end local v43    # "rbtz":Landroid/icu/util/RuleBasedTimeZone;
    .restart local v6    # "rawOffset":I
    .restart local v7    # "dstSavings":I
    .restart local v8    # "start":J
    .restart local v11    # "fromOffset":I
    .restart local v38    # "line":Ljava/lang/String;
    .restart local v40    # "name":Ljava/lang/String;
    .restart local v52    # "toOffset":I
    .restart local v54    # "value":Ljava/lang/String;
    .restart local v55    # "valueSep":I
    :catch_0
    move-exception v31

    #@38c
    .local v31, "iae":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_4

    #@38e
    .line 588
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static parseDateTimeString(Ljava/lang/String;I)J
    .locals 20
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 1949
    const/4 v14, 0x0

    #@1
    .local v14, "year":I
    const/4 v9, 0x0

    #@2
    .local v9, "month":I
    const/4 v2, 0x0

    #@3
    .local v2, "day":I
    const/4 v3, 0x0

    #@4
    .local v3, "hour":I
    const/4 v8, 0x0

    #@5
    .local v8, "min":I
    const/4 v11, 0x0

    #@6
    .line 1950
    .local v11, "sec":I
    const/4 v4, 0x0

    #@7
    .line 1951
    .local v4, "isUTC":Z
    const/4 v5, 0x0

    #@8
    .line 1953
    .local v5, "isValid":Z
    if-nez p0, :cond_1

    #@a
    .line 1996
    :cond_0
    :goto_0
    if-nez v5, :cond_4

    #@c
    .line 1997
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v16, "Invalid date time string format"

    #@11
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v15

    #@15
    .line 1957
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@18
    move-result v6

    #@19
    .line 1958
    .local v6, "length":I
    const/16 v15, 0xf

    #@1b
    if-eq v6, v15, :cond_2

    #@1d
    const/16 v15, 0x10

    #@1f
    if-ne v6, v15, :cond_0

    #@21
    .line 1963
    :cond_2
    const/16 v15, 0x8

    #@23
    move-object/from16 v0, p0

    #@25
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v15

    #@29
    const/16 v16, 0x54

    #@2b
    move/from16 v0, v16

    #@2d
    if-ne v15, v0, :cond_0

    #@2f
    .line 1967
    const/16 v15, 0x10

    #@31
    if-ne v6, v15, :cond_3

    #@33
    .line 1968
    const/16 v15, 0xf

    #@35
    move-object/from16 v0, p0

    #@37
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v15

    #@3b
    const/16 v16, 0x5a

    #@3d
    move/from16 v0, v16

    #@3f
    if-ne v15, v0, :cond_0

    #@41
    .line 1972
    const/4 v4, 0x1

    #@42
    .line 1976
    :cond_3
    const/4 v15, 0x0

    #@43
    const/16 v16, 0x4

    #@45
    :try_start_0
    move-object/from16 v0, p0

    #@47
    move/from16 v1, v16

    #@49
    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4c
    move-result-object v15

    #@4d
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@50
    move-result v14

    #@51
    .line 1977
    const/4 v15, 0x4

    #@52
    const/16 v16, 0x6

    #@54
    move-object/from16 v0, p0

    #@56
    move/from16 v1, v16

    #@58
    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5b
    move-result-object v15

    #@5c
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5f
    move-result v15

    #@60
    add-int/lit8 v9, v15, -0x1

    #@62
    .line 1978
    const/4 v15, 0x6

    #@63
    const/16 v16, 0x8

    #@65
    move-object/from16 v0, p0

    #@67
    move/from16 v1, v16

    #@69
    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6c
    move-result-object v15

    #@6d
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@70
    move-result v2

    #@71
    .line 1979
    const/16 v15, 0x9

    #@73
    const/16 v16, 0xb

    #@75
    move-object/from16 v0, p0

    #@77
    move/from16 v1, v16

    #@79
    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7c
    move-result-object v15

    #@7d
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@80
    move-result v3

    #@81
    .line 1980
    const/16 v15, 0xb

    #@83
    const/16 v16, 0xd

    #@85
    move-object/from16 v0, p0

    #@87
    move/from16 v1, v16

    #@89
    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8c
    move-result-object v15

    #@8d
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@90
    move-result v8

    #@91
    .line 1981
    const/16 v15, 0xd

    #@93
    const/16 v16, 0xf

    #@95
    move-object/from16 v0, p0

    #@97
    move/from16 v1, v16

    #@99
    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9c
    move-result-object v15

    #@9d
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@a0
    move-result v11

    #@a1
    .line 1987
    invoke-static {v14, v9}, Landroid/icu/impl/Grego;->monthLength(II)I

    #@a4
    move-result v7

    #@a5
    .line 1988
    .local v7, "maxDayOfMonth":I
    if-ltz v14, :cond_0

    #@a7
    if-ltz v9, :cond_0

    #@a9
    const/16 v15, 0xb

    #@ab
    if-gt v9, v15, :cond_0

    #@ad
    const/4 v15, 0x1

    #@ae
    if-lt v2, v15, :cond_0

    #@b0
    if-gt v2, v7, :cond_0

    #@b2
    .line 1989
    if-ltz v3, :cond_0

    #@b4
    const/16 v15, 0x18

    #@b6
    if-ge v3, v15, :cond_0

    #@b8
    if-ltz v8, :cond_0

    #@ba
    const/16 v15, 0x3c

    #@bc
    if-ge v8, v15, :cond_0

    #@be
    if-ltz v11, :cond_0

    #@c0
    const/16 v15, 0x3c

    #@c2
    if-ge v11, v15, :cond_0

    #@c4
    .line 1993
    const/4 v5, 0x1

    #@c5
    goto/16 :goto_0

    #@c7
    .line 2000
    .end local v6    # "length":I
    .end local v7    # "maxDayOfMonth":I
    :cond_4
    invoke-static {v14, v9, v2}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    #@ca
    move-result-wide v16

    #@cb
    const-wide/32 v18, 0x5265c00

    #@ce
    mul-long v12, v16, v18

    #@d0
    .line 2001
    .local v12, "time":J
    const v15, 0x36ee80

    #@d3
    mul-int/2addr v15, v3

    #@d4
    const v16, 0xea60

    #@d7
    mul-int v16, v16, v8

    #@d9
    add-int v15, v15, v16

    #@db
    mul-int/lit16 v0, v11, 0x3e8

    #@dd
    move/from16 v16, v0

    #@df
    add-int v15, v15, v16

    #@e1
    int-to-long v0, v15

    #@e2
    move-wide/from16 v16, v0

    #@e4
    add-long v12, v12, v16

    #@e6
    .line 2002
    if-nez v4, :cond_5

    #@e8
    .line 2003
    move/from16 v0, p1

    #@ea
    int-to-long v0, v0

    #@eb
    move-wide/from16 v16, v0

    #@ed
    sub-long v12, v12, v16

    #@ef
    .line 2005
    :cond_5
    return-wide v12

    #@f0
    .line 1982
    .end local v12    # "time":J
    .restart local v6    # "length":I
    :catch_0
    move-exception v10

    #@f1
    .local v10, "nfe":Ljava/lang/NumberFormatException;
    goto/16 :goto_0
.end method

.method private static parseRRULE(Ljava/lang/String;[J)[I
    .locals 31
    .param p0, "rrule"    # Ljava/lang/String;
    .param p1, "until"    # [J

    #@0
    .prologue
    .line 1063
    const/4 v14, -0x1

    #@1
    .line 1064
    .local v14, "month":I
    const/4 v7, 0x0

    #@2
    .line 1065
    .local v7, "dayOfWeek":I
    const/16 v17, 0x0

    #@4
    .line 1066
    .local v17, "nthDayOfWeek":I
    const/4 v6, 0x0

    #@5
    .line 1068
    .local v6, "dayOfMonth":[I
    const-wide/high16 v24, -0x8000000000000000L

    #@7
    .line 1069
    .local v24, "untilTime":J
    const/16 v28, 0x0

    #@9
    .line 1070
    .local v28, "yearly":Z
    const/16 v18, 0x0

    #@b
    .line 1071
    .local v18, "parseError":Z
    new-instance v23, Ljava/util/StringTokenizer;

    #@d
    const-string/jumbo v29, ";"

    #@10
    move-object/from16 v0, v23

    #@12
    move-object/from16 v1, p0

    #@14
    move-object/from16 v2, v29

    #@16
    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 1073
    .end local v6    # "dayOfMonth":[I
    .local v23, "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@1c
    move-result v29

    #@1d
    if-eqz v29, :cond_2

    #@1f
    .line 1075
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@22
    move-result-object v19

    #@23
    .line 1076
    .local v19, "prop":Ljava/lang/String;
    const-string/jumbo v29, "="

    #@26
    move-object/from16 v0, v19

    #@28
    move-object/from16 v1, v29

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2d
    move-result v21

    #@2e
    .line 1077
    .local v21, "sep":I
    const/16 v29, -0x1

    #@30
    move/from16 v0, v21

    #@32
    move/from16 v1, v29

    #@34
    if-eq v0, v1, :cond_1

    #@36
    .line 1078
    const/16 v29, 0x0

    #@38
    move-object/from16 v0, v19

    #@3a
    move/from16 v1, v29

    #@3c
    move/from16 v2, v21

    #@3e
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    .line 1079
    .local v4, "attr":Ljava/lang/String;
    add-int/lit8 v29, v21, 0x1

    #@44
    move-object/from16 v0, v19

    #@46
    move/from16 v1, v29

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4b
    move-result-object v26

    #@4c
    .line 1085
    .local v26, "value":Ljava/lang/String;
    const-string/jumbo v29, "FREQ"

    #@4f
    move-object/from16 v0, v29

    #@51
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v29

    #@55
    if-eqz v29, :cond_4

    #@57
    .line 1087
    const-string/jumbo v29, "YEARLY"

    #@5a
    move-object/from16 v0, v26

    #@5c
    move-object/from16 v1, v29

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v29

    #@62
    if-eqz v29, :cond_3

    #@64
    .line 1088
    const/16 v28, 0x1

    #@66
    goto :goto_0

    #@67
    .line 1081
    .end local v4    # "attr":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :cond_1
    const/16 v18, 0x1

    #@69
    .line 1186
    .end local v19    # "prop":Ljava/lang/String;
    .end local v21    # "sep":I
    :cond_2
    :goto_1
    if-eqz v18, :cond_15

    #@6b
    .line 1187
    const/16 v29, 0x0

    #@6d
    return-object v29

    #@6e
    .line 1090
    .restart local v4    # "attr":Ljava/lang/String;
    .restart local v19    # "prop":Ljava/lang/String;
    .restart local v21    # "sep":I
    .restart local v26    # "value":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x1

    #@70
    .line 1091
    goto :goto_1

    #@71
    .line 1093
    :cond_4
    const-string/jumbo v29, "UNTIL"

    #@74
    move-object/from16 v0, v29

    #@76
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v29

    #@7a
    if-eqz v29, :cond_5

    #@7c
    .line 1096
    const/16 v29, 0x0

    #@7e
    :try_start_0
    move-object/from16 v0, v26

    #@80
    move/from16 v1, v29

    #@82
    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@85
    move-result-wide v24

    #@86
    goto :goto_0

    #@87
    .line 1097
    :catch_0
    move-exception v10

    #@88
    .line 1098
    .local v10, "iae":Ljava/lang/IllegalArgumentException;
    const/16 v18, 0x1

    #@8a
    .line 1099
    goto :goto_1

    #@8b
    .line 1101
    .end local v10    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_5
    const-string/jumbo v29, "BYMONTH"

    #@8e
    move-object/from16 v0, v29

    #@90
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v29

    #@94
    if-eqz v29, :cond_8

    #@96
    .line 1104
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    #@99
    move-result v29

    #@9a
    const/16 v30, 0x2

    #@9c
    move/from16 v0, v29

    #@9e
    move/from16 v1, v30

    #@a0
    if-le v0, v1, :cond_6

    #@a2
    .line 1105
    const/16 v18, 0x1

    #@a4
    .line 1106
    goto :goto_1

    #@a5
    .line 1109
    :cond_6
    :try_start_1
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@a8
    move-result v29

    #@a9
    add-int/lit8 v14, v29, -0x1

    #@ab
    .line 1110
    if-ltz v14, :cond_7

    #@ad
    const/16 v29, 0xc

    #@af
    move/from16 v0, v29

    #@b1
    if-lt v14, v0, :cond_0

    #@b3
    .line 1111
    :cond_7
    const/16 v18, 0x1

    #@b5
    .line 1112
    goto :goto_1

    #@b6
    .line 1114
    :catch_1
    move-exception v16

    #@b7
    .line 1115
    .local v16, "nfe":Ljava/lang/NumberFormatException;
    const/16 v18, 0x1

    #@b9
    goto :goto_1

    #@ba
    .line 1118
    .end local v16    # "nfe":Ljava/lang/NumberFormatException;
    :cond_8
    const-string/jumbo v29, "BYDAY"

    #@bd
    move-object/from16 v0, v29

    #@bf
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v29

    #@c3
    if-eqz v29, :cond_14

    #@c5
    .line 1124
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    #@c8
    move-result v13

    #@c9
    .line 1125
    .local v13, "length":I
    const/16 v29, 0x2

    #@cb
    move/from16 v0, v29

    #@cd
    if-lt v13, v0, :cond_9

    #@cf
    const/16 v29, 0x4

    #@d1
    move/from16 v0, v29

    #@d3
    if-le v13, v0, :cond_a

    #@d5
    .line 1126
    :cond_9
    const/16 v18, 0x1

    #@d7
    .line 1127
    goto :goto_1

    #@d8
    .line 1129
    :cond_a
    const/16 v29, 0x2

    #@da
    move/from16 v0, v29

    #@dc
    if-le v13, v0, :cond_10

    #@de
    .line 1131
    const/16 v22, 0x1

    #@e0
    .line 1132
    .local v22, "sign":I
    const/16 v29, 0x0

    #@e2
    move-object/from16 v0, v26

    #@e4
    move/from16 v1, v29

    #@e6
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@e9
    move-result v29

    #@ea
    const/16 v30, 0x2b

    #@ec
    move/from16 v0, v29

    #@ee
    move/from16 v1, v30

    #@f0
    if-ne v0, v1, :cond_d

    #@f2
    .line 1133
    const/16 v22, 0x1

    #@f4
    .line 1141
    :cond_b
    :goto_2
    add-int/lit8 v29, v13, -0x3

    #@f6
    add-int/lit8 v30, v13, -0x2

    #@f8
    :try_start_2
    move-object/from16 v0, v26

    #@fa
    move/from16 v1, v29

    #@fc
    move/from16 v2, v30

    #@fe
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@101
    move-result-object v29

    #@102
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@105
    move-result v15

    #@106
    .line 1142
    .local v15, "n":I
    if-eqz v15, :cond_c

    #@108
    const/16 v29, 0x4

    #@10a
    move/from16 v0, v29

    #@10c
    if-le v15, v0, :cond_f

    #@10e
    .line 1143
    :cond_c
    const/16 v18, 0x1

    #@110
    .line 1144
    goto/16 :goto_1

    #@112
    .line 1134
    .end local v15    # "n":I
    :cond_d
    const/16 v29, 0x0

    #@114
    move-object/from16 v0, v26

    #@116
    move/from16 v1, v29

    #@118
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@11b
    move-result v29

    #@11c
    const/16 v30, 0x2d

    #@11e
    move/from16 v0, v29

    #@120
    move/from16 v1, v30

    #@122
    if-ne v0, v1, :cond_e

    #@124
    .line 1135
    const/16 v22, -0x1

    #@126
    goto :goto_2

    #@127
    .line 1136
    :cond_e
    const/16 v29, 0x4

    #@129
    move/from16 v0, v29

    #@12b
    if-ne v13, v0, :cond_b

    #@12d
    .line 1137
    const/16 v18, 0x1

    #@12f
    .line 1138
    goto/16 :goto_1

    #@131
    .line 1146
    .restart local v15    # "n":I
    :cond_f
    mul-int v17, v15, v22

    #@133
    .line 1151
    add-int/lit8 v29, v13, -0x2

    #@135
    move-object/from16 v0, v26

    #@137
    move/from16 v1, v29

    #@139
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@13c
    move-result-object v26

    #@13d
    .line 1154
    .end local v15    # "n":I
    .end local v22    # "sign":I
    :cond_10
    const/16 v27, 0x0

    #@13f
    .local v27, "wday":I
    :goto_3
    sget-object v29, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    #@141
    move-object/from16 v0, v29

    #@143
    array-length v0, v0

    #@144
    move/from16 v29, v0

    #@146
    move/from16 v0, v27

    #@148
    move/from16 v1, v29

    #@14a
    if-ge v0, v1, :cond_11

    #@14c
    .line 1155
    sget-object v29, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    #@14e
    aget-object v29, v29, v27

    #@150
    move-object/from16 v0, v26

    #@152
    move-object/from16 v1, v29

    #@154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@157
    move-result v29

    #@158
    if-eqz v29, :cond_12

    #@15a
    .line 1159
    :cond_11
    sget-object v29, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    #@15c
    move-object/from16 v0, v29

    #@15e
    array-length v0, v0

    #@15f
    move/from16 v29, v0

    #@161
    move/from16 v0, v27

    #@163
    move/from16 v1, v29

    #@165
    if-ge v0, v1, :cond_13

    #@167
    .line 1161
    add-int/lit8 v7, v27, 0x1

    #@169
    goto/16 :goto_0

    #@16b
    .line 1147
    .end local v27    # "wday":I
    .restart local v22    # "sign":I
    :catch_2
    move-exception v16

    #@16c
    .line 1148
    .restart local v16    # "nfe":Ljava/lang/NumberFormatException;
    const/16 v18, 0x1

    #@16e
    .line 1149
    goto/16 :goto_1

    #@170
    .line 1154
    .end local v16    # "nfe":Ljava/lang/NumberFormatException;
    .end local v22    # "sign":I
    .restart local v27    # "wday":I
    :cond_12
    add-int/lit8 v27, v27, 0x1

    #@172
    goto :goto_3

    #@173
    .line 1163
    :cond_13
    const/16 v18, 0x1

    #@175
    .line 1164
    goto/16 :goto_1

    #@177
    .line 1166
    .end local v13    # "length":I
    .end local v27    # "wday":I
    :cond_14
    const-string/jumbo v29, "BYMONTHDAY"

    #@17a
    move-object/from16 v0, v29

    #@17c
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17f
    move-result v29

    #@180
    if-eqz v29, :cond_0

    #@182
    .line 1171
    new-instance v8, Ljava/util/StringTokenizer;

    #@184
    const-string/jumbo v29, ","

    #@187
    move-object/from16 v0, v26

    #@189
    move-object/from16 v1, v29

    #@18b
    invoke-direct {v8, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18e
    .line 1172
    .local v8, "days":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->countTokens()I

    #@191
    move-result v5

    #@192
    .line 1173
    .local v5, "count":I
    new-array v6, v5, [I

    #@194
    .line 1174
    .local v6, "dayOfMonth":[I
    const/4 v11, 0x0

    #@195
    .line 1175
    .local v11, "index":I
    :goto_4
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@198
    move-result v29

    #@199
    if-eqz v29, :cond_0

    #@19b
    .line 1177
    add-int/lit8 v12, v11, 0x1

    #@19d
    .end local v11    # "index":I
    .local v12, "index":I
    :try_start_3
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@1a0
    move-result-object v29

    #@1a1
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a4
    move-result v29

    #@1a5
    aput v29, v6, v11
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    #@1a7
    move v11, v12

    #@1a8
    .end local v12    # "index":I
    .restart local v11    # "index":I
    goto :goto_4

    #@1a9
    .line 1178
    .end local v11    # "index":I
    .restart local v12    # "index":I
    :catch_3
    move-exception v16

    #@1aa
    .line 1179
    .restart local v16    # "nfe":Ljava/lang/NumberFormatException;
    const/16 v18, 0x1

    #@1ac
    goto/16 :goto_0

    #@1ae
    .line 1189
    .end local v4    # "attr":Ljava/lang/String;
    .end local v5    # "count":I
    .end local v6    # "dayOfMonth":[I
    .end local v8    # "days":Ljava/util/StringTokenizer;
    .end local v12    # "index":I
    .end local v16    # "nfe":Ljava/lang/NumberFormatException;
    .end local v19    # "prop":Ljava/lang/String;
    .end local v21    # "sep":I
    .end local v26    # "value":Ljava/lang/String;
    :cond_15
    if-nez v28, :cond_16

    #@1b0
    .line 1191
    const/16 v29, 0x0

    #@1b2
    return-object v29

    #@1b3
    .line 1194
    :cond_16
    const/16 v29, 0x0

    #@1b5
    aput-wide v24, p1, v29

    #@1b7
    .line 1197
    if-nez v6, :cond_18

    #@1b9
    .line 1198
    const/16 v29, 0x4

    #@1bb
    move/from16 v0, v29

    #@1bd
    new-array v0, v0, [I

    #@1bf
    move-object/from16 v20, v0

    #@1c1
    .line 1199
    .local v20, "results":[I
    const/16 v29, 0x0

    #@1c3
    const/16 v30, 0x3

    #@1c5
    aput v29, v20, v30

    #@1c7
    .line 1206
    :cond_17
    const/16 v29, 0x0

    #@1c9
    aput v14, v20, v29

    #@1cb
    .line 1207
    const/16 v29, 0x1

    #@1cd
    aput v7, v20, v29

    #@1cf
    .line 1208
    const/16 v29, 0x2

    #@1d1
    aput v17, v20, v29

    #@1d3
    .line 1209
    return-object v20

    #@1d4
    .line 1201
    .end local v20    # "results":[I
    :cond_18
    array-length v0, v6

    #@1d5
    move/from16 v29, v0

    #@1d7
    add-int/lit8 v29, v29, 0x3

    #@1d9
    move/from16 v0, v29

    #@1db
    new-array v0, v0, [I

    #@1dd
    move-object/from16 v20, v0

    #@1df
    .line 1202
    .restart local v20    # "results":[I
    const/4 v9, 0x0

    #@1e0
    .local v9, "i":I
    :goto_5
    array-length v0, v6

    #@1e1
    move/from16 v29, v0

    #@1e3
    move/from16 v0, v29

    #@1e5
    if-ge v9, v0, :cond_17

    #@1e7
    .line 1203
    add-int/lit8 v29, v9, 0x3

    #@1e9
    aget v30, v6, v9

    #@1eb
    aput v30, v20, v29

    #@1ed
    .line 1202
    add-int/lit8 v9, v9, 0x1

    #@1ef
    goto :goto_5
.end method

.method private static toWallTimeRule(Landroid/icu/util/DateTimeRule;II)Landroid/icu/util/DateTimeRule;
    .locals 10
    .param p0, "rule"    # Landroid/icu/util/DateTimeRule;
    .param p1, "rawOffset"    # I
    .param p2, "dstSavings"    # I

    #@0
    .prologue
    .line 1726
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 1727
    return-object p0

    #@7
    .line 1729
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    #@a
    move-result v5

    #@b
    .line 1730
    .local v5, "wallt":I
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    #@e
    move-result v4

    #@f
    const/4 v6, 0x2

    #@10
    if-ne v4, v6, :cond_7

    #@12
    .line 1731
    add-int v4, p1, p2

    #@14
    add-int/2addr v5, v4

    #@15
    .line 1736
    :cond_1
    :goto_0
    const/4 v1, -0x1

    #@16
    .local v1, "month":I
    const/4 v2, 0x0

    #@17
    .local v2, "dom":I
    const/4 v3, 0x0

    #@18
    .local v3, "dow":I
    const/4 v8, -0x1

    #@19
    .line 1737
    .local v8, "dtype":I
    const/4 v7, 0x0

    #@1a
    .line 1738
    .local v7, "dshift":I
    if-gez v5, :cond_8

    #@1c
    .line 1739
    const/4 v7, -0x1

    #@1d
    .line 1740
    const v4, 0x5265c00

    #@20
    add-int/2addr v5, v4

    #@21
    .line 1746
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    #@24
    move-result v1

    #@25
    .line 1747
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    #@28
    move-result v2

    #@29
    .line 1748
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    #@2c
    move-result v3

    #@2d
    .line 1749
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    #@30
    move-result v8

    #@31
    .line 1751
    if-eqz v7, :cond_6

    #@33
    .line 1752
    const/4 v4, 0x1

    #@34
    if-ne v8, v4, :cond_3

    #@36
    .line 1754
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    #@39
    move-result v9

    #@3a
    .line 1755
    .local v9, "wim":I
    if-lez v9, :cond_9

    #@3c
    .line 1756
    const/4 v8, 0x2

    #@3d
    .line 1757
    add-int/lit8 v4, v9, -0x1

    #@3f
    mul-int/lit8 v4, v4, 0x7

    #@41
    add-int/lit8 v2, v4, 0x1

    #@43
    .line 1765
    .end local v9    # "wim":I
    :cond_3
    :goto_2
    add-int/2addr v2, v7

    #@44
    .line 1766
    if-nez v2, :cond_a

    #@46
    .line 1767
    add-int/lit8 v1, v1, -0x1

    #@48
    .line 1768
    if-gez v1, :cond_4

    #@4a
    const/16 v1, 0xb

    #@4c
    .line 1769
    :cond_4
    sget-object v4, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@4e
    aget v2, v4, v1

    #@50
    .line 1775
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    #@52
    .line 1777
    add-int/2addr v3, v7

    #@53
    .line 1778
    const/4 v4, 0x1

    #@54
    if-ge v3, v4, :cond_c

    #@56
    .line 1779
    const/4 v3, 0x7

    #@57
    .line 1787
    :cond_6
    :goto_4
    if-nez v8, :cond_d

    #@59
    .line 1788
    new-instance v0, Landroid/icu/util/DateTimeRule;

    #@5b
    const/4 v4, 0x0

    #@5c
    invoke-direct {v0, v1, v2, v5, v4}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    #@5f
    .line 1793
    .local v0, "modifiedRule":Landroid/icu/util/DateTimeRule;
    :goto_5
    return-object v0

    #@60
    .line 1732
    .end local v0    # "modifiedRule":Landroid/icu/util/DateTimeRule;
    .end local v1    # "month":I
    .end local v2    # "dom":I
    .end local v3    # "dow":I
    .end local v7    # "dshift":I
    .end local v8    # "dtype":I
    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    #@63
    move-result v4

    #@64
    const/4 v6, 0x1

    #@65
    if-ne v4, v6, :cond_1

    #@67
    .line 1733
    add-int/2addr v5, p2

    #@68
    goto :goto_0

    #@69
    .line 1741
    .restart local v1    # "month":I
    .restart local v2    # "dom":I
    .restart local v3    # "dow":I
    .restart local v7    # "dshift":I
    .restart local v8    # "dtype":I
    :cond_8
    const v4, 0x5265c00

    #@6c
    if-lt v5, v4, :cond_2

    #@6e
    .line 1742
    const/4 v7, 0x1

    #@6f
    .line 1743
    const v4, 0x5265c00

    #@72
    sub-int/2addr v5, v4

    #@73
    goto :goto_1

    #@74
    .line 1759
    .restart local v9    # "wim":I
    :cond_9
    const/4 v8, 0x3

    #@75
    .line 1760
    sget-object v4, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@77
    aget v4, v4, v1

    #@79
    add-int/lit8 v6, v9, 0x1

    #@7b
    mul-int/lit8 v6, v6, 0x7

    #@7d
    add-int v2, v4, v6

    #@7f
    goto :goto_2

    #@80
    .line 1770
    .end local v9    # "wim":I
    :cond_a
    sget-object v4, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@82
    aget v4, v4, v1

    #@84
    if-le v2, v4, :cond_5

    #@86
    .line 1771
    add-int/lit8 v1, v1, 0x1

    #@88
    .line 1772
    const/16 v4, 0xb

    #@8a
    if-le v1, v4, :cond_b

    #@8c
    const/4 v1, 0x0

    #@8d
    .line 1773
    :cond_b
    const/4 v2, 0x1

    #@8e
    goto :goto_3

    #@8f
    .line 1780
    :cond_c
    const/4 v4, 0x7

    #@90
    if-le v3, v4, :cond_6

    #@92
    .line 1781
    const/4 v3, 0x1

    #@93
    goto :goto_4

    #@94
    .line 1790
    :cond_d
    new-instance v0, Landroid/icu/util/DateTimeRule;

    #@96
    .line 1791
    const/4 v4, 0x2

    #@97
    if-ne v8, v4, :cond_e

    #@99
    const/4 v4, 0x1

    #@9a
    :goto_6
    const/4 v6, 0x0

    #@9b
    .line 1790
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    #@9e
    .restart local v0    # "modifiedRule":Landroid/icu/util/DateTimeRule;
    goto :goto_5

    #@9f
    .line 1791
    .end local v0    # "modifiedRule":Landroid/icu/util/DateTimeRule;
    :cond_e
    const/4 v4, 0x0

    #@a0
    goto :goto_6
.end method

.method private static writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V
    .locals 17
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "isDst"    # Z
    .param p2, "rule"    # Landroid/icu/util/AnnualTimeZoneRule;
    .param p3, "fromRawOffset"    # I
    .param p4, "fromDSTSavings"    # I
    .param p5, "startTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1688
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    #@3
    move-result-object v4

    #@4
    move/from16 v0, p3

    #@6
    move/from16 v1, p4

    #@8
    invoke-static {v4, v0, v1}, Landroid/icu/util/VTimeZone;->toWallTimeRule(Landroid/icu/util/DateTimeRule;II)Landroid/icu/util/DateTimeRule;

    #@b
    move-result-object v3

    #@c
    .line 1694
    .local v3, "dtrule":Landroid/icu/util/DateTimeRule;
    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    #@f
    move-result v16

    #@10
    .line 1695
    .local v16, "timeInDay":I
    if-gez v16, :cond_1

    #@12
    .line 1696
    rsub-int/lit8 v4, v16, 0x0

    #@14
    int-to-long v5, v4

    #@15
    add-long p5, p5, v5

    #@17
    .line 1701
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    #@1a
    move-result v4

    #@1b
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@1e
    move-result v5

    #@1f
    add-int v8, v4, v5

    #@21
    .line 1702
    .local v8, "toOffset":I
    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    #@24
    move-result v4

    #@25
    packed-switch v4, :pswitch_data_0

    #@28
    .line 1687
    :goto_1
    return-void

    #@29
    .line 1697
    .end local v8    # "toOffset":I
    :cond_1
    const v4, 0x5265c00

    #@2c
    move/from16 v0, v16

    #@2e
    if-lt v0, v4, :cond_0

    #@30
    .line 1698
    const v4, 0x5265bff

    #@33
    sub-int v4, v16, v4

    #@35
    int-to-long v5, v4

    #@36
    sub-long p5, p5, v5

    #@38
    goto :goto_0

    #@39
    .line 1704
    .restart local v8    # "toOffset":I
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    add-int v7, p3, p4

    #@3f
    .line 1705
    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    #@42
    move-result v9

    #@43
    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    #@46
    move-result v10

    #@47
    const-wide v13, 0x7fffffffffffffffL

    #@4c
    move-object/from16 v4, p0

    #@4e
    move/from16 v5, p1

    #@50
    move-wide/from16 v11, p5

    #@52
    .line 1704
    invoke-static/range {v4 .. v14}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOM(Ljava/io/Writer;ZLjava/lang/String;IIIIJJ)V

    #@55
    goto :goto_1

    #@56
    .line 1708
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    add-int v7, p3, p4

    #@5c
    .line 1709
    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    #@5f
    move-result v9

    #@60
    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    #@63
    move-result v10

    #@64
    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    #@67
    move-result v11

    #@68
    const-wide v14, 0x7fffffffffffffffL

    #@6d
    move-object/from16 v4, p0

    #@6f
    move/from16 v5, p1

    #@71
    move-wide/from16 v12, p5

    #@73
    .line 1708
    invoke-static/range {v4 .. v15}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@76
    goto :goto_1

    #@77
    .line 1712
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    add-int v7, p3, p4

    #@7d
    .line 1713
    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    #@80
    move-result v9

    #@81
    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    #@84
    move-result v10

    #@85
    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    #@88
    move-result v11

    #@89
    const-wide v14, 0x7fffffffffffffffL

    #@8e
    move-object/from16 v4, p0

    #@90
    move/from16 v5, p1

    #@92
    move-wide/from16 v12, p5

    #@94
    .line 1712
    invoke-static/range {v4 .. v15}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@97
    goto :goto_1

    #@98
    .line 1716
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    #@9b
    move-result-object v6

    #@9c
    add-int v7, p3, p4

    #@9e
    .line 1717
    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    #@a1
    move-result v9

    #@a2
    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    #@a5
    move-result v10

    #@a6
    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    #@a9
    move-result v11

    #@aa
    const-wide v14, 0x7fffffffffffffffL

    #@af
    move-object/from16 v4, p0

    #@b1
    move/from16 v5, p1

    #@b3
    move-wide/from16 v12, p5

    #@b5
    .line 1716
    invoke-static/range {v4 .. v15}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_LEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@b8
    goto/16 :goto_1

    #@ba
    .line 1702
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static writeFooter(Ljava/io/Writer;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1907
    const-string/jumbo v0, "END"

    #@3
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6
    .line 1908
    const-string/jumbo v0, ":"

    #@9
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@c
    .line 1909
    const-string/jumbo v0, "VTIMEZONE"

    #@f
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@12
    .line 1910
    const-string/jumbo v0, "\r\n"

    #@15
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@18
    .line 1906
    return-void
.end method

.method private writeHeader(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1881
    const-string/jumbo v0, "BEGIN"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6
    .line 1882
    const-string/jumbo v0, ":"

    #@9
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@c
    .line 1883
    const-string/jumbo v0, "VTIMEZONE"

    #@f
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@12
    .line 1884
    const-string/jumbo v0, "\r\n"

    #@15
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@18
    .line 1885
    const-string/jumbo v0, "TZID"

    #@1b
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1e
    .line 1886
    const-string/jumbo v0, ":"

    #@21
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@24
    .line 1887
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@26
    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@2d
    .line 1888
    const-string/jumbo v0, "\r\n"

    #@30
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@33
    .line 1889
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    #@35
    if-eqz v0, :cond_0

    #@37
    .line 1890
    const-string/jumbo v0, "TZURL"

    #@3a
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@3d
    .line 1891
    const-string/jumbo v0, ":"

    #@40
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@43
    .line 1892
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    #@45
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@48
    .line 1893
    const-string/jumbo v0, "\r\n"

    #@4b
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@4e
    .line 1895
    :cond_0
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    #@50
    if-eqz v0, :cond_1

    #@52
    .line 1896
    const-string/jumbo v0, "LAST-MODIFIED"

    #@55
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@58
    .line 1897
    const-string/jumbo v0, ":"

    #@5b
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@5e
    .line 1898
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    #@60
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@63
    move-result-wide v0

    #@64
    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getUTCDateTimeString(J)Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6b
    .line 1899
    const-string/jumbo v0, "\r\n"

    #@6e
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@71
    .line 1880
    :cond_1
    return-void
.end method

.method private writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V
    .locals 86
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "basictz"    # Landroid/icu/util/BasicTimeZone;
    .param p3, "customProperties"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1243
    invoke-direct/range {p0 .. p1}, Landroid/icu/util/VTimeZone;->writeHeader(Ljava/io/Writer;)V

    #@3
    .line 1245
    if-eqz p3, :cond_1

    #@5
    move-object/from16 v0, p3

    #@7
    array-length v5, v0

    #@8
    if-lez v5, :cond_1

    #@a
    .line 1246
    const/16 v72, 0x0

    #@c
    .local v72, "i":I
    :goto_0
    move-object/from16 v0, p3

    #@e
    array-length v5, v0

    #@f
    move/from16 v0, v72

    #@11
    if-ge v0, v5, :cond_1

    #@13
    .line 1247
    aget-object v5, p3, v72

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 1248
    aget-object v5, p3, v72

    #@19
    move-object/from16 v0, p1

    #@1b
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1e
    .line 1249
    const-string/jumbo v5, "\r\n"

    #@21
    move-object/from16 v0, p1

    #@23
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@26
    .line 1246
    :cond_0
    add-int/lit8 v72, v72, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1254
    .end local v72    # "i":I
    :cond_1
    const-wide/high16 v80, -0x8000000000000000L

    #@2b
    .line 1255
    .local v80, "t":J
    const/4 v7, 0x0

    #@2c
    .line 1256
    .local v7, "dstName":Ljava/lang/String;
    const/4 v8, 0x0

    #@2d
    .line 1257
    .local v8, "dstFromOffset":I
    const/16 v53, 0x0

    #@2f
    .line 1258
    .local v53, "dstFromDSTSavings":I
    const/4 v9, 0x0

    #@30
    .line 1259
    .local v9, "dstToOffset":I
    const/16 v66, 0x0

    #@32
    .line 1260
    .local v66, "dstStartYear":I
    const/16 v17, 0x0

    #@34
    .line 1261
    .local v17, "dstMonth":I
    const/16 v19, 0x0

    #@36
    .line 1262
    .local v19, "dstDayOfWeek":I
    const/16 v18, 0x0

    #@38
    .line 1263
    .local v18, "dstWeekInMonth":I
    const/16 v44, 0x0

    #@3a
    .line 1264
    .local v44, "dstMillisInDay":I
    const-wide/16 v10, 0x0

    #@3c
    .line 1265
    .local v10, "dstStartTime":J
    const-wide/16 v22, 0x0

    #@3e
    .line 1266
    .local v22, "dstUntilTime":J
    const/4 v4, 0x0

    #@3f
    .line 1267
    .local v4, "dstCount":I
    const/16 v51, 0x0

    #@41
    .line 1269
    .local v51, "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    const/16 v27, 0x0

    #@43
    .line 1270
    .local v27, "stdName":Ljava/lang/String;
    const/16 v28, 0x0

    #@45
    .line 1271
    .local v28, "stdFromOffset":I
    const/16 v77, 0x0

    #@47
    .line 1272
    .local v77, "stdFromDSTSavings":I
    const/16 v29, 0x0

    #@49
    .line 1273
    .local v29, "stdToOffset":I
    const/16 v79, 0x0

    #@4b
    .line 1274
    .local v79, "stdStartYear":I
    const/16 v37, 0x0

    #@4d
    .line 1275
    .local v37, "stdMonth":I
    const/16 v39, 0x0

    #@4f
    .line 1276
    .local v39, "stdDayOfWeek":I
    const/16 v38, 0x0

    #@51
    .line 1277
    .local v38, "stdWeekInMonth":I
    const/16 v78, 0x0

    #@53
    .line 1278
    .local v78, "stdMillisInDay":I
    const-wide/16 v30, 0x0

    #@55
    .line 1279
    .local v30, "stdStartTime":J
    const-wide/16 v42, 0x0

    #@57
    .line 1280
    .local v42, "stdUntilTime":J
    const/16 v76, 0x0

    #@59
    .line 1281
    .local v76, "stdCount":I
    const/16 v68, 0x0

    #@5b
    .line 1283
    .local v68, "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    const/4 v5, 0x6

    #@5c
    new-array v0, v5, [I

    #@5e
    move-object/from16 v67, v0

    #@60
    .line 1284
    .local v67, "dtfields":[I
    const/16 v71, 0x0

    #@62
    .line 1288
    .end local v7    # "dstName":Ljava/lang/String;
    .end local v27    # "stdName":Ljava/lang/String;
    .end local v51    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v68    # "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v71, "hasTransitions":Z
    :cond_2
    const/4 v5, 0x0

    #@63
    move-object/from16 v0, p2

    #@65
    move-wide/from16 v1, v80

    #@67
    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@6a
    move-result-object v83

    #@6b
    .line 1289
    .local v83, "tzt":Landroid/icu/util/TimeZoneTransition;
    if-nez v83, :cond_4

    #@6d
    .line 1399
    :goto_1
    if-nez v71, :cond_12

    #@6f
    .line 1401
    const-wide/16 v12, 0x0

    #@71
    move-object/from16 v0, p2

    #@73
    invoke-virtual {v0, v12, v13}, Landroid/icu/util/BasicTimeZone;->getOffset(J)I

    #@76
    move-result v48

    #@77
    .line 1402
    .local v48, "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/BasicTimeZone;->getRawOffset()I

    #@7a
    move-result v5

    #@7b
    move/from16 v0, v48

    #@7d
    if-eq v0, v5, :cond_11

    #@7f
    const/16 v46, 0x1

    #@81
    .line 1403
    .local v46, "isDst":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    #@84
    move-result-object v5

    #@85
    move/from16 v0, v46

    #@87
    invoke-static {v5, v0}, Landroid/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    #@8a
    move-result-object v47

    #@8b
    .line 1404
    move/from16 v0, v48

    #@8d
    int-to-long v12, v0

    #@8e
    const-wide/16 v14, 0x0

    #@90
    sub-long v50, v14, v12

    #@92
    const/16 v52, 0x0

    #@94
    move-object/from16 v45, p1

    #@96
    move/from16 v49, v48

    #@98
    .line 1403
    invoke-static/range {v45 .. v52}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    #@9b
    .line 1478
    .end local v46    # "isDst":Z
    .end local v48    # "offset":I
    :cond_3
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/icu/util/VTimeZone;->writeFooter(Ljava/io/Writer;)V

    #@9e
    .line 1241
    return-void

    #@9f
    .line 1292
    :cond_4
    const/16 v71, 0x1

    #@a1
    .line 1293
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@a4
    move-result-wide v80

    #@a5
    .line 1294
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    #@ac
    move-result-object v73

    #@ad
    .line 1295
    .local v73, "name":Ljava/lang/String;
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@b0
    move-result-object v5

    #@b1
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@b4
    move-result v5

    #@b5
    if-eqz v5, :cond_9

    #@b7
    const/16 v46, 0x1

    #@b9
    .line 1296
    .restart local v46    # "isDst":Z
    :goto_4
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@bc
    move-result-object v5

    #@bd
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@c0
    move-result v5

    #@c1
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@c4
    move-result-object v6

    #@c5
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@c8
    move-result v6

    #@c9
    add-int v70, v5, v6

    #@cb
    .line 1297
    .local v70, "fromOffset":I
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@ce
    move-result-object v5

    #@cf
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@d2
    move-result v69

    #@d3
    .line 1298
    .local v69, "fromDSTSavings":I
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@d6
    move-result-object v5

    #@d7
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@da
    move-result v5

    #@db
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@de
    move-result-object v6

    #@df
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@e2
    move-result v6

    #@e3
    add-int v82, v5, v6

    #@e5
    .line 1299
    .local v82, "toOffset":I
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@e8
    move-result-wide v12

    #@e9
    move/from16 v0, v70

    #@eb
    int-to-long v14, v0

    #@ec
    add-long/2addr v12, v14

    #@ed
    move-object/from16 v0, v67

    #@ef
    invoke-static {v12, v13, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@f2
    .line 1300
    const/4 v5, 0x0

    #@f3
    aget v5, v67, v5

    #@f5
    const/4 v6, 0x1

    #@f6
    aget v6, v67, v6

    #@f8
    const/4 v12, 0x2

    #@f9
    aget v12, v67, v12

    #@fb
    invoke-static {v5, v6, v12}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    #@fe
    move-result v84

    #@ff
    .line 1301
    .local v84, "weekInMonth":I
    const/4 v5, 0x0

    #@100
    aget v85, v67, v5

    #@102
    .line 1302
    .local v85, "year":I
    const/16 v75, 0x0

    #@104
    .line 1303
    .local v75, "sameRule":Z
    if-eqz v46, :cond_b

    #@106
    .line 1304
    if-nez v51, :cond_5

    #@108
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@10b
    move-result-object v5

    #@10c
    instance-of v5, v5, Landroid/icu/util/AnnualTimeZoneRule;

    #@10e
    if-eqz v5, :cond_5

    #@110
    .line 1305
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@113
    move-result-object v5

    #@114
    check-cast v5, Landroid/icu/util/AnnualTimeZoneRule;

    #@116
    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    #@119
    move-result v5

    #@11a
    const v6, 0x7fffffff

    #@11d
    if-ne v5, v6, :cond_5

    #@11f
    .line 1306
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@122
    move-result-object v51

    #@123
    check-cast v51, Landroid/icu/util/AnnualTimeZoneRule;

    #@125
    .line 1309
    :cond_5
    if-lez v4, :cond_7

    #@127
    .line 1310
    add-int v5, v66, v4

    #@129
    move/from16 v0, v85

    #@12b
    if-ne v0, v5, :cond_6

    #@12d
    .line 1311
    move-object/from16 v0, v73

    #@12f
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@132
    move-result v5

    #@133
    .line 1310
    if-eqz v5, :cond_6

    #@135
    .line 1312
    move/from16 v0, v70

    #@137
    if-ne v8, v0, :cond_6

    #@139
    .line 1313
    move/from16 v0, v82

    #@13b
    if-ne v9, v0, :cond_6

    #@13d
    .line 1314
    const/4 v5, 0x1

    #@13e
    aget v5, v67, v5

    #@140
    move/from16 v0, v17

    #@142
    if-ne v0, v5, :cond_6

    #@144
    .line 1315
    const/4 v5, 0x3

    #@145
    aget v5, v67, v5

    #@147
    move/from16 v0, v19

    #@149
    if-ne v0, v5, :cond_6

    #@14b
    .line 1316
    move/from16 v0, v18

    #@14d
    move/from16 v1, v84

    #@14f
    if-ne v0, v1, :cond_6

    #@151
    .line 1317
    const/4 v5, 0x5

    #@152
    aget v5, v67, v5

    #@154
    move/from16 v0, v44

    #@156
    if-ne v0, v5, :cond_6

    #@158
    .line 1319
    move-wide/from16 v22, v80

    #@15a
    .line 1320
    add-int/lit8 v4, v4, 0x1

    #@15c
    .line 1321
    const/16 v75, 0x1

    #@15e
    .line 1323
    :cond_6
    if-nez v75, :cond_7

    #@160
    .line 1324
    const/4 v5, 0x1

    #@161
    if-ne v4, v5, :cond_a

    #@163
    .line 1325
    const/4 v6, 0x1

    #@164
    .line 1326
    const/4 v12, 0x1

    #@165
    move-object/from16 v5, p1

    #@167
    .line 1325
    invoke-static/range {v5 .. v12}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    #@16a
    .line 1333
    :cond_7
    :goto_5
    if-nez v75, :cond_8

    #@16c
    .line 1335
    move-object/from16 v7, v73

    #@16e
    .line 1336
    .local v7, "dstName":Ljava/lang/String;
    move/from16 v8, v70

    #@170
    .line 1337
    move/from16 v53, v69

    #@172
    .line 1338
    move/from16 v9, v82

    #@174
    .line 1339
    move/from16 v66, v85

    #@176
    .line 1340
    const/4 v5, 0x1

    #@177
    aget v17, v67, v5

    #@179
    .line 1341
    const/4 v5, 0x3

    #@17a
    aget v19, v67, v5

    #@17c
    .line 1342
    move/from16 v18, v84

    #@17e
    .line 1343
    const/4 v5, 0x5

    #@17f
    aget v44, v67, v5

    #@181
    .line 1344
    move-wide/from16 v22, v80

    #@183
    move-wide/from16 v10, v80

    #@185
    .line 1345
    const/4 v4, 0x1

    #@186
    .line 1347
    .end local v7    # "dstName":Ljava/lang/String;
    :cond_8
    if-eqz v68, :cond_2

    #@188
    if-eqz v51, :cond_2

    #@18a
    goto/16 :goto_1

    #@18c
    .line 1295
    .end local v46    # "isDst":Z
    .end local v69    # "fromDSTSavings":I
    .end local v70    # "fromOffset":I
    .end local v75    # "sameRule":Z
    .end local v82    # "toOffset":I
    .end local v84    # "weekInMonth":I
    .end local v85    # "year":I
    :cond_9
    const/16 v46, 0x0

    #@18e
    .restart local v46    # "isDst":Z
    goto/16 :goto_4

    #@190
    .line 1328
    .restart local v69    # "fromDSTSavings":I
    .restart local v70    # "fromOffset":I
    .restart local v75    # "sameRule":Z
    .restart local v82    # "toOffset":I
    .restart local v84    # "weekInMonth":I
    .restart local v85    # "year":I
    :cond_a
    const/4 v13, 0x1

    #@191
    move-object/from16 v12, p1

    #@193
    move-object v14, v7

    #@194
    move v15, v8

    #@195
    move/from16 v16, v9

    #@197
    move-wide/from16 v20, v10

    #@199
    invoke-static/range {v12 .. v23}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@19c
    goto :goto_5

    #@19d
    .line 1351
    :cond_b
    if-nez v68, :cond_c

    #@19f
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@1a2
    move-result-object v5

    #@1a3
    instance-of v5, v5, Landroid/icu/util/AnnualTimeZoneRule;

    #@1a5
    if-eqz v5, :cond_c

    #@1a7
    .line 1352
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@1aa
    move-result-object v5

    #@1ab
    check-cast v5, Landroid/icu/util/AnnualTimeZoneRule;

    #@1ad
    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    #@1b0
    move-result v5

    #@1b1
    const v6, 0x7fffffff

    #@1b4
    if-ne v5, v6, :cond_c

    #@1b6
    .line 1353
    invoke-virtual/range {v83 .. v83}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@1b9
    move-result-object v68

    #@1ba
    check-cast v68, Landroid/icu/util/AnnualTimeZoneRule;

    #@1bc
    .line 1356
    :cond_c
    if-lez v76, :cond_e

    #@1be
    .line 1357
    add-int v5, v79, v76

    #@1c0
    move/from16 v0, v85

    #@1c2
    if-ne v0, v5, :cond_d

    #@1c4
    .line 1358
    move-object/from16 v0, v73

    #@1c6
    move-object/from16 v1, v27

    #@1c8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1cb
    move-result v5

    #@1cc
    .line 1357
    if-eqz v5, :cond_d

    #@1ce
    .line 1359
    move/from16 v0, v28

    #@1d0
    move/from16 v1, v70

    #@1d2
    if-ne v0, v1, :cond_d

    #@1d4
    .line 1360
    move/from16 v0, v29

    #@1d6
    move/from16 v1, v82

    #@1d8
    if-ne v0, v1, :cond_d

    #@1da
    .line 1361
    const/4 v5, 0x1

    #@1db
    aget v5, v67, v5

    #@1dd
    move/from16 v0, v37

    #@1df
    if-ne v0, v5, :cond_d

    #@1e1
    .line 1362
    const/4 v5, 0x3

    #@1e2
    aget v5, v67, v5

    #@1e4
    move/from16 v0, v39

    #@1e6
    if-ne v0, v5, :cond_d

    #@1e8
    .line 1363
    move/from16 v0, v38

    #@1ea
    move/from16 v1, v84

    #@1ec
    if-ne v0, v1, :cond_d

    #@1ee
    .line 1364
    const/4 v5, 0x5

    #@1ef
    aget v5, v67, v5

    #@1f1
    move/from16 v0, v78

    #@1f3
    if-ne v0, v5, :cond_d

    #@1f5
    .line 1366
    move-wide/from16 v42, v80

    #@1f7
    .line 1367
    add-int/lit8 v76, v76, 0x1

    #@1f9
    .line 1368
    const/16 v75, 0x1

    #@1fb
    .line 1370
    :cond_d
    if-nez v75, :cond_e

    #@1fd
    .line 1371
    const/4 v5, 0x1

    #@1fe
    move/from16 v0, v76

    #@200
    if-ne v0, v5, :cond_10

    #@202
    .line 1372
    const/16 v26, 0x0

    #@204
    .line 1373
    const/16 v32, 0x1

    #@206
    move-object/from16 v25, p1

    #@208
    .line 1372
    invoke-static/range {v25 .. v32}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    #@20b
    .line 1380
    :cond_e
    :goto_6
    if-nez v75, :cond_f

    #@20d
    .line 1382
    move-object/from16 v27, v73

    #@20f
    .line 1383
    .local v27, "stdName":Ljava/lang/String;
    move/from16 v28, v70

    #@211
    .line 1384
    move/from16 v77, v69

    #@213
    .line 1385
    move/from16 v29, v82

    #@215
    .line 1386
    move/from16 v79, v85

    #@217
    .line 1387
    const/4 v5, 0x1

    #@218
    aget v37, v67, v5

    #@21a
    .line 1388
    const/4 v5, 0x3

    #@21b
    aget v39, v67, v5

    #@21d
    .line 1389
    move/from16 v38, v84

    #@21f
    .line 1390
    const/4 v5, 0x5

    #@220
    aget v78, v67, v5

    #@222
    .line 1391
    move-wide/from16 v42, v80

    #@224
    move-wide/from16 v30, v80

    #@226
    .line 1392
    const/16 v76, 0x1

    #@228
    .line 1394
    .end local v27    # "stdName":Ljava/lang/String;
    :cond_f
    if-eqz v68, :cond_2

    #@22a
    if-eqz v51, :cond_2

    #@22c
    goto/16 :goto_1

    #@22e
    .line 1375
    :cond_10
    const/16 v33, 0x0

    #@230
    move-object/from16 v32, p1

    #@232
    move-object/from16 v34, v27

    #@234
    move/from16 v35, v28

    #@236
    move/from16 v36, v29

    #@238
    move-wide/from16 v40, v30

    #@23a
    invoke-static/range {v32 .. v43}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@23d
    goto :goto_6

    #@23e
    .line 1402
    .end local v46    # "isDst":Z
    .end local v69    # "fromDSTSavings":I
    .end local v70    # "fromOffset":I
    .end local v73    # "name":Ljava/lang/String;
    .end local v75    # "sameRule":Z
    .end local v82    # "toOffset":I
    .end local v84    # "weekInMonth":I
    .end local v85    # "year":I
    .restart local v48    # "offset":I
    :cond_11
    const/16 v46, 0x0

    #@240
    .restart local v46    # "isDst":Z
    goto/16 :goto_2

    #@242
    .line 1406
    .end local v46    # "isDst":Z
    .end local v48    # "offset":I
    :cond_12
    if-lez v4, :cond_13

    #@244
    .line 1407
    if-nez v51, :cond_15

    #@246
    .line 1408
    const/4 v5, 0x1

    #@247
    if-ne v4, v5, :cond_14

    #@249
    .line 1409
    const/4 v6, 0x1

    #@24a
    .line 1410
    const/4 v12, 0x1

    #@24b
    move-object/from16 v5, p1

    #@24d
    .line 1409
    invoke-static/range {v5 .. v12}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    #@250
    .line 1441
    :cond_13
    :goto_7
    if-lez v76, :cond_3

    #@252
    .line 1442
    if-nez v68, :cond_1b

    #@254
    .line 1443
    const/4 v5, 0x1

    #@255
    move/from16 v0, v76

    #@257
    if-ne v0, v5, :cond_1a

    #@259
    .line 1444
    const/16 v26, 0x0

    #@25b
    .line 1445
    const/16 v32, 0x1

    #@25d
    move-object/from16 v25, p1

    #@25f
    .line 1444
    invoke-static/range {v25 .. v32}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    #@262
    goto/16 :goto_3

    #@264
    .line 1412
    :cond_14
    const/4 v13, 0x1

    #@265
    move-object/from16 v12, p1

    #@267
    move-object v14, v7

    #@268
    move v15, v8

    #@269
    move/from16 v16, v9

    #@26b
    move-wide/from16 v20, v10

    #@26d
    invoke-static/range {v12 .. v23}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@270
    goto :goto_7

    #@271
    .line 1416
    :cond_15
    const/4 v5, 0x1

    #@272
    if-ne v4, v5, :cond_16

    #@274
    .line 1418
    sub-int v52, v8, v53

    #@276
    .line 1417
    const/16 v50, 0x1

    #@278
    move-object/from16 v49, p1

    #@27a
    move-wide/from16 v54, v10

    #@27c
    invoke-static/range {v49 .. v55}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    #@27f
    goto :goto_7

    #@280
    .line 1421
    :cond_16
    invoke-virtual/range {v51 .. v51}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    #@283
    move-result-object v5

    #@284
    move/from16 v0, v17

    #@286
    move/from16 v1, v18

    #@288
    move/from16 v2, v19

    #@28a
    invoke-static {v0, v1, v2, v5}, Landroid/icu/util/VTimeZone;->isEquivalentDateRule(IIILandroid/icu/util/DateTimeRule;)Z

    #@28d
    move-result v5

    #@28e
    if-eqz v5, :cond_17

    #@290
    .line 1422
    const/16 v55, 0x1

    #@292
    .line 1423
    const-wide v64, 0x7fffffffffffffffL

    #@297
    move-object/from16 v54, p1

    #@299
    move-object/from16 v56, v7

    #@29b
    move/from16 v57, v8

    #@29d
    move/from16 v58, v9

    #@29f
    move/from16 v59, v17

    #@2a1
    move/from16 v60, v18

    #@2a3
    move/from16 v61, v19

    #@2a5
    move-wide/from16 v62, v10

    #@2a7
    .line 1422
    invoke-static/range {v54 .. v65}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@2aa
    goto :goto_7

    #@2ab
    .line 1426
    :cond_17
    const/4 v13, 0x1

    #@2ac
    move-object/from16 v12, p1

    #@2ae
    move-object v14, v7

    #@2af
    move v15, v8

    #@2b0
    move/from16 v16, v9

    #@2b2
    move-wide/from16 v20, v10

    #@2b4
    invoke-static/range {v12 .. v23}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@2b7
    .line 1430
    sub-int v24, v8, v53

    #@2b9
    const/16 v26, 0x0

    #@2bb
    move-object/from16 v21, v51

    #@2bd
    move/from16 v25, v53

    #@2bf
    .line 1429
    invoke-virtual/range {v21 .. v26}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@2c2
    move-result-object v74

    #@2c3
    .line 1432
    .local v74, "nextStart":Ljava/util/Date;
    sget-boolean v5, Landroid/icu/util/VTimeZone;->-assertionsDisabled:Z

    #@2c5
    if-nez v5, :cond_19

    #@2c7
    if-eqz v74, :cond_18

    #@2c9
    const/4 v5, 0x1

    #@2ca
    :goto_8
    if-nez v5, :cond_19

    #@2cc
    new-instance v5, Ljava/lang/AssertionError;

    #@2ce
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@2d1
    throw v5

    #@2d2
    :cond_18
    const/4 v5, 0x0

    #@2d3
    goto :goto_8

    #@2d4
    .line 1433
    :cond_19
    if-eqz v74, :cond_13

    #@2d6
    .line 1435
    sub-int v52, v8, v53

    #@2d8
    invoke-virtual/range {v74 .. v74}, Ljava/util/Date;->getTime()J

    #@2db
    move-result-wide v54

    #@2dc
    .line 1434
    const/16 v50, 0x1

    #@2de
    move-object/from16 v49, p1

    #@2e0
    invoke-static/range {v49 .. v55}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    #@2e3
    goto/16 :goto_7

    #@2e5
    .line 1447
    .end local v74    # "nextStart":Ljava/util/Date;
    :cond_1a
    const/16 v33, 0x0

    #@2e7
    move-object/from16 v32, p1

    #@2e9
    move-object/from16 v34, v27

    #@2eb
    move/from16 v35, v28

    #@2ed
    move/from16 v36, v29

    #@2ef
    move-wide/from16 v40, v30

    #@2f1
    invoke-static/range {v32 .. v43}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@2f4
    goto/16 :goto_3

    #@2f6
    .line 1451
    :cond_1b
    const/4 v5, 0x1

    #@2f7
    move/from16 v0, v76

    #@2f9
    if-ne v0, v5, :cond_1c

    #@2fb
    .line 1453
    sub-int v58, v28, v77

    #@2fd
    .line 1452
    const/16 v56, 0x0

    #@2ff
    move-object/from16 v55, p1

    #@301
    move-object/from16 v57, v68

    #@303
    move/from16 v59, v77

    #@305
    move-wide/from16 v60, v30

    #@307
    invoke-static/range {v55 .. v61}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    #@30a
    goto/16 :goto_3

    #@30c
    .line 1456
    :cond_1c
    invoke-virtual/range {v68 .. v68}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    #@30f
    move-result-object v5

    #@310
    move/from16 v0, v37

    #@312
    move/from16 v1, v38

    #@314
    move/from16 v2, v39

    #@316
    invoke-static {v0, v1, v2, v5}, Landroid/icu/util/VTimeZone;->isEquivalentDateRule(IIILandroid/icu/util/DateTimeRule;)Z

    #@319
    move-result v5

    #@31a
    if-eqz v5, :cond_1d

    #@31c
    .line 1457
    const/16 v55, 0x0

    #@31e
    .line 1458
    const-wide v64, 0x7fffffffffffffffL

    #@323
    move-object/from16 v54, p1

    #@325
    move-object/from16 v56, v27

    #@327
    move/from16 v57, v28

    #@329
    move/from16 v58, v29

    #@32b
    move/from16 v59, v37

    #@32d
    move/from16 v60, v38

    #@32f
    move/from16 v61, v39

    #@331
    move-wide/from16 v62, v30

    #@333
    .line 1457
    invoke-static/range {v54 .. v65}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@336
    goto/16 :goto_3

    #@338
    .line 1461
    :cond_1d
    const/16 v33, 0x0

    #@33a
    move-object/from16 v32, p1

    #@33c
    move-object/from16 v34, v27

    #@33e
    move/from16 v35, v28

    #@340
    move/from16 v36, v29

    #@342
    move-wide/from16 v40, v30

    #@344
    invoke-static/range {v32 .. v43}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@347
    .line 1465
    sub-int v58, v28, v77

    #@349
    const/16 v60, 0x0

    #@34b
    move-object/from16 v55, v68

    #@34d
    move-wide/from16 v56, v42

    #@34f
    move/from16 v59, v77

    #@351
    .line 1464
    invoke-virtual/range {v55 .. v60}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@354
    move-result-object v74

    #@355
    .line 1467
    .restart local v74    # "nextStart":Ljava/util/Date;
    sget-boolean v5, Landroid/icu/util/VTimeZone;->-assertionsDisabled:Z

    #@357
    if-nez v5, :cond_1f

    #@359
    if-eqz v74, :cond_1e

    #@35b
    const/4 v5, 0x1

    #@35c
    :goto_9
    if-nez v5, :cond_1f

    #@35e
    new-instance v5, Ljava/lang/AssertionError;

    #@360
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@363
    throw v5

    #@364
    :cond_1e
    const/4 v5, 0x0

    #@365
    goto :goto_9

    #@366
    .line 1468
    :cond_1f
    if-eqz v74, :cond_3

    #@368
    .line 1470
    sub-int v58, v28, v77

    #@36a
    invoke-virtual/range {v74 .. v74}, Ljava/util/Date;->getTime()J

    #@36d
    move-result-wide v60

    #@36e
    .line 1469
    const/16 v56, 0x0

    #@370
    move-object/from16 v55, p1

    #@372
    move-object/from16 v57, v68

    #@374
    move/from16 v59, v77

    #@376
    invoke-static/range {v55 .. v61}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    #@379
    goto/16 :goto_3
.end method

.method private static writeZonePropsByDOM(Ljava/io/Writer;ZLjava/lang/String;IIIIJJ)V
    .locals 9
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "isDst"    # Z
    .param p2, "tzname"    # Ljava/lang/String;
    .param p3, "fromOffset"    # I
    .param p4, "toOffset"    # I
    .param p5, "month"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "startTime"    # J
    .param p9, "untilTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    move-object v1, p0

    #@1
    move v2, p1

    #@2
    move-object v3, p2

    #@3
    move v4, p3

    #@4
    move v5, p4

    #@5
    move-wide/from16 v6, p7

    #@7
    .line 1539
    invoke-static/range {v1 .. v7}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    #@a
    .line 1541
    invoke-static {p0, p5}, Landroid/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    #@d
    .line 1542
    const-string/jumbo v0, "BYMONTHDAY"

    #@10
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@13
    .line 1543
    const-string/jumbo v0, "="

    #@16
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@19
    .line 1544
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@20
    .line 1546
    const-wide v0, 0x7fffffffffffffffL

    #@25
    cmp-long v0, p9, v0

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 1547
    int-to-long v0, p3

    #@2a
    add-long v0, v0, p9

    #@2c
    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-static {p0, v0}, Landroid/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    #@33
    .line 1549
    :cond_0
    const-string/jumbo v0, "\r\n"

    #@36
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@39
    .line 1551
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    #@3c
    .line 1538
    return-void
.end method

.method private static writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .locals 8
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "isDst"    # Z
    .param p2, "tzname"    # Ljava/lang/String;
    .param p3, "fromOffset"    # I
    .param p4, "toOffset"    # I
    .param p5, "month"    # I
    .param p6, "weekInMonth"    # I
    .param p7, "dayOfWeek"    # I
    .param p8, "startTime"    # J
    .param p10, "untilTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    move-object v1, p0

    #@1
    move v2, p1

    #@2
    move-object v3, p2

    #@3
    move v4, p3

    #@4
    move v5, p4

    #@5
    move-wide/from16 v6, p8

    #@7
    .line 1559
    invoke-static/range {v1 .. v7}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    #@a
    .line 1561
    invoke-static {p0, p5}, Landroid/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    #@d
    .line 1562
    const-string/jumbo v0, "BYDAY"

    #@10
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@13
    .line 1563
    const-string/jumbo v0, "="

    #@16
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@19
    .line 1564
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@20
    .line 1565
    sget-object v0, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    #@22
    add-int/lit8 v1, p7, -0x1

    #@24
    aget-object v0, v0, v1

    #@26
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@29
    .line 1567
    const-wide v0, 0x7fffffffffffffffL

    #@2e
    cmp-long v0, p10, v0

    #@30
    if-eqz v0, :cond_0

    #@32
    .line 1568
    int-to-long v0, p3

    #@33
    add-long v0, v0, p10

    #@35
    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-static {p0, v0}, Landroid/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    #@3c
    .line 1570
    :cond_0
    const-string/jumbo v0, "\r\n"

    #@3f
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@42
    .line 1572
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    #@45
    .line 1558
    return-void
.end method

.method private static writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .locals 24
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "isDst"    # Z
    .param p2, "tzname"    # Ljava/lang/String;
    .param p3, "fromOffset"    # I
    .param p4, "toOffset"    # I
    .param p5, "month"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "dayOfWeek"    # I
    .param p8, "startTime"    # J
    .param p10, "untilTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1581
    rem-int/lit8 v2, p6, 0x7

    #@2
    const/4 v3, 0x1

    #@3
    if-ne v2, v3, :cond_0

    #@5
    .line 1584
    add-int/lit8 v2, p6, 0x6

    #@7
    div-int/lit8 v8, v2, 0x7

    #@9
    move-object/from16 v2, p0

    #@b
    move/from16 v3, p1

    #@d
    move-object/from16 v4, p2

    #@f
    move/from16 v5, p3

    #@11
    move/from16 v6, p4

    #@13
    move/from16 v7, p5

    #@15
    move/from16 v9, p7

    #@17
    move-wide/from16 v10, p8

    #@19
    move-wide/from16 v12, p10

    #@1b
    .line 1583
    invoke-static/range {v2 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@1e
    .line 1579
    :goto_0
    return-void

    #@1f
    .line 1585
    :cond_0
    const/4 v2, 0x1

    #@20
    move/from16 v0, p5

    #@22
    if-eq v0, v2, :cond_1

    #@24
    sget-object v2, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@26
    aget v2, v2, p5

    #@28
    sub-int v2, v2, p6

    #@2a
    rem-int/lit8 v2, v2, 0x7

    #@2c
    const/4 v3, 0x6

    #@2d
    if-ne v2, v3, :cond_1

    #@2f
    .line 1588
    sget-object v2, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@31
    aget v2, v2, p5

    #@33
    sub-int v2, v2, p6

    #@35
    add-int/lit8 v2, v2, 0x1

    #@37
    div-int/lit8 v2, v2, 0x7

    #@39
    mul-int/lit8 v8, v2, -0x1

    #@3b
    move-object/from16 v2, p0

    #@3d
    move/from16 v3, p1

    #@3f
    move-object/from16 v4, p2

    #@41
    move/from16 v5, p3

    #@43
    move/from16 v6, p4

    #@45
    move/from16 v7, p5

    #@47
    move/from16 v9, p7

    #@49
    move-wide/from16 v10, p8

    #@4b
    move-wide/from16 v12, p10

    #@4d
    .line 1587
    invoke-static/range {v2 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@50
    goto :goto_0

    #@51
    :cond_1
    move-object/from16 v3, p0

    #@53
    move/from16 v4, p1

    #@55
    move-object/from16 v5, p2

    #@57
    move/from16 v6, p3

    #@59
    move/from16 v7, p4

    #@5b
    move-wide/from16 v8, p8

    #@5d
    .line 1591
    invoke-static/range {v3 .. v9}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    #@60
    .line 1594
    move/from16 v17, p6

    #@62
    .line 1595
    .local v17, "startDay":I
    const/16 v19, 0x7

    #@64
    .line 1597
    .local v19, "currentMonthDays":I
    if-gtz p6, :cond_4

    #@66
    .line 1599
    rsub-int/lit8 v7, p6, 0x1

    #@68
    .line 1600
    .local v7, "prevMonthDays":I
    rsub-int/lit8 v19, v7, 0x7

    #@6a
    .line 1602
    add-int/lit8 v2, p5, -0x1

    #@6c
    if-gez v2, :cond_3

    #@6e
    const/16 v4, 0xb

    #@70
    .line 1607
    .local v4, "prevMonth":I
    :goto_1
    neg-int v5, v7

    #@71
    const-wide v8, 0x7fffffffffffffffL

    #@76
    move-object/from16 v3, p0

    #@78
    move/from16 v6, p7

    #@7a
    move/from16 v10, p3

    #@7c
    invoke-static/range {v3 .. v10}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    #@7f
    .line 1610
    const/16 v17, 0x1

    #@81
    .end local v4    # "prevMonth":I
    .end local v7    # "prevMonthDays":I
    :cond_2
    :goto_2
    move-object/from16 v15, p0

    #@83
    move/from16 v16, p5

    #@85
    move/from16 v18, p7

    #@87
    move-wide/from16 v20, p10

    #@89
    move/from16 v22, p3

    #@8b
    .line 1621
    invoke-static/range {v15 .. v22}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    #@8e
    .line 1622
    invoke-static/range {p0 .. p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    #@91
    goto :goto_0

    #@92
    .line 1602
    .restart local v7    # "prevMonthDays":I
    :cond_3
    add-int/lit8 v4, p5, -0x1

    #@94
    .restart local v4    # "prevMonth":I
    goto :goto_1

    #@95
    .line 1611
    .end local v4    # "prevMonth":I
    .end local v7    # "prevMonthDays":I
    :cond_4
    add-int/lit8 v2, p6, 0x6

    #@97
    sget-object v3, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@99
    aget v3, v3, p5

    #@9b
    if-le v2, v3, :cond_2

    #@9d
    .line 1614
    add-int/lit8 v2, p6, 0x6

    #@9f
    sget-object v3, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@a1
    aget v3, v3, p5

    #@a3
    sub-int v13, v2, v3

    #@a5
    .line 1615
    .local v13, "nextMonthDays":I
    rsub-int/lit8 v19, v13, 0x7

    #@a7
    .line 1617
    add-int/lit8 v2, p5, 0x1

    #@a9
    const/16 v3, 0xb

    #@ab
    if-le v2, v3, :cond_5

    #@ad
    const/4 v10, 0x0

    #@ae
    .line 1619
    .local v10, "nextMonth":I
    :goto_3
    const/4 v11, 0x1

    #@af
    const-wide v14, 0x7fffffffffffffffL

    #@b4
    move-object/from16 v9, p0

    #@b6
    move/from16 v12, p7

    #@b8
    move/from16 v16, p3

    #@ba
    invoke-static/range {v9 .. v16}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    #@bd
    goto :goto_2

    #@be
    .line 1617
    .end local v10    # "nextMonth":I
    :cond_5
    add-int/lit8 v10, p5, 0x1

    #@c0
    .restart local v10    # "nextMonth":I
    goto :goto_3
.end method

.method private static writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V
    .locals 7
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "numDays"    # I
    .param p5, "untilTime"    # J
    .param p7, "fromOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1632
    move v2, p2

    #@1
    .line 1633
    .local v2, "startDayNum":I
    const/4 v3, 0x1

    #@2
    if-ne p1, v3, :cond_1

    #@4
    const/4 v1, 0x1

    #@5
    .line 1634
    .local v1, "isFeb":Z
    :goto_0
    if-gez p2, :cond_0

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 1638
    :cond_0
    :goto_1
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    #@c
    .line 1639
    const-string/jumbo v3, "BYDAY"

    #@f
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@12
    .line 1640
    const-string/jumbo v3, "="

    #@15
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@18
    .line 1641
    sget-object v3, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    #@1a
    add-int/lit8 v4, p3, -0x1

    #@1c
    aget-object v3, v3, v4

    #@1e
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@21
    .line 1642
    const-string/jumbo v3, ";"

    #@24
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@27
    .line 1643
    const-string/jumbo v3, "BYMONTHDAY"

    #@2a
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@2d
    .line 1644
    const-string/jumbo v3, "="

    #@30
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@33
    .line 1646
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@3a
    .line 1647
    const/4 v0, 0x1

    #@3b
    .local v0, "i":I
    :goto_2
    if-ge v0, p4, :cond_3

    #@3d
    .line 1648
    const-string/jumbo v3, ","

    #@40
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@43
    .line 1649
    add-int v3, v2, v0

    #@45
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@4c
    .line 1647
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_2

    #@4f
    .line 1633
    .end local v0    # "i":I
    .end local v1    # "isFeb":Z
    :cond_1
    const/4 v1, 0x0

    #@50
    .restart local v1    # "isFeb":Z
    goto :goto_0

    #@51
    .line 1636
    :cond_2
    sget-object v3, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@53
    aget v3, v3, p1

    #@55
    add-int/2addr v3, p2

    #@56
    add-int/lit8 v2, v3, 0x1

    #@58
    goto :goto_1

    #@59
    .line 1652
    .restart local v0    # "i":I
    :cond_3
    const-wide v4, 0x7fffffffffffffffL

    #@5e
    cmp-long v3, p5, v4

    #@60
    if-eqz v3, :cond_4

    #@62
    .line 1653
    int-to-long v4, p7

    #@63
    add-long/2addr v4, p5

    #@64
    invoke-static {v4, v5}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-static {p0, v3}, Landroid/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    #@6b
    .line 1655
    :cond_4
    const-string/jumbo v3, "\r\n"

    #@6e
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@71
    .line 1630
    return-void
.end method

.method private static writeZonePropsByDOW_LEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .locals 14
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "isDst"    # Z
    .param p2, "tzname"    # Ljava/lang/String;
    .param p3, "fromOffset"    # I
    .param p4, "toOffset"    # I
    .param p5, "month"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "dayOfWeek"    # I
    .param p8, "startTime"    # J
    .param p10, "untilTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1664
    rem-int/lit8 v2, p6, 0x7

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1667
    div-int/lit8 v8, p6, 0x7

    #@6
    move-object v2, p0

    #@7
    move v3, p1

    #@8
    move-object/from16 v4, p2

    #@a
    move/from16 v5, p3

    #@c
    move/from16 v6, p4

    #@e
    move/from16 v7, p5

    #@10
    move/from16 v9, p7

    #@12
    move-wide/from16 v10, p8

    #@14
    move-wide/from16 v12, p10

    #@16
    .line 1666
    invoke-static/range {v2 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@19
    .line 1662
    :goto_0
    return-void

    #@1a
    .line 1668
    :cond_0
    const/4 v2, 0x1

    #@1b
    move/from16 v0, p5

    #@1d
    if-eq v0, v2, :cond_1

    #@1f
    sget-object v2, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@21
    aget v2, v2, p5

    #@23
    sub-int v2, v2, p6

    #@25
    rem-int/lit8 v2, v2, 0x7

    #@27
    if-nez v2, :cond_1

    #@29
    .line 1671
    sget-object v2, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    #@2b
    aget v2, v2, p5

    #@2d
    sub-int v2, v2, p6

    #@2f
    div-int/lit8 v2, v2, 0x7

    #@31
    add-int/lit8 v2, v2, 0x1

    #@33
    mul-int/lit8 v8, v2, -0x1

    #@35
    move-object v2, p0

    #@36
    move v3, p1

    #@37
    move-object/from16 v4, p2

    #@39
    move/from16 v5, p3

    #@3b
    move/from16 v6, p4

    #@3d
    move/from16 v7, p5

    #@3f
    move/from16 v9, p7

    #@41
    move-wide/from16 v10, p8

    #@43
    move-wide/from16 v12, p10

    #@45
    .line 1670
    invoke-static/range {v2 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@48
    goto :goto_0

    #@49
    .line 1672
    :cond_1
    const/4 v2, 0x1

    #@4a
    move/from16 v0, p5

    #@4c
    if-ne v0, v2, :cond_2

    #@4e
    const/16 v2, 0x1d

    #@50
    move/from16 v0, p6

    #@52
    if-ne v0, v2, :cond_2

    #@54
    .line 1675
    const/4 v7, 0x1

    #@55
    const/4 v8, -0x1

    #@56
    move-object v2, p0

    #@57
    move v3, p1

    #@58
    move-object/from16 v4, p2

    #@5a
    move/from16 v5, p3

    #@5c
    move/from16 v6, p4

    #@5e
    move/from16 v9, p7

    #@60
    move-wide/from16 v10, p8

    #@62
    move-wide/from16 v12, p10

    #@64
    .line 1674
    invoke-static/range {v2 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@67
    goto :goto_0

    #@68
    .line 1679
    :cond_2
    add-int/lit8 v8, p6, -0x6

    #@6a
    move-object v2, p0

    #@6b
    move v3, p1

    #@6c
    move-object/from16 v4, p2

    #@6e
    move/from16 v5, p3

    #@70
    move/from16 v6, p4

    #@72
    move/from16 v7, p5

    #@74
    move/from16 v9, p7

    #@76
    move-wide/from16 v10, p8

    #@78
    move-wide/from16 v12, p10

    #@7a
    .line 1678
    invoke-static/range {v2 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    #@7d
    goto :goto_0
.end method

.method private static writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V
    .locals 3
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "isDst"    # Z
    .param p2, "tzname"    # Ljava/lang/String;
    .param p3, "fromOffset"    # I
    .param p4, "toOffset"    # I
    .param p5, "time"    # J
    .param p7, "withRDATE"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1524
    invoke-static/range {p0 .. p6}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    #@3
    .line 1525
    if-eqz p7, :cond_0

    #@5
    .line 1526
    const-string/jumbo v0, "RDATE"

    #@8
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@b
    .line 1527
    const-string/jumbo v0, ":"

    #@e
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@11
    .line 1528
    int-to-long v0, p3

    #@12
    add-long/2addr v0, p5

    #@13
    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1a
    .line 1529
    const-string/jumbo v0, "\r\n"

    #@1d
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@20
    .line 1531
    :cond_0
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    #@23
    .line 1523
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 384
    return-object p0

    #@7
    .line 386
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 2

    #@0
    .prologue
    .line 2122
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/util/VTimeZone;

    #@6
    .line 2123
    .local v0, "vtz":Landroid/icu/util/VTimeZone;
    iget-object v1, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@8
    invoke-virtual {v1}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/icu/util/BasicTimeZone;

    #@e
    iput-object v1, v0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@10
    .line 2124
    const/4 v1, 0x0

    #@11
    iput-boolean v1, v0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    #@13
    .line 2125
    return-object v0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 2113
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    #@3
    .line 2114
    return-object p0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 1
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOffset(IIIIII)I
    .locals 7
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "milliseconds"    # I

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/BasicTimeZone;->getOffset(IIIIII)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getOffset(JZ[I)V
    .locals 1
    .param p1, "date"    # J
    .param p3, "local"    # Z
    .param p4, "offsets"    # [I

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    #@5
    .line 89
    return-void
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 7
    .param p1, "date"    # J
    .param p3, "nonExistingTimeOpt"    # I
    .param p4, "duplicatedTimeOpt"    # I
    .param p5, "offsets"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 102
    iget-object v1, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@2
    move-wide v2, p1

    #@3
    move v4, p3

    #@4
    move v5, p4

    #@5
    move-object v6, p5

    #@6
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    #@9
    .line 101
    return-void
.end method

.method public getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 1
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRawOffset()I
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->getRawOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTZURL()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .locals 1

    #@0
    .prologue
    .line 365
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;
    .locals 1
    .param p1, "start"    # J

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJ)Z
    .locals 6
    .param p1, "other"    # Landroid/icu/util/TimeZone;
    .param p2, "start"    # J
    .param p4, "end"    # J

    #@0
    .prologue
    .line 353
    if-ne p0, p1, :cond_0

    #@2
    .line 354
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 356
    :cond_0
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@6
    move-object v1, p1

    #@7
    move-wide v2, p2

    #@8
    move-wide v4, p4

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/BasicTimeZone;->hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJ)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 2
    .param p1, "other"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 159
    if-ne p0, p1, :cond_0

    #@2
    .line 160
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 162
    :cond_0
    instance-of v0, p1, Landroid/icu/util/VTimeZone;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 163
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@a
    check-cast p1, Landroid/icu/util/VTimeZone;

    #@c
    .end local p1    # "other":Landroid/icu/util/TimeZone;
    iget-object v1, p1, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@e
    invoke-virtual {v0, v1}, Landroid/icu/util/BasicTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 165
    .restart local p1    # "other":Landroid/icu/util/TimeZone;
    :cond_1
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@15
    invoke-virtual {v0, p1}, Landroid/icu/util/BasicTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/util/BasicTimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 2105
    iget-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    #@2
    return v0
.end method

.method public observesDaylightTime()Z
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->observesDaylightTime()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 217
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify a frozen VTimeZone instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 219
    :cond_0
    iput-object p1, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    #@11
    .line 215
    return-void
.end method

.method public setRawOffset(I)V
    .locals 2
    .param p1, "offsetMillis"    # I

    #@0
    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify a frozen VTimeZone instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 132
    :cond_0
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@11
    invoke-virtual {v0, p1}, Landroid/icu/util/BasicTimeZone;->setRawOffset(I)V

    #@14
    .line 128
    return-void
.end method

.method public setTZURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify a frozen VTimeZone instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 192
    :cond_0
    iput-object p1, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    #@11
    .line 188
    return-void
.end method

.method public useDaylightTime()Z
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->useDaylightTime()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    new-instance v0, Ljava/io/BufferedWriter;

    #@2
    invoke-direct {v0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@5
    .line 232
    .local v0, "bw":Ljava/io/BufferedWriter;
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    #@7
    if-eqz v4, :cond_4

    #@9
    .line 233
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v3

    #@f
    .local v3, "line$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_3

    #@15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Ljava/lang/String;

    #@1b
    .line 234
    .local v2, "line":Ljava/lang/String;
    const-string/jumbo v4, "TZURL:"

    #@1e
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_1

    #@24
    .line 235
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 236
    const-string/jumbo v4, "TZURL"

    #@2b
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@2e
    .line 237
    const-string/jumbo v4, ":"

    #@31
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@34
    .line 238
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    #@36
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@39
    .line 239
    const-string/jumbo v4, "\r\n"

    #@3c
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@3f
    goto :goto_0

    #@40
    .line 241
    :cond_1
    const-string/jumbo v4, "LAST-MODIFIED:"

    #@43
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_2

    #@49
    .line 242
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    #@4b
    if-eqz v4, :cond_0

    #@4d
    .line 243
    const-string/jumbo v4, "LAST-MODIFIED"

    #@50
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@53
    .line 244
    const-string/jumbo v4, ":"

    #@56
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@59
    .line 245
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    #@5b
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    #@5e
    move-result-wide v4

    #@5f
    invoke-static {v4, v5}, Landroid/icu/util/VTimeZone;->getUTCDateTimeString(J)Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@66
    .line 246
    const-string/jumbo v4, "\r\n"

    #@69
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@6c
    goto :goto_0

    #@6d
    .line 249
    :cond_2
    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@70
    .line 250
    const-string/jumbo v4, "\r\n"

    #@73
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@76
    goto :goto_0

    #@77
    .line 253
    .end local v2    # "line":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    #@7a
    .line 230
    .end local v3    # "line$iterator":Ljava/util/Iterator;
    :goto_1
    return-void

    #@7b
    .line 255
    :cond_4
    const/4 v1, 0x0

    #@7c
    .line 256
    .local v1, "customProperties":[Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    #@7e
    if-eqz v4, :cond_5

    #@80
    sget-object v4, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    #@82
    if-eqz v4, :cond_5

    #@84
    .line 257
    const/4 v4, 0x1

    #@85
    new-array v1, v4, [Ljava/lang/String;

    #@87
    .line 258
    .local v1, "customProperties":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v5, "X-TZINFO:"

    #@8f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    iget-object v5, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    #@95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v4

    #@99
    const-string/jumbo v5, "["

    #@9c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    sget-object v5, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    #@a2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    const-string/jumbo v5, "]"

    #@a9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v4

    #@b1
    const/4 v5, 0x0

    #@b2
    aput-object v4, v1, v5

    #@b4
    .line 260
    .end local v1    # "customProperties":[Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@b6
    invoke-direct {p0, p1, v4, v1}, Landroid/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    #@b9
    goto :goto_1
.end method

.method public write(Ljava/io/Writer;J)V
    .locals 8
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "start"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 277
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@3
    invoke-virtual {v4, p2, p3}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;

    #@6
    move-result-object v3

    #@7
    .line 280
    .local v3, "rules":[Landroid/icu/util/TimeZoneRule;
    new-instance v2, Landroid/icu/util/RuleBasedTimeZone;

    #@9
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@b
    invoke-virtual {v4}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    aget-object v4, v3, v6

    #@11
    check-cast v4, Landroid/icu/util/InitialTimeZoneRule;

    #@13
    invoke-direct {v2, v5, v4}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    #@16
    .line 281
    .local v2, "rbtz":Landroid/icu/util/RuleBasedTimeZone;
    const/4 v1, 0x1

    #@17
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@18
    if-ge v1, v4, :cond_0

    #@1a
    .line 282
    aget-object v4, v3, v1

    #@1c
    invoke-virtual {v2, v4}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    #@1f
    .line 281
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 284
    :cond_0
    const/4 v0, 0x0

    #@23
    .line 285
    .local v0, "customProperties":[Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    #@25
    if-eqz v4, :cond_1

    #@27
    sget-object v4, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 286
    const/4 v4, 0x1

    #@2c
    new-array v0, v4, [Ljava/lang/String;

    #@2e
    .line 287
    .local v0, "customProperties":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "X-TZINFO:"

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    iget-object v5, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    const-string/jumbo v5, "["

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    sget-object v5, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    .line 288
    const-string/jumbo v5, "/Partial@"

    #@50
    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    .line 288
    const-string/jumbo v5, "]"

    #@5b
    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    aput-object v4, v0, v6

    #@65
    .line 290
    .end local v0    # "customProperties":[Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, v2, v0}, Landroid/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    #@68
    .line 275
    return-void
.end method

.method public writeSimple(Ljava/io/Writer;J)V
    .locals 8
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 311
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@3
    invoke-virtual {v4, p2, p3}, Landroid/icu/util/BasicTimeZone;->getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;

    #@6
    move-result-object v3

    #@7
    .line 314
    .local v3, "rules":[Landroid/icu/util/TimeZoneRule;
    new-instance v2, Landroid/icu/util/RuleBasedTimeZone;

    #@9
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    #@b
    invoke-virtual {v4}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    aget-object v4, v3, v6

    #@11
    check-cast v4, Landroid/icu/util/InitialTimeZoneRule;

    #@13
    invoke-direct {v2, v5, v4}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    #@16
    .line 315
    .local v2, "rbtz":Landroid/icu/util/RuleBasedTimeZone;
    const/4 v1, 0x1

    #@17
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@18
    if-ge v1, v4, :cond_0

    #@1a
    .line 316
    aget-object v4, v3, v1

    #@1c
    invoke-virtual {v2, v4}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    #@1f
    .line 315
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 318
    :cond_0
    const/4 v0, 0x0

    #@23
    .line 319
    .local v0, "customProperties":[Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    #@25
    if-eqz v4, :cond_1

    #@27
    sget-object v4, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 320
    const/4 v4, 0x1

    #@2c
    new-array v0, v4, [Ljava/lang/String;

    #@2e
    .line 321
    .local v0, "customProperties":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "X-TZINFO:"

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    iget-object v5, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    const-string/jumbo v5, "["

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    sget-object v5, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    .line 322
    const-string/jumbo v5, "/Simple@"

    #@50
    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    .line 322
    const-string/jumbo v5, "]"

    #@5b
    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    aput-object v4, v0, v6

    #@65
    .line 324
    .end local v0    # "customProperties":[Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, v2, v0}, Landroid/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    #@68
    .line 309
    return-void
.end method
