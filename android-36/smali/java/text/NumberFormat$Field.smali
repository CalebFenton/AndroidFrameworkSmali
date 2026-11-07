.class public Ljava/text/NumberFormat$Field;
.super Ljava/text/Format$Field;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final whitelist test-api CURRENCY:Ljava/text/NumberFormat$Field;

.field public static final whitelist test-api DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

.field public static final whitelist test-api EXPONENT:Ljava/text/NumberFormat$Field;

.field public static final whitelist test-api EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

.field public static final whitelist test-api EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

.field public static final whitelist test-api FRACTION:Ljava/text/NumberFormat$Field;

.field public static final whitelist test-api GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

.field public static final whitelist test-api INTEGER:Ljava/text/NumberFormat$Field;

.field public static final whitelist test-api PERCENT:Ljava/text/NumberFormat$Field;

.field public static final whitelist test-api PERMILLE:Ljava/text/NumberFormat$Field;

.field public static final blacklist PREFIX:Ljava/text/NumberFormat$Field;

.field public static final whitelist test-api SIGN:Ljava/text/NumberFormat$Field;

.field public static final blacklist SUFFIX:Ljava/text/NumberFormat$Field;

.field private static final greylist-max-o instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/NumberFormat$Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x6802a038193ff37aL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1277
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/text/NumberFormat$Field;->instanceMap:Ljava/util/Map;

    .line 1316
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "integer"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    .line 1321
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "fraction"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    .line 1326
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "exponent"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    .line 1331
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "decimal separator"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    .line 1337
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "sign"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    .line 1342
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "grouping separator"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    .line 1348
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "exponent symbol"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    .line 1354
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "percent"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    .line 1359
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "per mille"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    .line 1364
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "currency"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    .line 1369
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "exponent sign"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    .line 1378
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "prefix"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->PREFIX:Ljava/text/NumberFormat$Field;

    .line 1387
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "suffix"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->SUFFIX:Ljava/text/NumberFormat$Field;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1286
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_10

    .line 1288
    sget-object v0, Ljava/text/NumberFormat$Field;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    :cond_10
    return-void
.end method


# virtual methods
.method protected whitelist test-api readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1301
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_1d

    .line 1305
    sget-object v0, Ljava/text/NumberFormat$Field;->instanceMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1306
    .local v0, "instance":Ljava/lang/Object;
    if-eqz v0, :cond_15

    .line 1307
    return-object v0

    .line 1309
    :cond_15
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "unknown attribute name"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1302
    .end local v0    # "instance":Ljava/lang/Object;
    :cond_1d
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "subclass didn\'t correctly implement readResolve"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
