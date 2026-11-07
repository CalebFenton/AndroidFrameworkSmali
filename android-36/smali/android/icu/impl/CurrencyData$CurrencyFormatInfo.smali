.class public final Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
.super Ljava/lang/Object;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyFormatInfo"
.end annotation


# instance fields
.field public final blacklist currencyPattern:Ljava/lang/String;

.field public final blacklist isoCode:Ljava/lang/String;

.field public final blacklist monetaryDecimalSeparator:Ljava/lang/String;

.field public final blacklist monetaryGroupingSeparator:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "currencyPattern"    # Ljava/lang/String;
    .param p3, "monetarySeparator"    # Ljava/lang/String;
    .param p4, "monetaryGroupingSeparator"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->isoCode:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->currencyPattern:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryDecimalSeparator:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryGroupingSeparator:Ljava/lang/String;

    .line 60
    return-void
.end method
