.class final Landroid/icu/text/PluralFormat$PluralSelectorAdapter;
.super Ljava/lang/Object;
.source "PluralFormat.java"

# interfaces
.implements Landroid/icu/text/PluralFormat$PluralSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PluralSelectorAdapter"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field final synthetic this$0:Landroid/icu/text/PluralFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;->-assertionsDisabled:Z

    #@b
    .line 557
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>(Landroid/icu/text/PluralFormat;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/text/PluralFormat;

    #@0
    .prologue
    .line 557
    iput-object p1, p0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;->this$0:Landroid/icu/text/PluralFormat;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/text/PluralFormat;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;)V

    #@3
    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;D)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Ljava/lang/Object;
    .param p2, "number"    # D

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 559
    check-cast v0, Landroid/icu/text/PluralRules$FixedDecimal;

    #@3
    .line 560
    .local v0, "dec":Landroid/icu/text/PluralRules$FixedDecimal;
    sget-boolean v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;->-assertionsDisabled:Z

    #@5
    if-nez v1, :cond_1

    #@7
    iget-wide v2, v0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@9
    cmpl-double v1, v2, p2

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v1, 0x1

    #@e
    :goto_0
    if-nez v1, :cond_1

    #@10
    new-instance v1, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v1

    #@16
    :cond_0
    const/4 v1, 0x0

    #@17
    goto :goto_0

    #@18
    .line 561
    :cond_1
    iget-object v1, p0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;->this$0:Landroid/icu/text/PluralFormat;

    #@1a
    invoke-static {v1}, Landroid/icu/text/PluralFormat;->-get0(Landroid/icu/text/PluralFormat;)Landroid/icu/text/PluralRules;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, v0}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    return-object v1
.end method
