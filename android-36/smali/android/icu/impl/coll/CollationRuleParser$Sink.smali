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
.method constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method abstract blacklist addReset(ILjava/lang/CharSequence;)V
.end method

.method blacklist optimize(Landroid/icu/text/UnicodeSet;)V
    .registers 2
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 82
    return-void
.end method

.method blacklist suppressContractions(Landroid/icu/text/UnicodeSet;)V
    .registers 2
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 80
    return-void
.end method
