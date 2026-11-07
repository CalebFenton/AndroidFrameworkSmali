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
.field private static final greylist-max-o ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;


# instance fields
.field public final greylist-max-o currency:Ljava/lang/String;

.field public final greylist-max-o from:J

.field public final greylist-max-o region:Ljava/lang/String;

.field public final greylist-max-o tenderOnly:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final greylist-max-o to:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 118
    new-instance v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    sput-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .registers 8
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "from"    # J
    .param p5, "to"    # J
    .param p7, "tenderOnly"    # Z

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    .line 112
    iput-wide p3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    .line 113
    iput-wide p5, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    .line 114
    iput-boolean p7, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    .line 116
    return-void
.end method

.method public static greylist-max-o all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 1

    .line 126
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    return-object v0
.end method

.method private static greylist-max-o equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "lhs"    # Ljava/lang/String;
    .param p1, "rhs"    # Ljava/lang/String;

    .line 338
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p0, :cond_f

    .line 339
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 338
    :goto_12
    return v0
.end method

.method public static greylist-max-o now()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 2

    .line 135
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o onCurrency(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 2
    .param p0, "currency"    # Ljava/lang/String;

    .line 155
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withCurrency(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o onDate(J)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 3
    .param p0, "date"    # J

    .line 186
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDate(J)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o onDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 2
    .param p0, "date"    # Ljava/util/Date;

    .line 165
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o onDateRange(JJ)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 5
    .param p0, "from"    # J
    .param p2, "to"    # J

    .line 199
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDateRange(JJ)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o onDateRange(Ljava/util/Date;Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 3
    .param p0, "from"    # Ljava/util/Date;
    .param p1, "to"    # Ljava/util/Date;

    .line 178
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDateRange(Ljava/util/Date;Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o onRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 2
    .param p0, "region"    # Ljava/lang/String;

    .line 145
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o onTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 1

    .line 207
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o equals(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Z
    .registers 6
    .param p1, "rhs"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    .line 300
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    if-eqz p1, :cond_33

    iget-object v0, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    .line 301
    invoke-static {v0, v1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    .line 302
    invoke-static {v0, v1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-wide v0, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v2, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_33

    iget-wide v0, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    iget-wide v2, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_33

    iget-boolean v0, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    iget-boolean v1, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-ne v0, v1, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x1

    .line 300
    :goto_36
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 290
    instance-of v0, p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    .line 291
    invoke-virtual {p0, v0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 290
    :goto_10
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "hc":I
    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 315
    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 317
    :cond_b
    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 318
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 320
    :cond_19
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 321
    .end local v0    # "hc":I
    .local v1, "hc":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 322
    .end local v1    # "hc":I
    .restart local v0    # "hc":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 323
    .end local v0    # "hc":I
    .restart local v1    # "hc":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 324
    .end local v1    # "hc":I
    .restart local v0    # "hc":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    add-int/2addr v1, v2

    .line 325
    .end local v0    # "hc":I
    .restart local v1    # "hc":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 334
    invoke-static {p0}, Landroid/icu/text/CurrencyMetaInfo;->-$$Nest$smdebugString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o withCurrency(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 10
    .param p1, "currency"    # Ljava/lang/String;

    .line 229
    new-instance v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-wide v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v5, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    iget-boolean v7, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-object v2, p1

    .end local p1    # "currency":Ljava/lang/String;
    .local v2, "currency":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v0
.end method

.method public greylist-max-o withDate(J)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 11
    .param p1, "date"    # J

    .line 261
    new-instance v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-boolean v7, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-wide v5, p1

    move-wide v3, p1

    .end local p1    # "date":J
    .local v3, "date":J
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v0
.end method

.method public greylist-max-o withDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 10
    .param p1, "date"    # Ljava/util/Date;

    .line 239
    new-instance v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iget-boolean v7, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v0
.end method

.method public greylist-max-o withDateRange(JJ)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 13
    .param p1, "from"    # J
    .param p3, "to"    # J

    .line 274
    new-instance v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-boolean v7, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-wide v3, p1

    move-wide v5, p3

    .end local p1    # "from":J
    .end local p3    # "to":J
    .local v3, "from":J
    .local v5, "to":J
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v0
.end method

.method public greylist-max-o withDateRange(Ljava/util/Date;Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 13
    .param p1, "from"    # Ljava/util/Date;
    .param p2, "to"    # Ljava/util/Date;

    .line 250
    if-nez p1, :cond_5

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_9
    move-wide v5, v0

    .line 251
    .local v5, "fromLong":J
    if-nez p2, :cond_12

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_16

    :cond_12
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_16
    move-wide v7, v0

    .line 252
    .local v7, "toLong":J
    new-instance v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-boolean v9, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    invoke-direct/range {v2 .. v9}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v2
.end method

.method public greylist-max-o withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 10
    .param p1, "region"    # Ljava/lang/String;

    .line 218
    new-instance v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-wide v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v5, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    iget-boolean v7, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-object v1, p1

    .end local p1    # "region":Ljava/lang/String;
    .local v1, "region":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v0
.end method

.method public greylist-max-o withTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .registers 9

    .line 282
    new-instance v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-wide v3, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v5, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v0
.end method
