.class public final Landroid/view/contentcapture/ViewNode$ViewStructureImpl;
.super Landroid/view/ViewStructure;
.source "ViewNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ViewNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewStructureImpl"
.end annotation


# instance fields
.field final blacklist mNode:Landroid/view/contentcapture/ViewNode;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 666
    invoke-direct {p0}, Landroid/view/ViewStructure;-><init>()V

    .line 662
    new-instance v0, Landroid/view/contentcapture/ViewNode;

    invoke-direct {v0}, Landroid/view/contentcapture/ViewNode;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    .line 667
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 668
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 669
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2d

    .line 670
    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmParentAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 672
    :cond_2d
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;JI)V
    .registers 7
    .param p1, "parentId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualId"    # J
    .param p4, "sessionId"    # I

    .line 676
    invoke-direct {p0}, Landroid/view/ViewStructure;-><init>()V

    .line 662
    new-instance v0, Landroid/view/contentcapture/ViewNode;

    invoke-direct {v0}, Landroid/view/contentcapture/ViewNode;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    .line 677
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmParentAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 678
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/view/autofill/AutofillId;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 679
    return-void
.end method

.method private blacklist getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;
    .registers 3

    .line 1014
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmText(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1015
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmText(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    return-object v0

    .line 1017
    :cond_f
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/view/contentcapture/ViewNode$ViewNodeText;

    invoke-direct {v1}, Landroid/view/contentcapture/ViewNode$ViewNodeText;-><init>()V

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmText(Landroid/view/contentcapture/ViewNode;Landroid/view/contentcapture/ViewNode$ViewNodeText;)V

    .line 1018
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmText(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addChildCount(I)I
    .registers 4
    .param p1, "num"    # I

    .line 892
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addChildCount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asyncCommit()V
    .registers 3

    .line 983
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asyncCommit() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return-void
.end method

.method public whitelist asyncNewChild(I)Landroid/view/ViewStructure;
    .registers 4
    .param p1, "index"    # I

    .line 910
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asyncNewChild() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 916
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmAutofillId(Landroid/view/contentcapture/ViewNode;)Landroid/view/autofill/AutofillId;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChildCount()I
    .registers 3

    .line 898
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChildCount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 3

    .line 873
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 874
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 876
    :cond_f
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmExtras(Landroid/view/contentcapture/ViewNode;Landroid/os/Bundle;)V

    .line 877
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHint()Ljava/lang/CharSequence;
    .registers 2

    .line 868
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getHint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNode()Landroid/view/contentcapture/ViewNode;
    .registers 2

    .line 684
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    return-object v0
.end method

.method public blacklist getTempRect()Landroid/graphics/Rect;
    .registers 3

    .line 988
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getTempRect() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 853
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTextSelectionEnd()I
    .registers 2

    .line 863
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getTextSelectionEnd()I

    move-result v0

    return v0
.end method

.method public whitelist getTextSelectionStart()I
    .registers 2

    .line 858
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getTextSelectionStart()I

    move-result v0

    return v0
.end method

.method public whitelist hasExtras()Z
    .registers 2

    .line 882
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist newChild(I)Landroid/view/ViewStructure;
    .registers 4
    .param p1, "index"    # I

    .line 904
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "newChild() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist newHtmlInfoBuilder(Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;
    .registers 4
    .param p1, "tagName"    # Ljava/lang/String;

    .line 1004
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "newHtmlInfoBuilder() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setAccessibilityFocused(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 766
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x20001

    and-long/2addr v1, v3

    .line 767
    if-eqz p1, :cond_12

    const-wide/32 v3, 0x20000

    goto :goto_14

    :cond_12
    const-wide/16 v3, 0x0

    :goto_14
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 768
    return-void
.end method

.method public whitelist setActivated(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 787
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x200001

    and-long/2addr v1, v3

    if-eqz p1, :cond_12

    const-wide/32 v3, 0x200000

    goto :goto_14

    :cond_12
    const-wide/16 v3, 0x0

    :goto_14
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 788
    return-void
.end method

.method public whitelist setAlpha(F)V
    .registers 4
    .param p1, "alpha"    # F

    .line 717
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setAlpha() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-void
.end method

.method public blacklist setAssistBlocked(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 728
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x401

    and-long/2addr v1, v3

    .line 729
    if-eqz p1, :cond_10

    const-wide/16 v3, 0x400

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 730
    return-void
.end method

.method public whitelist setAutofillHints([Ljava/lang/String;)V
    .registers 3
    .param p1, "hints"    # [Ljava/lang/String;

    .line 943
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillHints(Landroid/view/contentcapture/ViewNode;[Ljava/lang/String;)V

    .line 944
    return-void
.end method

.method public whitelist setAutofillId(Landroid/view/autofill/AutofillId;)V
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 921
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 922
    return-void
.end method

.method public whitelist setAutofillId(Landroid/view/autofill/AutofillId;I)V
    .registers 5
    .param p1, "parentId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualId"    # I

    .line 927
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmParentAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 928
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    new-instance v1, Landroid/view/autofill/AutofillId;

    invoke-direct {v1, p1, p2}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;I)V

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V

    .line 929
    return-void
.end method

.method public whitelist setAutofillOptions([Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "options"    # [Ljava/lang/CharSequence;

    .line 953
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillOptions(Landroid/view/contentcapture/ViewNode;[Ljava/lang/CharSequence;)V

    .line 954
    return-void
.end method

.method public whitelist setAutofillType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 933
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillType(Landroid/view/contentcapture/ViewNode;I)V

    .line 934
    return-void
.end method

.method public whitelist setAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .registers 3
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 948
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmAutofillValue(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillValue;)V

    .line 949
    return-void
.end method

.method public whitelist setCheckable(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 772
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x40001

    and-long/2addr v1, v3

    if-eqz p1, :cond_12

    const-wide/32 v3, 0x40000

    goto :goto_14

    :cond_12
    const-wide/16 v3, 0x0

    :goto_14
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 773
    return-void
.end method

.method public whitelist setChecked(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 777
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x80001

    and-long/2addr v1, v3

    if-eqz p1, :cond_12

    const-wide/32 v3, 0x80000

    goto :goto_14

    :cond_12
    const-wide/16 v3, 0x0

    :goto_14
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 778
    return-void
.end method

.method public whitelist setChildCount(I)V
    .registers 4
    .param p1, "num"    # I

    .line 887
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setChildCount() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-void
.end method

.method public whitelist setClassName(Ljava/lang/String;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .line 797
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmClassName(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    .line 798
    return-void
.end method

.method public whitelist setClickable(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 739
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x1001

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/16 v3, 0x1000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 740
    return-void
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 802
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmContentDescription(Landroid/view/contentcapture/ViewNode;Ljava/lang/CharSequence;)V

    .line 803
    return-void
.end method

.method public whitelist setContextClickable(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 750
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x4001

    and-long/2addr v1, v3

    .line 751
    if-eqz p1, :cond_10

    const-wide/16 v3, 0x4000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 752
    return-void
.end method

.method public whitelist setDataIsSensitive(Z)V
    .registers 4
    .param p1, "sensitive"    # Z

    .line 978
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setDataIsSensitive() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    return-void
.end method

.method public whitelist setDimens(IIIIII)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 697
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmX(Landroid/view/contentcapture/ViewNode;I)V

    .line 698
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmY(Landroid/view/contentcapture/ViewNode;I)V

    .line 699
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p3}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmScrollX(Landroid/view/contentcapture/ViewNode;I)V

    .line 700
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p4}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmScrollY(Landroid/view/contentcapture/ViewNode;I)V

    .line 701
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p5}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmWidth(Landroid/view/contentcapture/ViewNode;I)V

    .line 702
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p6}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmHeight(Landroid/view/contentcapture/ViewNode;I)V

    .line 703
    return-void
.end method

.method public whitelist setElevation(F)V
    .registers 4
    .param p1, "elevation"    # F

    .line 712
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setElevation() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 734
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x801

    and-long/2addr v1, v3

    if-eqz p1, :cond_10

    const-wide/16 v3, 0x0

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x800

    :goto_12
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 735
    return-void
.end method

.method public whitelist setFocusable(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 756
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x8001

    and-long/2addr v1, v3

    if-eqz p1, :cond_12

    const-wide/32 v3, 0x8000

    goto :goto_14

    :cond_12
    const-wide/16 v3, 0x0

    :goto_14
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 757
    return-void
.end method

.method public whitelist setFocused(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 761
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x10001

    and-long/2addr v1, v3

    if-eqz p1, :cond_12

    const-wide/32 v3, 0x10000

    goto :goto_14

    :cond_12
    const-wide/16 v3, 0x0

    :goto_14
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 762
    return-void
.end method

.method public whitelist setHint(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 843
    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    iput-object v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mHint:Ljava/lang/String;

    .line 844
    return-void
.end method

.method public whitelist setHintIdEntry(Ljava/lang/String;)V
    .registers 4
    .param p1, "entryName"    # Ljava/lang/String;

    .line 848
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmHintIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method public whitelist setHtmlInfo(Landroid/view/ViewStructure$HtmlInfo;)V
    .registers 4
    .param p1, "htmlInfo"    # Landroid/view/ViewStructure$HtmlInfo;

    .line 1010
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setHtmlInfo() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return-void
.end method

.method public whitelist setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "entryName"    # Ljava/lang/String;

    .line 689
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmId(Landroid/view/contentcapture/ViewNode;I)V

    .line 690
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmIdPackage(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p3}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmIdType(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p4}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method public whitelist setInputType(I)V
    .registers 3
    .param p1, "inputType"    # I

    .line 958
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmInputType(Landroid/view/contentcapture/ViewNode;I)V

    .line 959
    return-void
.end method

.method public whitelist setLocaleList(Landroid/os/LocaleList;)V
    .registers 3
    .param p1, "localeList"    # Landroid/os/LocaleList;

    .line 999
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmLocaleList(Landroid/view/contentcapture/ViewNode;Landroid/os/LocaleList;)V

    .line 1000
    return-void
.end method

.method public whitelist setLongClickable(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 744
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0x2001

    and-long/2addr v1, v3

    .line 745
    if-eqz p1, :cond_10

    const-wide/16 v3, 0x2000

    goto :goto_12

    :cond_10
    const-wide/16 v3, 0x0

    :goto_12
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 746
    return-void
.end method

.method public whitelist setMaxTextEms(I)V
    .registers 3
    .param p1, "maxEms"    # I

    .line 968
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmMaxEms(Landroid/view/contentcapture/ViewNode;I)V

    .line 969
    return-void
.end method

.method public whitelist setMaxTextLength(I)V
    .registers 3
    .param p1, "maxLength"    # I

    .line 973
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmMaxLength(Landroid/view/contentcapture/ViewNode;I)V

    .line 974
    return-void
.end method

.method public whitelist setMinTextEms(I)V
    .registers 3
    .param p1, "minEms"    # I

    .line 963
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmMinEms(Landroid/view/contentcapture/ViewNode;I)V

    .line 964
    return-void
.end method

.method public whitelist setOpaque(Z)V
    .registers 7
    .param p1, "opaque"    # Z

    .line 792
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x400001

    and-long/2addr v1, v3

    if-eqz p1, :cond_12

    const-wide/32 v3, 0x400000

    goto :goto_14

    :cond_12
    const-wide/16 v3, 0x0

    :goto_14
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 793
    return-void
.end method

.method public whitelist setReceiveContentMimeTypes([Ljava/lang/String;)V
    .registers 3
    .param p1, "mimeTypes"    # [Ljava/lang/String;

    .line 938
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmReceiveContentMimeTypes(Landroid/view/contentcapture/ViewNode;[Ljava/lang/String;)V

    .line 939
    return-void
.end method

.method public whitelist setSelected(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 782
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/32 v3, -0x100001

    and-long/2addr v1, v3

    if-eqz p1, :cond_12

    const-wide/32 v3, 0x100000

    goto :goto_14

    :cond_12
    const-wide/16 v3, 0x0

    :goto_14
    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 783
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 807
    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    .line 808
    .local v0, "t":Landroid/view/contentcapture/ViewNode$ViewNodeText;
    invoke-static {p1}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 809
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    iput v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    .line 810
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;II)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I

    .line 814
    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    .line 815
    .local v0, "t":Landroid/view/contentcapture/ViewNode$ViewNodeText;
    invoke-static {p1}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 816
    iput p2, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    .line 817
    iput p3, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    .line 818
    return-void
.end method

.method public whitelist setTextIdEntry(Ljava/lang/String;)V
    .registers 4
    .param p1, "entryName"    # Ljava/lang/String;

    .line 838
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmTextIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method public whitelist setTextLines([I[I)V
    .registers 4
    .param p1, "charOffsets"    # [I
    .param p2, "baselines"    # [I

    .line 831
    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    .line 832
    .local v0, "t":Landroid/view/contentcapture/ViewNode$ViewNodeText;
    iput-object p1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineCharOffsets:[I

    .line 833
    iput-object p2, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineBaselines:[I

    .line 834
    return-void
.end method

.method public whitelist setTextStyle(FIII)V
    .registers 6
    .param p1, "size"    # F
    .param p2, "fgColor"    # I
    .param p3, "bgColor"    # I
    .param p4, "style"    # I

    .line 822
    invoke-direct {p0}, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->getNodeText()Landroid/view/contentcapture/ViewNode$ViewNodeText;

    move-result-object v0

    .line 823
    .local v0, "t":Landroid/view/contentcapture/ViewNode$ViewNodeText;
    iput p2, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    .line 824
    iput p3, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    .line 825
    iput p1, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSize:F

    .line 826
    iput p4, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextStyle:I

    .line 827
    return-void
.end method

.method public whitelist setTransformation(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 707
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setTransformation() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 9
    .param p1, "visibility"    # I

    .line 722
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    iget-object v1, p0, Landroid/view/contentcapture/ViewNode$ViewStructureImpl;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {v1}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J

    move-result-wide v1

    const-wide/16 v3, -0xd

    and-long/2addr v1, v3

    int-to-long v3, p1

    const-wide/16 v5, 0xc

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/ViewNode;->-$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V

    .line 724
    return-void
.end method

.method public whitelist setWebDomain(Ljava/lang/String;)V
    .registers 4
    .param p1, "domain"    # Ljava/lang/String;

    .line 994
    invoke-static {}, Landroid/view/contentcapture/ViewNode;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setWebDomain() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    return-void
.end method
