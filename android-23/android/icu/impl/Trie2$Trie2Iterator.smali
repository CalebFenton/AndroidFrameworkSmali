.class Landroid/icu/impl/Trie2$Trie2Iterator;
.super Ljava/lang/Object;
.source "Trie2.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Trie2Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/icu/impl/Trie2$Range;",
        ">;"
    }
.end annotation


# instance fields
.field private doLeadSurrogates:Z

.field private doingCodePoints:Z

.field private limitCP:I

.field private mapper:Landroid/icu/impl/Trie2$ValueMapper;

.field private nextStart:I

.field private returnValue:Landroid/icu/impl/Trie2$Range;

.field final synthetic this$0:Landroid/icu/impl/Trie2;


# direct methods
.method constructor <init>(Landroid/icu/impl/Trie2;CLandroid/icu/impl/Trie2$ValueMapper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/icu/impl/Trie2;
    .param p2, "leadSurrogate"    # C
    .param p3, "vm"    # Landroid/icu/impl/Trie2$ValueMapper;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 864
    iput-object p1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 982
    new-instance v0, Landroid/icu/impl/Trie2$Range;

    #@8
    invoke-direct {v0}, Landroid/icu/impl/Trie2$Range;-><init>()V

    #@b
    iput-object v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    #@d
    .line 991
    iput-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    #@f
    .line 995
    iput-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    #@11
    .line 865
    const v0, 0xd800

    #@14
    if-lt p2, v0, :cond_0

    #@16
    const v0, 0xdbff

    #@19
    if-le p2, v0, :cond_1

    #@1b
    .line 866
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v1, "Bad lead surrogate value."

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 868
    :cond_1
    iput-object p3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@26
    .line 869
    const v0, 0xd7c0

    #@29
    sub-int v0, p2, v0

    #@2b
    shl-int/lit8 v0, v0, 0xa

    #@2d
    iput v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    #@2f
    .line 870
    iget v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    #@31
    add-int/lit16 v0, v0, 0x400

    #@33
    iput v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    #@35
    .line 871
    const/4 v0, 0x0

    #@36
    iput-boolean v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    #@38
    .line 864
    return-void
.end method

.method constructor <init>(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueMapper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/icu/impl/Trie2;
    .param p2, "vm"    # Landroid/icu/impl/Trie2$ValueMapper;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 855
    iput-object p1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 982
    new-instance v0, Landroid/icu/impl/Trie2$Range;

    #@8
    invoke-direct {v0}, Landroid/icu/impl/Trie2$Range;-><init>()V

    #@b
    iput-object v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    #@d
    .line 991
    iput-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    #@f
    .line 995
    iput-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    #@11
    .line 856
    iput-object p2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@13
    .line 857
    const/4 v0, 0x0

    #@14
    iput v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    #@16
    .line 858
    const/high16 v0, 0x110000

    #@18
    iput v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    #@1a
    .line 859
    iput-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    #@1c
    .line 855
    return-void
.end method

.method private rangeEndLS(C)I
    .locals 5
    .param p1, "startingLS"    # C

    #@0
    .prologue
    const v4, 0xdbff

    #@3
    .line 964
    if-lt p1, v4, :cond_0

    #@5
    .line 965
    return v4

    #@6
    .line 969
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    #@8
    invoke-virtual {v2, p1}, Landroid/icu/impl/Trie2;->getFromU16SingleLead(C)I

    #@b
    move-result v1

    #@c
    .line 970
    .local v1, "val":I
    add-int/lit8 v0, p1, 0x1

    #@e
    .local v0, "c":I
    :goto_0
    if-gt v0, v4, :cond_1

    #@10
    .line 971
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    #@12
    int-to-char v3, v0

    #@13
    invoke-virtual {v2, v3}, Landroid/icu/impl/Trie2;->getFromU16SingleLead(C)I

    #@16
    move-result v2

    #@17
    if-eq v2, v1, :cond_2

    #@19
    .line 975
    :cond_1
    add-int/lit8 v2, v0, -0x1

    #@1b
    return v2

    #@1c
    .line 970
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 940
    iget-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-boolean v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    #@7
    if-nez v1, :cond_0

    #@9
    iget v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    #@b
    iget v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    #@d
    if-ge v1, v2, :cond_1

    #@f
    :cond_0
    :goto_0
    return v0

    #@10
    :cond_1
    iget v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    #@12
    const v2, 0xdc00

    #@15
    if-lt v1, v2, :cond_0

    #@17
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method public next()Landroid/icu/impl/Trie2$Range;
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 880
    invoke-virtual {p0}, Landroid/icu/impl/Trie2$Trie2Iterator;->hasNext()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 881
    new-instance v3, Ljava/util/NoSuchElementException;

    #@9
    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    #@c
    throw v3

    #@d
    .line 883
    :cond_0
    iget v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    #@f
    iget v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    #@11
    if-lt v4, v5, :cond_1

    #@13
    .line 886
    iput-boolean v3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    #@15
    .line 887
    const v4, 0xd800

    #@18
    iput v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    #@1a
    .line 889
    :cond_1
    const/4 v0, 0x0

    #@1b
    .line 890
    .local v0, "endOfRange":I
    const/4 v2, 0x0

    #@1c
    .line 891
    .local v2, "val":I
    const/4 v1, 0x0

    #@1d
    .line 893
    .local v1, "mappedVal":I
    iget-boolean v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    #@1f
    if-eqz v4, :cond_4

    #@21
    .line 895
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    #@23
    iget v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    #@25
    invoke-virtual {v4, v5}, Landroid/icu/impl/Trie2;->get(I)I

    #@28
    move-result v2

    #@29
    .line 896
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@2b
    invoke-interface {v4, v2}, Landroid/icu/impl/Trie2$ValueMapper;->map(I)I

    #@2e
    move-result v1

    #@2f
    .line 897
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    #@31
    iget v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    #@33
    iget v6, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    #@35
    invoke-virtual {v4, v5, v6, v2}, Landroid/icu/impl/Trie2;->rangeEnd(III)I

    #@38
    move-result v0

    #@39
    .line 901
    :goto_0
    iget v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    #@3b
    add-int/lit8 v4, v4, -0x1

    #@3d
    if-lt v0, v4, :cond_3

    #@3f
    .line 928
    :cond_2
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    #@41
    iget v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    #@43
    iput v5, v4, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@45
    .line 929
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    #@47
    iput v0, v4, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@49
    .line 930
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    #@4b
    iput v1, v4, Landroid/icu/impl/Trie2$Range;->value:I

    #@4d
    .line 931
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    #@4f
    iget-boolean v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    #@51
    if-eqz v5, :cond_5

    #@53
    :goto_1
    iput-boolean v3, v4, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@55
    .line 932
    add-int/lit8 v3, v0, 0x1

    #@57
    iput v3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    #@59
    .line 933
    iget-object v3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    #@5b
    return-object v3

    #@5c
    .line 904
    :cond_3
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    #@5e
    add-int/lit8 v5, v0, 0x1

    #@60
    invoke-virtual {v4, v5}, Landroid/icu/impl/Trie2;->get(I)I

    #@63
    move-result v2

    #@64
    .line 905
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@66
    invoke-interface {v4, v2}, Landroid/icu/impl/Trie2$ValueMapper;->map(I)I

    #@69
    move-result v4

    #@6a
    if-ne v4, v1, :cond_2

    #@6c
    .line 908
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    #@6e
    add-int/lit8 v5, v0, 0x1

    #@70
    iget v6, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    #@72
    invoke-virtual {v4, v5, v6, v2}, Landroid/icu/impl/Trie2;->rangeEnd(III)I

    #@75
    move-result v0

    #@76
    goto :goto_0

    #@77
    .line 912
    :cond_4
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    #@79
    iget v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    #@7b
    int-to-char v5, v5

    #@7c
    invoke-virtual {v4, v5}, Landroid/icu/impl/Trie2;->getFromU16SingleLead(C)I

    #@7f
    move-result v2

    #@80
    .line 913
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@82
    invoke-interface {v4, v2}, Landroid/icu/impl/Trie2$ValueMapper;->map(I)I

    #@85
    move-result v1

    #@86
    .line 914
    iget v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    #@88
    int-to-char v4, v4

    #@89
    invoke-direct {p0, v4}, Landroid/icu/impl/Trie2$Trie2Iterator;->rangeEndLS(C)I

    #@8c
    move-result v0

    #@8d
    .line 918
    :goto_2
    const v4, 0xdbff

    #@90
    if-ge v0, v4, :cond_2

    #@92
    .line 921
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    #@94
    add-int/lit8 v5, v0, 0x1

    #@96
    int-to-char v5, v5

    #@97
    invoke-virtual {v4, v5}, Landroid/icu/impl/Trie2;->getFromU16SingleLead(C)I

    #@9a
    move-result v2

    #@9b
    .line 922
    iget-object v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@9d
    invoke-interface {v4, v2}, Landroid/icu/impl/Trie2$ValueMapper;->map(I)I

    #@a0
    move-result v4

    #@a1
    if-ne v4, v1, :cond_2

    #@a3
    .line 925
    add-int/lit8 v4, v0, 0x1

    #@a5
    int-to-char v4, v4

    #@a6
    invoke-direct {p0, v4}, Landroid/icu/impl/Trie2$Trie2Iterator;->rangeEndLS(C)I

    #@a9
    move-result v0

    #@aa
    goto :goto_2

    #@ab
    .line 931
    :cond_5
    const/4 v3, 0x1

    #@ac
    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 879
    invoke-virtual {p0}, Landroid/icu/impl/Trie2$Trie2Iterator;->next()Landroid/icu/impl/Trie2$Range;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 944
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
