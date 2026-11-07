.class public Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;
.super Ljava/lang/Object;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureUnitImplWithIndex"
.end annotation


# instance fields
.field blacklist index:I

.field blacklist unitImpl:Landroid/icu/impl/units/MeasureUnitImpl;


# direct methods
.method constructor blacklist <init>(ILandroid/icu/impl/units/MeasureUnitImpl;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "unitImpl"    # Landroid/icu/impl/units/MeasureUnitImpl;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput p1, p0, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->index:I

    .line 419
    iput-object p2, p0, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Landroid/icu/impl/units/MeasureUnitImpl;

    .line 420
    return-void
.end method
