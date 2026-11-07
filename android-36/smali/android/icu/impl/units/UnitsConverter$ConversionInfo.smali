.class public Landroid/icu/impl/units/UnitsConverter$ConversionInfo;
.super Ljava/lang/Object;
.source "UnitsConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/UnitsConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversionInfo"
.end annotation


# instance fields
.field public blacklist conversionRate:Ljava/math/BigDecimal;

.field public blacklist offset:Ljava/math/BigDecimal;

.field public blacklist reciprocal:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
