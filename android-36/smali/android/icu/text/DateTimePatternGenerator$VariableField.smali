.class public Landroid/icu/text/DateTimePatternGenerator$VariableField;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariableField"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o canonicalIndex:I

.field private final greylist-max-o string:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetCanonicalIndex(Landroid/icu/text/DateTimePatternGenerator$VariableField;)I
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getCanonicalIndex()I

    move-result p0

    return p0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1584
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/DateTimePatternGenerator$VariableField;-><init>(Ljava/lang/String;Z)V

    .line 1585
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1597
    invoke-static {p1, p2}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$smgetCanonicalIndex(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    .line 1598
    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    if-ltz v0, :cond_10

    .line 1602
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->string:Ljava/lang/String;

    .line 1603
    return-void

    .line 1599
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal datetime field:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o getCanonicalCode(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1627
    :try_start_0
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$sfgetCANONICAL_ITEMS()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1628
    :catch_7
    move-exception v0

    .line 1629
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getCanonicalIndex()I
    .registers 2

    .line 1648
    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    return v0
.end method


# virtual methods
.method public greylist-max-o getType()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1616
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$sfgettypes()[[I

    move-result-object v0

    iget v1, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o isNumeric()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1641
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$sfgettypes()[[I

    move-result-object v0

    iget v1, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1660
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->string:Ljava/lang/String;

    return-object v0
.end method
