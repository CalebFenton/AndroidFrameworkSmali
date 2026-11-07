.class Landroid/text/Layout$SpannedEllipsizer;
.super Landroid/text/Layout$Ellipsizer;
.source "Layout.java"

# interfaces
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpannedEllipsizer"
.end annotation


# instance fields
.field private greylist-max-o mSpanned:Landroid/text/Spanned;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "display"    # Ljava/lang/CharSequence;

    .line 3650
    invoke-direct {p0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    .line 3651
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    .line 3652
    return-void
.end method


# virtual methods
.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 3663
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 3667
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 3659
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 3655
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .registers 5
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "type"    # Ljava/lang/Class;

    .line 3672
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 3677
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 3678
    .local v0, "s":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/Layout$SpannedEllipsizer;->getChars(II[CI)V

    .line 3680
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v7, v1

    .line 3681
    .local v7, "ss":Landroid/text/SpannableString;
    iget-object v3, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    const-class v6, Ljava/lang/Object;

    const/4 v8, 0x0

    move v4, p1

    move v5, p2

    .end local p1    # "start":I
    .end local p2    # "end":I
    .local v4, "start":I
    .local v5, "end":I
    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 3682
    return-object v7
.end method
