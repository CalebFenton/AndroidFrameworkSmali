.class public Landroid/icu/util/BuddhistCalendar;
.super Landroid/icu/util/GregorianCalendar;
.source "BuddhistCalendar.java"


# static fields
.field public static final BE:I = 0x0

.field private static final BUDDHIST_ERA_START:I = -0x21f

.field private static final GREGORIAN_EPOCH:I = 0x7b2

.field private static final serialVersionUID:J = 0x23d8ad9d780a23d7L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    #@3
    .line 63
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    #@0
    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    #@3
    .line 150
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    #@0
    .prologue
    .line 175
    invoke-direct/range {p0 .. p6}, Landroid/icu/util/GregorianCalendar;-><init>(IIIIII)V

    #@3
    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 0
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    #@3
    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@3
    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@3
    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/ULocale;)V

    #@3
    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 134
    invoke-direct {p0}, Landroid/icu/util/BuddhistCalendar;-><init>()V

    #@3
    .line 135
    invoke-virtual {p0, p1}, Landroid/icu/util/BuddhistCalendar;->setTime(Ljava/util/Date;)V

    #@6
    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    #@3
    .line 85
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 243
    const-string/jumbo v0, "buddhist"

    #@3
    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 3
    .param p1, "julianDay"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 219
    invoke-super {p0, p1}, Landroid/icu/util/GregorianCalendar;->handleComputeFields(I)V

    #@4
    .line 220
    const/16 v1, 0x13

    #@6
    invoke-virtual {p0, v1}, Landroid/icu/util/BuddhistCalendar;->internalGet(I)I

    #@9
    move-result v1

    #@a
    add-int/lit16 v0, v1, 0x21f

    #@c
    .line 221
    .local v0, "y":I
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/BuddhistCalendar;->internalSet(II)V

    #@f
    .line 222
    const/4 v1, 0x1

    #@10
    invoke-virtual {p0, v1, v0}, Landroid/icu/util/BuddhistCalendar;->internalSet(II)V

    #@13
    .line 218
    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 1
    .param p1, "eyear"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z

    #@0
    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3}, Landroid/icu/util/GregorianCalendar;->handleComputeMonthStart(IIZ)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected handleGetExtendedYear()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/16 v2, 0x13

    #@3
    .line 198
    invoke-virtual {p0, v2, v3}, Landroid/icu/util/BuddhistCalendar;->newerField(II)I

    #@6
    move-result v1

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 199
    const/16 v1, 0x7b2

    #@b
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/BuddhistCalendar;->internalGet(II)I

    #@e
    move-result v0

    #@f
    .line 204
    .local v0, "year":I
    :goto_0
    return v0

    #@10
    .line 201
    .end local v0    # "year":I
    :cond_0
    const/16 v1, 0x9d1

    #@12
    invoke-virtual {p0, v3, v1}, Landroid/icu/util/BuddhistCalendar;->internalGet(II)I

    #@15
    move-result v1

    #@16
    add-int/lit16 v0, v1, -0x21f

    #@18
    .restart local v0    # "year":I
    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 232
    if-nez p1, :cond_0

    #@3
    .line 233
    return v0

    #@4
    .line 235
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;->handleGetLimit(II)I

    #@7
    move-result v0

    #@8
    return v0
.end method
