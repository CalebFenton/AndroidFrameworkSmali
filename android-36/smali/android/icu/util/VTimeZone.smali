.class public Landroid/icu/util/VTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "VTimeZone.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o COLON:Ljava/lang/String; = ":"

.field private static final greylist-max-o COMMA:Ljava/lang/String; = ","

.field private static final greylist-max-o DEF_DSTSAVINGS:I = 0x36ee80

.field private static final greylist-max-o DEF_TZSTARTTIME:J = 0x0L

.field private static final greylist-max-o EQUALS_SIGN:Ljava/lang/String; = "="

.field private static final greylist-max-o ERR:I = 0x3

.field private static final greylist-max-o ICAL_BEGIN:Ljava/lang/String; = "BEGIN"

.field private static final greylist-max-o ICAL_BEGIN_VTIMEZONE:Ljava/lang/String; = "BEGIN:VTIMEZONE"

.field private static final greylist-max-o ICAL_BYDAY:Ljava/lang/String; = "BYDAY"

.field private static final greylist-max-o ICAL_BYMONTH:Ljava/lang/String; = "BYMONTH"

.field private static final greylist-max-o ICAL_BYMONTHDAY:Ljava/lang/String; = "BYMONTHDAY"

.field private static final greylist-max-o ICAL_DAYLIGHT:Ljava/lang/String; = "DAYLIGHT"

.field private static final greylist-max-o ICAL_DOW_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o ICAL_DTSTART:Ljava/lang/String; = "DTSTART"

.field private static final greylist-max-o ICAL_END:Ljava/lang/String; = "END"

.field private static final greylist-max-o ICAL_END_VTIMEZONE:Ljava/lang/String; = "END:VTIMEZONE"

.field private static final greylist-max-o ICAL_FREQ:Ljava/lang/String; = "FREQ"

.field private static final greylist-max-o ICAL_LASTMOD:Ljava/lang/String; = "LAST-MODIFIED"

.field private static final greylist-max-o ICAL_RDATE:Ljava/lang/String; = "RDATE"

.field private static final greylist-max-o ICAL_RRULE:Ljava/lang/String; = "RRULE"

.field private static final greylist-max-o ICAL_STANDARD:Ljava/lang/String; = "STANDARD"

.field private static final greylist-max-o ICAL_TZID:Ljava/lang/String; = "TZID"

.field private static final greylist-max-o ICAL_TZNAME:Ljava/lang/String; = "TZNAME"

.field private static final greylist-max-o ICAL_TZOFFSETFROM:Ljava/lang/String; = "TZOFFSETFROM"

.field private static final greylist-max-o ICAL_TZOFFSETTO:Ljava/lang/String; = "TZOFFSETTO"

.field private static final greylist-max-o ICAL_TZURL:Ljava/lang/String; = "TZURL"

.field private static final greylist-max-o ICAL_UNTIL:Ljava/lang/String; = "UNTIL"

.field private static final greylist-max-o ICAL_VTIMEZONE:Ljava/lang/String; = "VTIMEZONE"

.field private static final greylist-max-o ICAL_YEARLY:Ljava/lang/String; = "YEARLY"

.field private static final greylist-max-o ICU_TZINFO_PROP:Ljava/lang/String; = "X-TZINFO"

.field private static greylist-max-o ICU_TZVERSION:Ljava/lang/String; = null

.field private static final greylist-max-o INI:I = 0x0

.field private static final greylist-max-o MAX_TIME:J = 0x7fffffffffffffffL

.field private static final greylist-max-o MIN_TIME:J = -0x8000000000000000L

.field private static final greylist-max-o MONTHLENGTH:[I

.field private static final greylist-max-o NEWLINE:Ljava/lang/String; = "\r\n"

.field private static final greylist-max-o SEMICOLON:Ljava/lang/String; = ";"

.field private static final greylist-max-o TZI:I = 0x2

.field private static final greylist-max-o VTZ:I = 0x1

.field private static final whitelist serialVersionUID:J = -0x5f154d3410b1aebeL


# instance fields
.field private volatile transient greylist-max-o isFrozen:Z

.field private greylist-max-o lastmod:Ljava/util/Date;

.field private greylist-max-o olsonzid:Ljava/lang/String;

.field private greylist-max-o tz:Landroid/icu/util/BasicTimeZone;

.field private greylist-max-o tzurl:Ljava/lang/String;

.field private greylist-max-o vtzlines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 39
    nop

    .line 414
    const-string v5, "FR"

    const-string v6, "SA"

    const-string v0, "SU"

    const-string v1, "MO"

    const-string v2, "TU"

    const-string v3, "WE"

    const-string v4, "TH"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    .line 418
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    .line 423
    :try_start_1e
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;
    :try_end_24
    .catch Ljava/util/MissingResourceException; {:try_start_1e .. :try_end_24} :catch_25

    .line 428
    goto :goto_29

    .line 424
    :catch_25
    move-exception v0

    .line 426
    .local v0, "e":Ljava/util/MissingResourceException;
    const/4 v1, 0x0

    sput-object v1, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    .line 429
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :goto_29
    return-void

    :array_2a
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

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 432
    invoke-direct {p0}, Landroid/icu/util/BasicTimeZone;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    .line 366
    iput-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    .line 367
    iput-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    .line 2070
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    .line 433
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "tzid"    # Ljava/lang/String;

    .line 436
    invoke-direct {p0, p1}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    .line 366
    iput-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    .line 367
    iput-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    .line 2070
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    .line 437
    return-void
.end method

.method private static greylist-max-o appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 3
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "until"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1841
    if-eqz p1, :cond_14

    .line 1842
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1843
    const-string v0, "UNTIL"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1844
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1847
    :cond_14
    return-void
.end method

.method private static greylist-max-o beginRRULE(Ljava/io/Writer;I)V
    .registers 5
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "month"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1825
    const-string v0, "RRULE"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1826
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1827
    const-string v0, "FREQ"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1828
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1829
    const-string v1, "YEARLY"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1830
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1831
    const-string v2, "BYMONTH"

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1833
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1835
    return-void
.end method

.method private static greylist-max-o beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V
    .registers 11
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

    .line 1772
    const-string v0, "BEGIN"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1773
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1774
    if-eqz p1, :cond_12

    .line 1775
    const-string v1, "DAYLIGHT"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_17

    .line 1777
    :cond_12
    const-string v1, "STANDARD"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1779
    :goto_17
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1782
    const-string v2, "TZOFFSETTO"

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1783
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1784
    invoke-static {p4}, Landroid/icu/util/VTimeZone;->millisToOffset(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1785
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1788
    const-string v2, "TZOFFSETFROM"

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1790
    invoke-static {p3}, Landroid/icu/util/VTimeZone;->millisToOffset(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1791
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1794
    const-string v2, "TZNAME"

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1796
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1800
    const-string v2, "DTSTART"

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1802
    int-to-long v2, p3

    add-long/2addr v2, p5

    invoke-static {v2, v3}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1804
    return-void
.end method

.method public static greylist-max-o create(Ljava/io/Reader;)Landroid/icu/util/VTimeZone;
    .registers 3
    .param p0, "reader"    # Ljava/io/Reader;

    .line 70
    new-instance v0, Landroid/icu/util/VTimeZone;

    invoke-direct {v0}, Landroid/icu/util/VTimeZone;-><init>()V

    .line 71
    .local v0, "vtz":Landroid/icu/util/VTimeZone;
    invoke-direct {v0, p0}, Landroid/icu/util/VTimeZone;->load(Ljava/io/Reader;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 72
    return-object v0

    .line 74
    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist-max-o create(Ljava/lang/String;)Landroid/icu/util/VTimeZone;
    .registers 4
    .param p0, "tzid"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/util/TimeZone;->getFrozenICUTimeZone(Ljava/lang/String;Z)Landroid/icu/util/BasicTimeZone;

    move-result-object v0

    .line 52
    .local v0, "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    if-nez v0, :cond_9

    .line 53
    const/4 v1, 0x0

    return-object v1

    .line 55
    :cond_9
    new-instance v1, Landroid/icu/util/VTimeZone;

    invoke-direct {v1, p0}, Landroid/icu/util/VTimeZone;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "vtz":Landroid/icu/util/VTimeZone;
    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v2

    check-cast v2, Landroid/icu/util/BasicTimeZone;

    iput-object v2, v1, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    .line 57
    iget-object v2, v1, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    .line 59
    return-object v1
.end method

.method private static greylist-max-o createRuleByRDATE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;
    .registers 15
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/icu/util/TimeZoneRule;"
        }
    .end annotation

    .line 1191
    .local p5, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_32

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_32

    .line 1197
    :cond_9
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    .line 1198
    .local v1, "times":[J
    const/4 v2, 0x0

    .line 1200
    .local v2, "idx":I
    :try_start_10
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_20} :catch_2f

    .line 1201
    .local v3, "date":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "idx":I
    .local v4, "idx":I
    :try_start_22
    invoke-static {v3, p6}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v5

    aput-wide v5, v1, v2
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_28} :catch_2a

    .line 1202
    .end local v3    # "date":Ljava/lang/String;
    move v2, v4

    goto :goto_14

    .line 1203
    :catch_2a
    move-exception v0

    move v2, v4

    goto :goto_30

    .line 1205
    .end local v4    # "idx":I
    .restart local v2    # "idx":I
    :cond_2d
    move-object v6, v1

    goto :goto_39

    .line 1203
    :catch_2f
    move-exception v0

    .line 1204
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    :goto_30
    const/4 v3, 0x0

    return-object v3

    .line 1194
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v1    # "times":[J
    .end local v2    # "idx":I
    :cond_32
    :goto_32
    const/4 v0, 0x1

    new-array v1, v0, [J

    .line 1195
    .restart local v1    # "times":[J
    const/4 v0, 0x0

    aput-wide p3, v1, v0

    move-object v6, v1

    .line 1207
    .end local v1    # "times":[J
    .local v6, "times":[J
    :goto_39
    new-instance v2, Landroid/icu/util/TimeArrayTimeZoneRule;

    const/4 v7, 0x2

    move-object v3, p0

    move v4, p1

    move v5, p2

    .end local p0    # "tzname":Ljava/lang/String;
    .end local p1    # "rawOffset":I
    .end local p2    # "dstSavings":I
    .local v3, "tzname":Ljava/lang/String;
    .local v4, "rawOffset":I
    .local v5, "dstSavings":I
    invoke-direct/range {v2 .. v7}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    return-object v2
.end method

.method private static greylist-max-o createRuleByRRULE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;
    .registers 37
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/icu/util/TimeZoneRule;"
        }
    .end annotation

    .line 831
    .local p5, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p5

    const/4 v1, 0x0

    if-eqz v0, :cond_250

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_11

    move/from16 v0, p6

    move-object/from16 v19, v1

    goto/16 :goto_254

    .line 835
    :cond_11
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 837
    .local v3, "rrule":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v5, v4, [J

    .line 838
    .local v5, "until":[J
    invoke-static {v3, v5}, Landroid/icu/util/VTimeZone;->parseRRULE(Ljava/lang/String;[J)[I

    move-result-object v6

    .line 839
    .local v6, "ruleFields":[I
    if-nez v6, :cond_22

    .line 841
    return-object v1

    .line 844
    :cond_22
    aget v7, v6, v2

    .line 845
    .local v7, "month":I
    aget v11, v6, v4

    .line 846
    .local v11, "dayOfWeek":I
    const/4 v8, 0x2

    aget v10, v6, v8

    .line 847
    .local v10, "nthDayOfWeek":I
    const/4 v9, 0x3

    aget v12, v6, v9

    .line 849
    .local v12, "dayOfMonth":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, -0x1

    const/4 v15, 0x7

    if-ne v13, v4, :cond_bb

    .line 851
    array-length v9, v6

    const/4 v13, 0x4

    if-le v9, v13, :cond_b1

    .line 854
    array-length v9, v6

    const/16 v13, 0xa

    if-ne v9, v13, :cond_ae

    if-eq v7, v14, :cond_ae

    if-nez v11, :cond_45

    move-object/from16 v19, v1

    goto/16 :goto_b0

    .line 859
    :cond_45
    const/16 v9, 0x1f

    .line 860
    .local v9, "firstDay":I
    new-array v13, v15, [I

    .line 861
    .local v13, "days":[I
    const/16 v16, 0x0

    move/from16 v29, v16

    move/from16 v16, v8

    move/from16 v8, v29

    .local v8, "i":I
    :goto_51
    if-ge v8, v15, :cond_7c

    .line 862
    add-int/lit8 v17, v8, 0x3

    aget v17, v6, v17

    aput v17, v13, v8

    .line 866
    aget v17, v13, v8

    if-lez v17, :cond_60

    aget v17, v13, v8

    goto :goto_6a

    :cond_60
    sget-object v17, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v17, v17, v7

    aget v18, v13, v8

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    :goto_6a
    aput v17, v13, v8

    .line 867
    move/from16 v17, v2

    aget v2, v13, v8

    if-ge v2, v9, :cond_75

    aget v2, v13, v8

    goto :goto_76

    :cond_75
    move v2, v9

    :goto_76
    move v9, v2

    .line 861
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v17

    goto :goto_51

    :cond_7c
    move/from16 v17, v2

    .line 870
    .end local v8    # "i":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_7f
    if-ge v2, v15, :cond_a7

    .line 871
    const/4 v8, 0x0

    .line 872
    .local v8, "found":Z
    const/16 v18, 0x0

    move-object/from16 v19, v1

    move/from16 v1, v18

    .local v1, "j":I
    :goto_88
    if-ge v1, v15, :cond_9a

    .line 873
    move/from16 v18, v4

    aget v4, v13, v1

    add-int v15, v9, v2

    if-ne v4, v15, :cond_94

    .line 874
    const/4 v8, 0x1

    .line 875
    goto :goto_9c

    .line 872
    :cond_94
    add-int/lit8 v1, v1, 0x1

    move/from16 v4, v18

    const/4 v15, 0x7

    goto :goto_88

    :cond_9a
    move/from16 v18, v4

    .line 878
    .end local v1    # "j":I
    :goto_9c
    if-nez v8, :cond_9f

    .line 880
    return-object v19

    .line 870
    .end local v8    # "found":Z
    :cond_9f
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v18

    move-object/from16 v1, v19

    const/4 v15, 0x7

    goto :goto_7f

    :cond_a7
    move-object/from16 v19, v1

    move/from16 v18, v4

    .line 884
    .end local v2    # "i":I
    move v12, v9

    .line 885
    .end local v9    # "firstDay":I
    .end local v13    # "days":[I
    goto/16 :goto_1c7

    .line 854
    :cond_ae
    move-object/from16 v19, v1

    .line 857
    :goto_b0
    return-object v19

    .line 851
    :cond_b1
    move-object/from16 v19, v1

    move/from16 v17, v2

    move/from16 v18, v4

    move/from16 v16, v8

    goto/16 :goto_1c7

    .line 889
    :cond_bb
    move-object/from16 v19, v1

    move/from16 v17, v2

    move/from16 v18, v4

    move/from16 v16, v8

    if-eq v7, v14, :cond_24c

    if-eqz v11, :cond_24c

    if-nez v12, :cond_ce

    move/from16 v0, p6

    move v15, v10

    goto/16 :goto_24f

    .line 895
    :cond_ce
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_d6

    .line 896
    return-object v19

    .line 903
    :cond_d6
    move v1, v7

    .line 904
    .local v1, "earliestMonth":I
    array-length v2, v6

    sub-int/2addr v2, v9

    .line 905
    .local v2, "daysCount":I
    const/16 v4, 0x1f

    .line 906
    .local v4, "earliestDay":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_dc
    if-ge v8, v2, :cond_f6

    .line 907
    add-int/lit8 v13, v8, 0x3

    aget v13, v6, v13

    .line 908
    .local v13, "dom":I
    if-lez v13, :cond_e6

    move v15, v13

    goto :goto_ed

    :cond_e6
    sget-object v15, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v15, v15, v7

    add-int/2addr v15, v13

    add-int/lit8 v15, v15, 0x1

    .line 909
    .end local v13    # "dom":I
    .local v15, "dom":I
    :goto_ed
    if-ge v15, v4, :cond_f1

    move v13, v15

    goto :goto_f2

    :cond_f1
    move v13, v4

    :goto_f2
    move v4, v13

    .line 906
    .end local v15    # "dom":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_dc

    .line 912
    .end local v8    # "i":I
    :cond_f6
    const/4 v8, -0x1

    .line 913
    .local v8, "anotherMonth":I
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_f8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_1be

    .line 914
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v3, v15

    check-cast v3, Ljava/lang/String;

    .line 915
    move/from16 v20, v9

    move/from16 v15, v18

    new-array v9, v15, [J

    .line 916
    .local v9, "unt":[J
    invoke-static {v3, v9}, Landroid/icu/util/VTimeZone;->parseRRULE(Ljava/lang/String;[J)[I

    move-result-object v15

    .line 919
    .local v15, "fields":[I
    aget-wide v21, v9, v17

    aget-wide v23, v5, v17

    cmp-long v21, v21, v23

    if-lez v21, :cond_118

    .line 920
    move-object v5, v9

    .line 924
    :cond_118
    aget v0, v15, v17

    if-eq v0, v14, :cond_1bb

    const/16 v18, 0x1

    aget v0, v15, v18

    if-eqz v0, :cond_1bb

    aget v0, v15, v20

    if-nez v0, :cond_12a

    move/from16 v22, v1

    goto/16 :goto_1bd

    .line 928
    :cond_12a
    array-length v0, v15

    add-int/lit8 v0, v0, -0x3

    .line 929
    .local v0, "count":I
    add-int v14, v2, v0

    move/from16 v22, v1

    const/4 v1, 0x7

    .end local v1    # "earliestMonth":I
    .local v22, "earliestMonth":I
    if-le v14, v1, :cond_135

    .line 931
    return-object v19

    .line 935
    :cond_135
    const/16 v18, 0x1

    aget v1, v15, v18

    if-eq v1, v11, :cond_13c

    .line 936
    return-object v19

    .line 939
    :cond_13c
    aget v1, v15, v17

    if-eq v1, v7, :cond_177

    .line 940
    const/4 v1, -0x1

    if-ne v8, v1, :cond_16e

    .line 941
    aget v14, v15, v17

    sub-int/2addr v14, v7

    .line 942
    .local v14, "diff":I
    const/16 v1, -0xb

    if-eq v14, v1, :cond_15e

    const/4 v1, -0x1

    if-ne v14, v1, :cond_14e

    goto :goto_15e

    .line 948
    :cond_14e
    const/16 v1, 0xb

    if-eq v14, v1, :cond_157

    const/4 v1, 0x1

    if-ne v14, v1, :cond_156

    goto :goto_157

    .line 953
    :cond_156
    return-object v19

    .line 950
    :cond_157
    :goto_157
    aget v1, v15, v17

    move v8, v4

    move v4, v1

    move/from16 v1, v22

    .end local v8    # "anotherMonth":I
    .local v1, "anotherMonth":I
    goto :goto_168

    .line 944
    .end local v1    # "anotherMonth":I
    .restart local v8    # "anotherMonth":I
    :cond_15e
    :goto_15e
    aget v1, v15, v17

    .line 945
    .end local v8    # "anotherMonth":I
    .restart local v1    # "anotherMonth":I
    move v8, v1

    .line 947
    .end local v22    # "earliestMonth":I
    .local v8, "earliestMonth":I
    const/16 v4, 0x1f

    move/from16 v29, v4

    move v4, v1

    move/from16 v8, v29

    .line 955
    .end local v14    # "diff":I
    .local v1, "earliestMonth":I
    .local v4, "anotherMonth":I
    .local v8, "earliestDay":I
    :goto_168
    move/from16 v29, v8

    move v8, v4

    move/from16 v4, v29

    goto :goto_179

    .end local v1    # "earliestMonth":I
    .local v4, "earliestDay":I
    .local v8, "anotherMonth":I
    .restart local v22    # "earliestMonth":I
    :cond_16e
    aget v1, v15, v17

    if-eq v1, v7, :cond_177

    aget v1, v15, v17

    if-eq v1, v8, :cond_177

    .line 957
    return-object v19

    .line 961
    :cond_177
    move/from16 v1, v22

    .end local v22    # "earliestMonth":I
    .restart local v1    # "earliestMonth":I
    :goto_179
    aget v14, v15, v17

    if-ne v14, v1, :cond_1ac

    .line 962
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_17e
    if-ge v14, v0, :cond_1a9

    .line 963
    add-int/lit8 v22, v14, 0x3

    aget v22, v15, v22

    .line 964
    .local v22, "dom":I
    if-lez v22, :cond_189

    move/from16 v23, v22

    goto :goto_195

    :cond_189
    sget-object v23, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v24, v15, v17

    aget v23, v23, v24

    add-int v23, v23, v22

    const/16 v18, 0x1

    add-int/lit8 v23, v23, 0x1

    :goto_195
    move/from16 v24, v23

    .line 965
    .end local v22    # "dom":I
    .local v24, "dom":I
    move/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "dom":I
    .local v0, "dom":I
    .local v23, "count":I
    if-ge v0, v4, :cond_1a0

    move/from16 v24, v0

    goto :goto_1a2

    :cond_1a0
    move/from16 v24, v4

    :goto_1a2
    move/from16 v4, v24

    .line 962
    .end local v0    # "dom":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v23

    goto :goto_17e

    .end local v23    # "count":I
    .local v0, "count":I
    :cond_1a9
    move/from16 v23, v0

    .end local v0    # "count":I
    .restart local v23    # "count":I
    goto :goto_1ae

    .line 961
    .end local v14    # "j":I
    .end local v23    # "count":I
    .restart local v0    # "count":I
    :cond_1ac
    move/from16 v23, v0

    .line 968
    .end local v0    # "count":I
    .restart local v23    # "count":I
    :goto_1ae
    add-int v2, v2, v23

    .line 913
    .end local v9    # "unt":[J
    .end local v15    # "fields":[I
    .end local v23    # "count":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p5

    move/from16 v9, v20

    const/4 v14, -0x1

    const/16 v18, 0x1

    goto/16 :goto_f8

    .line 924
    .restart local v9    # "unt":[J
    .restart local v15    # "fields":[I
    :cond_1bb
    move/from16 v22, v1

    .line 925
    .end local v1    # "earliestMonth":I
    .local v22, "earliestMonth":I
    :goto_1bd
    return-object v19

    .line 913
    .end local v9    # "unt":[J
    .end local v15    # "fields":[I
    .end local v22    # "earliestMonth":I
    .restart local v1    # "earliestMonth":I
    :cond_1be
    move/from16 v22, v1

    .line 970
    .end local v1    # "earliestMonth":I
    .end local v13    # "i":I
    .restart local v22    # "earliestMonth":I
    const/4 v1, 0x7

    if-eq v2, v1, :cond_1c4

    .line 972
    return-object v19

    .line 974
    :cond_1c4
    move/from16 v7, v22

    .line 975
    move v12, v4

    .line 979
    .end local v2    # "daysCount":I
    .end local v4    # "earliestDay":I
    .end local v8    # "anotherMonth":I
    .end local v22    # "earliestMonth":I
    :goto_1c7
    move/from16 v0, p6

    int-to-long v1, v0

    add-long v1, p3, v1

    move-object/from16 v4, v19

    invoke-static {v1, v2, v4}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v1

    .line 980
    .local v1, "dfields":[I
    aget v27, v1, v17

    .line 981
    .local v27, "startYear":I
    const/4 v2, -0x1

    if-ne v7, v2, :cond_1dd

    .line 983
    const/16 v18, 0x1

    aget v7, v1, v18

    move v9, v7

    goto :goto_1de

    .line 981
    :cond_1dd
    move v9, v7

    .line 985
    .end local v7    # "month":I
    .local v9, "month":I
    :goto_1de
    if-nez v11, :cond_1e8

    if-nez v10, :cond_1e8

    if-nez v12, :cond_1e8

    .line 987
    aget v12, v1, v16

    move v2, v12

    goto :goto_1e9

    .line 989
    :cond_1e8
    move v2, v12

    .end local v12    # "dayOfMonth":I
    .local v2, "dayOfMonth":I
    :goto_1e9
    const/4 v4, 0x5

    aget v12, v1, v4

    .line 991
    .local v12, "timeInDay":I
    const v4, 0x7fffffff

    .line 992
    .local v4, "endYear":I
    aget-wide v7, v5, v17

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v7, v7, v13

    if-eqz v7, :cond_201

    .line 993
    aget-wide v7, v5, v17

    invoke-static {v7, v8, v1}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    .line 994
    aget v4, v1, v17

    move/from16 v28, v4

    goto :goto_203

    .line 992
    :cond_201
    move/from16 v28, v4

    .line 998
    .end local v4    # "endYear":I
    .local v28, "endYear":I
    :goto_203
    const/4 v4, 0x0

    .line 999
    .local v4, "adtr":Landroid/icu/util/DateTimeRule;
    if-nez v11, :cond_216

    if-nez v10, :cond_216

    if-eqz v2, :cond_216

    .line 1001
    new-instance v7, Landroid/icu/util/DateTimeRule;

    move/from16 v8, v17

    invoke-direct {v7, v9, v2, v12, v8}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    move-object/from16 v26, v7

    move v15, v10

    move v10, v2

    .end local v4    # "adtr":Landroid/icu/util/DateTimeRule;
    .local v7, "adtr":Landroid/icu/util/DateTimeRule;
    goto :goto_23c

    .line 1002
    .end local v7    # "adtr":Landroid/icu/util/DateTimeRule;
    .restart local v4    # "adtr":Landroid/icu/util/DateTimeRule;
    :cond_216
    if-eqz v11, :cond_228

    if-eqz v10, :cond_228

    if-nez v2, :cond_228

    .line 1004
    new-instance v8, Landroid/icu/util/DateTimeRule;

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    move v15, v10

    .end local v10    # "nthDayOfWeek":I
    .local v15, "nthDayOfWeek":I
    move-object v7, v8

    move v10, v2

    move-object/from16 v26, v7

    .end local v4    # "adtr":Landroid/icu/util/DateTimeRule;
    .restart local v7    # "adtr":Landroid/icu/util/DateTimeRule;
    goto :goto_23c

    .line 1002
    .end local v7    # "adtr":Landroid/icu/util/DateTimeRule;
    .end local v15    # "nthDayOfWeek":I
    .restart local v4    # "adtr":Landroid/icu/util/DateTimeRule;
    .restart local v10    # "nthDayOfWeek":I
    :cond_228
    move v15, v10

    .line 1005
    .end local v10    # "nthDayOfWeek":I
    .restart local v15    # "nthDayOfWeek":I
    if-eqz v11, :cond_248

    if-nez v15, :cond_248

    if-eqz v2, :cond_248

    .line 1008
    new-instance v8, Landroid/icu/util/DateTimeRule;

    move v13, v12

    .end local v12    # "timeInDay":I
    .local v13, "timeInDay":I
    const/4 v12, 0x1

    const/4 v14, 0x0

    move v10, v2

    .end local v2    # "dayOfMonth":I
    .local v10, "dayOfMonth":I
    invoke-direct/range {v8 .. v14}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    move v12, v13

    .end local v13    # "timeInDay":I
    .restart local v12    # "timeInDay":I
    move-object v7, v8

    move-object/from16 v26, v7

    .line 1014
    .end local v4    # "adtr":Landroid/icu/util/DateTimeRule;
    .local v26, "adtr":Landroid/icu/util/DateTimeRule;
    :goto_23c
    new-instance v22, Landroid/icu/util/AnnualTimeZoneRule;

    move-object/from16 v23, p0

    move/from16 v24, p1

    move/from16 v25, p2

    invoke-direct/range {v22 .. v28}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    return-object v22

    .line 1005
    .end local v10    # "dayOfMonth":I
    .end local v26    # "adtr":Landroid/icu/util/DateTimeRule;
    .restart local v2    # "dayOfMonth":I
    .restart local v4    # "adtr":Landroid/icu/util/DateTimeRule;
    :cond_248
    move v10, v2

    .line 1011
    .end local v2    # "dayOfMonth":I
    .restart local v10    # "dayOfMonth":I
    const/16 v19, 0x0

    return-object v19

    .line 889
    .end local v1    # "dfields":[I
    .end local v4    # "adtr":Landroid/icu/util/DateTimeRule;
    .end local v9    # "month":I
    .end local v15    # "nthDayOfWeek":I
    .end local v27    # "startYear":I
    .end local v28    # "endYear":I
    .local v7, "month":I
    .local v10, "nthDayOfWeek":I
    .local v12, "dayOfMonth":I
    :cond_24c
    move/from16 v0, p6

    move v15, v10

    .line 891
    .end local v10    # "nthDayOfWeek":I
    .restart local v15    # "nthDayOfWeek":I
    :goto_24f
    return-object v19

    .line 831
    .end local v3    # "rrule":Ljava/lang/String;
    .end local v5    # "until":[J
    .end local v6    # "ruleFields":[I
    .end local v7    # "month":I
    .end local v11    # "dayOfWeek":I
    .end local v12    # "dayOfMonth":I
    .end local v15    # "nthDayOfWeek":I
    :cond_250
    move/from16 v0, p6

    move-object/from16 v19, v1

    .line 832
    :goto_254
    return-object v19
.end method

.method private static greylist-max-o endZoneProps(Ljava/io/Writer;Z)V
    .registers 3
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "isDst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1811
    const-string v0, "END"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1812
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1813
    if-eqz p1, :cond_12

    .line 1814
    const-string v0, "DAYLIGHT"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_17

    .line 1816
    :cond_12
    const-string v0, "STANDARD"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1818
    :goto_17
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1819
    return-void
.end method

.method private static greylist-max-o getDateTimeString(J)Ljava/lang/String;
    .registers 10
    .param p0, "time"    # J

    .line 1889
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v0

    .line 1890
    .local v0, "fields":[I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1891
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    const/4 v2, 0x1

    aget v3, v0, v2

    add-int/2addr v3, v2

    const/4 v2, 0x2

    invoke-static {v3, v2}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    aget v3, v0, v2

    invoke-static {v3, v2}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    const/16 v3, 0x54

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1896
    const/4 v3, 0x5

    aget v3, v0, v3

    .line 1897
    .local v3, "t":I
    const v4, 0x36ee80

    div-int v5, v3, v4

    .line 1898
    .local v5, "hour":I
    rem-int/2addr v3, v4

    .line 1899
    const v4, 0xea60

    div-int v6, v3, v4

    .line 1900
    .local v6, "min":I
    rem-int/2addr v3, v4

    .line 1901
    div-int/lit16 v4, v3, 0x3e8

    .line 1903
    .local v4, "sec":I
    invoke-static {v5, v2}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    invoke-static {v6, v2}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    invoke-static {v4, v2}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p0, "tzid"    # Ljava/lang/String;
    .param p1, "isDST"    # Z

    .line 820
    if-eqz p1, :cond_16

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(DST)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 823
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(STD)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getUTCDateTimeString(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o isEquivalentDateRule(IIILandroid/icu/util/DateTimeRule;)Z
    .registers 9
    .param p0, "month"    # I
    .param p1, "weekInMonth"    # I
    .param p2, "dayOfWeek"    # I
    .param p3, "dtrule"    # Landroid/icu/util/DateTimeRule;

    .line 1458
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_7b

    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v0

    if-eq p2, v0, :cond_e

    goto :goto_7b

    .line 1461
    :cond_e
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v0

    if-eqz v0, :cond_15

    .line 1463
    return v1

    .line 1465
    :cond_15
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_23

    .line 1466
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v0

    if-ne v0, p1, :cond_23

    .line 1467
    return v2

    .line 1469
    :cond_23
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v0

    .line 1470
    .local v0, "ruleDOM":I
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_52

    .line 1471
    rem-int/lit8 v3, v0, 0x7

    if-ne v3, v2, :cond_39

    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v3, v3, 0x7

    if-ne v3, p1, :cond_39

    .line 1472
    return v2

    .line 1474
    :cond_39
    if-eq p0, v2, :cond_52

    sget-object v3, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v3, v3, p0

    sub-int/2addr v3, v0

    rem-int/lit8 v3, v3, 0x7

    const/4 v4, 0x6

    if-ne v3, v4, :cond_52

    sget-object v3, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v3, v3, p0

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x7

    mul-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_52

    .line 1476
    return v2

    .line 1479
    :cond_52
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7a

    .line 1480
    rem-int/lit8 v3, v0, 0x7

    if-nez v3, :cond_62

    div-int/lit8 v3, v0, 0x7

    if-ne v3, p1, :cond_62

    .line 1481
    return v2

    .line 1483
    :cond_62
    if-eq p0, v2, :cond_7a

    sget-object v3, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v3, v3, p0

    sub-int/2addr v3, v0

    rem-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_7a

    sget-object v3, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v3, v3, p0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v2

    mul-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_7a

    .line 1485
    return v2

    .line 1488
    :cond_7a
    return v1

    .line 1459
    .end local v0    # "ruleDOM":I
    :cond_7b
    :goto_7b
    return v1
.end method

.method private greylist-max-o load(Ljava/io/Reader;)Z
    .registers 11
    .param p1, "reader"    # Ljava/io/Reader;

    .line 452
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, "eol":Z
    const/4 v2, 0x0

    .line 455
    .local v2, "start":Z
    const/4 v3, 0x0

    .line 456
    .local v3, "success":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v4, "line":Ljava/lang/StringBuilder;
    :goto_10
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v5
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_a1

    .line 459
    .local v5, "ch":I
    const/4 v6, -0x1

    const-string v7, "END:VTIMEZONE"

    if-ne v5, v6, :cond_30

    .line 461
    if-eqz v2, :cond_77

    :try_start_1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 462
    iget-object v6, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    const/4 v3, 0x1

    goto :goto_77

    .line 467
    :cond_30
    const/16 v6, 0xd

    if-ne v5, v6, :cond_35

    .line 469
    goto :goto_10

    .line 472
    :cond_35
    const/16 v6, 0xa

    if-eqz v1, :cond_5d

    .line 473
    const/16 v7, 0x9

    if-eq v5, v7, :cond_5b

    const/16 v7, 0x20

    if-eq v5, v7, :cond_5b

    .line 475
    if-eqz v2, :cond_52

    .line 476
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_52

    .line 477
    iget-object v7, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 481
    if-eq v5, v6, :cond_5b

    .line 482
    int-to-char v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    :cond_5b
    const/4 v1, 0x0

    goto :goto_9f

    .line 487
    :cond_5d
    if-ne v5, v6, :cond_9b

    .line 489
    const/4 v1, 0x1

    .line 490
    if-eqz v2, :cond_80

    .line 491
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 492
    iget-object v6, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_75} :catch_a1

    .line 493
    const/4 v3, 0x1

    .line 494
    nop

    .line 509
    .end local v5    # "ch":I
    :cond_77
    :goto_77
    if-nez v3, :cond_7a

    .line 510
    return v0

    .line 516
    .end local v1    # "eol":Z
    .end local v2    # "start":Z
    .end local v3    # "success":Z
    .end local v4    # "line":Ljava/lang/StringBuilder;
    :cond_7a
    nop

    .line 517
    invoke-direct {p0}, Landroid/icu/util/VTimeZone;->parse()Z

    move-result v0

    return v0

    .line 497
    .restart local v1    # "eol":Z
    .restart local v2    # "start":Z
    .restart local v3    # "success":Z
    .restart local v4    # "line":Ljava/lang/StringBuilder;
    .restart local v5    # "ch":I
    :cond_80
    :try_start_80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BEGIN:VTIMEZONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 498
    iget-object v6, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 500
    const/4 v2, 0x1

    .line 501
    const/4 v1, 0x0

    goto :goto_9f

    .line 505
    :cond_9b
    int-to-char v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_9f} :catch_a1

    .line 508
    .end local v5    # "ch":I
    :cond_9f
    :goto_9f
    goto/16 :goto_10

    .line 512
    .end local v1    # "eol":Z
    .end local v2    # "start":Z
    .end local v3    # "success":Z
    .end local v4    # "line":Ljava/lang/StringBuilder;
    :catch_a1
    move-exception v1

    .line 514
    .local v1, "ioe":Ljava/io/IOException;
    return v0
.end method

.method private static greylist-max-o millisToOffset(I)Ljava/lang/String;
    .registers 8
    .param p0, "millis"    # I

    .line 2030
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2031
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-ltz p0, :cond_e

    .line 2032
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 2034
    :cond_e
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2035
    neg-int p0, p0

    .line 2038
    :goto_14
    div-int/lit16 v1, p0, 0x3e8

    .line 2040
    .local v1, "t":I
    rem-int/lit8 v2, v1, 0x3c

    .line 2041
    .local v2, "sec":I
    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x3c

    .line 2042
    .end local v1    # "t":I
    .local v3, "t":I
    rem-int/lit8 v1, v3, 0x3c

    .line 2043
    .local v1, "min":I
    div-int/lit8 v4, v3, 0x3c

    .line 2045
    .local v4, "hour":I
    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    invoke-static {v1, v5}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2047
    invoke-static {v2, v5}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static greylist-max-o numToString(II)Ljava/lang/String;
    .registers 7
    .param p0, "num"    # I
    .param p1, "width"    # I

    .line 2056
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2057
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2058
    .local v1, "len":I
    if-lt v1, p1, :cond_11

    .line 2059
    sub-int v2, v1, p1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2061
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2062
    .local v2, "sb":Ljava/lang/StringBuilder;
    move v3, v1

    .local v3, "i":I
    :goto_17
    if-ge v3, p1, :cond_21

    .line 2063
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2062
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2065
    .end local v3    # "i":I
    :cond_21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static greylist-max-o offsetStrToMillis(Ljava/lang/String;)I
    .registers 12
    .param p0, "str"    # Ljava/lang/String;

    .line 1984
    const/4 v0, 0x0

    .line 1985
    .local v0, "isValid":Z
    const/4 v1, 0x0

    .local v1, "sign":I
    const/4 v2, 0x0

    .local v2, "hour":I
    const/4 v3, 0x0

    .local v3, "min":I
    const/4 v4, 0x0

    .line 1988
    .local v4, "sec":I
    if-nez p0, :cond_8

    .line 1989
    goto :goto_47

    .line 1991
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1992
    .local v5, "length":I
    const/4 v6, 0x7

    const/4 v7, 0x5

    if-eq v5, v7, :cond_13

    if-eq v5, v6, :cond_13

    .line 1994
    goto :goto_47

    .line 1997
    :cond_13
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1998
    .local v8, "s":C
    const/16 v9, 0x2b

    if-ne v8, v9, :cond_1e

    .line 1999
    const/4 v1, 0x1

    goto :goto_23

    .line 2000
    :cond_1e
    const/16 v9, 0x2d

    if-ne v8, v9, :cond_47

    .line 2001
    const/4 v1, -0x1

    .line 2008
    :goto_23
    const/4 v9, 0x1

    const/4 v10, 0x3

    :try_start_25
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v2, v9

    .line 2009
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v3, v9

    .line 2010
    if-ne v5, v6, :cond_42

    .line 2011
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_41} :catch_45

    move v4, v6

    .line 2015
    :cond_42
    nop

    .line 2016
    const/4 v0, 0x1

    goto :goto_47

    .line 2013
    :catch_45
    move-exception v6

    .line 2014
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    nop

    .line 2019
    .end local v5    # "length":I
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    .end local v8    # "s":C
    :cond_47
    :goto_47
    if-eqz v0, :cond_53

    .line 2022
    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v5, v4

    mul-int/2addr v5, v1

    mul-int/lit16 v5, v5, 0x3e8

    .line 2023
    .local v5, "millis":I
    return v5

    .line 2020
    .end local v5    # "millis":I
    :cond_53
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Bad offset string"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private greylist-max-o parse()Z
    .registers 38

    .line 531
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    if-eqz v0, :cond_430

    iget-object v0, v1, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_430

    .line 537
    :cond_10
    const/4 v0, 0x0

    .line 539
    .local v0, "tzid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 540
    .local v3, "state":I
    const/4 v4, 0x0

    .line 541
    .local v4, "dst":Z
    const/4 v5, 0x0

    .line 542
    .local v5, "from":Ljava/lang/String;
    const/4 v6, 0x0

    .line 543
    .local v6, "to":Ljava/lang/String;
    const/4 v7, 0x0

    .line 544
    .local v7, "tzname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 545
    .local v8, "dtstart":Ljava/lang/String;
    const/4 v9, 0x0

    .line 546
    .local v9, "isRRULE":Z
    const/4 v10, 0x0

    .line 547
    .local v10, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v11, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/TimeZoneRule;>;"
    const/4 v12, 0x0

    .line 549
    .local v12, "initialRawOffset":I
    const/4 v13, 0x0

    .line 550
    .local v13, "initialDSTSavings":I
    const-wide v14, 0x7fffffffffffffffL

    .line 552
    .local v14, "firstStart":J
    iget-object v2, v1, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v22, v3

    move-object v3, v0

    move-object v0, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    move/from16 v4, v22

    move-object/from16 v22, v10

    .end local v10    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "tzname":Ljava/lang/String;
    .local v3, "tzid":Ljava/lang/String;
    .local v4, "state":I
    .local v5, "dst":Z
    .local v6, "from":Ljava/lang/String;
    .local v7, "to":Ljava/lang/String;
    .local v22, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    move-object/from16 v24, v2

    if-eqz v10, :cond_305

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 553
    .local v10, "line":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 554
    .local v2, "valueSep":I
    if-gez v2, :cond_4f

    .line 555
    move-object/from16 v2, v24

    goto :goto_36

    .line 557
    :cond_4f
    move/from16 v25, v4

    move-object/from16 v26, v6

    const/4 v4, 0x0

    .end local v4    # "state":I
    .end local v6    # "from":Ljava/lang/String;
    .local v25, "state":I
    .local v26, "from":Ljava/lang/String;
    invoke-virtual {v10, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, "name":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 560
    .local v4, "value":Ljava/lang/String;
    move-object/from16 v17, v0

    .end local v0    # "tzname":Ljava/lang/String;
    .local v17, "tzname":Ljava/lang/String;
    const-string v0, "END"

    move/from16 v27, v2

    .end local v2    # "valueSep":I
    .local v27, "valueSep":I
    const-string v2, "BEGIN"

    packed-switch v25, :pswitch_data_434

    move/from16 v23, v5

    move-object/from16 v28, v7

    move-object/from16 v18, v8

    .end local v5    # "dst":Z
    .end local v7    # "to":Ljava/lang/String;
    .end local v8    # "dtstart":Ljava/lang/String;
    .local v18, "dtstart":Ljava/lang/String;
    .local v23, "dst":Z
    .local v28, "to":Ljava/lang/String;
    goto/16 :goto_2e5

    .line 603
    .end local v18    # "dtstart":Ljava/lang/String;
    .end local v23    # "dst":Z
    .end local v28    # "to":Ljava/lang/String;
    .restart local v5    # "dst":Z
    .restart local v7    # "to":Ljava/lang/String;
    .restart local v8    # "dtstart":Ljava/lang/String;
    :pswitch_71
    const-string v2, "DTSTART"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 604
    move-object v0, v4

    move-object v8, v0

    move-object/from16 v0, v17

    move/from16 v2, v25

    .end local v8    # "dtstart":Ljava/lang/String;
    .local v0, "dtstart":Ljava/lang/String;
    goto/16 :goto_2ef

    .line 605
    .end local v0    # "dtstart":Ljava/lang/String;
    .restart local v8    # "dtstart":Ljava/lang/String;
    :cond_81
    const-string v2, "TZNAME"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 606
    move-object v0, v4

    move/from16 v2, v25

    .end local v17    # "tzname":Ljava/lang/String;
    .local v0, "tzname":Ljava/lang/String;
    goto/16 :goto_2ef

    .line 607
    .end local v0    # "tzname":Ljava/lang/String;
    .restart local v17    # "tzname":Ljava/lang/String;
    :cond_8e
    const-string v2, "TZOFFSETFROM"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 608
    move-object v0, v4

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v2, v25

    .end local v26    # "from":Ljava/lang/String;
    .local v0, "from":Ljava/lang/String;
    goto/16 :goto_2ef

    .line 609
    .end local v0    # "from":Ljava/lang/String;
    .restart local v26    # "from":Ljava/lang/String;
    :cond_9f
    const-string v2, "TZOFFSETTO"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 610
    move-object v0, v4

    move-object v7, v0

    move-object/from16 v0, v17

    move/from16 v2, v25

    .end local v7    # "to":Ljava/lang/String;
    .local v0, "to":Ljava/lang/String;
    goto/16 :goto_2ef

    .line 611
    .end local v0    # "to":Ljava/lang/String;
    .restart local v7    # "to":Ljava/lang/String;
    :cond_af
    const-string v2, "RDATE"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 613
    if-eqz v9, :cond_bf

    .line 614
    const/4 v0, 0x3

    .line 615
    .end local v25    # "state":I
    .local v0, "state":I
    move v2, v0

    move-object/from16 v0, v17

    goto/16 :goto_2ef

    .line 617
    .end local v0    # "state":I
    .restart local v25    # "state":I
    :cond_bf
    if-nez v22, :cond_c9

    .line 618
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v22, v0

    goto :goto_cb

    .line 617
    :cond_c9
    move-object/from16 v0, v22

    .line 622
    .end local v22    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_cb
    new-instance v2, Ljava/util/StringTokenizer;

    move-object/from16 v28, v7

    .end local v7    # "to":Ljava/lang/String;
    .restart local v28    # "to":Ljava/lang/String;
    const-string v7, ","

    invoke-direct {v2, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_d4
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_e2

    .line 624
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 625
    .local v7, "date":Ljava/lang/String;
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    .end local v7    # "date":Ljava/lang/String;
    goto :goto_d4

    .line 627
    .end local v2    # "st":Ljava/util/StringTokenizer;
    :cond_e2
    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v2, v25

    move-object/from16 v7, v28

    goto/16 :goto_2ef

    .end local v0    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "to":Ljava/lang/String;
    .local v7, "to":Ljava/lang/String;
    .restart local v22    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ec
    move-object/from16 v28, v7

    .end local v7    # "to":Ljava/lang/String;
    .restart local v28    # "to":Ljava/lang/String;
    const-string v2, "RRULE"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 629
    if-nez v9, :cond_102

    if-eqz v22, :cond_102

    .line 630
    const/4 v0, 0x3

    .line 631
    .end local v25    # "state":I
    .local v0, "state":I
    move v2, v0

    move-object/from16 v0, v17

    move-object/from16 v7, v28

    goto/16 :goto_2ef

    .line 632
    .end local v0    # "state":I
    .restart local v25    # "state":I
    :cond_102
    if-nez v22, :cond_10c

    .line 633
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v22, v0

    goto :goto_10e

    .line 632
    :cond_10c
    move-object/from16 v0, v22

    .line 635
    .end local v22    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_10e
    const/4 v2, 0x1

    .line 636
    .end local v9    # "isRRULE":Z
    .local v2, "isRRULE":Z
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v0

    move v9, v2

    move-object/from16 v0, v17

    move/from16 v2, v25

    move-object/from16 v7, v28

    goto/16 :goto_2ef

    .line 637
    .end local v0    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "isRRULE":Z
    .restart local v9    # "isRRULE":Z
    .restart local v22    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11d
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_234

    .line 639
    if-eqz v8, :cond_228

    if-eqz v26, :cond_228

    if-nez v28, :cond_12d

    move/from16 v23, v5

    goto/16 :goto_22a

    .line 644
    :cond_12d
    if-nez v17, :cond_135

    .line 645
    invoke-static {v3, v5}, Landroid/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 649
    :cond_135
    const/4 v2, 0x0

    .line 650
    .local v2, "rule":Landroid/icu/util/TimeZoneRule;
    const/4 v7, 0x0

    .line 651
    .local v7, "fromOffset":I
    const/16 v18, 0x0

    .line 652
    .local v18, "toOffset":I
    const/16 v19, 0x0

    .line 653
    .local v19, "rawOffset":I
    const/16 v20, 0x0

    .line 654
    .local v20, "dstSavings":I
    const-wide/16 v29, 0x0

    .line 657
    .local v29, "start":J
    :try_start_13f
    invoke-static/range {v26 .. v26}, Landroid/icu/util/VTimeZone;->offsetStrToMillis(Ljava/lang/String;)I

    move-result v23
    :try_end_143
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13f .. :try_end_143} :catch_1fd

    move/from16 v7, v23

    .line 658
    :try_start_145
    invoke-static/range {v28 .. v28}, Landroid/icu/util/VTimeZone;->offsetStrToMillis(Ljava/lang/String;)I

    move-result v0
    :try_end_149
    .catch Ljava/lang/IllegalArgumentException; {:try_start_145 .. :try_end_149} :catch_1f4

    move/from16 v31, v0

    .line 660
    .end local v18    # "toOffset":I
    .local v31, "toOffset":I
    const v0, 0x36ee80

    if-eqz v5, :cond_15f

    .line 662
    sub-int v18, v31, v7

    if-lez v18, :cond_159

    .line 663
    move/from16 v18, v7

    .line 664
    .end local v19    # "rawOffset":I
    .local v18, "rawOffset":I
    sub-int v19, v31, v7

    .end local v20    # "dstSavings":I
    .local v19, "dstSavings":I
    goto :goto_163

    .line 667
    .end local v18    # "rawOffset":I
    .local v19, "rawOffset":I
    .restart local v20    # "dstSavings":I
    :cond_159
    sub-int v18, v31, v0

    .line 668
    .end local v19    # "rawOffset":I
    .restart local v18    # "rawOffset":I
    const v19, 0x36ee80

    .end local v20    # "dstSavings":I
    .local v19, "dstSavings":I
    goto :goto_163

    .line 671
    .end local v18    # "rawOffset":I
    .local v19, "rawOffset":I
    .restart local v20    # "dstSavings":I
    :cond_15f
    move/from16 v18, v31

    .line 672
    .end local v19    # "rawOffset":I
    .restart local v18    # "rawOffset":I
    const/16 v19, 0x0

    .line 676
    .end local v20    # "dstSavings":I
    .local v19, "dstSavings":I
    :goto_163
    :try_start_163
    invoke-static {v8, v7}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v20
    :try_end_167
    .catch Ljava/lang/IllegalArgumentException; {:try_start_163 .. :try_end_167} :catch_1e5

    .line 679
    .end local v29    # "start":J
    .local v20, "start":J
    const/16 v29, 0x0

    .line 680
    .local v29, "actualStart":Ljava/util/Date;
    if-eqz v9, :cond_183

    .line 681
    move/from16 v23, v7

    .end local v7    # "fromOffset":I
    .local v23, "fromOffset":I
    :try_start_16d
    invoke-static/range {v17 .. v23}, Landroid/icu/util/VTimeZone;->createRuleByRRULE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;

    move-result-object v7
    :try_end_171
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16d .. :try_end_171} :catch_174

    move/from16 v2, v23

    .end local v2    # "rule":Landroid/icu/util/TimeZoneRule;
    .local v7, "rule":Landroid/icu/util/TimeZoneRule;
    goto :goto_18d

    .line 707
    .end local v7    # "rule":Landroid/icu/util/TimeZoneRule;
    .end local v29    # "actualStart":Ljava/util/Date;
    .restart local v2    # "rule":Landroid/icu/util/TimeZoneRule;
    :catch_174
    move-exception v0

    move-wide/from16 v29, v20

    move/from16 v7, v23

    move/from16 v23, v5

    move/from16 v20, v19

    move/from16 v19, v18

    move/from16 v18, v31

    goto/16 :goto_202

    .line 683
    .end local v23    # "fromOffset":I
    .local v7, "fromOffset":I
    .restart local v29    # "actualStart":Ljava/util/Date;
    :cond_183
    move/from16 v23, v7

    .end local v7    # "fromOffset":I
    .restart local v23    # "fromOffset":I
    :try_start_185
    invoke-static/range {v17 .. v23}, Landroid/icu/util/VTimeZone;->createRuleByRDATE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;

    move-result-object v7
    :try_end_189
    .catch Ljava/lang/IllegalArgumentException; {:try_start_185 .. :try_end_189} :catch_1d2

    move-object/from16 v32, v2

    move/from16 v2, v23

    .line 685
    .end local v23    # "fromOffset":I
    .local v2, "fromOffset":I
    .local v7, "rule":Landroid/icu/util/TimeZoneRule;
    :goto_18d
    if-eqz v7, :cond_1cf

    .line 686
    move/from16 v23, v5

    const/4 v5, 0x0

    .end local v5    # "dst":Z
    .local v23, "dst":Z
    :try_start_192
    invoke-virtual {v7, v2, v5}, Landroid/icu/util/TimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v30

    .line 687
    .end local v29    # "actualStart":Ljava/util/Date;
    .local v30, "actualStart":Ljava/util/Date;
    invoke-virtual/range {v30 .. v30}, Ljava/util/Date;->getTime()J

    move-result-wide v32

    cmp-long v5, v32, v14

    if-gez v5, :cond_1d1

    .line 689
    invoke-virtual/range {v30 .. v30}, Ljava/util/Date;->getTime()J

    move-result-wide v32
    :try_end_1a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_192 .. :try_end_1a2} :catch_1c0

    .line 693
    .end local v14    # "firstStart":J
    .local v32, "firstStart":J
    if-lez v19, :cond_1ab

    .line 694
    move v0, v2

    .line 695
    .end local v12    # "initialRawOffset":I
    .local v0, "initialRawOffset":I
    const/4 v5, 0x0

    move v12, v0

    move v13, v5

    move-wide/from16 v14, v32

    .end local v13    # "initialDSTSavings":I
    .local v5, "initialDSTSavings":I
    goto :goto_1d1

    .line 697
    .end local v0    # "initialRawOffset":I
    .end local v5    # "initialDSTSavings":I
    .restart local v12    # "initialRawOffset":I
    .restart local v13    # "initialDSTSavings":I
    :cond_1ab
    sub-int v5, v2, v31

    if-ne v5, v0, :cond_1b9

    .line 698
    sub-int v0, v2, v0

    .line 699
    .end local v12    # "initialRawOffset":I
    .restart local v0    # "initialRawOffset":I
    const v5, 0x36ee80

    move v12, v0

    move v13, v5

    move-wide/from16 v14, v32

    .end local v13    # "initialDSTSavings":I
    .restart local v5    # "initialDSTSavings":I
    goto :goto_1d1

    .line 701
    .end local v0    # "initialRawOffset":I
    .end local v5    # "initialDSTSavings":I
    .restart local v12    # "initialRawOffset":I
    .restart local v13    # "initialDSTSavings":I
    :cond_1b9
    move v0, v2

    .line 702
    .end local v12    # "initialRawOffset":I
    .restart local v0    # "initialRawOffset":I
    const/4 v5, 0x0

    move v12, v0

    move v13, v5

    move-wide/from16 v14, v32

    .end local v13    # "initialDSTSavings":I
    .restart local v5    # "initialDSTSavings":I
    goto :goto_1d1

    .line 707
    .end local v0    # "initialRawOffset":I
    .end local v5    # "initialDSTSavings":I
    .end local v30    # "actualStart":Ljava/util/Date;
    .end local v32    # "firstStart":J
    .restart local v12    # "initialRawOffset":I
    .restart local v13    # "initialDSTSavings":I
    .restart local v14    # "firstStart":J
    :catch_1c0
    move-exception v0

    move-object/from16 v29, v7

    move v7, v2

    move-object/from16 v2, v29

    move-wide/from16 v29, v20

    move/from16 v20, v19

    move/from16 v19, v18

    move/from16 v18, v31

    goto :goto_202

    .line 685
    .end local v23    # "dst":Z
    .local v5, "dst":Z
    .restart local v29    # "actualStart":Ljava/util/Date;
    :cond_1cf
    move/from16 v23, v5

    .line 709
    .end local v5    # "dst":Z
    .end local v29    # "actualStart":Ljava/util/Date;
    .restart local v23    # "dst":Z
    :cond_1d1
    :goto_1d1
    goto :goto_20f

    .line 707
    .end local v7    # "rule":Landroid/icu/util/TimeZoneRule;
    .local v2, "rule":Landroid/icu/util/TimeZoneRule;
    .restart local v5    # "dst":Z
    .local v23, "fromOffset":I
    :catch_1d2
    move-exception v0

    move-object/from16 v32, v2

    move/from16 v2, v23

    move/from16 v23, v5

    move v7, v2

    move-wide/from16 v29, v20

    move-object/from16 v2, v32

    move/from16 v20, v19

    move/from16 v19, v18

    move/from16 v18, v31

    .end local v5    # "dst":Z
    .local v2, "fromOffset":I
    .local v23, "dst":Z
    .local v32, "rule":Landroid/icu/util/TimeZoneRule;
    goto :goto_202

    .end local v20    # "start":J
    .end local v23    # "dst":Z
    .end local v32    # "rule":Landroid/icu/util/TimeZoneRule;
    .local v2, "rule":Landroid/icu/util/TimeZoneRule;
    .restart local v5    # "dst":Z
    .local v7, "fromOffset":I
    .local v29, "start":J
    :catch_1e5
    move-exception v0

    move-object/from16 v32, v2

    move/from16 v23, v5

    move v2, v7

    move/from16 v20, v19

    move-object/from16 v2, v32

    move/from16 v19, v18

    move/from16 v18, v31

    .end local v5    # "dst":Z
    .end local v7    # "fromOffset":I
    .local v2, "fromOffset":I
    .restart local v23    # "dst":Z
    .restart local v32    # "rule":Landroid/icu/util/TimeZoneRule;
    goto :goto_202

    .end local v23    # "dst":Z
    .end local v31    # "toOffset":I
    .end local v32    # "rule":Landroid/icu/util/TimeZoneRule;
    .local v2, "rule":Landroid/icu/util/TimeZoneRule;
    .restart local v5    # "dst":Z
    .restart local v7    # "fromOffset":I
    .local v18, "toOffset":I
    .local v19, "rawOffset":I
    .local v20, "dstSavings":I
    :catch_1f4
    move-exception v0

    move-object/from16 v32, v2

    move/from16 v23, v5

    move v2, v7

    move-object/from16 v2, v32

    .end local v5    # "dst":Z
    .end local v7    # "fromOffset":I
    .local v2, "fromOffset":I
    .restart local v23    # "dst":Z
    .restart local v32    # "rule":Landroid/icu/util/TimeZoneRule;
    goto :goto_202

    .end local v23    # "dst":Z
    .end local v32    # "rule":Landroid/icu/util/TimeZoneRule;
    .local v2, "rule":Landroid/icu/util/TimeZoneRule;
    .restart local v5    # "dst":Z
    .restart local v7    # "fromOffset":I
    :catch_1fd
    move-exception v0

    move-object/from16 v32, v2

    move/from16 v23, v5

    .end local v5    # "dst":Z
    .restart local v23    # "dst":Z
    :goto_202
    move/from16 v21, v7

    move-object v7, v2

    move/from16 v2, v21

    move/from16 v31, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move-wide/from16 v20, v29

    .line 711
    .end local v29    # "start":J
    .local v2, "fromOffset":I
    .local v7, "rule":Landroid/icu/util/TimeZoneRule;
    .local v18, "rawOffset":I
    .local v19, "dstSavings":I
    .local v20, "start":J
    .restart local v31    # "toOffset":I
    :goto_20f
    if-nez v7, :cond_21b

    .line 712
    const/4 v0, 0x3

    .line 713
    .end local v25    # "state":I
    .local v0, "state":I
    move v2, v0

    move-object/from16 v0, v17

    move/from16 v5, v23

    move-object/from16 v7, v28

    goto/16 :goto_2ef

    .line 715
    .end local v0    # "state":I
    .restart local v25    # "state":I
    :cond_21b
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    const/4 v0, 0x1

    move v2, v0

    move-object/from16 v0, v17

    move/from16 v5, v23

    move-object/from16 v7, v28

    .end local v25    # "state":I
    .restart local v0    # "state":I
    goto/16 :goto_2ef

    .line 639
    .end local v0    # "state":I
    .end local v2    # "fromOffset":I
    .end local v7    # "rule":Landroid/icu/util/TimeZoneRule;
    .end local v18    # "rawOffset":I
    .end local v19    # "dstSavings":I
    .end local v20    # "start":J
    .end local v23    # "dst":Z
    .end local v31    # "toOffset":I
    .restart local v5    # "dst":Z
    .restart local v25    # "state":I
    :cond_228
    move/from16 v23, v5

    .line 640
    .end local v5    # "dst":Z
    .restart local v23    # "dst":Z
    :goto_22a
    const/4 v0, 0x3

    .line 641
    .end local v25    # "state":I
    .restart local v0    # "state":I
    move v2, v0

    move-object/from16 v0, v17

    move/from16 v5, v23

    move-object/from16 v7, v28

    goto/16 :goto_2ef

    .line 637
    .end local v0    # "state":I
    .end local v23    # "dst":Z
    .restart local v5    # "dst":Z
    .restart local v25    # "state":I
    :cond_234
    move/from16 v23, v5

    .end local v5    # "dst":Z
    .restart local v23    # "dst":Z
    move-object/from16 v18, v8

    goto/16 :goto_2e5

    .line 567
    .end local v23    # "dst":Z
    .end local v28    # "to":Ljava/lang/String;
    .restart local v5    # "dst":Z
    .local v7, "to":Ljava/lang/String;
    :pswitch_23a
    move/from16 v23, v5

    move-object/from16 v28, v7

    .end local v5    # "dst":Z
    .end local v7    # "to":Ljava/lang/String;
    .restart local v23    # "dst":Z
    .restart local v28    # "to":Ljava/lang/String;
    const-string v5, "TZID"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_252

    .line 568
    move-object v0, v4

    move-object v3, v0

    move-object/from16 v0, v17

    move/from16 v5, v23

    move/from16 v2, v25

    move-object/from16 v7, v28

    .end local v3    # "tzid":Ljava/lang/String;
    .local v0, "tzid":Ljava/lang/String;
    goto/16 :goto_2ef

    .line 569
    .end local v0    # "tzid":Ljava/lang/String;
    .restart local v3    # "tzid":Ljava/lang/String;
    :cond_252
    const-string v5, "TZURL"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_260

    .line 570
    iput-object v4, v1, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    move-object/from16 v18, v8

    goto/16 :goto_2e5

    .line 571
    :cond_260
    const-string v5, "LAST-MODIFIED"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_278

    .line 574
    new-instance v0, Ljava/util/Date;

    move-object/from16 v18, v8

    const/4 v5, 0x0

    .end local v8    # "dtstart":Ljava/lang/String;
    .local v18, "dtstart":Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v0, v1, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    goto/16 :goto_2e5

    .line 575
    .end local v18    # "dtstart":Ljava/lang/String;
    .restart local v8    # "dtstart":Ljava/lang/String;
    :cond_278
    move-object/from16 v18, v8

    .end local v8    # "dtstart":Ljava/lang/String;
    .restart local v18    # "dtstart":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2bf

    .line 576
    const-string v0, "DAYLIGHT"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 577
    .local v0, "isDST":Z
    const-string v2, "STANDARD"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29c

    if-eqz v0, :cond_291

    goto :goto_29c

    .line 594
    :cond_291
    const/4 v2, 0x3

    .line 595
    .end local v25    # "state":I
    .local v2, "state":I
    move-object/from16 v0, v17

    move-object/from16 v8, v18

    move/from16 v5, v23

    move-object/from16 v7, v28

    goto/16 :goto_2ef

    .line 579
    .end local v2    # "state":I
    .restart local v25    # "state":I
    :cond_29c
    :goto_29c
    if-nez v3, :cond_2a8

    .line 580
    const/4 v2, 0x3

    .line 581
    .end local v25    # "state":I
    .restart local v2    # "state":I
    move-object/from16 v0, v17

    move-object/from16 v8, v18

    move/from16 v5, v23

    move-object/from16 v7, v28

    goto :goto_2ef

    .line 584
    .end local v2    # "state":I
    .restart local v25    # "state":I
    :cond_2a8
    const/4 v2, 0x0

    .line 585
    .end local v22    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 586
    .end local v9    # "isRRULE":Z
    .local v5, "isRRULE":Z
    const/4 v7, 0x0

    .line 587
    .end local v26    # "from":Ljava/lang/String;
    .local v7, "from":Ljava/lang/String;
    const/4 v8, 0x0

    .line 588
    .end local v28    # "to":Ljava/lang/String;
    .local v8, "to":Ljava/lang/String;
    const/4 v9, 0x0

    .line 589
    .end local v17    # "tzname":Ljava/lang/String;
    .local v9, "tzname":Ljava/lang/String;
    move/from16 v17, v0

    .line 590
    .end local v23    # "dst":Z
    .local v17, "dst":Z
    const/16 v19, 0x2

    .line 597
    .end local v0    # "isDST":Z
    .end local v25    # "state":I
    .local v19, "state":I
    move-object/from16 v22, v2

    move-object/from16 v26, v7

    move-object v7, v8

    move-object v0, v9

    move-object/from16 v8, v18

    move/from16 v2, v19

    move v9, v5

    move/from16 v5, v17

    goto :goto_2ef

    .end local v2    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "isRRULE":Z
    .end local v7    # "from":Ljava/lang/String;
    .end local v8    # "to":Ljava/lang/String;
    .end local v19    # "state":I
    .local v9, "isRRULE":Z
    .local v17, "tzname":Ljava/lang/String;
    .restart local v22    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "dst":Z
    .restart local v25    # "state":I
    .restart local v26    # "from":Ljava/lang/String;
    .restart local v28    # "to":Ljava/lang/String;
    :cond_2bf
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e5

    .line 598
    goto :goto_2e5

    .line 562
    .end local v18    # "dtstart":Ljava/lang/String;
    .end local v23    # "dst":Z
    .end local v28    # "to":Ljava/lang/String;
    .local v5, "dst":Z
    .local v7, "to":Ljava/lang/String;
    .local v8, "dtstart":Ljava/lang/String;
    :pswitch_2c6
    move/from16 v23, v5

    move-object/from16 v28, v7

    move-object/from16 v18, v8

    .end local v5    # "dst":Z
    .end local v7    # "to":Ljava/lang/String;
    .end local v8    # "dtstart":Ljava/lang/String;
    .restart local v18    # "dtstart":Ljava/lang/String;
    .restart local v23    # "dst":Z
    .restart local v28    # "to":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e5

    const-string v0, "VTIMEZONE"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e5

    .line 563
    const/4 v0, 0x1

    move v2, v0

    move-object/from16 v0, v17

    move-object/from16 v8, v18

    move/from16 v5, v23

    move-object/from16 v7, v28

    .end local v25    # "state":I
    .local v0, "state":I
    goto :goto_2ef

    .line 721
    .end local v0    # "state":I
    .restart local v25    # "state":I
    :cond_2e5
    :goto_2e5
    move-object/from16 v0, v17

    move-object/from16 v8, v18

    move/from16 v5, v23

    move/from16 v2, v25

    move-object/from16 v7, v28

    .end local v17    # "tzname":Ljava/lang/String;
    .end local v18    # "dtstart":Ljava/lang/String;
    .end local v23    # "dst":Z
    .end local v25    # "state":I
    .end local v28    # "to":Ljava/lang/String;
    .local v0, "tzname":Ljava/lang/String;
    .local v2, "state":I
    .restart local v5    # "dst":Z
    .restart local v7    # "to":Ljava/lang/String;
    .restart local v8    # "dtstart":Ljava/lang/String;
    :goto_2ef
    move-object/from16 v17, v0

    .end local v0    # "tzname":Ljava/lang/String;
    .restart local v17    # "tzname":Ljava/lang/String;
    const/4 v0, 0x3

    if-ne v2, v0, :cond_2fa

    .line 722
    move v0, v2

    const/4 v2, 0x0

    .end local v2    # "state":I
    .local v0, "state":I
    iput-object v2, v1, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    .line 723
    const/4 v2, 0x0

    return v2

    .line 721
    .end local v0    # "state":I
    .restart local v2    # "state":I
    :cond_2fa
    move v0, v2

    const/4 v2, 0x0

    .line 725
    .end local v2    # "state":I
    .end local v4    # "value":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v10    # "line":Ljava/lang/String;
    .end local v27    # "valueSep":I
    .restart local v0    # "state":I
    move v4, v0

    move-object/from16 v0, v17

    move-object/from16 v2, v24

    move-object/from16 v6, v26

    goto/16 :goto_36

    .line 728
    .end local v17    # "tzname":Ljava/lang/String;
    .end local v26    # "from":Ljava/lang/String;
    .local v0, "tzname":Ljava/lang/String;
    .local v4, "state":I
    .local v6, "from":Ljava/lang/String;
    :cond_305
    move-object/from16 v17, v0

    move/from16 v25, v4

    move/from16 v23, v5

    move-object/from16 v26, v6

    move-object/from16 v28, v7

    move-object/from16 v18, v8

    const/4 v2, 0x0

    .end local v0    # "tzname":Ljava/lang/String;
    .end local v4    # "state":I
    .end local v5    # "dst":Z
    .end local v6    # "from":Ljava/lang/String;
    .end local v7    # "to":Ljava/lang/String;
    .end local v8    # "dtstart":Ljava/lang/String;
    .restart local v17    # "tzname":Ljava/lang/String;
    .restart local v18    # "dtstart":Ljava/lang/String;
    .restart local v23    # "dst":Z
    .restart local v25    # "state":I
    .restart local v26    # "from":Ljava/lang/String;
    .restart local v28    # "to":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_319

    .line 729
    return v2

    .line 733
    :cond_319
    new-instance v0, Landroid/icu/util/InitialTimeZoneRule;

    invoke-static {v3, v2}, Landroid/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v12, v13}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 737
    .local v0, "initialRule":Landroid/icu/util/InitialTimeZoneRule;
    new-instance v2, Landroid/icu/util/RuleBasedTimeZone;

    invoke-direct {v2, v3, v0}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    .line 739
    .local v2, "rbtz":Landroid/icu/util/RuleBasedTimeZone;
    const/4 v4, -0x1

    .line 740
    .local v4, "finalRuleIdx":I
    const/4 v5, 0x0

    .line 741
    .local v5, "finalRuleCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_32a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_34c

    .line 742
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/util/TimeZoneRule;

    .line 743
    .local v7, "r":Landroid/icu/util/TimeZoneRule;
    instance-of v8, v7, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v8, :cond_349

    .line 744
    move-object v8, v7

    check-cast v8, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v8}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v8

    const v10, 0x7fffffff

    if-ne v8, v10, :cond_349

    .line 745
    add-int/lit8 v5, v5, 0x1

    .line 746
    move v4, v6

    .line 741
    .end local v7    # "r":Landroid/icu/util/TimeZoneRule;
    :cond_349
    add-int/lit8 v6, v6, 0x1

    goto :goto_32a

    .line 750
    .end local v6    # "i":I
    :cond_34c
    const/4 v6, 0x2

    if-le v5, v6, :cond_352

    .line 752
    const/16 v16, 0x0

    return v16

    .line 755
    :cond_352
    const/4 v6, 0x1

    if-ne v5, v6, :cond_410

    .line 756
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v6, :cond_364

    .line 760
    invoke-interface {v11}, Ljava/util/List;->clear()V

    move-object/from16 v24, v0

    move/from16 v20, v5

    goto/16 :goto_414

    .line 763
    :cond_364
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/util/AnnualTimeZoneRule;

    .line 764
    .local v7, "finalRule":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual {v7}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v8

    .line 765
    .local v8, "tmpRaw":I
    invoke-virtual {v7}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v10

    .line 768
    .local v10, "tmpDST":I
    invoke-virtual {v7, v12, v13}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v6

    .line 769
    .local v6, "finalStart":Ljava/util/Date;
    move-object/from16 v20, v6

    .line 770
    .local v20, "start":Ljava/util/Date;
    const/16 v21, 0x0

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v20, v5

    move/from16 v5, v21

    .local v0, "start":Ljava/util/Date;
    .local v5, "i":I
    .local v20, "finalRuleCount":I
    .local v24, "initialRule":Landroid/icu/util/InitialTimeZoneRule;
    :goto_382
    move-object/from16 v29, v7

    .end local v7    # "finalRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v29, "finalRule":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3b8

    .line 771
    if-ne v4, v5, :cond_38f

    .line 772
    move/from16 v21, v5

    goto :goto_3b3

    .line 774
    :cond_38f
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/util/TimeZoneRule;

    .line 775
    .local v7, "r":Landroid/icu/util/TimeZoneRule;
    move/from16 v21, v5

    .end local v5    # "i":I
    .local v21, "i":I
    invoke-virtual {v7, v8, v10}, Landroid/icu/util/TimeZoneRule;->getFinalStart(II)Ljava/util/Date;

    move-result-object v5

    .line 776
    .local v5, "lastStart":Ljava/util/Date;
    invoke-virtual {v5, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v27

    if-eqz v27, :cond_3b3

    .line 777
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v30

    .line 778
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v32

    .line 779
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v33

    .line 777
    const/16 v34, 0x0

    invoke-virtual/range {v29 .. v34}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 770
    .end local v5    # "lastStart":Ljava/util/Date;
    .end local v7    # "r":Landroid/icu/util/TimeZoneRule;
    :cond_3b3
    :goto_3b3
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v7, v29

    .end local v21    # "i":I
    .local v5, "i":I
    goto :goto_382

    :cond_3b8
    move/from16 v21, v5

    .line 784
    .end local v5    # "i":I
    if-ne v0, v6, :cond_3e1

    .line 786
    new-instance v30, Landroid/icu/util/TimeArrayTimeZoneRule;

    .line 787
    invoke-virtual/range {v29 .. v29}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v31

    .line 788
    invoke-virtual/range {v29 .. v29}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v32

    .line 789
    invoke-virtual/range {v29 .. v29}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v33

    .line 790
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v34

    const/4 v5, 0x1

    new-array v7, v5, [J

    const/16 v16, 0x0

    aput-wide v34, v7, v16

    const/16 v35, 0x2

    move-object/from16 v34, v7

    invoke-direct/range {v30 .. v35}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    move-object/from16 v21, v6

    move-object/from16 v5, v30

    .local v30, "newRule":Landroid/icu/util/TimeZoneRule;
    goto :goto_40c

    .line 794
    .end local v30    # "newRule":Landroid/icu/util/TimeZoneRule;
    :cond_3e1
    move-object v7, v6

    .end local v6    # "finalStart":Ljava/util/Date;
    .local v7, "finalStart":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object/from16 v21, v7

    const/4 v7, 0x0

    .end local v7    # "finalStart":Ljava/util/Date;
    .local v21, "finalStart":Ljava/util/Date;
    invoke-static {v5, v6, v7}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v5

    .line 795
    .local v5, "fields":[I
    new-instance v30, Landroid/icu/util/AnnualTimeZoneRule;

    .line 796
    invoke-virtual/range {v29 .. v29}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v31

    .line 797
    invoke-virtual/range {v29 .. v29}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v32

    .line 798
    invoke-virtual/range {v29 .. v29}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v33

    .line 799
    invoke-virtual/range {v29 .. v29}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v34

    .line 800
    invoke-virtual/range {v29 .. v29}, Landroid/icu/util/AnnualTimeZoneRule;->getStartYear()I

    move-result v35

    const/16 v16, 0x0

    aget v36, v5, v16

    invoke-direct/range {v30 .. v36}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    move-object/from16 v5, v30

    .line 803
    .local v5, "newRule":Landroid/icu/util/TimeZoneRule;
    :goto_40c
    invoke-interface {v11, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_414

    .line 755
    .end local v8    # "tmpRaw":I
    .end local v10    # "tmpDST":I
    .end local v20    # "finalRuleCount":I
    .end local v21    # "finalStart":Ljava/util/Date;
    .end local v24    # "initialRule":Landroid/icu/util/InitialTimeZoneRule;
    .end local v29    # "finalRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v0, "initialRule":Landroid/icu/util/InitialTimeZoneRule;
    .local v5, "finalRuleCount":I
    :cond_410
    move-object/from16 v24, v0

    move/from16 v20, v5

    .line 807
    .end local v0    # "initialRule":Landroid/icu/util/InitialTimeZoneRule;
    .end local v5    # "finalRuleCount":I
    .restart local v20    # "finalRuleCount":I
    .restart local v24    # "initialRule":Landroid/icu/util/InitialTimeZoneRule;
    :goto_414
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_418
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_428

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/TimeZoneRule;

    .line 808
    .local v5, "r":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v2, v5}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    .line 809
    .end local v5    # "r":Landroid/icu/util/TimeZoneRule;
    goto :goto_418

    .line 811
    :cond_428
    iput-object v2, v1, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    .line 812
    invoke-virtual {v1, v3}, Landroid/icu/util/VTimeZone;->setID(Ljava/lang/String;)V

    .line 813
    const/16 v19, 0x1

    return v19

    .line 532
    .end local v2    # "rbtz":Landroid/icu/util/RuleBasedTimeZone;
    .end local v3    # "tzid":Ljava/lang/String;
    .end local v4    # "finalRuleIdx":I
    .end local v9    # "isRRULE":Z
    .end local v11    # "rules":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/TimeZoneRule;>;"
    .end local v12    # "initialRawOffset":I
    .end local v13    # "initialDSTSavings":I
    .end local v14    # "firstStart":J
    .end local v17    # "tzname":Ljava/lang/String;
    .end local v18    # "dtstart":Ljava/lang/String;
    .end local v20    # "finalRuleCount":I
    .end local v22    # "dates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "dst":Z
    .end local v24    # "initialRule":Landroid/icu/util/InitialTimeZoneRule;
    .end local v25    # "state":I
    .end local v26    # "from":Ljava/lang/String;
    .end local v28    # "to":Ljava/lang/String;
    :cond_430
    :goto_430
    const/16 v16, 0x0

    return v16

    nop

    :pswitch_data_434
    .packed-switch 0x0
        :pswitch_2c6
        :pswitch_23a
        :pswitch_71
    .end packed-switch
.end method

.method private static greylist-max-o parseDateTimeString(Ljava/lang/String;I)J
    .registers 16
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 1921
    const/4 v0, 0x0

    .local v0, "year":I
    const/4 v1, 0x0

    .local v1, "month":I
    const/4 v2, 0x0

    .local v2, "day":I
    const/4 v3, 0x0

    .local v3, "hour":I
    const/4 v4, 0x0

    .local v4, "min":I
    const/4 v5, 0x0

    .line 1922
    .local v5, "sec":I
    const/4 v6, 0x0

    .line 1923
    .local v6, "isUTC":Z
    const/4 v7, 0x0

    .line 1925
    .local v7, "isValid":Z
    if-nez p0, :cond_c

    .line 1926
    goto/16 :goto_98

    .line 1929
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 1930
    .local v8, "length":I
    const/16 v9, 0x10

    const/16 v10, 0xf

    if-eq v8, v10, :cond_1a

    if-eq v8, v9, :cond_1a

    .line 1933
    goto/16 :goto_98

    .line 1935
    :cond_1a
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x54

    if-eq v12, v13, :cond_26

    .line 1937
    goto/16 :goto_98

    .line 1939
    :cond_26
    if-ne v8, v9, :cond_33

    .line 1940
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v12, 0x5a

    if-eq v9, v12, :cond_32

    .line 1942
    goto/16 :goto_98

    .line 1944
    :cond_32
    const/4 v6, 0x1

    .line 1948
    :cond_33
    const/4 v9, 0x0

    const/4 v12, 0x4

    :try_start_35
    invoke-virtual {p0, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v0, v9

    .line 1949
    const/4 v9, 0x6

    invoke-virtual {p0, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v1, v12, -0x1

    .line 1950
    invoke-virtual {p0, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v2, v9

    .line 1951
    const/16 v9, 0x9

    const/16 v11, 0xb

    invoke-virtual {p0, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v3, v9

    .line 1952
    const/16 v9, 0xd

    invoke-virtual {p0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v4, v12

    .line 1953
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_73} :catch_96

    move v5, v9

    .line 1956
    nop

    .line 1959
    invoke-static {v0, v1}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v9

    .line 1960
    .local v9, "maxDayOfMonth":I
    if-ltz v0, :cond_98

    if-ltz v1, :cond_98

    if-gt v1, v11, :cond_98

    if-lt v2, v13, :cond_98

    if-gt v2, v9, :cond_98

    if-ltz v3, :cond_98

    const/16 v10, 0x18

    if-ge v3, v10, :cond_98

    if-ltz v4, :cond_98

    const/16 v10, 0x3c

    if-ge v4, v10, :cond_98

    if-ltz v5, :cond_98

    if-lt v5, v10, :cond_94

    .line 1962
    goto :goto_98

    .line 1965
    :cond_94
    const/4 v7, 0x1

    goto :goto_98

    .line 1954
    .end local v9    # "maxDayOfMonth":I
    :catch_96
    move-exception v9

    .line 1955
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    nop

    .line 1968
    .end local v8    # "length":I
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    :cond_98
    :goto_98
    if-eqz v7, :cond_b5

    .line 1972
    invoke-static {v0, v1, v2}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    mul-long/2addr v8, v10

    .line 1973
    .local v8, "time":J
    const v10, 0x36ee80

    mul-int/2addr v10, v3

    const v11, 0xea60

    mul-int/2addr v11, v4

    add-int/2addr v10, v11

    mul-int/lit16 v11, v5, 0x3e8

    add-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 1974
    if-nez v6, :cond_b4

    .line 1975
    int-to-long v10, p1

    sub-long/2addr v8, v10

    .line 1977
    :cond_b4
    return-wide v8

    .line 1969
    .end local v8    # "time":J
    :cond_b5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Invalid date time string format"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static greylist-max-o parseRRULE(Ljava/lang/String;[J)[I
    .registers 24
    .param p0, "rrule"    # Ljava/lang/String;
    .param p1, "until"    # [J

    .line 1035
    const/4 v0, -0x1

    .line 1036
    .local v0, "month":I
    const/4 v1, 0x0

    .line 1037
    .local v1, "dayOfWeek":I
    const/4 v2, 0x0

    .line 1038
    .local v2, "nthDayOfWeek":I
    const/4 v3, 0x0

    .line 1040
    .local v3, "dayOfMonth":[I
    const-wide/high16 v4, -0x8000000000000000L

    .line 1041
    .local v4, "untilTime":J
    const/4 v6, 0x0

    .line 1042
    .local v6, "yearly":Z
    const/4 v7, 0x0

    .line 1043
    .local v7, "parseError":Z
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, ";"

    move-object/from16 v10, p0

    invoke-direct {v8, v10, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v7

    move v7, v6

    move-wide v5, v4

    move-object v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 1045
    .end local v0    # "month":I
    .end local v6    # "yearly":Z
    .local v1, "month":I
    .local v2, "dayOfWeek":I
    .local v3, "nthDayOfWeek":I
    .local v4, "dayOfMonth":[I
    .local v5, "untilTime":J
    .local v7, "yearly":Z
    .local v8, "st":Ljava/util/StringTokenizer;
    .local v9, "parseError":Z
    :goto_18
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_156

    .line 1047
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 1048
    .local v15, "prop":Ljava/lang/String;
    const-string v0, "="

    const/16 v16, 0x1

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1049
    .local v13, "sep":I
    const/4 v0, -0x1

    if-eq v13, v0, :cond_152

    .line 1050
    invoke-virtual {v15, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1051
    .local v11, "attr":Ljava/lang/String;
    add-int/lit8 v0, v13, 0x1

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1057
    .local v12, "value":Ljava/lang/String;
    const-string v0, "FREQ"

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1059
    const-string v0, "YEARLY"

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1060
    const/4 v0, 0x1

    move v7, v0

    .end local v7    # "yearly":Z
    .local v0, "yearly":Z
    goto/16 :goto_150

    .line 1062
    .end local v0    # "yearly":Z
    .restart local v7    # "yearly":Z
    :cond_4c
    const/4 v9, 0x1

    .line 1063
    goto/16 :goto_15a

    .line 1065
    :cond_4f
    const-string v0, "UNTIL"

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1068
    :try_start_57
    invoke-static {v12, v14}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_5b} :catch_5f

    .line 1072
    .end local v5    # "untilTime":J
    .local v16, "untilTime":J
    move-wide/from16 v5, v16

    goto/16 :goto_150

    .line 1069
    .end local v16    # "untilTime":J
    .restart local v5    # "untilTime":J
    :catch_5f
    move-exception v0

    .line 1070
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v9, 0x1

    .line 1071
    goto/16 :goto_15a

    .line 1073
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_63
    const-string v0, "BYMONTH"

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1076
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v14, 0x2

    if-le v0, v14, :cond_75

    .line 1077
    const/4 v9, 0x1

    .line 1078
    goto/16 :goto_15a

    .line 1081
    :cond_75
    :try_start_75
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_79} :catch_87

    add-int/lit8 v1, v0, -0x1

    .line 1082
    if-ltz v1, :cond_84

    const/16 v0, 0xc

    if-lt v1, v0, :cond_82

    goto :goto_84

    .line 1089
    :cond_82
    goto/16 :goto_150

    .line 1083
    :cond_84
    :goto_84
    const/4 v9, 0x1

    .line 1084
    goto/16 :goto_15a

    .line 1086
    :catch_87
    move-exception v0

    .line 1087
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v9, 0x1

    .line 1088
    goto/16 :goto_15a

    .line 1090
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_8b
    const-string v0, "BYDAY"

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 1096
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    .line 1097
    .local v14, "length":I
    move/from16 v20, v1

    const/4 v1, 0x2

    .end local v1    # "month":I
    .local v20, "month":I
    if-lt v14, v1, :cond_114

    const/4 v1, 0x4

    if-le v14, v1, :cond_a1

    goto/16 :goto_114

    .line 1101
    :cond_a1
    const/4 v1, 0x2

    if-le v14, v1, :cond_f1

    .line 1103
    const/4 v0, 0x1

    .line 1104
    .local v0, "sign":I
    move/from16 v21, v0

    const/4 v1, 0x0

    .end local v0    # "sign":I
    .local v21, "sign":I
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_b4

    .line 1105
    const/4 v0, 0x1

    move/from16 v21, v0

    .end local v21    # "sign":I
    .restart local v0    # "sign":I
    goto :goto_c9

    .line 1106
    .end local v0    # "sign":I
    .restart local v21    # "sign":I
    :cond_b4
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_c1

    .line 1107
    const/4 v0, -0x1

    move/from16 v21, v0

    .end local v21    # "sign":I
    .restart local v0    # "sign":I
    goto :goto_c9

    .line 1108
    .end local v0    # "sign":I
    .restart local v21    # "sign":I
    :cond_c1
    const/4 v1, 0x4

    if-ne v14, v1, :cond_c9

    .line 1109
    const/4 v9, 0x1

    .line 1110
    move/from16 v1, v20

    goto/16 :goto_15a

    .line 1113
    :cond_c9
    :goto_c9
    add-int/lit8 v0, v14, -0x3

    add-int/lit8 v1, v14, -0x2

    :try_start_cd
    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_d5
    .catch Ljava/lang/NumberFormatException; {:try_start_cd .. :try_end_d5} :catch_eb

    .line 1114
    .local v0, "n":I
    if-eqz v0, :cond_e6

    const/4 v1, 0x4

    if-le v0, v1, :cond_db

    goto :goto_e6

    .line 1118
    :cond_db
    mul-int v0, v0, v21

    .line 1122
    .end local v3    # "nthDayOfWeek":I
    .local v0, "nthDayOfWeek":I
    nop

    .line 1123
    add-int/lit8 v1, v14, -0x2

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move v3, v0

    goto :goto_f1

    .line 1115
    .local v0, "n":I
    .restart local v3    # "nthDayOfWeek":I
    :cond_e6
    :goto_e6
    const/4 v9, 0x1

    .line 1116
    move/from16 v1, v20

    goto/16 :goto_15a

    .line 1119
    .end local v0    # "n":I
    :catch_eb
    move-exception v0

    .line 1120
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v9, 0x1

    .line 1121
    move/from16 v1, v20

    goto/16 :goto_15a

    .line 1126
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v21    # "sign":I
    :cond_f1
    :goto_f1
    const/4 v0, 0x0

    .local v0, "wday":I
    :goto_f2
    sget-object v1, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_105

    .line 1127
    sget-object v1, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 1128
    goto :goto_105

    .line 1126
    :cond_102
    add-int/lit8 v0, v0, 0x1

    goto :goto_f2

    .line 1131
    :cond_105
    :goto_105
    sget-object v1, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_110

    .line 1133
    add-int/lit8 v1, v0, 0x1

    .line 1138
    .end local v0    # "wday":I
    .end local v2    # "dayOfWeek":I
    .end local v14    # "length":I
    .local v1, "dayOfWeek":I
    move v2, v1

    move/from16 v1, v20

    goto :goto_150

    .line 1135
    .end local v1    # "dayOfWeek":I
    .restart local v0    # "wday":I
    .restart local v2    # "dayOfWeek":I
    .restart local v14    # "length":I
    :cond_110
    const/4 v9, 0x1

    .line 1136
    move/from16 v1, v20

    goto :goto_15a

    .line 1098
    .end local v0    # "wday":I
    :cond_114
    :goto_114
    const/4 v9, 0x1

    .line 1099
    move/from16 v1, v20

    goto :goto_15a

    .line 1138
    .end local v14    # "length":I
    .end local v20    # "month":I
    .local v1, "month":I
    :cond_118
    move/from16 v20, v1

    .end local v1    # "month":I
    .restart local v20    # "month":I
    const-string v0, "BYMONTHDAY"

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 1143
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, v12, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 1144
    .local v1, "days":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v14

    .line 1145
    .local v14, "count":I
    new-array v4, v14, [I

    .line 1146
    const/4 v0, 0x0

    .line 1147
    .local v0, "index":I
    :goto_131
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_14b

    .line 1149
    add-int/lit8 v16, v0, 0x1

    .end local v0    # "index":I
    .local v16, "index":I
    :try_start_139
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    aput v17, v4, v0
    :try_end_143
    .catch Ljava/lang/NumberFormatException; {:try_start_139 .. :try_end_143} :catch_146

    .line 1153
    move/from16 v0, v16

    goto :goto_131

    .line 1150
    :catch_146
    move-exception v0

    .line 1151
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v9, 0x1

    .line 1152
    move/from16 v1, v20

    goto :goto_150

    .line 1147
    .end local v16    # "index":I
    .local v0, "index":I
    :cond_14b
    move/from16 v1, v20

    goto :goto_150

    .line 1138
    .end local v0    # "index":I
    .end local v1    # "days":Ljava/util/StringTokenizer;
    .end local v14    # "count":I
    :cond_14e
    move/from16 v1, v20

    .line 1156
    .end local v11    # "attr":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "sep":I
    .end local v15    # "prop":Ljava/lang/String;
    .end local v20    # "month":I
    .local v1, "month":I
    :goto_150
    goto/16 :goto_18

    .line 1053
    .restart local v13    # "sep":I
    .restart local v15    # "prop":Ljava/lang/String;
    :cond_152
    move/from16 v20, v1

    .end local v1    # "month":I
    .restart local v20    # "month":I
    const/4 v9, 0x1

    .line 1054
    goto :goto_15a

    .line 1045
    .end local v13    # "sep":I
    .end local v15    # "prop":Ljava/lang/String;
    .end local v20    # "month":I
    .restart local v1    # "month":I
    :cond_156
    move/from16 v20, v1

    const/16 v16, 0x1

    .line 1158
    :goto_15a
    const/4 v0, 0x0

    if-eqz v9, :cond_15e

    .line 1159
    return-object v0

    .line 1161
    :cond_15e
    if-nez v7, :cond_161

    .line 1163
    return-object v0

    .line 1166
    :cond_161
    const/16 v19, 0x0

    aput-wide v5, p1, v19

    .line 1169
    const/4 v0, 0x3

    if-nez v4, :cond_16e

    .line 1170
    const/4 v11, 0x4

    new-array v11, v11, [I

    .line 1171
    .local v11, "results":[I
    aput v19, v11, v0

    goto :goto_17f

    .line 1173
    .end local v11    # "results":[I
    :cond_16e
    array-length v11, v4

    add-int/2addr v11, v0

    new-array v11, v11, [I

    .line 1174
    .restart local v11    # "results":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_173
    array-length v12, v4

    if-ge v0, v12, :cond_17f

    .line 1175
    add-int/lit8 v12, v0, 0x3

    aget v13, v4, v0

    aput v13, v11, v12

    .line 1174
    add-int/lit8 v0, v0, 0x1

    goto :goto_173

    .line 1178
    .end local v0    # "i":I
    :cond_17f
    :goto_17f
    const/16 v19, 0x0

    aput v1, v11, v19

    .line 1179
    aput v2, v11, v16

    .line 1180
    const/16 v18, 0x2

    aput v3, v11, v18

    .line 1181
    return-object v11
.end method

.method private static greylist-max-o toWallTimeRule(Landroid/icu/util/DateTimeRule;II)Landroid/icu/util/DateTimeRule;
    .registers 18
    .param p0, "rule"    # Landroid/icu/util/DateTimeRule;
    .param p1, "rawOffset"    # I
    .param p2, "dstSavings"    # I

    .line 1698
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v0

    if-nez v0, :cond_7

    .line 1699
    return-object p0

    .line 1701
    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v0

    .line 1702
    .local v0, "wallt":I
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_17

    .line 1703
    add-int v1, p1, p2

    add-int/2addr v0, v1

    goto :goto_1f

    .line 1704
    :cond_17
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v1

    if-ne v1, v3, :cond_1f

    .line 1705
    add-int v0, v0, p2

    .line 1708
    :cond_1f
    :goto_1f
    const/4 v1, -0x1

    .local v1, "month":I
    const/4 v4, 0x0

    .local v4, "dom":I
    const/4 v5, 0x0

    .local v5, "dow":I
    const/4 v6, -0x1

    .line 1709
    .local v6, "dtype":I
    const/4 v7, 0x0

    .line 1710
    .local v7, "dshift":I
    const v8, 0x5265c00

    if-gez v0, :cond_2d

    .line 1711
    const/4 v7, -0x1

    .line 1712
    add-int/2addr v0, v8

    move v13, v0

    goto :goto_34

    .line 1713
    :cond_2d
    if-lt v0, v8, :cond_33

    .line 1714
    const/4 v7, 0x1

    .line 1715
    sub-int/2addr v0, v8

    move v13, v0

    goto :goto_34

    .line 1713
    :cond_33
    move v13, v0

    .line 1718
    .end local v0    # "wallt":I
    .local v13, "wallt":I
    :goto_34
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v0

    .line 1719
    .end local v1    # "month":I
    .local v0, "month":I
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v1

    .line 1720
    .end local v4    # "dom":I
    .local v1, "dom":I
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v4

    .line 1721
    .end local v5    # "dow":I
    .local v4, "dow":I
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v5

    .line 1723
    .end local v6    # "dtype":I
    .local v5, "dtype":I
    const/4 v6, 0x0

    if-eqz v7, :cond_9a

    .line 1724
    const/4 v8, 0x7

    if-ne v5, v3, :cond_61

    .line 1726
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v9

    .line 1727
    .local v9, "wim":I
    if-lez v9, :cond_57

    .line 1728
    const/4 v5, 0x2

    .line 1729
    add-int/lit8 v10, v9, -0x1

    mul-int/2addr v10, v8

    add-int/lit8 v1, v10, 0x1

    goto :goto_61

    .line 1731
    :cond_57
    const/4 v5, 0x3

    .line 1732
    sget-object v10, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v10, v10, v0

    add-int/lit8 v11, v9, 0x1

    mul-int/2addr v11, v8

    add-int v1, v10, v11

    .line 1737
    .end local v9    # "wim":I
    :cond_61
    :goto_61
    add-int/2addr v1, v7

    .line 1738
    const/16 v9, 0xb

    if-nez v1, :cond_72

    .line 1739
    add-int/lit8 v0, v0, -0x1

    .line 1740
    if-gez v0, :cond_6b

    goto :goto_6c

    :cond_6b
    move v9, v0

    :goto_6c
    move v0, v9

    .line 1741
    sget-object v9, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v9, v0

    goto :goto_81

    .line 1742
    :cond_72
    sget-object v10, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v10, v10, v0

    if-le v1, v10, :cond_81

    .line 1743
    add-int/lit8 v0, v0, 0x1

    .line 1744
    if-le v0, v9, :cond_7e

    move v9, v6

    goto :goto_7f

    :cond_7e
    move v9, v0

    :goto_7f
    move v0, v9

    .line 1745
    const/4 v1, 0x1

    .line 1747
    :cond_81
    :goto_81
    if-eqz v5, :cond_96

    .line 1749
    add-int/2addr v4, v7

    .line 1750
    if-ge v4, v3, :cond_8b

    .line 1751
    const/4 v4, 0x7

    move v9, v0

    move v10, v1

    move v11, v4

    goto :goto_9d

    .line 1752
    :cond_8b
    if-le v4, v8, :cond_92

    .line 1753
    const/4 v4, 0x1

    move v9, v0

    move v10, v1

    move v11, v4

    goto :goto_9d

    .line 1752
    :cond_92
    move v9, v0

    move v10, v1

    move v11, v4

    goto :goto_9d

    .line 1747
    :cond_96
    move v9, v0

    move v10, v1

    move v11, v4

    goto :goto_9d

    .line 1723
    :cond_9a
    move v9, v0

    move v10, v1

    move v11, v4

    .line 1759
    .end local v0    # "month":I
    .end local v1    # "dom":I
    .end local v4    # "dow":I
    .local v9, "month":I
    .local v10, "dom":I
    .local v11, "dow":I
    :goto_9d
    if-nez v5, :cond_a5

    .line 1760
    new-instance v0, Landroid/icu/util/DateTimeRule;

    invoke-direct {v0, v9, v10, v13, v6}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    .local v0, "modifiedRule":Landroid/icu/util/DateTimeRule;
    goto :goto_b1

    .line 1762
    .end local v0    # "modifiedRule":Landroid/icu/util/DateTimeRule;
    :cond_a5
    new-instance v8, Landroid/icu/util/DateTimeRule;

    if-ne v5, v2, :cond_ab

    move v12, v3

    goto :goto_ac

    :cond_ab
    move v12, v6

    :goto_ac
    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    move-object v0, v8

    .line 1765
    .restart local v0    # "modifiedRule":Landroid/icu/util/DateTimeRule;
    :goto_b1
    return-object v0
.end method

.method private static greylist-max-o writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V
    .registers 25
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

    .line 1660
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/icu/util/VTimeZone;->toWallTimeRule(Landroid/icu/util/DateTimeRule;II)Landroid/icu/util/DateTimeRule;

    move-result-object v2

    .line 1666
    .local v2, "dtrule":Landroid/icu/util/DateTimeRule;
    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v3

    .line 1667
    .local v3, "timeInDay":I
    if-gez v3, :cond_19

    .line 1668
    rsub-int/lit8 v4, v3, 0x0

    int-to-long v4, v4

    add-long v4, p5, v4

    move-wide v14, v4

    .end local p5    # "startTime":J
    .local v4, "startTime":J
    goto :goto_2a

    .line 1669
    .end local v4    # "startTime":J
    .restart local p5    # "startTime":J
    :cond_19
    const v4, 0x5265c00

    if-lt v3, v4, :cond_28

    .line 1670
    const v4, 0x5265bff

    sub-int v4, v3, v4

    int-to-long v4, v4

    sub-long v4, p5, v4

    move-wide v14, v4

    .end local p5    # "startTime":J
    .restart local v4    # "startTime":J
    goto :goto_2a

    .line 1669
    .end local v4    # "startTime":J
    .restart local p5    # "startTime":J
    :cond_28
    move-wide/from16 v14, p5

    .line 1673
    .end local p5    # "startTime":J
    .local v14, "startTime":J
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    add-int v10, v4, v5

    .line 1674
    .local v10, "toOffset":I
    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v4

    packed-switch v4, :pswitch_data_b8

    goto/16 :goto_b6

    .line 1688
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v8

    add-int v9, v0, v1

    .line 1689
    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v11

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v12

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v13

    .line 1688
    const-wide v16, 0x7fffffffffffffffL

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-static/range {v6 .. v17}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_LEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_b6

    .line 1684
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v8

    add-int v9, v0, v1

    .line 1685
    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v11

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v12

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v13

    .line 1684
    const-wide v16, 0x7fffffffffffffffL

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-static/range {v6 .. v17}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    .line 1686
    goto :goto_b6

    .line 1680
    :pswitch_7b
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v8

    add-int v9, v0, v1

    .line 1681
    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v11

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v12

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v13

    .line 1680
    const-wide v16, 0x7fffffffffffffffL

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-static/range {v6 .. v17}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    .line 1682
    goto :goto_b6

    .line 1676
    :pswitch_9a
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v8

    add-int v9, v0, v1

    .line 1677
    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v11

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v12

    .line 1676
    move-wide v13, v14

    .end local v14    # "startTime":J
    .local v13, "startTime":J
    const-wide v15, 0x7fffffffffffffffL

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-static/range {v6 .. v16}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOM(Ljava/io/Writer;ZLjava/lang/String;IIIIJJ)V

    .line 1678
    move-wide v14, v13

    .line 1692
    .end local v13    # "startTime":J
    .restart local v14    # "startTime":J
    :goto_b6
    return-void

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_7b
        :pswitch_5c
        :pswitch_3d
    .end packed-switch
.end method

.method private static greylist-max-o writeFooter(Ljava/io/Writer;)V
    .registers 2
    .param p0, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1879
    const-string v0, "END"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1880
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1881
    const-string v0, "VTIMEZONE"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1882
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1883
    return-void
.end method

.method private greylist-max-o writeHeader(Ljava/io/Writer;)V
    .registers 6
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1853
    const-string v0, "BEGIN"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1854
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1855
    const-string v1, "VTIMEZONE"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1856
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1857
    const-string v2, "TZID"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1859
    iget-object v2, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1861
    iget-object v2, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    if-eqz v2, :cond_3c

    .line 1862
    const-string v2, "TZURL"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1864
    iget-object v2, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1865
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1867
    :cond_3c
    iget-object v2, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    if-eqz v2, :cond_58

    .line 1868
    const-string v2, "LAST-MODIFIED"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1869
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1870
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/icu/util/VTimeZone;->getUTCDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1871
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1873
    :cond_58
    return-void
.end method

.method private greylist-max-o writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V
    .registers 68
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "basictz"    # Landroid/icu/util/BasicTimeZone;
    .param p3, "customProperties"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1215
    move-object/from16 v0, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {p0 .. p1}, Landroid/icu/util/VTimeZone;->writeHeader(Ljava/io/Writer;)V

    .line 1217
    if-eqz v13, :cond_23

    array-length v1, v13

    if-lez v1, :cond_23

    .line 1218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v13

    if-ge v1, v2, :cond_23

    .line 1219
    aget-object v2, v13, v1

    if-eqz v2, :cond_20

    .line 1220
    aget-object v2, v13, v1

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1221
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1218
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1226
    .end local v1    # "i":I
    :cond_23
    const-wide/high16 v1, -0x8000000000000000L

    .line 1227
    .local v1, "t":J
    const/4 v3, 0x0

    .line 1228
    .local v3, "dstName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1229
    .local v4, "dstFromOffset":I
    const/4 v5, 0x0

    .line 1230
    .local v5, "dstFromDSTSavings":I
    const/4 v6, 0x0

    .line 1231
    .local v6, "dstToOffset":I
    const/4 v7, 0x0

    .line 1232
    .local v7, "dstStartYear":I
    const/4 v8, 0x0

    .line 1233
    .local v8, "dstMonth":I
    const/4 v9, 0x0

    .line 1234
    .local v9, "dstDayOfWeek":I
    const/4 v10, 0x0

    .line 1235
    .local v10, "dstWeekInMonth":I
    const/4 v11, 0x0

    .line 1236
    .local v11, "dstMillisInDay":I
    const-wide/16 v14, 0x0

    .line 1237
    .local v14, "dstStartTime":J
    const-wide/16 v16, 0x0

    .line 1238
    .local v16, "dstUntilTime":J
    const/16 v18, 0x0

    .line 1239
    .local v18, "dstCount":I
    const/16 v19, 0x0

    .line 1241
    .local v19, "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    const/16 v20, 0x0

    .line 1242
    .local v20, "stdName":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1243
    .local v21, "stdFromOffset":I
    const/16 v22, 0x0

    .line 1244
    .local v22, "stdFromDSTSavings":I
    const/16 v23, 0x0

    .line 1245
    .local v23, "stdToOffset":I
    const/16 v24, 0x0

    .line 1246
    .local v24, "stdStartYear":I
    const/16 v25, 0x0

    .line 1247
    .local v25, "stdMonth":I
    const/16 v26, 0x0

    .line 1248
    .local v26, "stdDayOfWeek":I
    const/16 v27, 0x0

    .line 1249
    .local v27, "stdWeekInMonth":I
    const/16 v28, 0x0

    .line 1250
    .local v28, "stdMillisInDay":I
    const-wide/16 v29, 0x0

    .line 1251
    .local v29, "stdStartTime":J
    const-wide/16 v31, 0x0

    .line 1252
    .local v31, "stdUntilTime":J
    const/16 v33, 0x0

    .line 1253
    .local v33, "stdCount":I
    const/16 v34, 0x0

    .line 1255
    .local v34, "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 1256
    .local v0, "dtfields":[I
    const/16 v35, 0x0

    move/from16 v36, v23

    move/from16 v37, v25

    move/from16 v38, v26

    move/from16 v39, v27

    move/from16 v40, v28

    move-wide/from16 v60, v14

    move v14, v5

    move v15, v7

    move-object/from16 v5, v20

    move/from16 v7, v21

    move/from16 v20, v18

    move-object/from16 v21, v19

    move-wide/from16 v18, v16

    move-wide/from16 v16, v60

    .line 1260
    .end local v19    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v23    # "stdToOffset":I
    .end local v25    # "stdMonth":I
    .end local v26    # "stdDayOfWeek":I
    .end local v27    # "stdWeekInMonth":I
    .end local v28    # "stdMillisInDay":I
    .local v5, "stdName":Ljava/lang/String;
    .local v7, "stdFromOffset":I
    .local v14, "dstFromDSTSavings":I
    .local v15, "dstStartYear":I
    .local v16, "dstStartTime":J
    .local v18, "dstUntilTime":J
    .local v20, "dstCount":I
    .local v21, "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v35, "hasTransitions":Z
    .local v36, "stdToOffset":I
    .local v37, "stdMonth":I
    .local v38, "stdDayOfWeek":I
    .local v39, "stdWeekInMonth":I
    .local v40, "stdMillisInDay":I
    :goto_6f
    move/from16 v23, v7

    .end local v7    # "stdFromOffset":I
    .local v23, "stdFromOffset":I
    const/4 v7, 0x0

    invoke-virtual {v12, v1, v2, v7}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v25

    .line 1261
    .local v25, "tzt":Landroid/icu/util/TimeZoneTransition;
    move-wide/from16 v26, v1

    .end local v1    # "t":J
    .local v26, "t":J
    if-nez v25, :cond_90

    .line 1262
    move-object/from16 v46, v0

    move-object/from16 v51, v3

    move/from16 v52, v4

    move/from16 v53, v6

    move/from16 v43, v7

    move/from16 v49, v11

    move/from16 v50, v15

    move/from16 v11, v20

    move/from16 v12, v23

    const/4 v13, 0x1

    move-object v15, v5

    goto/16 :goto_3fd

    .line 1264
    :cond_90
    const/16 v35, 0x1

    .line 1265
    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v26

    .line 1266
    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1267
    .local v2, "name":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v28

    if-eqz v28, :cond_ab

    const/16 v28, 0x1

    goto :goto_ad

    :cond_ab
    move/from16 v28, v7

    .line 1268
    .local v28, "isDst":Z
    :goto_ad
    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v41

    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v42

    move/from16 v43, v7

    add-int v7, v41, v42

    .line 1269
    .local v7, "fromOffset":I
    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v41

    .line 1270
    .local v41, "fromDSTSavings":I
    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v42

    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v44

    const/16 v45, 0x1

    add-int v1, v42, v44

    .line 1271
    .local v1, "toOffset":I
    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v46

    move/from16 v42, v14

    .end local v14    # "dstFromDSTSavings":I
    .local v42, "dstFromDSTSavings":I
    int-to-long v13, v7

    add-long v13, v46, v13

    invoke-static {v13, v14, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    .line 1272
    aget v13, v0, v43

    aget v14, v0, v45

    const/16 v44, 0x2

    move-object/from16 v46, v0

    .end local v0    # "dtfields":[I
    .local v46, "dtfields":[I
    aget v0, v46, v44

    invoke-static {v13, v14, v0}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v13

    .line 1273
    .local v13, "weekInMonth":I
    aget v14, v46, v43

    .line 1274
    .local v14, "year":I
    const/4 v0, 0x0

    .line 1275
    .local v0, "sameRule":Z
    move/from16 v44, v0

    .end local v0    # "sameRule":Z
    .local v44, "sameRule":Z
    const/16 v47, 0x5

    const/16 v48, 0x3

    if-eqz v28, :cond_26f

    .line 1276
    if-nez v21, :cond_126

    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    instance-of v0, v0, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_126

    .line 1277
    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    check-cast v0, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v0

    move-object/from16 v49, v5

    const v5, 0x7fffffff

    .end local v5    # "stdName":Ljava/lang/String;
    .local v49, "stdName":Ljava/lang/String;
    if-ne v0, v5, :cond_128

    .line 1278
    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    check-cast v0, Landroid/icu/util/AnnualTimeZoneRule;

    move-object/from16 v21, v0

    .end local v21    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v0, "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    goto :goto_128

    .line 1276
    .end local v0    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v49    # "stdName":Ljava/lang/String;
    .restart local v5    # "stdName":Ljava/lang/String;
    .restart local v21    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_126
    move-object/from16 v49, v5

    .line 1281
    .end local v5    # "stdName":Ljava/lang/String;
    .restart local v49    # "stdName":Ljava/lang/String;
    :cond_128
    :goto_128
    if-lez v20, :cond_1f0

    .line 1282
    add-int v0, v15, v20

    if-ne v14, v0, :cond_150

    .line 1283
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_150

    if-ne v4, v7, :cond_150

    if-ne v6, v1, :cond_150

    aget v0, v46, v45

    if-ne v8, v0, :cond_150

    aget v0, v46, v48

    if-ne v9, v0, :cond_150

    if-ne v10, v13, :cond_150

    aget v0, v46, v47

    if-ne v11, v0, :cond_150

    .line 1291
    move-wide/from16 v18, v26

    .line 1292
    add-int/lit8 v20, v20, 0x1

    .line 1293
    const/4 v0, 0x1

    move/from16 v44, v0

    move/from16 v0, v20

    .end local v44    # "sameRule":Z
    .local v0, "sameRule":Z
    goto :goto_152

    .line 1295
    .end local v0    # "sameRule":Z
    .restart local v44    # "sameRule":Z
    :cond_150
    move/from16 v0, v20

    .end local v20    # "dstCount":I
    .local v0, "dstCount":I
    :goto_152
    if-nez v44, :cond_1c7

    .line 1296
    move/from16 v5, v45

    if-ne v0, v5, :cond_191

    .line 1297
    move/from16 v20, v1

    .end local v1    # "toOffset":I
    .local v20, "toOffset":I
    const/4 v1, 0x1

    move/from16 v45, v7

    .end local v7    # "fromOffset":I
    .local v45, "fromOffset":I
    const/4 v7, 0x1

    move/from16 v50, v15

    move/from16 v12, v23

    move-object/from16 v15, v49

    move/from16 v23, v13

    move v13, v5

    move/from16 v60, v0

    move-object/from16 v0, p1

    move/from16 v61, v20

    move/from16 v20, v60

    move-wide/from16 v62, v16

    move-object/from16 v16, v2

    move-object v2, v3

    move v3, v4

    move v4, v6

    move-wide/from16 v5, v62

    move/from16 v17, v61

    .end local v0    # "dstCount":I
    .end local v6    # "dstToOffset":I
    .end local v13    # "weekInMonth":I
    .end local v49    # "stdName":Ljava/lang/String;
    .local v2, "dstName":Ljava/lang/String;
    .local v3, "dstFromOffset":I
    .local v4, "dstToOffset":I
    .local v5, "dstStartTime":J
    .local v12, "stdFromOffset":I
    .local v15, "stdName":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    .local v17, "toOffset":I
    .local v20, "dstCount":I
    .local v23, "weekInMonth":I
    .local v50, "dstStartYear":I
    invoke-static/range {v0 .. v7}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    move-object/from16 v51, v2

    move/from16 v52, v3

    move/from16 v53, v4

    move-wide/from16 v57, v5

    move/from16 v54, v8

    move/from16 v55, v9

    move/from16 v56, v10

    move/from16 v49, v11

    move-wide/from16 v10, v18

    goto/16 :goto_1eb

    .line 1300
    .end local v5    # "dstStartTime":J
    .end local v12    # "stdFromOffset":I
    .end local v17    # "toOffset":I
    .end local v20    # "dstCount":I
    .end local v45    # "fromOffset":I
    .end local v50    # "dstStartYear":I
    .restart local v0    # "dstCount":I
    .restart local v1    # "toOffset":I
    .local v2, "name":Ljava/lang/String;
    .local v3, "dstName":Ljava/lang/String;
    .local v4, "dstFromOffset":I
    .restart local v6    # "dstToOffset":I
    .restart local v7    # "fromOffset":I
    .restart local v13    # "weekInMonth":I
    .local v15, "dstStartYear":I
    .local v16, "dstStartTime":J
    .local v23, "stdFromOffset":I
    .restart local v49    # "stdName":Ljava/lang/String;
    :cond_191
    move/from16 v20, v0

    move/from16 v45, v7

    move/from16 v50, v15

    move/from16 v12, v23

    move-object/from16 v15, v49

    move/from16 v23, v13

    move v13, v5

    move-wide/from16 v60, v16

    move/from16 v17, v1

    move-object/from16 v16, v2

    move-object v2, v3

    move v3, v4

    move v4, v6

    move-wide/from16 v5, v60

    .end local v0    # "dstCount":I
    .end local v1    # "toOffset":I
    .end local v6    # "dstToOffset":I
    .end local v7    # "fromOffset":I
    .end local v13    # "weekInMonth":I
    .end local v49    # "stdName":Ljava/lang/String;
    .local v2, "dstName":Ljava/lang/String;
    .local v3, "dstFromOffset":I
    .local v4, "dstToOffset":I
    .restart local v5    # "dstStartTime":J
    .restart local v12    # "stdFromOffset":I
    .local v15, "stdName":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    .restart local v17    # "toOffset":I
    .restart local v20    # "dstCount":I
    .local v23, "weekInMonth":I
    .restart local v45    # "fromOffset":I
    .restart local v50    # "dstStartYear":I
    const/4 v1, 0x1

    move-object/from16 v0, p1

    move v7, v9

    move/from16 v49, v11

    move v5, v8

    move-wide/from16 v8, v60

    move v6, v10

    move-wide/from16 v10, v18

    .end local v9    # "dstDayOfWeek":I
    .end local v11    # "dstMillisInDay":I
    .end local v18    # "dstUntilTime":J
    .local v5, "dstMonth":I
    .local v6, "dstWeekInMonth":I
    .local v7, "dstDayOfWeek":I
    .local v8, "dstStartTime":J
    .local v10, "dstUntilTime":J
    .local v49, "dstMillisInDay":I
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    move-object/from16 v51, v2

    move/from16 v52, v3

    move/from16 v53, v4

    move/from16 v54, v5

    move/from16 v56, v6

    move/from16 v55, v7

    move-wide/from16 v57, v8

    .end local v2    # "dstName":Ljava/lang/String;
    .end local v3    # "dstFromOffset":I
    .end local v4    # "dstToOffset":I
    .end local v5    # "dstMonth":I
    .end local v6    # "dstWeekInMonth":I
    .end local v7    # "dstDayOfWeek":I
    .end local v8    # "dstStartTime":J
    .local v51, "dstName":Ljava/lang/String;
    .local v52, "dstFromOffset":I
    .local v53, "dstToOffset":I
    .local v54, "dstMonth":I
    .local v55, "dstDayOfWeek":I
    .local v56, "dstWeekInMonth":I
    .local v57, "dstStartTime":J
    goto :goto_1eb

    .line 1295
    .end local v12    # "stdFromOffset":I
    .end local v17    # "toOffset":I
    .end local v20    # "dstCount":I
    .end local v45    # "fromOffset":I
    .end local v50    # "dstStartYear":I
    .end local v51    # "dstName":Ljava/lang/String;
    .end local v52    # "dstFromOffset":I
    .end local v53    # "dstToOffset":I
    .end local v54    # "dstMonth":I
    .end local v55    # "dstDayOfWeek":I
    .end local v56    # "dstWeekInMonth":I
    .end local v57    # "dstStartTime":J
    .restart local v0    # "dstCount":I
    .restart local v1    # "toOffset":I
    .local v2, "name":Ljava/lang/String;
    .local v3, "dstName":Ljava/lang/String;
    .local v4, "dstFromOffset":I
    .local v6, "dstToOffset":I
    .local v7, "fromOffset":I
    .local v8, "dstMonth":I
    .restart local v9    # "dstDayOfWeek":I
    .local v10, "dstWeekInMonth":I
    .restart local v11    # "dstMillisInDay":I
    .restart local v13    # "weekInMonth":I
    .local v15, "dstStartYear":I
    .local v16, "dstStartTime":J
    .restart local v18    # "dstUntilTime":J
    .local v23, "stdFromOffset":I
    .local v49, "stdName":Ljava/lang/String;
    :cond_1c7
    move/from16 v20, v0

    move-object/from16 v51, v3

    move/from16 v52, v4

    move/from16 v53, v6

    move/from16 v54, v8

    move/from16 v55, v9

    move/from16 v56, v10

    move/from16 v50, v15

    move-wide/from16 v57, v16

    move/from16 v12, v23

    move-object/from16 v15, v49

    move/from16 v17, v1

    move-object/from16 v16, v2

    move/from16 v49, v11

    move/from16 v23, v13

    move-wide/from16 v10, v18

    move/from16 v13, v45

    move/from16 v45, v7

    .line 1305
    .end local v0    # "dstCount":I
    .end local v1    # "toOffset":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "dstName":Ljava/lang/String;
    .end local v4    # "dstFromOffset":I
    .end local v6    # "dstToOffset":I
    .end local v7    # "fromOffset":I
    .end local v8    # "dstMonth":I
    .end local v9    # "dstDayOfWeek":I
    .end local v11    # "dstMillisInDay":I
    .end local v13    # "weekInMonth":I
    .end local v18    # "dstUntilTime":J
    .local v10, "dstUntilTime":J
    .restart local v12    # "stdFromOffset":I
    .local v15, "stdName":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    .restart local v17    # "toOffset":I
    .restart local v20    # "dstCount":I
    .local v23, "weekInMonth":I
    .restart local v45    # "fromOffset":I
    .local v49, "dstMillisInDay":I
    .restart local v50    # "dstStartYear":I
    .restart local v51    # "dstName":Ljava/lang/String;
    .restart local v52    # "dstFromOffset":I
    .restart local v53    # "dstToOffset":I
    .restart local v54    # "dstMonth":I
    .restart local v55    # "dstDayOfWeek":I
    .restart local v56    # "dstWeekInMonth":I
    .restart local v57    # "dstStartTime":J
    :goto_1eb
    move-wide/from16 v18, v10

    move/from16 v0, v44

    goto :goto_212

    .line 1281
    .end local v12    # "stdFromOffset":I
    .end local v17    # "toOffset":I
    .end local v45    # "fromOffset":I
    .end local v50    # "dstStartYear":I
    .end local v51    # "dstName":Ljava/lang/String;
    .end local v52    # "dstFromOffset":I
    .end local v53    # "dstToOffset":I
    .end local v54    # "dstMonth":I
    .end local v55    # "dstDayOfWeek":I
    .end local v56    # "dstWeekInMonth":I
    .end local v57    # "dstStartTime":J
    .restart local v1    # "toOffset":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "dstName":Ljava/lang/String;
    .restart local v4    # "dstFromOffset":I
    .restart local v6    # "dstToOffset":I
    .restart local v7    # "fromOffset":I
    .restart local v8    # "dstMonth":I
    .restart local v9    # "dstDayOfWeek":I
    .local v10, "dstWeekInMonth":I
    .restart local v11    # "dstMillisInDay":I
    .restart local v13    # "weekInMonth":I
    .local v15, "dstStartYear":I
    .local v16, "dstStartTime":J
    .restart local v18    # "dstUntilTime":J
    .local v23, "stdFromOffset":I
    .local v49, "stdName":Ljava/lang/String;
    :cond_1f0
    move-object/from16 v51, v3

    move/from16 v52, v4

    move/from16 v53, v6

    move/from16 v54, v8

    move/from16 v55, v9

    move/from16 v56, v10

    move/from16 v50, v15

    move-wide/from16 v57, v16

    move/from16 v12, v23

    move-object/from16 v15, v49

    move/from16 v17, v1

    move-object/from16 v16, v2

    move/from16 v49, v11

    move/from16 v23, v13

    move/from16 v13, v45

    move/from16 v45, v7

    .end local v1    # "toOffset":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "dstName":Ljava/lang/String;
    .end local v4    # "dstFromOffset":I
    .end local v6    # "dstToOffset":I
    .end local v7    # "fromOffset":I
    .end local v8    # "dstMonth":I
    .end local v9    # "dstDayOfWeek":I
    .end local v10    # "dstWeekInMonth":I
    .end local v11    # "dstMillisInDay":I
    .end local v13    # "weekInMonth":I
    .restart local v12    # "stdFromOffset":I
    .local v15, "stdName":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    .restart local v17    # "toOffset":I
    .local v23, "weekInMonth":I
    .restart local v45    # "fromOffset":I
    .local v49, "dstMillisInDay":I
    .restart local v50    # "dstStartYear":I
    .restart local v51    # "dstName":Ljava/lang/String;
    .restart local v52    # "dstFromOffset":I
    .restart local v53    # "dstToOffset":I
    .restart local v54    # "dstMonth":I
    .restart local v55    # "dstDayOfWeek":I
    .restart local v56    # "dstWeekInMonth":I
    .restart local v57    # "dstStartTime":J
    move/from16 v0, v44

    .line 1305
    .end local v44    # "sameRule":Z
    .local v0, "sameRule":Z
    :goto_212
    if-nez v0, :cond_23b

    .line 1307
    move-object/from16 v1, v16

    .line 1308
    .end local v51    # "dstName":Ljava/lang/String;
    .local v1, "dstName":Ljava/lang/String;
    move/from16 v2, v45

    .line 1309
    .end local v52    # "dstFromOffset":I
    .local v2, "dstFromOffset":I
    move/from16 v3, v41

    .line 1310
    .end local v42    # "dstFromDSTSavings":I
    .local v3, "dstFromDSTSavings":I
    move/from16 v4, v17

    .line 1311
    .end local v53    # "dstToOffset":I
    .local v4, "dstToOffset":I
    move v5, v14

    .line 1312
    .end local v50    # "dstStartYear":I
    .local v5, "dstStartYear":I
    aget v6, v46, v13

    .line 1313
    .end local v54    # "dstMonth":I
    .local v6, "dstMonth":I
    aget v7, v46, v48

    .line 1314
    .end local v55    # "dstDayOfWeek":I
    .local v7, "dstDayOfWeek":I
    move/from16 v8, v23

    .line 1315
    .end local v56    # "dstWeekInMonth":I
    .local v8, "dstWeekInMonth":I
    aget v9, v46, v47

    .line 1316
    .end local v49    # "dstMillisInDay":I
    .local v9, "dstMillisInDay":I
    move-wide/from16 v10, v26

    .end local v18    # "dstUntilTime":J
    .local v10, "dstUntilTime":J
    move-wide/from16 v18, v26

    .line 1317
    .end local v57    # "dstStartTime":J
    .local v18, "dstStartTime":J
    const/16 v20, 0x1

    move/from16 v42, v3

    move/from16 v50, v5

    move-object v3, v1

    move/from16 v60, v4

    move v4, v2

    move-wide v1, v10

    move v10, v8

    move v11, v9

    move v8, v6

    move v9, v7

    move/from16 v6, v60

    goto :goto_24d

    .line 1305
    .end local v1    # "dstName":Ljava/lang/String;
    .end local v2    # "dstFromOffset":I
    .end local v3    # "dstFromDSTSavings":I
    .end local v4    # "dstToOffset":I
    .end local v5    # "dstStartYear":I
    .end local v6    # "dstMonth":I
    .end local v7    # "dstDayOfWeek":I
    .end local v8    # "dstWeekInMonth":I
    .end local v9    # "dstMillisInDay":I
    .end local v10    # "dstUntilTime":J
    .local v18, "dstUntilTime":J
    .restart local v42    # "dstFromDSTSavings":I
    .restart local v49    # "dstMillisInDay":I
    .restart local v50    # "dstStartYear":I
    .restart local v51    # "dstName":Ljava/lang/String;
    .restart local v52    # "dstFromOffset":I
    .restart local v53    # "dstToOffset":I
    .restart local v54    # "dstMonth":I
    .restart local v55    # "dstDayOfWeek":I
    .restart local v56    # "dstWeekInMonth":I
    .restart local v57    # "dstStartTime":J
    :cond_23b
    move-wide/from16 v1, v18

    move/from16 v11, v49

    move-object/from16 v3, v51

    move/from16 v4, v52

    move/from16 v6, v53

    move/from16 v8, v54

    move/from16 v9, v55

    move/from16 v10, v56

    move-wide/from16 v18, v57

    .line 1319
    .end local v49    # "dstMillisInDay":I
    .end local v51    # "dstName":Ljava/lang/String;
    .end local v52    # "dstFromOffset":I
    .end local v53    # "dstToOffset":I
    .end local v54    # "dstMonth":I
    .end local v55    # "dstDayOfWeek":I
    .end local v56    # "dstWeekInMonth":I
    .end local v57    # "dstStartTime":J
    .local v1, "dstUntilTime":J
    .local v3, "dstName":Ljava/lang/String;
    .local v4, "dstFromOffset":I
    .local v6, "dstToOffset":I
    .local v8, "dstMonth":I
    .local v9, "dstDayOfWeek":I
    .local v10, "dstWeekInMonth":I
    .restart local v11    # "dstMillisInDay":I
    .local v18, "dstStartTime":J
    :goto_24d
    if-eqz v34, :cond_263

    if-eqz v21, :cond_263

    .line 1320
    move-object/from16 v51, v3

    move/from16 v52, v4

    move/from16 v53, v6

    move/from16 v49, v11

    move-wide/from16 v16, v18

    move/from16 v11, v20

    move/from16 v14, v42

    move-wide/from16 v18, v1

    goto/16 :goto_3fd

    .line 1370
    .end local v0    # "sameRule":Z
    .end local v14    # "year":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "toOffset":I
    .end local v23    # "weekInMonth":I
    .end local v25    # "tzt":Landroid/icu/util/TimeZoneTransition;
    .end local v28    # "isDst":Z
    .end local v41    # "fromDSTSavings":I
    .end local v45    # "fromOffset":I
    :cond_263
    move v7, v12

    move-object v5, v15

    move-wide/from16 v16, v18

    move-wide/from16 v18, v1

    move/from16 v14, v42

    move/from16 v15, v50

    goto/16 :goto_635

    .line 1323
    .end local v12    # "stdFromOffset":I
    .end local v50    # "dstStartYear":I
    .local v1, "toOffset":I
    .local v2, "name":Ljava/lang/String;
    .local v5, "stdName":Ljava/lang/String;
    .local v7, "fromOffset":I
    .restart local v13    # "weekInMonth":I
    .restart local v14    # "year":I
    .local v15, "dstStartYear":I
    .local v16, "dstStartTime":J
    .local v18, "dstUntilTime":J
    .local v23, "stdFromOffset":I
    .restart local v25    # "tzt":Landroid/icu/util/TimeZoneTransition;
    .restart local v28    # "isDst":Z
    .restart local v41    # "fromDSTSavings":I
    .restart local v44    # "sameRule":Z
    :cond_26f
    move-object/from16 v51, v3

    move/from16 v52, v4

    move/from16 v53, v6

    move/from16 v54, v8

    move/from16 v55, v9

    move/from16 v56, v10

    move/from16 v49, v11

    move/from16 v50, v15

    move-wide/from16 v57, v16

    move/from16 v12, v23

    move/from16 v17, v1

    move-object/from16 v16, v2

    move-object v15, v5

    move/from16 v23, v13

    move/from16 v13, v45

    move/from16 v45, v7

    .end local v1    # "toOffset":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "dstName":Ljava/lang/String;
    .end local v4    # "dstFromOffset":I
    .end local v5    # "stdName":Ljava/lang/String;
    .end local v6    # "dstToOffset":I
    .end local v7    # "fromOffset":I
    .end local v8    # "dstMonth":I
    .end local v9    # "dstDayOfWeek":I
    .end local v10    # "dstWeekInMonth":I
    .end local v11    # "dstMillisInDay":I
    .end local v13    # "weekInMonth":I
    .restart local v12    # "stdFromOffset":I
    .local v15, "stdName":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    .restart local v17    # "toOffset":I
    .local v23, "weekInMonth":I
    .restart local v45    # "fromOffset":I
    .restart local v49    # "dstMillisInDay":I
    .restart local v50    # "dstStartYear":I
    .restart local v51    # "dstName":Ljava/lang/String;
    .restart local v52    # "dstFromOffset":I
    .restart local v53    # "dstToOffset":I
    .restart local v54    # "dstMonth":I
    .restart local v55    # "dstDayOfWeek":I
    .restart local v56    # "dstWeekInMonth":I
    .restart local v57    # "dstStartTime":J
    if-nez v34, :cond_2af

    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    instance-of v0, v0, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_2af

    .line 1324
    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    check-cast v0, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v0

    const v5, 0x7fffffff

    if-ne v0, v5, :cond_2af

    .line 1325
    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    move-object/from16 v34, v0

    check-cast v34, Landroid/icu/util/AnnualTimeZoneRule;

    .line 1328
    :cond_2af
    if-lez v33, :cond_39c

    .line 1329
    add-int v0, v24, v33

    if-ne v14, v0, :cond_328

    .line 1330
    move-object/from16 v8, v16

    .end local v16    # "name":Ljava/lang/String;
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v8, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_317

    move/from16 v9, v45

    .end local v45    # "fromOffset":I
    .local v9, "fromOffset":I
    if-ne v12, v9, :cond_308

    move/from16 v10, v17

    move/from16 v4, v36

    .end local v17    # "toOffset":I
    .end local v36    # "stdToOffset":I
    .local v4, "stdToOffset":I
    .local v10, "toOffset":I
    if-ne v4, v10, :cond_2fd

    aget v0, v46, v13

    move/from16 v11, v37

    .end local v37    # "stdMonth":I
    .local v11, "stdMonth":I
    if-ne v11, v0, :cond_2f4

    aget v0, v46, v48

    move/from16 v1, v38

    .end local v38    # "stdDayOfWeek":I
    .local v1, "stdDayOfWeek":I
    if-ne v1, v0, :cond_2ed

    move/from16 v0, v23

    move/from16 v2, v39

    .end local v23    # "weekInMonth":I
    .end local v39    # "stdWeekInMonth":I
    .local v0, "weekInMonth":I
    .local v2, "stdWeekInMonth":I
    if-ne v2, v0, :cond_2ea

    aget v3, v46, v47

    move/from16 v5, v40

    .end local v40    # "stdMillisInDay":I
    .local v5, "stdMillisInDay":I
    if-ne v5, v3, :cond_33a

    .line 1338
    move-wide/from16 v31, v26

    .line 1339
    add-int/lit8 v33, v33, 0x1

    .line 1340
    const/4 v3, 0x1

    move/from16 v44, v3

    move/from16 v3, v33

    .end local v44    # "sameRule":Z
    .local v3, "sameRule":Z
    goto/16 :goto_33c

    .line 1330
    .end local v3    # "sameRule":Z
    .end local v5    # "stdMillisInDay":I
    .restart local v40    # "stdMillisInDay":I
    .restart local v44    # "sameRule":Z
    :cond_2ea
    move/from16 v5, v40

    .end local v40    # "stdMillisInDay":I
    .restart local v5    # "stdMillisInDay":I
    goto :goto_33a

    .end local v0    # "weekInMonth":I
    .end local v2    # "stdWeekInMonth":I
    .end local v5    # "stdMillisInDay":I
    .restart local v23    # "weekInMonth":I
    .restart local v39    # "stdWeekInMonth":I
    .restart local v40    # "stdMillisInDay":I
    :cond_2ed
    move/from16 v0, v23

    move/from16 v2, v39

    move/from16 v5, v40

    .end local v23    # "weekInMonth":I
    .end local v39    # "stdWeekInMonth":I
    .end local v40    # "stdMillisInDay":I
    .restart local v0    # "weekInMonth":I
    .restart local v2    # "stdWeekInMonth":I
    .restart local v5    # "stdMillisInDay":I
    goto :goto_33a

    .end local v0    # "weekInMonth":I
    .end local v1    # "stdDayOfWeek":I
    .end local v2    # "stdWeekInMonth":I
    .end local v5    # "stdMillisInDay":I
    .restart local v23    # "weekInMonth":I
    .restart local v38    # "stdDayOfWeek":I
    .restart local v39    # "stdWeekInMonth":I
    .restart local v40    # "stdMillisInDay":I
    :cond_2f4
    move/from16 v0, v23

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v5, v40

    .end local v23    # "weekInMonth":I
    .end local v38    # "stdDayOfWeek":I
    .end local v39    # "stdWeekInMonth":I
    .end local v40    # "stdMillisInDay":I
    .restart local v0    # "weekInMonth":I
    .restart local v1    # "stdDayOfWeek":I
    .restart local v2    # "stdWeekInMonth":I
    .restart local v5    # "stdMillisInDay":I
    goto :goto_33a

    .end local v0    # "weekInMonth":I
    .end local v1    # "stdDayOfWeek":I
    .end local v2    # "stdWeekInMonth":I
    .end local v5    # "stdMillisInDay":I
    .end local v11    # "stdMonth":I
    .restart local v23    # "weekInMonth":I
    .restart local v37    # "stdMonth":I
    .restart local v38    # "stdDayOfWeek":I
    .restart local v39    # "stdWeekInMonth":I
    .restart local v40    # "stdMillisInDay":I
    :cond_2fd
    move/from16 v0, v23

    move/from16 v11, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v5, v40

    .end local v23    # "weekInMonth":I
    .end local v37    # "stdMonth":I
    .end local v38    # "stdDayOfWeek":I
    .end local v39    # "stdWeekInMonth":I
    .end local v40    # "stdMillisInDay":I
    .restart local v0    # "weekInMonth":I
    .restart local v1    # "stdDayOfWeek":I
    .restart local v2    # "stdWeekInMonth":I
    .restart local v5    # "stdMillisInDay":I
    .restart local v11    # "stdMonth":I
    goto :goto_33a

    .end local v0    # "weekInMonth":I
    .end local v1    # "stdDayOfWeek":I
    .end local v2    # "stdWeekInMonth":I
    .end local v4    # "stdToOffset":I
    .end local v5    # "stdMillisInDay":I
    .end local v10    # "toOffset":I
    .end local v11    # "stdMonth":I
    .restart local v17    # "toOffset":I
    .restart local v23    # "weekInMonth":I
    .restart local v36    # "stdToOffset":I
    .restart local v37    # "stdMonth":I
    .restart local v38    # "stdDayOfWeek":I
    .restart local v39    # "stdWeekInMonth":I
    .restart local v40    # "stdMillisInDay":I
    :cond_308
    move/from16 v10, v17

    move/from16 v0, v23

    move/from16 v4, v36

    move/from16 v11, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v5, v40

    .end local v17    # "toOffset":I
    .end local v23    # "weekInMonth":I
    .end local v36    # "stdToOffset":I
    .end local v37    # "stdMonth":I
    .end local v38    # "stdDayOfWeek":I
    .end local v39    # "stdWeekInMonth":I
    .end local v40    # "stdMillisInDay":I
    .restart local v0    # "weekInMonth":I
    .restart local v1    # "stdDayOfWeek":I
    .restart local v2    # "stdWeekInMonth":I
    .restart local v4    # "stdToOffset":I
    .restart local v5    # "stdMillisInDay":I
    .restart local v10    # "toOffset":I
    .restart local v11    # "stdMonth":I
    goto :goto_33a

    .end local v0    # "weekInMonth":I
    .end local v1    # "stdDayOfWeek":I
    .end local v2    # "stdWeekInMonth":I
    .end local v4    # "stdToOffset":I
    .end local v5    # "stdMillisInDay":I
    .end local v9    # "fromOffset":I
    .end local v10    # "toOffset":I
    .end local v11    # "stdMonth":I
    .restart local v17    # "toOffset":I
    .restart local v23    # "weekInMonth":I
    .restart local v36    # "stdToOffset":I
    .restart local v37    # "stdMonth":I
    .restart local v38    # "stdDayOfWeek":I
    .restart local v39    # "stdWeekInMonth":I
    .restart local v40    # "stdMillisInDay":I
    .restart local v45    # "fromOffset":I
    :cond_317
    move/from16 v10, v17

    move/from16 v0, v23

    move/from16 v4, v36

    move/from16 v11, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v5, v40

    move/from16 v9, v45

    .end local v17    # "toOffset":I
    .end local v23    # "weekInMonth":I
    .end local v36    # "stdToOffset":I
    .end local v37    # "stdMonth":I
    .end local v38    # "stdDayOfWeek":I
    .end local v39    # "stdWeekInMonth":I
    .end local v40    # "stdMillisInDay":I
    .end local v45    # "fromOffset":I
    .restart local v0    # "weekInMonth":I
    .restart local v1    # "stdDayOfWeek":I
    .restart local v2    # "stdWeekInMonth":I
    .restart local v4    # "stdToOffset":I
    .restart local v5    # "stdMillisInDay":I
    .restart local v9    # "fromOffset":I
    .restart local v10    # "toOffset":I
    .restart local v11    # "stdMonth":I
    goto :goto_33a

    .line 1329
    .end local v0    # "weekInMonth":I
    .end local v1    # "stdDayOfWeek":I
    .end local v2    # "stdWeekInMonth":I
    .end local v4    # "stdToOffset":I
    .end local v5    # "stdMillisInDay":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "fromOffset":I
    .end local v10    # "toOffset":I
    .end local v11    # "stdMonth":I
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v17    # "toOffset":I
    .restart local v23    # "weekInMonth":I
    .restart local v36    # "stdToOffset":I
    .restart local v37    # "stdMonth":I
    .restart local v38    # "stdDayOfWeek":I
    .restart local v39    # "stdWeekInMonth":I
    .restart local v40    # "stdMillisInDay":I
    .restart local v45    # "fromOffset":I
    :cond_328
    move-object/from16 v8, v16

    move/from16 v10, v17

    move/from16 v0, v23

    move/from16 v4, v36

    move/from16 v11, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v5, v40

    move/from16 v9, v45

    .line 1342
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "toOffset":I
    .end local v23    # "weekInMonth":I
    .end local v36    # "stdToOffset":I
    .end local v37    # "stdMonth":I
    .end local v38    # "stdDayOfWeek":I
    .end local v39    # "stdWeekInMonth":I
    .end local v40    # "stdMillisInDay":I
    .end local v45    # "fromOffset":I
    .restart local v0    # "weekInMonth":I
    .restart local v1    # "stdDayOfWeek":I
    .restart local v2    # "stdWeekInMonth":I
    .restart local v4    # "stdToOffset":I
    .restart local v5    # "stdMillisInDay":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "fromOffset":I
    .restart local v10    # "toOffset":I
    .restart local v11    # "stdMonth":I
    :cond_33a
    :goto_33a
    move/from16 v3, v33

    .end local v33    # "stdCount":I
    .local v3, "stdCount":I
    :goto_33c
    if-nez v44, :cond_382

    .line 1343
    if-ne v3, v13, :cond_363

    .line 1344
    move v7, v1

    .end local v1    # "stdDayOfWeek":I
    .local v7, "stdDayOfWeek":I
    const/4 v1, 0x0

    move v6, v7

    .end local v7    # "stdDayOfWeek":I
    .local v6, "stdDayOfWeek":I
    const/4 v7, 0x1

    move-object/from16 v16, v15

    move v15, v2

    move-object/from16 v2, v16

    move/from16 v23, v0

    move/from16 v33, v3

    move/from16 v16, v5

    move v3, v12

    move-object/from16 v0, p1

    move v12, v6

    move-wide/from16 v5, v29

    .end local v0    # "weekInMonth":I
    .end local v6    # "stdDayOfWeek":I
    .end local v29    # "stdStartTime":J
    .local v2, "stdName":Ljava/lang/String;
    .local v3, "stdFromOffset":I
    .local v5, "stdStartTime":J
    .local v12, "stdDayOfWeek":I
    .local v15, "stdWeekInMonth":I
    .local v16, "stdMillisInDay":I
    .restart local v23    # "weekInMonth":I
    .restart local v33    # "stdCount":I
    invoke-static/range {v0 .. v7}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    move/from16 v45, v9

    move/from16 v17, v10

    move v7, v12

    move-object v12, v8

    move-wide v8, v5

    move v5, v11

    move-wide/from16 v10, v31

    goto :goto_397

    .line 1347
    .end local v16    # "stdMillisInDay":I
    .end local v23    # "weekInMonth":I
    .end local v33    # "stdCount":I
    .restart local v0    # "weekInMonth":I
    .restart local v1    # "stdDayOfWeek":I
    .local v2, "stdWeekInMonth":I
    .local v3, "stdCount":I
    .local v5, "stdMillisInDay":I
    .local v12, "stdFromOffset":I
    .local v15, "stdName":Ljava/lang/String;
    .restart local v29    # "stdStartTime":J
    :cond_363
    move-object v6, v15

    move v15, v2

    move-object v2, v6

    move/from16 v23, v0

    move/from16 v33, v3

    move/from16 v16, v5

    move v3, v12

    move-wide/from16 v5, v29

    move v12, v1

    .end local v0    # "weekInMonth":I
    .end local v1    # "stdDayOfWeek":I
    .end local v29    # "stdStartTime":J
    .local v2, "stdName":Ljava/lang/String;
    .local v3, "stdFromOffset":I
    .local v5, "stdStartTime":J
    .local v12, "stdDayOfWeek":I
    .local v15, "stdWeekInMonth":I
    .restart local v16    # "stdMillisInDay":I
    .restart local v23    # "weekInMonth":I
    .restart local v33    # "stdCount":I
    const/4 v1, 0x0

    move-object/from16 v0, p1

    move/from16 v45, v9

    move/from16 v17, v10

    move v7, v12

    move-object v12, v8

    move-wide v8, v5

    move v5, v11

    move v6, v15

    move-wide/from16 v10, v31

    .end local v9    # "fromOffset":I
    .end local v11    # "stdMonth":I
    .end local v15    # "stdWeekInMonth":I
    .end local v31    # "stdUntilTime":J
    .local v5, "stdMonth":I
    .local v6, "stdWeekInMonth":I
    .restart local v7    # "stdDayOfWeek":I
    .local v8, "stdStartTime":J
    .local v10, "stdUntilTime":J
    .local v12, "name":Ljava/lang/String;
    .restart local v17    # "toOffset":I
    .restart local v45    # "fromOffset":I
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    .end local v6    # "stdWeekInMonth":I
    .restart local v15    # "stdWeekInMonth":I
    goto :goto_397

    .line 1342
    .end local v7    # "stdDayOfWeek":I
    .end local v16    # "stdMillisInDay":I
    .end local v17    # "toOffset":I
    .end local v23    # "weekInMonth":I
    .end local v33    # "stdCount":I
    .end local v45    # "fromOffset":I
    .restart local v0    # "weekInMonth":I
    .restart local v1    # "stdDayOfWeek":I
    .local v2, "stdWeekInMonth":I
    .local v3, "stdCount":I
    .local v5, "stdMillisInDay":I
    .local v8, "name":Ljava/lang/String;
    .restart local v9    # "fromOffset":I
    .local v10, "toOffset":I
    .restart local v11    # "stdMonth":I
    .local v12, "stdFromOffset":I
    .local v15, "stdName":Ljava/lang/String;
    .restart local v29    # "stdStartTime":J
    .restart local v31    # "stdUntilTime":J
    :cond_382
    move-object v7, v15

    move v15, v2

    move-object v2, v7

    move/from16 v23, v0

    move v7, v1

    move/from16 v33, v3

    move/from16 v16, v5

    move/from16 v45, v9

    move/from16 v17, v10

    move v5, v11

    move v3, v12

    move-wide/from16 v10, v31

    move-object v12, v8

    move-wide/from16 v8, v29

    .line 1352
    .end local v0    # "weekInMonth":I
    .end local v1    # "stdDayOfWeek":I
    .end local v9    # "fromOffset":I
    .end local v11    # "stdMonth":I
    .end local v29    # "stdStartTime":J
    .end local v31    # "stdUntilTime":J
    .local v2, "stdName":Ljava/lang/String;
    .local v3, "stdFromOffset":I
    .local v5, "stdMonth":I
    .restart local v7    # "stdDayOfWeek":I
    .local v8, "stdStartTime":J
    .local v10, "stdUntilTime":J
    .local v12, "name":Ljava/lang/String;
    .local v15, "stdWeekInMonth":I
    .restart local v16    # "stdMillisInDay":I
    .restart local v17    # "toOffset":I
    .restart local v23    # "weekInMonth":I
    .restart local v33    # "stdCount":I
    .restart local v45    # "fromOffset":I
    :goto_397
    move-wide/from16 v31, v10

    move/from16 v0, v44

    goto :goto_3ae

    .line 1328
    .end local v2    # "stdName":Ljava/lang/String;
    .end local v3    # "stdFromOffset":I
    .end local v4    # "stdToOffset":I
    .end local v5    # "stdMonth":I
    .end local v7    # "stdDayOfWeek":I
    .end local v8    # "stdStartTime":J
    .end local v10    # "stdUntilTime":J
    .local v12, "stdFromOffset":I
    .local v15, "stdName":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    .restart local v29    # "stdStartTime":J
    .restart local v31    # "stdUntilTime":J
    .restart local v36    # "stdToOffset":I
    .restart local v37    # "stdMonth":I
    .restart local v38    # "stdDayOfWeek":I
    .restart local v39    # "stdWeekInMonth":I
    .restart local v40    # "stdMillisInDay":I
    :cond_39c
    move v3, v12

    move-object v2, v15

    move-object/from16 v12, v16

    move-wide/from16 v8, v29

    move/from16 v4, v36

    move/from16 v5, v37

    move/from16 v7, v38

    move/from16 v15, v39

    move/from16 v16, v40

    .end local v29    # "stdStartTime":J
    .end local v36    # "stdToOffset":I
    .end local v37    # "stdMonth":I
    .end local v38    # "stdDayOfWeek":I
    .end local v39    # "stdWeekInMonth":I
    .end local v40    # "stdMillisInDay":I
    .restart local v2    # "stdName":Ljava/lang/String;
    .restart local v3    # "stdFromOffset":I
    .restart local v4    # "stdToOffset":I
    .restart local v5    # "stdMonth":I
    .restart local v7    # "stdDayOfWeek":I
    .restart local v8    # "stdStartTime":J
    .local v12, "name":Ljava/lang/String;
    .local v15, "stdWeekInMonth":I
    .local v16, "stdMillisInDay":I
    move/from16 v0, v44

    .line 1352
    .end local v44    # "sameRule":Z
    .local v0, "sameRule":Z
    :goto_3ae
    if-nez v0, :cond_3dd

    .line 1354
    move-object v1, v12

    .line 1355
    .end local v2    # "stdName":Ljava/lang/String;
    .local v1, "stdName":Ljava/lang/String;
    move/from16 v2, v45

    .line 1356
    .end local v3    # "stdFromOffset":I
    .local v2, "stdFromOffset":I
    move/from16 v3, v41

    .line 1357
    .end local v22    # "stdFromDSTSavings":I
    .local v3, "stdFromDSTSavings":I
    move/from16 v4, v17

    .line 1358
    move v6, v14

    .line 1359
    .end local v24    # "stdStartYear":I
    .local v6, "stdStartYear":I
    aget v5, v46, v13

    .line 1360
    aget v7, v46, v48

    .line 1361
    move/from16 v10, v23

    .line 1362
    .end local v15    # "stdWeekInMonth":I
    .local v10, "stdWeekInMonth":I
    aget v11, v46, v47

    .line 1363
    .end local v16    # "stdMillisInDay":I
    .local v11, "stdMillisInDay":I
    move-wide/from16 v15, v26

    .end local v31    # "stdUntilTime":J
    .local v15, "stdUntilTime":J
    move-wide/from16 v8, v26

    .line 1364
    const/16 v22, 0x1

    move/from16 v37, v5

    move/from16 v24, v6

    move/from16 v38, v7

    move/from16 v39, v10

    move/from16 v40, v11

    move-wide/from16 v31, v15

    move/from16 v33, v22

    move-object v5, v1

    move v7, v2

    move/from16 v22, v3

    move/from16 v36, v4

    move-wide/from16 v29, v8

    .end local v33    # "stdCount":I
    .local v22, "stdCount":I
    goto :goto_3eb

    .line 1352
    .end local v1    # "stdName":Ljava/lang/String;
    .end local v6    # "stdStartYear":I
    .end local v10    # "stdWeekInMonth":I
    .end local v11    # "stdMillisInDay":I
    .local v2, "stdName":Ljava/lang/String;
    .local v3, "stdFromOffset":I
    .local v15, "stdWeekInMonth":I
    .restart local v16    # "stdMillisInDay":I
    .local v22, "stdFromDSTSavings":I
    .restart local v24    # "stdStartYear":I
    .restart local v31    # "stdUntilTime":J
    .restart local v33    # "stdCount":I
    :cond_3dd
    move/from16 v37, v5

    move/from16 v38, v7

    move/from16 v39, v15

    move/from16 v40, v16

    move-object v5, v2

    move v7, v3

    move/from16 v36, v4

    move-wide/from16 v29, v8

    .line 1366
    .end local v2    # "stdName":Ljava/lang/String;
    .end local v3    # "stdFromOffset":I
    .end local v4    # "stdToOffset":I
    .end local v8    # "stdStartTime":J
    .end local v15    # "stdWeekInMonth":I
    .end local v16    # "stdMillisInDay":I
    .local v5, "stdName":Ljava/lang/String;
    .local v7, "stdFromOffset":I
    .restart local v29    # "stdStartTime":J
    .restart local v36    # "stdToOffset":I
    .restart local v37    # "stdMonth":I
    .restart local v38    # "stdDayOfWeek":I
    .restart local v39    # "stdWeekInMonth":I
    .restart local v40    # "stdMillisInDay":I
    :goto_3eb
    if-eqz v34, :cond_621

    if-eqz v21, :cond_621

    .line 1367
    move-object v15, v5

    move v12, v7

    move/from16 v11, v20

    move/from16 v14, v42

    move/from16 v8, v54

    move/from16 v9, v55

    move/from16 v10, v56

    move-wide/from16 v16, v57

    .line 1371
    .end local v0    # "sameRule":Z
    .end local v5    # "stdName":Ljava/lang/String;
    .end local v7    # "stdFromOffset":I
    .end local v17    # "toOffset":I
    .end local v20    # "dstCount":I
    .end local v23    # "weekInMonth":I
    .end local v25    # "tzt":Landroid/icu/util/TimeZoneTransition;
    .end local v28    # "isDst":Z
    .end local v41    # "fromDSTSavings":I
    .end local v42    # "dstFromDSTSavings":I
    .end local v45    # "fromOffset":I
    .end local v54    # "dstMonth":I
    .end local v55    # "dstDayOfWeek":I
    .end local v56    # "dstWeekInMonth":I
    .end local v57    # "dstStartTime":J
    .local v8, "dstMonth":I
    .local v9, "dstDayOfWeek":I
    .local v10, "dstWeekInMonth":I
    .local v11, "dstCount":I
    .local v12, "stdFromOffset":I
    .local v14, "dstFromDSTSavings":I
    .local v15, "stdName":Ljava/lang/String;
    .local v16, "dstStartTime":J
    :goto_3fd
    if-nez v35, :cond_443

    .line 1373
    const-wide/16 v0, 0x0

    move-object/from16 v2, p2

    invoke-virtual {v2, v0, v1}, Landroid/icu/util/BasicTimeZone;->getOffset(J)I

    move-result v3

    .line 1374
    .local v3, "offset":I
    invoke-virtual {v2}, Landroid/icu/util/BasicTimeZone;->getRawOffset()I

    move-result v4

    if-eq v3, v4, :cond_40f

    move v7, v13

    goto :goto_411

    :cond_40f
    move/from16 v7, v43

    .line 1375
    .local v7, "isDst":Z
    :goto_411
    invoke-virtual {v2}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    int-to-long v5, v3

    sub-long v5, v0, v5

    move v1, v7

    .end local v7    # "isDst":Z
    .local v1, "isDst":Z
    const/4 v7, 0x0

    move-object v2, v4

    move v4, v3

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v7}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    .line 1377
    .end local v1    # "isDst":Z
    .end local v3    # "offset":I
    move/from16 v54, v8

    move/from16 v55, v9

    move/from16 v56, v10

    move/from16 v42, v14

    move-object v7, v15

    move-object/from16 v14, v21

    move/from16 v4, v22

    move/from16 v15, v33

    move-object/from16 v2, v34

    move/from16 v8, v37

    move/from16 v9, v38

    move-wide/from16 v20, v18

    move-wide/from16 v18, v16

    move/from16 v16, v12

    move v12, v11

    goto/16 :goto_61d

    .line 1378
    :cond_443
    if-lez v11, :cond_531

    .line 1379
    if-nez v21, :cond_49d

    .line 1380
    if-ne v11, v13, :cond_46d

    .line 1381
    const/4 v1, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v5, v16

    move/from16 v59, v33

    move-object/from16 v2, v51

    move/from16 v3, v52

    move/from16 v4, v53

    .end local v16    # "dstStartTime":J
    .end local v33    # "stdCount":I
    .end local v51    # "dstName":Ljava/lang/String;
    .end local v52    # "dstFromOffset":I
    .end local v53    # "dstToOffset":I
    .local v2, "dstName":Ljava/lang/String;
    .local v3, "dstFromOffset":I
    .local v4, "dstToOffset":I
    .local v5, "dstStartTime":J
    .local v59, "stdCount":I
    invoke-static/range {v0 .. v7}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    move/from16 v54, v8

    move/from16 v55, v9

    move/from16 v56, v10

    move/from16 v16, v12

    move/from16 v42, v14

    move-object/from16 v14, v21

    move v12, v11

    move-wide/from16 v20, v18

    move-wide/from16 v18, v5

    goto/16 :goto_544

    .line 1384
    .end local v2    # "dstName":Ljava/lang/String;
    .end local v3    # "dstFromOffset":I
    .end local v4    # "dstToOffset":I
    .end local v5    # "dstStartTime":J
    .end local v59    # "stdCount":I
    .restart local v16    # "dstStartTime":J
    .restart local v33    # "stdCount":I
    .restart local v51    # "dstName":Ljava/lang/String;
    .restart local v52    # "dstFromOffset":I
    .restart local v53    # "dstToOffset":I
    :cond_46d
    move-wide/from16 v5, v16

    move/from16 v59, v33

    move-object/from16 v2, v51

    move/from16 v3, v52

    move/from16 v4, v53

    .end local v16    # "dstStartTime":J
    .end local v33    # "stdCount":I
    .end local v51    # "dstName":Ljava/lang/String;
    .end local v52    # "dstFromOffset":I
    .end local v53    # "dstToOffset":I
    .restart local v2    # "dstName":Ljava/lang/String;
    .restart local v3    # "dstFromOffset":I
    .restart local v4    # "dstToOffset":I
    .restart local v5    # "dstStartTime":J
    .restart local v59    # "stdCount":I
    const/4 v1, 0x1

    move-object/from16 v0, p1

    move v7, v9

    move/from16 v16, v12

    move v12, v11

    move-wide/from16 v60, v5

    move v5, v8

    move-wide/from16 v8, v60

    move v6, v10

    move-wide/from16 v10, v18

    .end local v9    # "dstDayOfWeek":I
    .end local v11    # "dstCount":I
    .end local v18    # "dstUntilTime":J
    .local v5, "dstMonth":I
    .local v6, "dstWeekInMonth":I
    .local v7, "dstDayOfWeek":I
    .local v8, "dstStartTime":J
    .local v10, "dstUntilTime":J
    .local v12, "dstCount":I
    .local v16, "stdFromOffset":I
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    move v10, v6

    move v8, v5

    move-wide/from16 v5, v60

    move/from16 v55, v7

    move/from16 v54, v8

    move/from16 v56, v10

    move/from16 v42, v14

    move-object/from16 v14, v21

    move-wide/from16 v20, v18

    move-wide/from16 v18, v5

    .end local v2    # "dstName":Ljava/lang/String;
    .end local v3    # "dstFromOffset":I
    .end local v4    # "dstToOffset":I
    .end local v6    # "dstWeekInMonth":I
    .local v5, "dstStartTime":J
    .local v8, "dstMonth":I
    .local v10, "dstWeekInMonth":I
    .restart local v18    # "dstUntilTime":J
    .restart local v51    # "dstName":Ljava/lang/String;
    .restart local v52    # "dstFromOffset":I
    .restart local v53    # "dstToOffset":I
    goto/16 :goto_544

    .line 1388
    .end local v5    # "dstStartTime":J
    .end local v7    # "dstDayOfWeek":I
    .end local v59    # "stdCount":I
    .restart local v9    # "dstDayOfWeek":I
    .restart local v11    # "dstCount":I
    .local v12, "stdFromOffset":I
    .local v16, "dstStartTime":J
    .restart local v33    # "stdCount":I
    :cond_49d
    move v7, v9

    move-wide/from16 v5, v16

    move/from16 v59, v33

    move/from16 v16, v12

    move v12, v11

    .end local v9    # "dstDayOfWeek":I
    .end local v11    # "dstCount":I
    .end local v33    # "stdCount":I
    .restart local v5    # "dstStartTime":J
    .restart local v7    # "dstDayOfWeek":I
    .local v12, "dstCount":I
    .local v16, "stdFromOffset":I
    .restart local v59    # "stdCount":I
    if-ne v12, v13, :cond_4c1

    .line 1389
    const/4 v1, 0x1

    sub-int v3, v52, v14

    move-object/from16 v0, p1

    move v4, v14

    move-object/from16 v2, v21

    .end local v14    # "dstFromDSTSavings":I
    .end local v21    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v2, "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v4, "dstFromDSTSavings":I
    invoke-static/range {v0 .. v6}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    move-object v14, v2

    move/from16 v42, v4

    move/from16 v55, v7

    move/from16 v54, v8

    move/from16 v56, v10

    move-wide/from16 v20, v18

    move-wide/from16 v18, v5

    .end local v2    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v4    # "dstFromDSTSavings":I
    .restart local v21    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v42    # "dstFromDSTSavings":I
    goto/16 :goto_544

    .line 1393
    .end local v42    # "dstFromDSTSavings":I
    .restart local v14    # "dstFromDSTSavings":I
    :cond_4c1
    move/from16 v42, v14

    .end local v14    # "dstFromDSTSavings":I
    .restart local v42    # "dstFromDSTSavings":I
    invoke-virtual/range {v21 .. v21}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v0

    invoke-static {v8, v10, v7, v0}, Landroid/icu/util/VTimeZone;->isEquivalentDateRule(IIILandroid/icu/util/DateTimeRule;)Z

    move-result v0

    if-eqz v0, :cond_4f2

    .line 1394
    const/4 v1, 0x1

    move-wide/from16 v60, v5

    move v5, v8

    move-wide/from16 v8, v60

    move v6, v10

    .end local v10    # "dstWeekInMonth":I
    .local v5, "dstMonth":I
    .restart local v6    # "dstWeekInMonth":I
    .local v8, "dstStartTime":J
    const-wide v10, 0x7fffffffffffffffL

    move-object/from16 v0, p1

    move-object/from16 v2, v51

    move/from16 v3, v52

    move/from16 v4, v53

    .end local v51    # "dstName":Ljava/lang/String;
    .end local v52    # "dstFromOffset":I
    .end local v53    # "dstToOffset":I
    .local v2, "dstName":Ljava/lang/String;
    .restart local v3    # "dstFromOffset":I
    .local v4, "dstToOffset":I
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    move/from16 v54, v5

    move/from16 v56, v6

    move/from16 v55, v7

    move-object/from16 v14, v21

    move-wide/from16 v20, v18

    move-wide/from16 v18, v8

    goto/16 :goto_544

    .line 1398
    .end local v2    # "dstName":Ljava/lang/String;
    .end local v3    # "dstFromOffset":I
    .end local v4    # "dstToOffset":I
    .end local v6    # "dstWeekInMonth":I
    .local v5, "dstStartTime":J
    .local v8, "dstMonth":I
    .restart local v10    # "dstWeekInMonth":I
    .restart local v51    # "dstName":Ljava/lang/String;
    .restart local v52    # "dstFromOffset":I
    .restart local v53    # "dstToOffset":I
    :cond_4f2
    move-wide v2, v5

    move v5, v8

    move-wide v8, v2

    move v6, v10

    move-object/from16 v2, v51

    move/from16 v3, v52

    move/from16 v4, v53

    .end local v10    # "dstWeekInMonth":I
    .end local v51    # "dstName":Ljava/lang/String;
    .end local v52    # "dstFromOffset":I
    .end local v53    # "dstToOffset":I
    .restart local v2    # "dstName":Ljava/lang/String;
    .restart local v3    # "dstFromOffset":I
    .restart local v4    # "dstToOffset":I
    .local v5, "dstMonth":I
    .restart local v6    # "dstWeekInMonth":I
    .local v8, "dstStartTime":J
    const/4 v1, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v10, v18

    .end local v18    # "dstUntilTime":J
    .local v10, "dstUntilTime":J
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    .line 1401
    move/from16 v54, v5

    move/from16 v56, v6

    move/from16 v55, v7

    move-wide/from16 v18, v8

    .end local v2    # "dstName":Ljava/lang/String;
    .end local v3    # "dstFromOffset":I
    .end local v4    # "dstToOffset":I
    .end local v5    # "dstMonth":I
    .end local v6    # "dstWeekInMonth":I
    .end local v7    # "dstDayOfWeek":I
    .end local v8    # "dstStartTime":J
    .local v18, "dstStartTime":J
    .restart local v51    # "dstName":Ljava/lang/String;
    .restart local v52    # "dstFromOffset":I
    .restart local v53    # "dstToOffset":I
    .restart local v54    # "dstMonth":I
    .restart local v55    # "dstDayOfWeek":I
    .restart local v56    # "dstWeekInMonth":I
    sub-int v3, v52, v42

    const/4 v5, 0x0

    move-wide v1, v10

    move-object/from16 v0, v21

    move/from16 v4, v42

    .end local v10    # "dstUntilTime":J
    .end local v21    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v42    # "dstFromDSTSavings":I
    .local v0, "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v1, "dstUntilTime":J
    .local v4, "dstFromDSTSavings":I
    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v7

    .line 1404
    move-wide/from16 v20, v1

    move-object v2, v0

    .line 1405
    .end local v0    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v1    # "dstUntilTime":J
    .local v2, "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v7, "nextStart":Ljava/util/Date;
    .local v20, "dstUntilTime":J
    if-eqz v7, :cond_52d

    .line 1406
    sub-int v3, v52, v4

    .line 1407
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 1406
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    move-object v14, v2

    move/from16 v42, v4

    .end local v2    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v4    # "dstFromDSTSavings":I
    .local v14, "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v42    # "dstFromDSTSavings":I
    goto :goto_544

    .line 1405
    .end local v14    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v42    # "dstFromDSTSavings":I
    .restart local v2    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v4    # "dstFromDSTSavings":I
    :cond_52d
    move-object v14, v2

    move/from16 v42, v4

    .end local v2    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v4    # "dstFromDSTSavings":I
    .restart local v14    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v42    # "dstFromDSTSavings":I
    goto :goto_544

    .line 1378
    .end local v7    # "nextStart":Ljava/util/Date;
    .end local v20    # "dstUntilTime":J
    .end local v42    # "dstFromDSTSavings":I
    .end local v54    # "dstMonth":I
    .end local v55    # "dstDayOfWeek":I
    .end local v56    # "dstWeekInMonth":I
    .end local v59    # "stdCount":I
    .local v8, "dstMonth":I
    .restart local v9    # "dstDayOfWeek":I
    .local v10, "dstWeekInMonth":I
    .restart local v11    # "dstCount":I
    .local v12, "stdFromOffset":I
    .local v14, "dstFromDSTSavings":I
    .local v16, "dstStartTime":J
    .local v18, "dstUntilTime":J
    .restart local v21    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v33    # "stdCount":I
    :cond_531
    move/from16 v54, v8

    move/from16 v55, v9

    move/from16 v56, v10

    move/from16 v42, v14

    move-object/from16 v14, v21

    move/from16 v59, v33

    move-wide/from16 v20, v18

    move-wide/from16 v18, v16

    move/from16 v16, v12

    move v12, v11

    .line 1413
    .end local v8    # "dstMonth":I
    .end local v9    # "dstDayOfWeek":I
    .end local v10    # "dstWeekInMonth":I
    .end local v11    # "dstCount":I
    .end local v21    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v33    # "stdCount":I
    .local v12, "dstCount":I
    .local v14, "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v16, "stdFromOffset":I
    .local v18, "dstStartTime":J
    .restart local v20    # "dstUntilTime":J
    .restart local v42    # "dstFromDSTSavings":I
    .restart local v54    # "dstMonth":I
    .restart local v55    # "dstDayOfWeek":I
    .restart local v56    # "dstWeekInMonth":I
    .restart local v59    # "stdCount":I
    :goto_544
    move/from16 v8, v59

    .end local v59    # "stdCount":I
    .local v8, "stdCount":I
    if-lez v8, :cond_613

    .line 1414
    if-nez v34, :cond_58f

    .line 1415
    if-ne v8, v13, :cond_566

    .line 1416
    const/4 v1, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object v2, v15

    move/from16 v3, v16

    move-wide/from16 v5, v29

    move/from16 v4, v36

    .end local v15    # "stdName":Ljava/lang/String;
    .end local v16    # "stdFromOffset":I
    .end local v29    # "stdStartTime":J
    .end local v36    # "stdToOffset":I
    .local v2, "stdName":Ljava/lang/String;
    .local v3, "stdFromOffset":I
    .local v4, "stdToOffset":I
    .local v5, "stdStartTime":J
    invoke-static/range {v0 .. v7}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    move-object v7, v2

    move v15, v8

    move/from16 v4, v22

    move-object/from16 v2, v34

    move/from16 v8, v37

    move/from16 v9, v38

    goto/16 :goto_61d

    .line 1419
    .end local v2    # "stdName":Ljava/lang/String;
    .end local v3    # "stdFromOffset":I
    .end local v4    # "stdToOffset":I
    .end local v5    # "stdStartTime":J
    .restart local v15    # "stdName":Ljava/lang/String;
    .restart local v16    # "stdFromOffset":I
    .restart local v29    # "stdStartTime":J
    .restart local v36    # "stdToOffset":I
    :cond_566
    move-object v2, v15

    move/from16 v3, v16

    move-wide/from16 v5, v29

    move/from16 v4, v36

    .end local v15    # "stdName":Ljava/lang/String;
    .end local v16    # "stdFromOffset":I
    .end local v29    # "stdStartTime":J
    .end local v36    # "stdToOffset":I
    .restart local v2    # "stdName":Ljava/lang/String;
    .restart local v3    # "stdFromOffset":I
    .restart local v4    # "stdToOffset":I
    .restart local v5    # "stdStartTime":J
    const/4 v1, 0x0

    move-object/from16 v0, p1

    move v15, v8

    move-wide/from16 v10, v31

    move/from16 v7, v38

    move-wide v8, v5

    move/from16 v5, v37

    move/from16 v6, v39

    .end local v31    # "stdUntilTime":J
    .end local v37    # "stdMonth":I
    .end local v38    # "stdDayOfWeek":I
    .end local v39    # "stdWeekInMonth":I
    .local v5, "stdMonth":I
    .local v6, "stdWeekInMonth":I
    .local v7, "stdDayOfWeek":I
    .local v8, "stdStartTime":J
    .local v10, "stdUntilTime":J
    .local v15, "stdCount":I
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    move v10, v6

    move-wide/from16 v60, v8

    move v8, v5

    move-wide/from16 v5, v60

    move-wide/from16 v29, v5

    move v9, v7

    move/from16 v39, v10

    move/from16 v4, v22

    move-object v7, v2

    move-object/from16 v2, v34

    .end local v2    # "stdName":Ljava/lang/String;
    .end local v3    # "stdFromOffset":I
    .end local v4    # "stdToOffset":I
    .end local v6    # "stdWeekInMonth":I
    .local v5, "stdStartTime":J
    .local v7, "stdName":Ljava/lang/String;
    .local v8, "stdMonth":I
    .local v9, "stdDayOfWeek":I
    .local v10, "stdWeekInMonth":I
    .restart local v16    # "stdFromOffset":I
    .restart local v31    # "stdUntilTime":J
    .restart local v36    # "stdToOffset":I
    goto/16 :goto_61d

    .line 1423
    .end local v5    # "stdStartTime":J
    .end local v7    # "stdName":Ljava/lang/String;
    .end local v9    # "stdDayOfWeek":I
    .end local v10    # "stdWeekInMonth":I
    .local v8, "stdCount":I
    .local v15, "stdName":Ljava/lang/String;
    .restart local v29    # "stdStartTime":J
    .restart local v37    # "stdMonth":I
    .restart local v38    # "stdDayOfWeek":I
    .restart local v39    # "stdWeekInMonth":I
    :cond_58f
    move-object v7, v15

    move-wide/from16 v5, v29

    move/from16 v9, v38

    move/from16 v10, v39

    move v15, v8

    move/from16 v8, v37

    .end local v29    # "stdStartTime":J
    .end local v37    # "stdMonth":I
    .end local v38    # "stdDayOfWeek":I
    .end local v39    # "stdWeekInMonth":I
    .restart local v5    # "stdStartTime":J
    .restart local v7    # "stdName":Ljava/lang/String;
    .local v8, "stdMonth":I
    .restart local v9    # "stdDayOfWeek":I
    .restart local v10    # "stdWeekInMonth":I
    .local v15, "stdCount":I
    if-ne v15, v13, :cond_5ad

    .line 1424
    const/4 v1, 0x0

    sub-int v3, v16, v22

    move-object/from16 v0, p1

    move/from16 v4, v22

    move-object/from16 v2, v34

    .end local v22    # "stdFromDSTSavings":I
    .end local v34    # "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v2, "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v4, "stdFromDSTSavings":I
    invoke-static/range {v0 .. v6}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    move-wide/from16 v29, v5

    move/from16 v39, v10

    .end local v2    # "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v4    # "stdFromDSTSavings":I
    .restart local v22    # "stdFromDSTSavings":I
    .restart local v34    # "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    goto/16 :goto_61d

    .line 1428
    :cond_5ad
    invoke-virtual/range {v34 .. v34}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v0

    invoke-static {v8, v10, v9, v0}, Landroid/icu/util/VTimeZone;->isEquivalentDateRule(IIILandroid/icu/util/DateTimeRule;)Z

    move-result v0

    if-eqz v0, :cond_5da

    .line 1429
    const/4 v1, 0x0

    move-object v2, v7

    move v7, v9

    move-wide/from16 v60, v5

    move v5, v8

    move-wide/from16 v8, v60

    move v6, v10

    .end local v9    # "stdDayOfWeek":I
    .end local v10    # "stdWeekInMonth":I
    .local v2, "stdName":Ljava/lang/String;
    .local v5, "stdMonth":I
    .restart local v6    # "stdWeekInMonth":I
    .local v7, "stdDayOfWeek":I
    .local v8, "stdStartTime":J
    const-wide v10, 0x7fffffffffffffffL

    move-object/from16 v0, p1

    move/from16 v3, v16

    move/from16 v4, v36

    .end local v16    # "stdFromOffset":I
    .end local v36    # "stdToOffset":I
    .restart local v3    # "stdFromOffset":I
    .local v4, "stdToOffset":I
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    move/from16 v39, v6

    move-wide/from16 v29, v8

    move/from16 v4, v22

    move v8, v5

    move v9, v7

    move-object v7, v2

    move-object/from16 v2, v34

    goto :goto_61d

    .line 1433
    .end local v2    # "stdName":Ljava/lang/String;
    .end local v3    # "stdFromOffset":I
    .end local v4    # "stdToOffset":I
    .end local v6    # "stdWeekInMonth":I
    .local v5, "stdStartTime":J
    .local v7, "stdName":Ljava/lang/String;
    .local v8, "stdMonth":I
    .restart local v9    # "stdDayOfWeek":I
    .restart local v10    # "stdWeekInMonth":I
    .restart local v16    # "stdFromOffset":I
    .restart local v36    # "stdToOffset":I
    :cond_5da
    move-object v2, v7

    move v7, v9

    move/from16 v3, v16

    move/from16 v4, v36

    move-wide/from16 v60, v5

    move v5, v8

    move-wide/from16 v8, v60

    move v6, v10

    .end local v9    # "stdDayOfWeek":I
    .end local v10    # "stdWeekInMonth":I
    .end local v16    # "stdFromOffset":I
    .end local v36    # "stdToOffset":I
    .restart local v2    # "stdName":Ljava/lang/String;
    .restart local v3    # "stdFromOffset":I
    .restart local v4    # "stdToOffset":I
    .local v5, "stdMonth":I
    .restart local v6    # "stdWeekInMonth":I
    .local v7, "stdDayOfWeek":I
    .local v8, "stdStartTime":J
    const/4 v1, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v10, v31

    .end local v31    # "stdUntilTime":J
    .local v10, "stdUntilTime":J
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    .line 1436
    move/from16 v39, v6

    move-wide/from16 v29, v8

    move v8, v5

    move v9, v7

    move-object v7, v2

    .end local v2    # "stdName":Ljava/lang/String;
    .end local v3    # "stdFromOffset":I
    .end local v4    # "stdToOffset":I
    .end local v5    # "stdMonth":I
    .end local v6    # "stdWeekInMonth":I
    .local v7, "stdName":Ljava/lang/String;
    .local v8, "stdMonth":I
    .restart local v9    # "stdDayOfWeek":I
    .restart local v16    # "stdFromOffset":I
    .restart local v29    # "stdStartTime":J
    .restart local v36    # "stdToOffset":I
    .restart local v39    # "stdWeekInMonth":I
    sub-int v3, v16, v22

    const/4 v5, 0x0

    move-wide v1, v10

    move/from16 v4, v22

    move-object/from16 v0, v34

    .end local v10    # "stdUntilTime":J
    .end local v22    # "stdFromDSTSavings":I
    .end local v34    # "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v0, "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v1, "stdUntilTime":J
    .local v4, "stdFromDSTSavings":I
    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v10

    .line 1439
    move-wide/from16 v31, v1

    move-object v2, v0

    .line 1440
    .end local v0    # "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v1    # "stdUntilTime":J
    .local v2, "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v10, "nextStart":Ljava/util/Date;
    .restart local v31    # "stdUntilTime":J
    if-eqz v10, :cond_61d

    .line 1441
    sub-int v3, v16, v4

    .line 1442
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 1441
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    goto :goto_61d

    .line 1413
    .end local v2    # "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v4    # "stdFromDSTSavings":I
    .end local v7    # "stdName":Ljava/lang/String;
    .end local v9    # "stdDayOfWeek":I
    .end local v10    # "nextStart":Ljava/util/Date;
    .local v8, "stdCount":I
    .local v15, "stdName":Ljava/lang/String;
    .restart local v22    # "stdFromDSTSavings":I
    .restart local v34    # "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v37    # "stdMonth":I
    .restart local v38    # "stdDayOfWeek":I
    :cond_613
    move-object v7, v15

    move/from16 v4, v22

    move-object/from16 v2, v34

    move/from16 v9, v38

    move v15, v8

    move/from16 v8, v37

    .line 1450
    .end local v22    # "stdFromDSTSavings":I
    .end local v34    # "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v37    # "stdMonth":I
    .end local v38    # "stdDayOfWeek":I
    .restart local v2    # "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v4    # "stdFromDSTSavings":I
    .restart local v7    # "stdName":Ljava/lang/String;
    .local v8, "stdMonth":I
    .restart local v9    # "stdDayOfWeek":I
    .local v15, "stdCount":I
    :cond_61d
    :goto_61d
    invoke-static/range {p1 .. p1}, Landroid/icu/util/VTimeZone;->writeFooter(Ljava/io/Writer;)V

    .line 1451
    return-void

    .line 1370
    .end local v2    # "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v4    # "stdFromDSTSavings":I
    .end local v8    # "stdMonth":I
    .end local v9    # "stdDayOfWeek":I
    .end local v12    # "dstCount":I
    .end local v14    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v15    # "stdCount":I
    .end local v16    # "stdFromOffset":I
    .local v5, "stdName":Ljava/lang/String;
    .local v7, "stdFromOffset":I
    .local v18, "dstUntilTime":J
    .local v20, "dstCount":I
    .restart local v21    # "finalDstRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v22    # "stdFromDSTSavings":I
    .restart local v33    # "stdCount":I
    .restart local v34    # "finalStdRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v37    # "stdMonth":I
    .restart local v38    # "stdDayOfWeek":I
    .restart local v57    # "dstStartTime":J
    :cond_621
    move/from16 v11, v49

    move-object/from16 v3, v51

    move/from16 v4, v52

    move/from16 v6, v53

    move/from16 v8, v54

    move/from16 v9, v55

    move/from16 v10, v56

    move-wide/from16 v16, v57

    move/from16 v14, v42

    move/from16 v15, v50

    .end local v42    # "dstFromDSTSavings":I
    .end local v49    # "dstMillisInDay":I
    .end local v50    # "dstStartYear":I
    .end local v51    # "dstName":Ljava/lang/String;
    .end local v52    # "dstFromOffset":I
    .end local v53    # "dstToOffset":I
    .end local v54    # "dstMonth":I
    .end local v55    # "dstDayOfWeek":I
    .end local v56    # "dstWeekInMonth":I
    .end local v57    # "dstStartTime":J
    .local v3, "dstName":Ljava/lang/String;
    .local v4, "dstFromOffset":I
    .local v6, "dstToOffset":I
    .local v8, "dstMonth":I
    .local v9, "dstDayOfWeek":I
    .local v10, "dstWeekInMonth":I
    .local v11, "dstMillisInDay":I
    .local v14, "dstFromDSTSavings":I
    .local v15, "dstStartYear":I
    .local v16, "dstStartTime":J
    :goto_635
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-wide/from16 v1, v26

    move-object/from16 v0, v46

    goto/16 :goto_6f
.end method

.method private static greylist-max-o writeZonePropsByDOM(Ljava/io/Writer;ZLjava/lang/String;IIIIJJ)V
    .registers 18
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

    .line 1511
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p7

    invoke-static/range {v0 .. v6}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    .line 1513
    invoke-static {p0, p5}, Landroid/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    .line 1514
    const-string v1, "BYMONTHDAY"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1515
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1516
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1518
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p9, v1

    if-eqz v1, :cond_30

    .line 1519
    int-to-long v1, p3

    add-long v1, p9, v1

    invoke-static {v1, v2}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1521
    :cond_30
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1523
    invoke-static/range {p0 .. p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    .line 1524
    return-void
.end method

.method private static greylist-max-o writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .registers 19
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

    .line 1531
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p8

    invoke-static/range {v0 .. v6}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    .line 1533
    invoke-static {p0, p5}, Landroid/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    .line 1534
    const-string v1, "BYDAY"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1535
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1536
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1537
    sget-object v1, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    add-int/lit8 v2, p7, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1539
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p10, v1

    if-eqz v1, :cond_39

    .line 1540
    int-to-long v1, p3

    add-long v1, p10, v1

    invoke-static {v1, v2}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1542
    :cond_39
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1544
    invoke-static/range {p0 .. p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    .line 1545
    return-void
.end method

.method private static greylist-max-o writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .registers 27
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

    .line 1553
    rem-int/lit8 v0, p6, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 1555
    add-int/lit8 v0, p6, 0x6

    div-int/lit8 v6, v0, 0x7

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_b9

    .line 1557
    :cond_1f
    move/from16 v5, p5

    if-eq v5, v1, :cond_4d

    sget-object v0, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v0, v0, v5

    sub-int v0, v0, p6

    rem-int/lit8 v0, v0, 0x7

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4d

    .line 1559
    sget-object v0, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v0, v0, v5

    sub-int v0, v0, p6

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    mul-int/lit8 v6, v0, -0x1

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_b9

    .line 1563
    :cond_4d
    move-object v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-wide/from16 v12, p8

    invoke-static/range {v7 .. v13}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    .line 1566
    move/from16 v0, p6

    .line 1567
    .local v0, "startDay":I
    const/4 v1, 0x7

    .line 1569
    .local v1, "currentMonthDays":I
    const/16 v2, 0xb

    if-gtz p6, :cond_7d

    .line 1571
    rsub-int/lit8 v11, p6, 0x1

    .line 1572
    .local v11, "prevMonthDays":I
    sub-int/2addr v1, v11

    .line 1574
    add-int/lit8 v3, p5, -0x1

    if-gez v3, :cond_6a

    goto :goto_6c

    :cond_6a
    add-int/lit8 v2, p5, -0x1

    :goto_6c
    move v8, v2

    .line 1579
    .local v8, "prevMonth":I
    neg-int v9, v11

    const-wide v12, 0x7fffffffffffffffL

    move-object v7, p0

    move/from16 v14, p3

    move/from16 v10, p7

    invoke-static/range {v7 .. v14}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    .line 1582
    const/4 v0, 0x1

    .end local v8    # "prevMonth":I
    .end local v11    # "prevMonthDays":I
    goto :goto_a8

    .line 1583
    :cond_7d
    add-int/lit8 v3, p6, 0x6

    sget-object v4, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v4, v4, p5

    if-le v3, v4, :cond_a8

    .line 1586
    add-int/lit8 v3, p6, 0x6

    sget-object v4, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v4, v4, p5

    sub-int v11, v3, v4

    .line 1587
    .local v11, "nextMonthDays":I
    sub-int/2addr v1, v11

    .line 1589
    add-int/lit8 v3, p5, 0x1

    if-le v3, v2, :cond_94

    const/4 v2, 0x0

    goto :goto_96

    :cond_94
    add-int/lit8 v2, p5, 0x1

    :goto_96
    move v8, v2

    .line 1591
    .local v8, "nextMonth":I
    const/4 v9, 0x1

    const-wide v12, 0x7fffffffffffffffL

    move-object v7, p0

    move/from16 v14, p3

    move/from16 v10, p7

    invoke-static/range {v7 .. v14}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    move v2, v0

    move v4, v1

    goto :goto_aa

    .line 1583
    .end local v8    # "nextMonth":I
    .end local v11    # "nextMonthDays":I
    :cond_a8
    :goto_a8
    move v2, v0

    move v4, v1

    .line 1593
    .end local v0    # "startDay":I
    .end local v1    # "currentMonthDays":I
    .local v2, "startDay":I
    .local v4, "currentMonthDays":I
    :goto_aa
    move-object v0, p0

    move/from16 v7, p3

    move/from16 v1, p5

    move/from16 v3, p7

    move-wide/from16 v5, p10

    invoke-static/range {v0 .. v7}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    .line 1594
    invoke-static/range {p0 .. p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    .line 1596
    .end local v2    # "startDay":I
    .end local v4    # "currentMonthDays":I
    :goto_b9
    return-void
.end method

.method private static greylist-max-o writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V
    .registers 13
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

    .line 1604
    move v0, p2

    .line 1605
    .local v0, "startDayNum":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 1606
    .local v2, "isFeb":Z
    :goto_7
    if-gez p2, :cond_12

    if-nez v2, :cond_12

    .line 1608
    sget-object v3, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v3, v3, p1

    add-int/2addr v3, p2

    add-int/lit8 v0, v3, 0x1

    .line 1610
    :cond_12
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    .line 1611
    const-string v1, "BYDAY"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1612
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1613
    sget-object v3, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1614
    const-string v3, ";"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1615
    const-string v3, "BYMONTHDAY"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1618
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1619
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_3d
    if-ge v1, p4, :cond_50

    .line 1620
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1621
    add-int v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1619
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 1624
    .end local v1    # "i":I
    :cond_50
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, p5, v3

    if-eqz v1, :cond_62

    .line 1625
    int-to-long v3, p7

    add-long/2addr v3, p5

    invoke-static {v3, v4}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1627
    :cond_62
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1628
    return-void
.end method

.method private static greylist-max-o writeZonePropsByDOW_LEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .registers 37
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

    .line 1636
    move/from16 v12, p6

    rem-int/lit8 v0, v12, 0x7

    if-nez v0, :cond_1f

    .line 1638
    div-int/lit8 v6, v12, 0x7

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_7e

    .line 1640
    :cond_1f
    move/from16 v5, p5

    const/4 v0, 0x1

    if-eq v5, v0, :cond_4b

    sget-object v1, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v1, v5

    sub-int/2addr v1, v12

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_4b

    .line 1642
    sget-object v1, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v1, v5

    sub-int/2addr v1, v12

    div-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    mul-int/lit8 v6, v1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_7e

    .line 1644
    :cond_4b
    if-ne v5, v0, :cond_69

    const/16 v0, 0x1d

    if-ne v12, v0, :cond_69

    .line 1646
    const/16 v18, 0x1

    const/16 v19, -0x1

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v20, p7

    move-wide/from16 v21, p8

    move-wide/from16 v23, p10

    invoke-static/range {v13 .. v24}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_7e

    .line 1650
    :cond_69
    add-int/lit8 v6, v12, -0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    .line 1653
    :goto_7e
    return-void
.end method

.method private static greylist-max-o writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V
    .registers 10
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

    .line 1496
    invoke-static/range {p0 .. p6}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    .line 1497
    if-eqz p7, :cond_1d

    .line 1498
    const-string v0, "RDATE"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1499
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1500
    int-to-long v0, p3

    add-long/2addr v0, p5

    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1501
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1503
    :cond_1d
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    .line 1504
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 355
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 356
    return-object p0

    .line 358
    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api cloneAsThawed()Landroid/icu/util/TimeZone;
    .registers 3

    .line 2094
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/util/VTimeZone;

    .line 2095
    .local v0, "vtz":Landroid/icu/util/VTimeZone;
    iget-object v1, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v1}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v1

    check-cast v1, Landroid/icu/util/BasicTimeZone;

    iput-object v1, v0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    .line 2096
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    .line 2097
    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 39
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api freeze()Landroid/icu/util/TimeZone;
    .registers 2

    .line 2085
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    .line 2086
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 39
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getLastModified()Ljava/util/Date;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    return-object v0
.end method

.method public greylist-max-o getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .registers 5
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    .line 312
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getOffset(IIIIII)I
    .registers 14
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "milliseconds"    # I

    .line 83
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "era":I
    .end local p2    # "year":I
    .end local p3    # "month":I
    .end local p4    # "day":I
    .end local p5    # "dayOfWeek":I
    .end local p6    # "milliseconds":I
    .local v1, "era":I
    .local v2, "year":I
    .local v3, "month":I
    .local v4, "day":I
    .local v5, "dayOfWeek":I
    .local v6, "milliseconds":I
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/BasicTimeZone;->getOffset(IIIIII)I

    move-result p1

    return p1
.end method

.method public whitelist test-api getOffset(JZ[I)V
    .registers 6
    .param p1, "date"    # J
    .param p3, "local"    # Z
    .param p4, "offsets"    # [I

    .line 91
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    .line 92
    return-void
.end method

.method public blacklist getOffsetFromLocal(JLandroid/icu/util/BasicTimeZone$LocalOption;Landroid/icu/util/BasicTimeZone$LocalOption;[I)V
    .registers 12
    .param p1, "date"    # J
    .param p3, "nonExistingTimeOpt"    # Landroid/icu/util/BasicTimeZone$LocalOption;
    .param p4, "duplicatedTimeOpt"    # Landroid/icu/util/BasicTimeZone$LocalOption;
    .param p5, "offsets"    # [I

    .line 100
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "date":J
    .end local p3    # "nonExistingTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .end local p4    # "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .end local p5    # "offsets":[I
    .local v1, "date":J
    .local v3, "nonExistingTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .local v4, "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .local v5, "offsets":[I
    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JLandroid/icu/util/BasicTimeZone$LocalOption;Landroid/icu/util/BasicTimeZone$LocalOption;[I)V

    .line 101
    return-void
.end method

.method public greylist-max-o getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .registers 5
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    .line 320
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRawOffset()I
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getTZURL()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .registers 2

    .line 339
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;
    .registers 4
    .param p1, "start"    # J

    .line 347
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJ)Z
    .registers 13
    .param p1, "other"    # Landroid/icu/util/TimeZone;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 328
    if-ne p0, p1, :cond_4

    .line 329
    const/4 v0, 0x1

    return v0

    .line 331
    :cond_4
    iget-object v1, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "other":Landroid/icu/util/TimeZone;
    .end local p2    # "start":J
    .end local p4    # "end":J
    .local v2, "other":Landroid/icu/util/TimeZone;
    .local v3, "start":J
    .local v5, "end":J
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/BasicTimeZone;->hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJ)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api hasSameRules(Landroid/icu/util/TimeZone;)Z
    .registers 4
    .param p1, "other"    # Landroid/icu/util/TimeZone;

    .line 151
    if-ne p0, p1, :cond_4

    .line 152
    const/4 v0, 0x1

    return v0

    .line 154
    :cond_4
    instance-of v0, p1, Landroid/icu/util/VTimeZone;

    if-eqz v0, :cond_14

    .line 155
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    move-object v1, p1

    check-cast v1, Landroid/icu/util/VTimeZone;

    iget-object v1, v1, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, v1}, Landroid/icu/util/BasicTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result v0

    return v0

    .line 157
    :cond_14
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1}, Landroid/icu/util/BasicTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api inDaylightTime(Ljava/util/Date;)Z
    .registers 3
    .param p1, "date"    # Ljava/util/Date;

    .line 116
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1}, Landroid/icu/util/BasicTimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 2077
    iget-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    return v0
.end method

.method public whitelist test-api observesDaylightTime()Z
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->observesDaylightTime()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o setLastModified(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 200
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_9

    .line 203
    iput-object p1, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    .line 204
    return-void

    .line 201
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen VTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setRawOffset(I)V
    .registers 4
    .param p1, "offsetMillis"    # I

    .line 124
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 127
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1}, Landroid/icu/util/BasicTimeZone;->setRawOffset(I)V

    .line 128
    return-void

    .line 125
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen VTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setTZURL(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_9

    .line 180
    iput-object p1, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    .line 181
    return-void

    .line 178
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen VTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api useDaylightTime()Z
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o write(Ljava/io/Writer;)V
    .registers 8
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 214
    .local v0, "bw":Ljava/io/BufferedWriter;
    iget-object v1, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    if-eqz v1, :cond_6c

    .line 215
    iget-object v1, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    .local v2, "line":Ljava/lang/String;
    const-string v3, "TZURL:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ":"

    const-string v5, "\r\n"

    if-eqz v3, :cond_3c

    .line 217
    iget-object v3, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    if-eqz v3, :cond_67

    .line 218
    const-string v3, "TZURL"

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_67

    .line 223
    :cond_3c
    const-string v3, "LAST-MODIFIED:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 224
    iget-object v3, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    if-eqz v3, :cond_67

    .line 225
    const-string v3, "LAST-MODIFIED"

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/icu/util/VTimeZone;->getUTCDateTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_67

    .line 231
    :cond_61
    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 234
    .end local v2    # "line":Ljava/lang/String;
    :cond_67
    :goto_67
    goto :goto_f

    .line 235
    :cond_68
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    goto :goto_a7

    .line 237
    :cond_6c
    const/4 v1, 0x0

    .line 238
    .local v1, "customProperties":[Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v2, :cond_a2

    sget-object v2, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v2, :cond_a2

    .line 239
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-TZINFO:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 242
    :cond_a2
    iget-object v2, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-direct {p0, p1, v2, v1}, Landroid/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    .line 244
    .end local v1    # "customProperties":[Ljava/lang/String;
    :goto_a7
    return-void
.end method

.method public greylist-max-o write(Ljava/io/Writer;J)V
    .registers 10
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "start"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p2, p3}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    .line 260
    .local v0, "rules":[Landroid/icu/util/TimeZoneRule;
    new-instance v1, Landroid/icu/util/RuleBasedTimeZone;

    iget-object v2, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v0, v3

    check-cast v4, Landroid/icu/util/InitialTimeZoneRule;

    invoke-direct {v1, v2, v4}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    .line 261
    .local v1, "rbtz":Landroid/icu/util/RuleBasedTimeZone;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_17
    array-length v4, v0

    if-ge v2, v4, :cond_22

    .line 262
    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 264
    .end local v2    # "i":I
    :cond_22
    const/4 v2, 0x0

    .line 265
    .local v2, "customProperties":[Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v4, :cond_61

    sget-object v4, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v4, :cond_61

    .line 266
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X-TZINFO:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Partial@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 270
    :cond_61
    invoke-direct {p0, p1, v1, v2}, Landroid/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public greylist-max-o writeSimple(Ljava/io/Writer;J)V
    .registers 10
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p2, p3}, Landroid/icu/util/BasicTimeZone;->getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    .line 292
    .local v0, "rules":[Landroid/icu/util/TimeZoneRule;
    new-instance v1, Landroid/icu/util/RuleBasedTimeZone;

    iget-object v2, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v0, v3

    check-cast v4, Landroid/icu/util/InitialTimeZoneRule;

    invoke-direct {v1, v2, v4}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    .line 293
    .local v1, "rbtz":Landroid/icu/util/RuleBasedTimeZone;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_17
    array-length v4, v0

    if-ge v2, v4, :cond_22

    .line 294
    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 296
    .end local v2    # "i":I
    :cond_22
    const/4 v2, 0x0

    .line 297
    .local v2, "customProperties":[Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v4, :cond_61

    sget-object v4, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v4, :cond_61

    .line 298
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X-TZINFO:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Simple@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 302
    :cond_61
    invoke-direct {p0, p1, v1, v2}, Landroid/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    .line 303
    return-void
.end method
