.class public Landroid/icu/impl/CurrencyData$DefaultInfo;
.super Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultInfo"
.end annotation


# static fields
.field private static final FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

.field private static final NO_FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;


# instance fields
.field private final fallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 149
    new-instance v0, Landroid/icu/impl/CurrencyData$DefaultInfo;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/icu/impl/CurrencyData$DefaultInfo;-><init>(Z)V

    #@6
    sput-object v0, Landroid/icu/impl/CurrencyData$DefaultInfo;->FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    #@8
    .line 150
    new-instance v0, Landroid/icu/impl/CurrencyData$DefaultInfo;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, v1}, Landroid/icu/impl/CurrencyData$DefaultInfo;-><init>(Z)V

    #@e
    sput-object v0, Landroid/icu/impl/CurrencyData$DefaultInfo;->NO_FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    #@10
    .line 90
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "fallback"    # Z

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;-><init>()V

    #@3
    .line 94
    iput-boolean p1, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    #@5
    .line 93
    return-void
.end method

.method public static final getWithFallback(Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .locals 1
    .param p0, "fallback"    # Z

    #@0
    .prologue
    .line 98
    if-eqz p0, :cond_0

    #@2
    sget-object v0, Landroid/icu/impl/CurrencyData$DefaultInfo;->FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    sget-object v0, Landroid/icu/impl/CurrencyData$DefaultInfo;->NO_FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    #@7
    goto :goto_0
.end method


# virtual methods
.method public getFormatInfo(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
    .locals 1
    .param p1, "isoCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "isoCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .end local p1    # "isoCode":Ljava/lang/String;
    :goto_0
    return-object p1

    #@5
    .restart local p1    # "isoCode":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    #@6
    goto :goto_0
.end method

.method public getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "pluralType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 108
    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .end local p1    # "isoCode":Ljava/lang/String;
    :goto_0
    return-object p1

    #@5
    .restart local p1    # "isoCode":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    #@6
    goto :goto_0
.end method

.method public getSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "isoCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .end local p1    # "isoCode":Ljava/lang/String;
    :goto_0
    return-object p1

    #@5
    .restart local p1    # "isoCode":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    #@6
    goto :goto_0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 128
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method public getUnitPatterns()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 136
    :cond_0
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public nameMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public symbolMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 118
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
