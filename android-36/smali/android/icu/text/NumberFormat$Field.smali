.class public Landroid/icu/text/NumberFormat$Field;
.super Ljava/text/Format$Field;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final whitelist test-api APPROXIMATELY_SIGN:Landroid/icu/text/NumberFormat$Field;

.field public static final whitelist test-api COMPACT:Landroid/icu/text/NumberFormat$Field;

.field public static final whitelist test-api CURRENCY:Landroid/icu/text/NumberFormat$Field;

.field public static final whitelist test-api DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

.field public static final whitelist test-api EXPONENT:Landroid/icu/text/NumberFormat$Field;

.field public static final whitelist test-api EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

.field public static final whitelist test-api EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

.field public static final whitelist test-api FRACTION:Landroid/icu/text/NumberFormat$Field;

.field public static final whitelist test-api GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

.field public static final whitelist test-api INTEGER:Landroid/icu/text/NumberFormat$Field;

.field public static final whitelist test-api MEASURE_UNIT:Landroid/icu/text/NumberFormat$Field;

.field public static final whitelist test-api PERCENT:Landroid/icu/text/NumberFormat$Field;

.field public static final whitelist test-api PERMILLE:Landroid/icu/text/NumberFormat$Field;

.field public static final whitelist test-api SIGN:Landroid/icu/text/NumberFormat$Field;

.field static final whitelist serialVersionUID:J = -0x3ead070c1cf65f72L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1819
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "sign"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    .line 1823
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "integer"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    .line 1827
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "fraction"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    .line 1831
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "exponent"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    .line 1835
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "exponent sign"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    .line 1839
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "exponent symbol"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    .line 1843
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "decimal separator"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .line 1846
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "grouping separator"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .line 1850
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "percent"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    .line 1854
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "per mille"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    .line 1858
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "currency"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    .line 1862
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "measure unit"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->MEASURE_UNIT:Landroid/icu/text/NumberFormat$Field;

    .line 1866
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "compact"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->COMPACT:Landroid/icu/text/NumberFormat$Field;

    .line 1871
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "approximately sign"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->APPROXIMATELY_SIGN:Landroid/icu/text/NumberFormat$Field;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1878
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 1879
    return-void
.end method


# virtual methods
.method protected whitelist test-api readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1887
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1888
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 1889
    :cond_13
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1890
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 1891
    :cond_26
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1892
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 1893
    :cond_39
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1894
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 1895
    :cond_4c
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1896
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 1897
    :cond_5f
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1898
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 1899
    :cond_72
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1900
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 1901
    :cond_85
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1902
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 1903
    :cond_98
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1904
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 1905
    :cond_ab
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1906
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 1907
    :cond_be
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 1908
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 1909
    :cond_d1
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->MEASURE_UNIT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 1910
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->MEASURE_UNIT:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 1911
    :cond_e4
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->COMPACT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 1912
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->COMPACT:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 1914
    :cond_f7
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "An invalid object."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
