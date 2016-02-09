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
.field fAction:S

.field fCharClass:S

.field fNextChar:Z

.field fNextState:S

.field fPushState:S

.field fStateName:Ljava/lang/String;


# direct methods
.method constructor <init>(SIIIZLjava/lang/String;)V
    .locals 1
    .param p1, "a"    # S
    .param p2, "cc"    # I
    .param p3, "ns"    # I
    .param p4, "ps"    # I
    .param p5, "nc"    # Z
    .param p6, "sn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    iput-short p1, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fAction:S

    #@5
    .line 70
    int-to-short v0, p2

    #@6
    iput-short v0, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    #@8
    .line 71
    int-to-short v0, p3

    #@9
    iput-short v0, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextState:S

    #@b
    .line 72
    int-to-short v0, p4

    #@c
    iput-short v0, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fPushState:S

    #@e
    .line 73
    iput-boolean p5, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextChar:Z

    #@10
    .line 74
    iput-object p6, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fStateName:Ljava/lang/String;

    #@12
    .line 68
    return-void
.end method
