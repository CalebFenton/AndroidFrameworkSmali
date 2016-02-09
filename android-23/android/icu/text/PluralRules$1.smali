.class final Landroid/icu/text/PluralRules$1;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Landroid/icu/text/PluralRules$Constraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7f2b2ad155970a18L


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public isFulfilled(Landroid/icu/text/PluralRules$FixedDecimal;)Z
    .locals 1
    .param p1, "n"    # Landroid/icu/text/PluralRules$FixedDecimal;

    #@0
    .prologue
    .line 358
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 1
    .param p1, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    #@0
    .prologue
    .line 362
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 366
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method
