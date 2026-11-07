.class Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;
.super Ljava/lang/Object;
.source "MFDataModelFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/MFDataModelFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntVarTuple"
.end annotation


# instance fields
.field blacklist integer:I

.field final blacklist variant:Landroid/icu/message2/MFDataModel$Variant;


# direct methods
.method public constructor blacklist <init>(ILandroid/icu/message2/MFDataModel$Variant;)V
    .registers 3
    .param p1, "integer"    # I
    .param p2, "variant"    # Landroid/icu/message2/MFDataModel$Variant;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput p1, p0, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;->integer:I

    .line 609
    iput-object p2, p0, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;->variant:Landroid/icu/message2/MFDataModel$Variant;

    .line 610
    return-void
.end method
