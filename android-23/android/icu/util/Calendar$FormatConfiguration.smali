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
.field private cal:Landroid/icu/util/Calendar;

.field private formatData:Landroid/icu/text/DateFormatSymbols;

.field private loc:Landroid/icu/util/ULocale;

.field private override:Ljava/lang/String;

.field private pattern:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/Calendar;)Landroid/icu/util/Calendar;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->cal:Landroid/icu/util/Calendar;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/text/DateFormatSymbols;)Landroid/icu/text/DateFormatSymbols;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->loc:Landroid/icu/util/ULocale;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->override:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->pattern:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/Calendar$FormatConfiguration;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/util/Calendar$FormatConfiguration;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getCalendar()Landroid/icu/util/Calendar;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3738
    iget-object v0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->cal:Landroid/icu/util/Calendar;

    #@2
    return-object v0
.end method

.method public getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3760
    iget-object v0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->formatData:Landroid/icu/text/DateFormatSymbols;

    #@2
    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3749
    iget-object v0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->loc:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method public getOverrideString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3727
    iget-object v0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->override:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3718
    iget-object v0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method
