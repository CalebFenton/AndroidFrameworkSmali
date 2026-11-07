.class public final synthetic Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/ColorSpace$Rgb$TransferParameters;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda9;->f$0:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsDouble(D)D
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda9;->f$0:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$generateEOTF$6(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p1

    return-wide p1
.end method
