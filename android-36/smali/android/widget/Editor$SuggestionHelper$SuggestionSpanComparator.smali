.class Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionSpanComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/text/style/SuggestionSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$SuggestionHelper;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor$SuggestionHelper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4017
    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor$SuggestionHelper;Landroid/widget/Editor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionHelper;)V

    return-void
.end method

.method private blacklist compareFlag(III)I
    .registers 8
    .param p1, "flagToCompare"    # I
    .param p2, "flags1"    # I
    .param p3, "flags2"    # I

    .line 4040
    and-int v0, p2, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 4041
    .local v0, "hasFlag1":Z
    :goto_9
    and-int v3, p3, p1

    if-eqz v3, :cond_f

    move v3, v1

    goto :goto_10

    :cond_f
    move v3, v2

    .line 4042
    .local v3, "hasFlag2":Z
    :goto_10
    if-ne v0, v3, :cond_13

    return v2

    .line 4043
    :cond_13
    if-eqz v0, :cond_16

    const/4 v1, -0x1

    :cond_16
    return v1
.end method


# virtual methods
.method public greylist-max-o compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I
    .registers 8
    .param p1, "span1"    # Landroid/text/style/SuggestionSpan;
    .param p2, "span2"    # Landroid/text/style/SuggestionSpan;

    .line 4019
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 4020
    .local v0, "flag1":I
    invoke-virtual {p2}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v1

    .line 4021
    .local v1, "flag2":I
    if-eq v0, v1, :cond_23

    .line 4023
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->compareFlag(III)I

    move-result v2

    .line 4024
    .local v2, "easy":I
    if-eqz v2, :cond_12

    return v2

    .line 4025
    :cond_12
    const/4 v3, 0x2

    invoke-direct {p0, v3, v0, v1}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->compareFlag(III)I

    move-result v3

    .line 4026
    .local v3, "misspelled":I
    if-eqz v3, :cond_1a

    return v3

    .line 4027
    :cond_1a
    const/16 v4, 0x8

    invoke-direct {p0, v4, v0, v1}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->compareFlag(III)I

    move-result v4

    .line 4028
    .local v4, "grammarError":I
    if-eqz v4, :cond_23

    return v4

    .line 4031
    .end local v2    # "easy":I
    .end local v3    # "misspelled":I
    .end local v4    # "grammarError":I
    :cond_23
    iget-object v2, p0, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionHelper;

    invoke-static {v2}, Landroid/widget/Editor$SuggestionHelper;->-$$Nest$fgetmSpansLengths(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionHelper;

    invoke-static {v3}, Landroid/widget/Editor$SuggestionHelper;->-$$Nest$fgetmSpansLengths(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 4017
    check-cast p1, Landroid/text/style/SuggestionSpan;

    check-cast p2, Landroid/text/style/SuggestionSpan;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;->compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I

    move-result p1

    return p1
.end method
