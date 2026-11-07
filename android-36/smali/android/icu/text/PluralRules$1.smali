.class Landroid/icu/text/PluralRules$1;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Landroid/icu/text/PluralRules$Constraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x7f2b2ad155970a18L


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isFulfilled(Landroid/icu/text/PluralRules$IFixedDecimal;)Z
    .registers 3
    .param p1, "n"    # Landroid/icu/text/PluralRules$IFixedDecimal;

    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .registers 3
    .param p1, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 379
    const-string v0, ""

    return-object v0
.end method
