.class public final Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
.super Ljava/lang/Object;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencySpacingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;,
        Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

.field private static final greylist-max-o DEFAULT_CTX_MATCH:Ljava/lang/String; = "[:digit:]"

.field private static final greylist-max-o DEFAULT_CUR_MATCH:Ljava/lang/String; = "[:letter:]"

.field private static final greylist-max-o DEFAULT_INSERT:Ljava/lang/String; = " "


# instance fields
.field public blacklist hasAfterCurrency:Z

.field public blacklist hasBeforeCurrency:Z

.field private final greylist-max-o symbols:[[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 66
    const-class v0, Landroid/icu/impl/CurrencyData;

    .line 123
    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    const-string v5, "[:digit:]"

    const-string v6, " "

    const-string v1, "[:letter:]"

    const-string v2, "[:digit:]"

    const-string v3, " "

    const-string v4, "[:letter:]"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 5

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v0}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v0

    sget-object v1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasBeforeCurrency:Z

    .line 70
    iput-boolean v1, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasAfterCurrency:Z

    .line 89
    return-void
.end method

.method public varargs constructor blacklist <init>([Ljava/lang/String;)V
    .registers 7
    .param p1, "strings"    # [Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v0}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v0

    sget-object v1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasBeforeCurrency:Z

    .line 70
    iput-boolean v1, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasAfterCurrency:Z

    .line 92
    nop

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    sget-object v2, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v2}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 96
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_32
    sget-object v3, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v3}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 97
    iget-object v3, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v4, p1, v0

    aput-object v4, v3, v2

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 95
    .end local v2    # "j":I
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 101
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method


# virtual methods
.method public blacklist getAfterSymbols()[Ljava/lang/String;
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    sget-object v1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->AFTER:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist getBeforeSymbols()[Ljava/lang/String;
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    sget-object v1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->BEFORE:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist setSymbolIfNull(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
    .param p2, "pattern"    # Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    .param p3, "value"    # Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v0

    .line 105
    .local v0, "i":I
    invoke-virtual {p2}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v1

    .line 106
    .local v1, "j":I
    iget-object v2, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_16

    .line 107
    iget-object v2, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object p3, v2, v1

    .line 109
    :cond_16
    return-void
.end method
