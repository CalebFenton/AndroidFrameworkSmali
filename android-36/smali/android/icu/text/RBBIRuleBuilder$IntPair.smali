.class Landroid/icu/text/RBBIRuleBuilder$IntPair;
.super Ljava/lang/Object;
.source "RBBIRuleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBIRuleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntPair"
.end annotation


# instance fields
.field blacklist first:I

.field blacklist second:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    .line 334
    iput v0, p0, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    .line 335
    return-void
.end method

.method constructor blacklist <init>(II)V
    .registers 4
    .param p1, "f"    # I
    .param p2, "s"    # I

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    .line 334
    iput v0, p0, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    .line 337
    iput p1, p0, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    .line 338
    iput p2, p0, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    .line 339
    return-void
.end method
