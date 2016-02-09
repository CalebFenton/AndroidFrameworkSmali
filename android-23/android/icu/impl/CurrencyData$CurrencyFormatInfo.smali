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
.field public final currencyPattern:Ljava/lang/String;

.field public final monetaryGroupingSeparator:C

.field public final monetarySeparator:C


# direct methods
.method public constructor <init>(Ljava/lang/String;CC)V
    .locals 0
    .param p1, "currencyPattern"    # Ljava/lang/String;
    .param p2, "monetarySeparator"    # C
    .param p3, "monetaryGroupingSeparator"    # C

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->currencyPattern:Ljava/lang/String;

    #@5
    .line 37
    iput-char p2, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetarySeparator:C

    #@7
    .line 38
    iput-char p3, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryGroupingSeparator:C

    #@9
    .line 35
    return-void
.end method
