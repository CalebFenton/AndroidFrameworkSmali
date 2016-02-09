.class public Landroid/webkit/DateSorter;
.super Ljava/lang/Object;
.source "DateSorter.java"


# static fields
.field public static final DAY_COUNT:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final NUM_DAYS_AGO:I = 0x7


# instance fields
.field private mBins:[J

.field private mLabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v13, 0x7

    #@1
    const/4 v7, 0x6

    #@2
    const/4 v12, 0x2

    #@3
    const/4 v11, 0x1

    #@4
    const/4 v10, 0x0

    #@5
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 43
    const/4 v6, 0x4

    #@9
    new-array v6, v6, [J

    #@b
    iput-object v6, p0, Landroid/webkit/DateSorter;->mBins:[J

    #@d
    .line 44
    const/4 v6, 0x5

    #@e
    new-array v6, v6, [Ljava/lang/String;

    #@10
    iput-object v6, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    #@12
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@15
    move-result-object v5

    #@16
    .line 54
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@19
    move-result-object v0

    #@1a
    .line 55
    .local v0, "c":Ljava/util/Calendar;
    invoke-direct {p0, v0}, Landroid/webkit/DateSorter;->beginningOfDay(Ljava/util/Calendar;)V

    #@1d
    .line 58
    iget-object v6, p0, Landroid/webkit/DateSorter;->mBins:[J

    #@1f
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@22
    move-result-wide v8

    #@23
    aput-wide v8, v6, v10

    #@25
    .line 59
    const/4 v6, -0x1

    #@26
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->add(II)V

    #@29
    .line 60
    iget-object v6, p0, Landroid/webkit/DateSorter;->mBins:[J

    #@2b
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@2e
    move-result-wide v8

    #@2f
    aput-wide v8, v6, v11

    #@31
    .line 61
    const/4 v6, -0x6

    #@32
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->add(II)V

    #@35
    .line 62
    iget-object v6, p0, Landroid/webkit/DateSorter;->mBins:[J

    #@37
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@3a
    move-result-wide v8

    #@3b
    aput-wide v8, v6, v12

    #@3d
    .line 63
    invoke-virtual {v0, v7, v13}, Ljava/util/Calendar;->add(II)V

    #@40
    .line 64
    const/4 v6, -0x1

    #@41
    invoke-virtual {v0, v12, v6}, Ljava/util/Calendar;->add(II)V

    #@44
    .line 65
    iget-object v6, p0, Landroid/webkit/DateSorter;->mBins:[J

    #@46
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@49
    move-result-wide v8

    #@4a
    const/4 v7, 0x3

    #@4b
    aput-wide v8, v6, v7

    #@4d
    .line 68
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@50
    move-result-object v6

    #@51
    iget-object v2, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@53
    .line 69
    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_0

    #@55
    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@58
    move-result-object v2

    #@59
    .line 72
    :cond_0
    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@5c
    move-result-object v3

    #@5d
    .line 73
    .local v3, "localeData":Llibcore/icu/LocaleData;
    iget-object v6, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    #@5f
    iget-object v7, v3, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    #@61
    aput-object v7, v6, v10

    #@63
    .line 74
    iget-object v6, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    #@65
    iget-object v7, v3, Llibcore/icu/LocaleData;->yesterday:Ljava/lang/String;

    #@67
    aput-object v7, v6, v11

    #@69
    .line 76
    const v4, 0x1140001

    #@6c
    .line 77
    .local v4, "resId":I
    invoke-virtual {v5, v4, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    .line 78
    .local v1, "format":Ljava/lang/String;
    iget-object v6, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    #@72
    new-array v7, v11, [Ljava/lang/Object;

    #@74
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v8

    #@78
    aput-object v8, v7, v10

    #@7a
    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7d
    move-result-object v7

    #@7e
    aput-object v7, v6, v12

    #@80
    .line 80
    iget-object v6, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    #@82
    const v7, 0x1040320

    #@85
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@88
    move-result-object v7

    #@89
    const/4 v8, 0x3

    #@8a
    aput-object v7, v6, v8

    #@8c
    .line 81
    iget-object v6, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    #@8e
    const v7, 0x1040321

    #@91
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@94
    move-result-object v7

    #@95
    const/4 v8, 0x4

    #@96
    aput-object v7, v6, v8

    #@98
    .line 51
    return-void
.end method

.method private beginningOfDay(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "c"    # Ljava/util/Calendar;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 126
    const/16 v0, 0xb

    #@3
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@6
    .line 127
    const/16 v0, 0xc

    #@8
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@b
    .line 128
    const/16 v0, 0xd

    #@d
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@10
    .line 129
    const/16 v0, 0xe

    #@12
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@15
    .line 125
    return-void
.end method


# virtual methods
.method public getBoundary(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x4

    #@1
    .line 115
    if-ltz p1, :cond_0

    #@3
    if-le p1, v0, :cond_1

    #@5
    :cond_0
    const/4 p1, 0x0

    #@6
    .line 118
    :cond_1
    if-ne p1, v0, :cond_2

    #@8
    const-wide/high16 v0, -0x8000000000000000L

    #@a
    return-wide v0

    #@b
    .line 119
    :cond_2
    iget-object v0, p0, Landroid/webkit/DateSorter;->mBins:[J

    #@d
    aget-wide v0, v0, p1

    #@f
    return-wide v0
.end method

.method public getIndex(J)I
    .locals 5
    .param p1, "time"    # J

    #@0
    .prologue
    .line 91
    const/4 v1, 0x4

    #@1
    .line 92
    .local v1, "lastDay":I
    const/4 v0, 0x0

    #@2
    .line 91
    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    #@3
    .line 92
    if-ge v0, v2, :cond_1

    #@5
    .line 93
    iget-object v2, p0, Landroid/webkit/DateSorter;->mBins:[J

    #@7
    aget-wide v2, v2, v0

    #@9
    cmp-long v2, p1, v2

    #@b
    if-lez v2, :cond_0

    #@d
    return v0

    #@e
    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 95
    :cond_1
    return v1
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 103
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x5

    #@3
    if-lt p1, v0, :cond_1

    #@5
    :cond_0
    const-string/jumbo v0, ""

    #@8
    return-object v0

    #@9
    .line 104
    :cond_1
    iget-object v0, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    #@b
    aget-object v0, v0, p1

    #@d
    return-object v0
.end method
