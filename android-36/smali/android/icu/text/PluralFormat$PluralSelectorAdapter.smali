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


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/text/PluralFormat;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/text/PluralFormat;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 542
    iput-object p1, p0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;->this$0:Landroid/icu/text/PluralFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o select(Ljava/lang/Object;D)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Ljava/lang/Object;
    .param p2, "number"    # D

    .line 545
    move-object v0, p1

    check-cast v0, Landroid/icu/text/PluralRules$IFixedDecimal;

    .line 546
    .local v0, "dec":Landroid/icu/text/PluralRules$IFixedDecimal;
    iget-object v1, p0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;->this$0:Landroid/icu/text/PluralFormat;

    invoke-static {v1}, Landroid/icu/text/PluralFormat;->-$$Nest$fgetpluralRules(Landroid/icu/text/PluralFormat;)Landroid/icu/text/PluralRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
