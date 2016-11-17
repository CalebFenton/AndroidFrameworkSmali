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
.field public static final CURRENCY:Ljava/text/NumberFormat$Field;

.field public static final DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

.field public static final EXPONENT:Ljava/text/NumberFormat$Field;

.field public static final EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

.field public static final EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

.field public static final FRACTION:Ljava/text/NumberFormat$Field;

.field public static final GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

.field public static final INTEGER:Ljava/text/NumberFormat$Field;

.field public static final PERCENT:Ljava/text/NumberFormat$Field;

.field public static final PERMILLE:Ljava/text/NumberFormat$Field;

.field public static final SIGN:Ljava/text/NumberFormat$Field;

.field private static final instanceMap:Ljava/util/Map;

.field private static final serialVersionUID:J = 0x6802a038193ff37aL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1028
    new-instance v0, Ljava/util/HashMap;

    #@2
    const/16 v1, 0xb

    #@4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@7
    sput-object v0, Ljava/text/NumberFormat$Field;->instanceMap:Ljava/util/Map;

    #@9
    .line 1065
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@b
    const-string/jumbo v1, "integer"

    #@e
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@11
    sput-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    #@13
    .line 1070
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@15
    const-string/jumbo v1, "fraction"

    #@18
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@1b
    sput-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    #@1d
    .line 1075
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@1f
    const-string/jumbo v1, "exponent"

    #@22
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@25
    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    #@27
    .line 1081
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@29
    const-string/jumbo v1, "decimal separator"

    #@2c
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@2f
    .line 1080
    sput-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    #@31
    .line 1086
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@33
    const-string/jumbo v1, "sign"

    #@36
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@39
    sput-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    #@3b
    .line 1092
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@3d
    const-string/jumbo v1, "grouping separator"

    #@40
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@43
    .line 1091
    sput-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    #@45
    .line 1097
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@47
    .line 1098
    const-string/jumbo v1, "exponent symbol"

    #@4a
    .line 1097
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@4d
    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    #@4f
    .line 1103
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@51
    const-string/jumbo v1, "percent"

    #@54
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@57
    sput-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    #@59
    .line 1108
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@5b
    const-string/jumbo v1, "per mille"

    #@5e
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@61
    sput-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    #@63
    .line 1113
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@65
    const-string/jumbo v1, "currency"

    #@68
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@6b
    sput-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    #@6d
    .line 1118
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@6f
    const-string/jumbo v1, "exponent sign"

    #@72
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@75
    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    #@77
    .line 1022
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1037
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    #@3
    .line 1038
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    const-class v1, Ljava/text/NumberFormat$Field;

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 1039
    sget-object v0, Ljava/text/NumberFormat$Field;->instanceMap:Ljava/util/Map;

    #@d
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 1036
    :cond_0
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 1050
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    const-class v2, Ljava/text/NumberFormat$Field;

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 1051
    new-instance v1, Ljava/io/InvalidObjectException;

    #@a
    const-string/jumbo v2, "subclass didn\'t correctly implement readResolve"

    #@d
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 1054
    :cond_0
    sget-object v1, Ljava/text/NumberFormat$Field;->instanceMap:Ljava/util/Map;

    #@13
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .line 1055
    .local v0, "instance":Ljava/lang/Object;
    if-eqz v0, :cond_1

    #@1d
    .line 1056
    return-object v0

    #@1e
    .line 1058
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    #@20
    const-string/jumbo v2, "unknown attribute name"

    #@23
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
.end method
