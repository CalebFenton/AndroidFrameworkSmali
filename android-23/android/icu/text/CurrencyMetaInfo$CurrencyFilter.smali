.class public final Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyFilter"
.end annotation


# static fields
.field private static final ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;


# instance fields
.field public final currency:Ljava/lang/String;

.field public final from:J

.field public final region:Ljava/lang/String;

.field public final tenderOnly:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final to:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 120
    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@3
    .line 121
    const-wide/high16 v4, -0x8000000000000000L

    #@5
    const-wide v6, 0x7fffffffffffffffL

    #@a
    const/4 v8, 0x0

    #@b
    move-object v3, v2

    #@c
    .line 120
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    #@f
    sput-object v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@11
    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 1
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "from"    # J
    .param p5, "to"    # J
    .param p7, "tenderOnly"    # Z

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 112
    iput-object p1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@5
    .line 113
    iput-object p2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@7
    .line 114
    iput-wide p3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    #@9
    .line 115
    iput-wide p5, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    #@b
    .line 116
    iput-boolean p7, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    #@d
    .line 111
    return-void
.end method

.method public static all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    #@0
    .prologue
    .line 129
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    return-object v0
.end method

.method private static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/String;
    .param p1, "rhs"    # Ljava/lang/String;

    #@0
    .prologue
    .line 360
    if-eq p0, p1, :cond_0

    #@2
    if-eqz p0, :cond_1

    #@4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static now()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 2

    #@0
    .prologue
    .line 139
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    new-instance v1, Ljava/util/Date;

    #@4
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    #@7
    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static onCurrency(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1
    .param p0, "currency"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withCurrency(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static onDate(J)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 2
    .param p0, "date"    # J

    #@0
    .prologue
    .line 195
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDate(J)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static onDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 172
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static onDateRange(JJ)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 2
    .param p0, "from"    # J
    .param p2, "to"    # J

    #@0
    .prologue
    .line 209
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDateRange(JJ)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static onDateRange(Ljava/util/Date;Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1
    .param p0, "from"    # Ljava/util/Date;
    .param p1, "to"    # Ljava/util/Date;

    #@0
    .prologue
    .line 186
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDateRange(Ljava/util/Date;Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static onRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1
    .param p0, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 150
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static onTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    #@0
    .prologue
    .line 218
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public equals(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Z
    .locals 6
    .param p1, "rhs"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 320
    if-eq p0, p1, :cond_0

    #@4
    if-eqz p1, :cond_2

    #@6
    .line 321
    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@8
    iget-object v3, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@a
    invoke-static {v2, v3}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v2

    #@e
    .line 320
    if-eqz v2, :cond_2

    #@10
    .line 322
    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@12
    iget-object v3, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@14
    invoke-static {v2, v3}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    #@17
    move-result v2

    #@18
    .line 320
    if-eqz v2, :cond_2

    #@1a
    .line 323
    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    #@1c
    iget-wide v4, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    #@1e
    cmp-long v2, v2, v4

    #@20
    if-nez v2, :cond_2

    #@22
    .line 324
    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    #@24
    iget-wide v4, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    #@26
    cmp-long v2, v2, v4

    #@28
    if-nez v2, :cond_2

    #@2a
    .line 325
    iget-boolean v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    #@2c
    iget-boolean v3, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    #@2e
    if-ne v2, v3, :cond_1

    #@30
    .line 320
    :cond_0
    :goto_0
    return v0

    #@31
    :cond_1
    move v0, v1

    #@32
    .line 325
    goto :goto_0

    #@33
    :cond_2
    move v0, v1

    #@34
    .line 320
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 309
    instance-of v0, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 310
    check-cast p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@6
    .end local p1    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Z

    #@9
    move-result v0

    #@a
    .line 309
    :goto_0
    return v0

    #@b
    .restart local p1    # "rhs":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    .line 334
    const/4 v0, 0x0

    #@3
    .line 335
    .local v0, "hc":I
    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 336
    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@c
    move-result v0

    #@d
    .line 338
    :cond_0
    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 339
    mul-int/lit8 v1, v0, 0x1f

    #@13
    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@18
    move-result v2

    #@19
    add-int v0, v1, v2

    #@1b
    .line 341
    :cond_1
    mul-int/lit8 v1, v0, 0x1f

    #@1d
    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    #@1f
    long-to-int v2, v2

    #@20
    add-int v0, v1, v2

    #@22
    .line 342
    mul-int/lit8 v1, v0, 0x1f

    #@24
    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    #@26
    ushr-long/2addr v2, v4

    #@27
    long-to-int v2, v2

    #@28
    add-int v0, v1, v2

    #@2a
    .line 343
    mul-int/lit8 v1, v0, 0x1f

    #@2c
    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    #@2e
    long-to-int v2, v2

    #@2f
    add-int v0, v1, v2

    #@31
    .line 344
    mul-int/lit8 v1, v0, 0x1f

    #@33
    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    #@35
    ushr-long/2addr v2, v4

    #@36
    long-to-int v2, v2

    #@37
    add-int v0, v1, v2

    #@39
    .line 345
    mul-int/lit8 v2, v0, 0x1f

    #@3b
    iget-boolean v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    #@3d
    if-eqz v1, :cond_2

    #@3f
    const/4 v1, 0x1

    #@40
    :goto_0
    add-int v0, v2, v1

    #@42
    .line 346
    return v0

    #@43
    .line 345
    :cond_2
    const/4 v1, 0x0

    #@44
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 356
    invoke-static {p0}, Landroid/icu/text/CurrencyMetaInfo;->-wrap0(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public withCurrency(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9
    .param p1, "currency"    # Ljava/lang/String;

    #@0
    .prologue
    .line 242
    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@4
    iget-wide v4, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    #@6
    iget-wide v6, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    #@8
    iget-boolean v8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    #@a
    move-object v3, p1

    #@b
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    #@e
    return-object v1
.end method

.method public withDate(J)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9
    .param p1, "date"    # J

    #@0
    .prologue
    .line 277
    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@4
    iget-object v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@6
    iget-boolean v8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    #@8
    move-wide v4, p1

    #@9
    move-wide v6, p1

    #@a
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    #@d
    return-object v1
.end method

.method public withDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 253
    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@4
    iget-object v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@6
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@9
    move-result-wide v4

    #@a
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@d
    move-result-wide v6

    #@e
    iget-boolean v8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    #@10
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    #@13
    return-object v1
.end method

.method public withDateRange(JJ)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9
    .param p1, "from"    # J
    .param p3, "to"    # J

    #@0
    .prologue
    .line 291
    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@4
    iget-object v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@6
    iget-boolean v8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    #@8
    move-wide v4, p1

    #@9
    move-wide v6, p3

    #@a
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    #@d
    return-object v1
.end method

.method public withDateRange(Ljava/util/Date;Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9
    .param p1, "from"    # Ljava/util/Date;
    .param p2, "to"    # Ljava/util/Date;

    #@0
    .prologue
    .line 265
    if-nez p1, :cond_0

    #@2
    const-wide/high16 v4, -0x8000000000000000L

    #@4
    .line 266
    .local v4, "fromLong":J
    :goto_0
    if-nez p2, :cond_1

    #@6
    const-wide v6, 0x7fffffffffffffffL

    #@b
    .line 267
    .local v6, "toLong":J
    :goto_1
    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@d
    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@f
    iget-object v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@11
    iget-boolean v8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    #@13
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    #@16
    return-object v1

    #@17
    .line 265
    .end local v4    # "fromLong":J
    .end local v6    # "toLong":J
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@1a
    move-result-wide v4

    #@1b
    .restart local v4    # "fromLong":J
    goto :goto_0

    #@1c
    .line 266
    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@1f
    move-result-wide v6

    #@20
    .restart local v6    # "toLong":J
    goto :goto_1
.end method

.method public withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9
    .param p1, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 230
    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    iget-object v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@4
    iget-wide v4, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    #@6
    iget-wide v6, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    #@8
    iget-boolean v8, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    #@a
    move-object v2, p1

    #@b
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    #@e
    return-object v1
.end method

.method public withTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    #@0
    .prologue
    .line 300
    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@2
    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@4
    iget-object v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@6
    iget-wide v4, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    #@8
    iget-wide v6, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    #@a
    const/4 v8, 0x1

    #@b
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    #@e
    return-object v1
.end method
