.class public Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;
.super Ljava/lang/Object;
.source "ComplexUnitsConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/ComplexUnitsConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComplexConverterResult"
.end annotation


# instance fields
.field public final blacklist indexOfQuantity:I

.field public final blacklist measures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/Measure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(ILjava/util/List;)V
    .registers 3
    .param p1, "indexOfQuantity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/icu/util/Measure;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p2, "measures":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/Measure;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p1, p0, Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;->indexOfQuantity:I

    .line 164
    iput-object p2, p0, Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;->measures:Ljava/util/List;

    .line 165
    return-void
.end method
