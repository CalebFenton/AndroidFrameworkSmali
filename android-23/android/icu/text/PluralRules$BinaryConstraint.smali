.class abstract Landroid/icu/text/PluralRules$BinaryConstraint;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Landroid/icu/text/PluralRules$Constraint;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BinaryConstraint"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final a:Landroid/icu/text/PluralRules$Constraint;

.field protected final b:Landroid/icu/text/PluralRules$Constraint;


# direct methods
.method protected constructor <init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V
    .locals 0
    .param p1, "a"    # Landroid/icu/text/PluralRules$Constraint;
    .param p2, "b"    # Landroid/icu/text/PluralRules$Constraint;

    #@0
    .prologue
    .line 1546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1547
    iput-object p1, p0, Landroid/icu/text/PluralRules$BinaryConstraint;->a:Landroid/icu/text/PluralRules$Constraint;

    #@5
    .line 1548
    iput-object p2, p0, Landroid/icu/text/PluralRules$BinaryConstraint;->b:Landroid/icu/text/PluralRules$Constraint;

    #@7
    .line 1546
    return-void
.end method
