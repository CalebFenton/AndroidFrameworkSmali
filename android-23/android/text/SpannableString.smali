.class public Landroid/text/SpannableString;
.super Landroid/text/SpannableStringInternal;
.source "SpannableString.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 30
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1, v0}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;II)V

    #@8
    .line 29
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;II)V

    #@3
    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 38
    instance-of v0, p0, Landroid/text/SpannableString;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 39
    check-cast p0, Landroid/text/SpannableString;

    #@6
    .end local p0    # "source":Ljava/lang/CharSequence;
    return-object p0

    #@7
    .line 41
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    #@9
    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@c
    return-object v0
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getSpanEnd(Ljava/lang/Object;)I
    .locals 1
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getSpanFlags(Ljava/lang/Object;)I
    .locals 1
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getSpanStart(Ljava/lang/Object;)I
    .locals 1
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/text/SpannableStringInternal;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->nextSpanTransition(IILjava/lang/Class;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 0
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;)V

    #@3
    .line 49
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 0
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;III)V

    #@3
    .line 45
    return-void
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 54
    new-instance v0, Landroid/text/SpannableString;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;II)V

    #@5
    return-object v0
.end method
