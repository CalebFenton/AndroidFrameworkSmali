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
.field public final greylist-max-o fractionDigits:I

.field public final greylist-max-o roundingIncrement:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "fractionDigits"    # I
    .param p2, "roundingIncrement"    # I

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput p1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    .line 364
    iput p2, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->roundingIncrement:I

    .line 365
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 373
    invoke-static {p0}, Landroid/icu/text/CurrencyMetaInfo;->-$$Nest$smdebugString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
