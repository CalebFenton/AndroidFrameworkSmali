.class public final enum Landroid/icu/text/LocaleDisplayNames$DialectHandling;
.super Ljava/lang/Enum;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/LocaleDisplayNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialectHandling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/LocaleDisplayNames$DialectHandling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/LocaleDisplayNames$DialectHandling;

.field public static final enum DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

.field public static final enum STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 35
    new-instance v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@4
    const-string/jumbo v1, "STANDARD_NAMES"

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/text/LocaleDisplayNames$DialectHandling;-><init>(Ljava/lang/String;I)V

    #@a
    .line 40
    sput-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@c
    .line 41
    new-instance v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@e
    const-string/jumbo v1, "DIALECT_NAMES"

    #@11
    invoke-direct {v0, v1, v3}, Landroid/icu/text/LocaleDisplayNames$DialectHandling;-><init>(Ljava/lang/String;I)V

    #@14
    .line 46
    sput-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@16
    .line 34
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@19
    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->$VALUES:[Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    const-class v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 1

    #@0
    .prologue
    .line 34
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->$VALUES:[Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@2
    return-object v0
.end method
