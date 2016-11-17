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

.field public static final enum PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 442
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    #@7
    const-string/jumbo v1, "PARSE_ALLOW_WHITESPACE"

    #@a
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    #@d
    .line 445
    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@f
    .line 446
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    #@11
    const-string/jumbo v1, "PARSE_ALLOW_NUMERIC"

    #@14
    invoke-direct {v0, v1, v3}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    #@17
    .line 450
    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@19
    .line 451
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    #@1b
    const-string/jumbo v1, "PARSE_MULTIPLE_PATTERNS_FOR_MATCH"

    #@1e
    invoke-direct {v0, v1, v4}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    #@21
    .line 456
    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@23
    .line 457
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    #@25
    const-string/jumbo v1, "PARSE_PARTIAL_LITERAL_MATCH"

    #@28
    invoke-direct {v0, v1, v5}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 462
    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@2d
    .line 463
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    #@2f
    const-string/jumbo v1, "PARSE_PARTIAL_MATCH"

    #@32
    invoke-direct {v0, v1, v6}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    #@35
    .line 469
    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@37
    .line 441
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Landroid/icu/text/DateFormat$BooleanAttribute;

    #@3a
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->$VALUES:[Landroid/icu/text/DateFormat$BooleanAttribute;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 441
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/DateFormat$BooleanAttribute;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 441
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
    .line 441
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->$VALUES:[Landroid/icu/text/DateFormat$BooleanAttribute;

    #@2
    return-object v0
.end method
