.class public final Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyDigits"
.end annotation


# instance fields
.field public final fractionDigits:I

.field public final roundingIncrement:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "fractionDigits"    # I
    .param p2, "roundingIncrement"    # I

    #@0
    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 387
    iput p1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    #@5
    .line 388
    iput p2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->roundingIncrement:I

    #@7
    .line 386
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 398
    invoke-static {p0}, Landroid/icu/text/CurrencyMetaInfo;->-wrap0(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
