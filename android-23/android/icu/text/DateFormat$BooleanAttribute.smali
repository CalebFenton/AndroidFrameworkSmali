.class public final enum Landroid/icu/text/DateFormat$BooleanAttribute;
.super Ljava/lang/Enum;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BooleanAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/DateFormat$BooleanAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 473
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    #@6
    const-string/jumbo v1, "PARSE_ALLOW_WHITESPACE"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    #@c
    .line 477
    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@e
    .line 478
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    #@10
    const-string/jumbo v1, "PARSE_ALLOW_NUMERIC"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    #@16
    .line 483
    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@18
    .line 484
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    #@1a
    const-string/jumbo v1, "PARSE_MULTIPLE_PATTERNS_FOR_MATCH"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    #@20
    .line 490
    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@22
    .line 491
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    #@24
    const-string/jumbo v1, "PARSE_PARTIAL_MATCH"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 496
    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@2c
    .line 472
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/icu/text/DateFormat$BooleanAttribute;

    #@2f
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->$VALUES:[Landroid/icu/text/DateFormat$BooleanAttribute;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 472
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/DateFormat$BooleanAttribute;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 472
    const-class v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/DateFormat$BooleanAttribute;
    .locals 1

    #@0
    .prologue
    .line 472
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->$VALUES:[Landroid/icu/text/DateFormat$BooleanAttribute;

    #@2
    return-object v0
.end method
