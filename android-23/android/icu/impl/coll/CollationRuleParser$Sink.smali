.class abstract Landroid/icu/impl/coll/CollationRuleParser$Sink;
.super Ljava/lang/Object;
.source "CollationRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationRuleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sink"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method abstract addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method abstract addReset(ILjava/lang/CharSequence;)V
.end method

.method optimize(Landroid/icu/text/UnicodeSet;)V
    .locals 0
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 76
    return-void
.end method

.method suppressContractions(Landroid/icu/text/UnicodeSet;)V
    .locals 0
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 74
    return-void
.end method
