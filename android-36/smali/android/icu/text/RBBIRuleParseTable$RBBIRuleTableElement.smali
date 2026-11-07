.class Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;
.super Ljava/lang/Object;
.source "RBBIRuleParseTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBIRuleParseTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RBBIRuleTableElement"
.end annotation


# instance fields
.field blacklist fAction:S

.field blacklist fCharClass:S

.field blacklist fNextChar:Z

.field blacklist fNextState:S

.field blacklist fPushState:S

.field blacklist fStateName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(SIIIZLjava/lang/String;)V
    .registers 8
    .param p1, "a"    # S
    .param p2, "cc"    # I
    .param p3, "ns"    # I
    .param p4, "ps"    # I
    .param p5, "nc"    # Z
    .param p6, "sn"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-short p1, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fAction:S

    .line 76
    int-to-short v0, p2

    iput-short v0, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    .line 77
    int-to-short v0, p3

    iput-short v0, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextState:S

    .line 78
    int-to-short v0, p4

    iput-short v0, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fPushState:S

    .line 79
    iput-boolean p5, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextChar:Z

    .line 80
    iput-object p6, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fStateName:Ljava/lang/String;

    .line 81
    return-void
.end method
