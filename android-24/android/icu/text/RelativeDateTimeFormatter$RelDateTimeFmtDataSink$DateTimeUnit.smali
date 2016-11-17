.class final enum Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DateTimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;


# instance fields
.field absUnit:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;


# direct methods
.method static synthetic -wrap0(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;
    .locals 1
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v5, 0x0

    #@5
    .line 634
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@7
    const-string/jumbo v1, "SECOND"

    #@a
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@c
    invoke-direct {v0, v1, v6, v2, v5}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@f
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@11
    .line 635
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@13
    const-string/jumbo v1, "MINUTE"

    #@16
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@18
    invoke-direct {v0, v1, v7, v2, v5}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@1b
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@1d
    .line 636
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@1f
    const-string/jumbo v1, "HOUR"

    #@22
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@24
    invoke-direct {v0, v1, v8, v2, v5}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@27
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@29
    .line 637
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@2b
    const-string/jumbo v1, "DAY"

    #@2e
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@30
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@32
    invoke-direct {v0, v1, v9, v2, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@35
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@37
    .line 638
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@39
    const-string/jumbo v1, "WEEK"

    #@3c
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@3e
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@40
    const/4 v4, 0x4

    #@41
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@44
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@46
    .line 639
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@48
    const-string/jumbo v1, "MONTH"

    #@4b
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@4d
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@4f
    const/4 v4, 0x5

    #@50
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@53
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@55
    .line 640
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@57
    const-string/jumbo v1, "QUARTER"

    #@5a
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@5c
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@5e
    const/4 v4, 0x6

    #@5f
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@62
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@64
    .line 641
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@66
    const-string/jumbo v1, "YEAR"

    #@69
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@6b
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@6d
    const/4 v4, 0x7

    #@6e
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@71
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@73
    .line 642
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@75
    const-string/jumbo v1, "SUNDAY"

    #@78
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@7a
    const/16 v3, 0x8

    #@7c
    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@7f
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@81
    .line 643
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@83
    const-string/jumbo v1, "MONDAY"

    #@86
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@88
    const/16 v3, 0x9

    #@8a
    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@8d
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@8f
    .line 644
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@91
    const-string/jumbo v1, "TUESDAY"

    #@94
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@96
    const/16 v3, 0xa

    #@98
    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@9b
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@9d
    .line 645
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@9f
    const-string/jumbo v1, "WEDNESDAY"

    #@a2
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@a4
    const/16 v3, 0xb

    #@a6
    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@a9
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@ab
    .line 646
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@ad
    const-string/jumbo v1, "THURSDAY"

    #@b0
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@b2
    const/16 v3, 0xc

    #@b4
    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@b7
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@b9
    .line 647
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@bb
    const-string/jumbo v1, "FRIDAY"

    #@be
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@c0
    const/16 v3, 0xd

    #@c2
    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@c5
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@c7
    .line 648
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@c9
    const-string/jumbo v1, "SATURDAY"

    #@cc
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@ce
    const/16 v3, 0xe

    #@d0
    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    #@d3
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@d5
    .line 633
    const/16 v0, 0xf

    #@d7
    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@d9
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@db
    aput-object v1, v0, v6

    #@dd
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@df
    aput-object v1, v0, v7

    #@e1
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@e3
    aput-object v1, v0, v8

    #@e5
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@e7
    aput-object v1, v0, v9

    #@e9
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@eb
    const/4 v2, 0x4

    #@ec
    aput-object v1, v0, v2

    #@ee
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@f0
    const/4 v2, 0x5

    #@f1
    aput-object v1, v0, v2

    #@f3
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@f5
    const/4 v2, 0x6

    #@f6
    aput-object v1, v0, v2

    #@f8
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@fa
    const/4 v2, 0x7

    #@fb
    aput-object v1, v0, v2

    #@fd
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@ff
    const/16 v2, 0x8

    #@101
    aput-object v1, v0, v2

    #@103
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@105
    const/16 v2, 0x9

    #@107
    aput-object v1, v0, v2

    #@109
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@10b
    const/16 v2, 0xa

    #@10d
    aput-object v1, v0, v2

    #@10f
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@111
    const/16 v2, 0xb

    #@113
    aput-object v1, v0, v2

    #@115
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@117
    const/16 v2, 0xc

    #@119
    aput-object v1, v0, v2

    #@11b
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@11d
    const/16 v2, 0xd

    #@11f
    aput-object v1, v0, v2

    #@121
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@123
    const/16 v2, 0xe

    #@125
    aput-object v1, v0, v2

    #@127
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@129
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V
    .locals 0
    .param p3, "relUnit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .param p4, "absUnit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@0
    .prologue
    .line 653
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 654
    iput-object p3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@5
    .line 655
    iput-object p4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->absUnit:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@7
    .line 653
    return-void
.end method

.method private static final orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;
    .locals 1
    .param p0, "keyword"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 660
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 709
    :cond_0
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 662
    :pswitch_0
    const-string/jumbo v0, "day"

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 663
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@14
    return-object v0

    #@15
    .line 664
    :cond_1
    const-string/jumbo v0, "sun"

    #@18
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 665
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@20
    return-object v0

    #@21
    .line 666
    :cond_2
    const-string/jumbo v0, "mon"

    #@24
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 667
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@2c
    return-object v0

    #@2d
    .line 668
    :cond_3
    const-string/jumbo v0, "tue"

    #@30
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_4

    #@36
    .line 669
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@38
    return-object v0

    #@39
    .line 670
    :cond_4
    const-string/jumbo v0, "wed"

    #@3c
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_5

    #@42
    .line 671
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@44
    return-object v0

    #@45
    .line 672
    :cond_5
    const-string/jumbo v0, "thu"

    #@48
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_6

    #@4e
    .line 673
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@50
    return-object v0

    #@51
    .line 674
    :cond_6
    const-string/jumbo v0, "fri"

    #@54
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_7

    #@5a
    .line 675
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@5c
    return-object v0

    #@5d
    .line 676
    :cond_7
    const-string/jumbo v0, "sat"

    #@60
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_0

    #@66
    .line 677
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@68
    return-object v0

    #@69
    .line 681
    :pswitch_1
    const-string/jumbo v0, "hour"

    #@6c
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_8

    #@72
    .line 682
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@74
    return-object v0

    #@75
    .line 683
    :cond_8
    const-string/jumbo v0, "week"

    #@78
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@7b
    move-result v0

    #@7c
    if-eqz v0, :cond_9

    #@7e
    .line 684
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@80
    return-object v0

    #@81
    .line 685
    :cond_9
    const-string/jumbo v0, "year"

    #@84
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@87
    move-result v0

    #@88
    if-eqz v0, :cond_0

    #@8a
    .line 686
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@8c
    return-object v0

    #@8d
    .line 690
    :pswitch_2
    const-string/jumbo v0, "month"

    #@90
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@93
    move-result v0

    #@94
    if-eqz v0, :cond_0

    #@96
    .line 691
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@98
    return-object v0

    #@99
    .line 695
    :pswitch_3
    const-string/jumbo v0, "minute"

    #@9c
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@9f
    move-result v0

    #@a0
    if-eqz v0, :cond_a

    #@a2
    .line 696
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@a4
    return-object v0

    #@a5
    .line 697
    :cond_a
    const-string/jumbo v0, "second"

    #@a8
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@ab
    move-result v0

    #@ac
    if-eqz v0, :cond_0

    #@ae
    .line 698
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@b0
    return-object v0

    #@b1
    .line 702
    :pswitch_4
    const-string/jumbo v0, "quarter"

    #@b4
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@b7
    move-result v0

    #@b8
    if-eqz v0, :cond_0

    #@ba
    .line 703
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@bc
    return-object v0

    #@bd
    .line 660
    nop

    #@be
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 633
    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;
    .locals 1

    #@0
    .prologue
    .line 633
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@2
    return-object v0
.end method
