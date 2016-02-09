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

.field private static final serialVersionUID:J = 0x6802a038193ff37aL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 777
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@2
    const-string/jumbo v1, "sign"

    #@5
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    #@a
    .line 782
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@c
    const-string/jumbo v1, "integer"

    #@f
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    #@14
    .line 787
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@16
    const-string/jumbo v1, "fraction"

    #@19
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    #@1e
    .line 792
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@20
    const-string/jumbo v1, "exponent"

    #@23
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    #@28
    .line 797
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@2a
    const-string/jumbo v1, "exponent sign"

    #@2d
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    #@32
    .line 802
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@34
    const-string/jumbo v1, "exponent symbol"

    #@37
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@3a
    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    #@3c
    .line 807
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@3e
    const-string/jumbo v1, "decimal separator"

    #@41
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    #@46
    .line 812
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@48
    const-string/jumbo v1, "grouping separator"

    #@4b
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@4e
    sput-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    #@50
    .line 817
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@52
    const-string/jumbo v1, "percent"

    #@55
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@58
    sput-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    #@5a
    .line 822
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@5c
    const-string/jumbo v1, "per mille"

    #@5f
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@62
    sput-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    #@64
    .line 827
    new-instance v0, Ljava/text/NumberFormat$Field;

    #@66
    const-string/jumbo v1, "currency"

    #@69
    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    #@6c
    sput-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    #@6e
    .line 770
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 834
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    #@3
    .line 833
    return-void
.end method
