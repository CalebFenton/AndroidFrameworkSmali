.class public Landroid/icu/util/Calendar$FormatConfiguration;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatConfiguration"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o cal:Landroid/icu/util/Calendar;

.field private greylist-max-o formatData:Landroid/icu/text/DateFormatSymbols;

.field private greylist-max-o loc:Landroid/icu/util/ULocale;

.field private greylist-max-o override:Ljava/lang/String;

.field private greylist-max-o pattern:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputcal(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/Calendar;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->cal:Landroid/icu/util/Calendar;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputformatData(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/text/DateFormatSymbols;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->formatData:Landroid/icu/text/DateFormatSymbols;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputloc(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/ULocale;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->loc:Landroid/icu/util/ULocale;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputoverride(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->override:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputpattern(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->pattern:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 3944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3945
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/Calendar-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/Calendar$FormatConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o getCalendar()Landroid/icu/util/Calendar;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3978
    iget-object v0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->cal:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public greylist-max-o getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4002
    iget-object v0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->formatData:Landroid/icu/text/DateFormatSymbols;

    return-object v0
.end method

.method public greylist-max-o getLocale()Landroid/icu/util/ULocale;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3990
    iget-object v0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->loc:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public greylist-max-o getOverrideString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3966
    iget-object v0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->override:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPatternString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3956
    iget-object v0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->pattern:Ljava/lang/String;

    return-object v0
.end method
