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
        "Ljava/util/Iterator<",
        "Landroid/icu/impl/Trie2$Range;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o doLeadSurrogates:Z

.field private greylist-max-o doingCodePoints:Z

.field private greylist-max-o limitCP:I

.field private greylist-max-o mapper:Landroid/icu/impl/Trie2$ValueMapper;

.field private greylist-max-o nextStart:I

.field private greylist-max-o returnValue:Landroid/icu/impl/Trie2$Range;

.field final synthetic blacklist this$0:Landroid/icu/impl/Trie2;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/Trie2;CLandroid/icu/impl/Trie2$ValueMapper;)V
    .registers 6
    .param p1, "this$0"    # Landroid/icu/impl/Trie2;
    .param p2, "leadSurrogate"    # C
    .param p3, "vm"    # Landroid/icu/impl/Trie2$ValueMapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 871
    iput-object p1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    new-instance v0, Landroid/icu/impl/Trie2$Range;

    invoke-direct {v0}, Landroid/icu/impl/Trie2$Range;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    .line 1001
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    .line 1005
    iput-boolean v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    .line 872
    const v0, 0xd800

    if-lt p2, v0, :cond_30

    const v0, 0xdbff

    if-gt p2, v0, :cond_30

    .line 875
    iput-object p3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    .line 876
    const v0, 0xd7c0

    sub-int v0, p2, v0

    shl-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    .line 877
    iget v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    .line 880
    return-void

    .line 873
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad lead surrogate value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueMapper;)V
    .registers 5
    .param p1, "this$0"    # Landroid/icu/impl/Trie2;
    .param p2, "vm"    # Landroid/icu/impl/Trie2$ValueMapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 862
    iput-object p1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    new-instance v0, Landroid/icu/impl/Trie2$Range;

    invoke-direct {v0}, Landroid/icu/impl/Trie2$Range;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    .line 1001
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    .line 1005
    iput-boolean v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    .line 863
    iput-object p2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    .line 864
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    .line 865
    const/high16 v1, 0x110000

    iput v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    .line 866
    iput-boolean v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    .line 867
    return-void
.end method

.method private greylist-max-o rangeEndLS(C)I
    .registers 7
    .param p1, "startingLS"    # C

    .line 974
    const v0, 0xdbff

    if-lt p1, v0, :cond_6

    .line 975
    return v0

    .line 979
    :cond_6
    iget-object v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2;->getFromU16SingleLead(C)I

    move-result v1

    .line 980
    .local v1, "val":I
    add-int/lit8 v2, p1, 0x1

    .local v2, "c":I
    :goto_e
    if-gt v2, v0, :cond_1d

    .line 981
    iget-object v3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    int-to-char v4, v2

    invoke-virtual {v3, v4}, Landroid/icu/impl/Trie2;->getFromU16SingleLead(C)I

    move-result v3

    if-eq v3, v1, :cond_1a

    .line 982
    goto :goto_1d

    .line 980
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 985
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v2, -0x1

    return v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 949
    iget-boolean v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    if-nez v0, :cond_15

    iget v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iget v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    if-lt v0, v1, :cond_15

    :cond_e
    iget v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    const v1, 0xdc00

    if-ge v0, v1, :cond_17

    :cond_15
    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public blacklist next()Landroid/icu/impl/Trie2$Range;
    .registers 7

    .line 888
    invoke-virtual {p0}, Landroid/icu/impl/Trie2$Trie2Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 891
    iget v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iget v1, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    if-lt v0, v1, :cond_14

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    .line 895
    const v0, 0xd800

    iput v0, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    .line 897
    :cond_14
    const/4 v0, 0x0

    .line 898
    .local v0, "endOfRange":I
    const/4 v1, 0x0

    .line 899
    .local v1, "val":I
    const/4 v2, 0x0

    .line 901
    .local v2, "mappedVal":I
    iget-boolean v3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    if-eqz v3, :cond_56

    .line 903
    iget-object v3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    iget v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    invoke-virtual {v3, v4}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v1

    .line 904
    iget-object v3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-interface {v3, v1}, Landroid/icu/impl/Trie2$ValueMapper;->map(I)I

    move-result v3

    .line 905
    .end local v2    # "mappedVal":I
    .local v3, "mappedVal":I
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    iget v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iget v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    invoke-virtual {v2, v4, v5, v1}, Landroid/icu/impl/Trie2;->rangeEnd(III)I

    move-result v0

    .line 909
    :goto_33
    iget v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_3a

    .line 910
    goto :goto_84

    .line 912
    :cond_3a
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v1

    .line 913
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-interface {v2, v1}, Landroid/icu/impl/Trie2$ValueMapper;->map(I)I

    move-result v2

    if-eq v2, v3, :cond_4b

    .line 914
    goto :goto_84

    .line 916
    :cond_4b
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    invoke-virtual {v2, v4, v5, v1}, Landroid/icu/impl/Trie2;->rangeEnd(III)I

    move-result v0

    goto :goto_33

    .line 920
    .end local v3    # "mappedVal":I
    .restart local v2    # "mappedVal":I
    :cond_56
    iget-object v3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    iget v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Landroid/icu/impl/Trie2;->getFromU16SingleLead(C)I

    move-result v1

    .line 921
    iget-object v3, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-interface {v3, v1}, Landroid/icu/impl/Trie2$ValueMapper;->map(I)I

    move-result v3

    .line 922
    .end local v2    # "mappedVal":I
    .restart local v3    # "mappedVal":I
    iget v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    int-to-char v2, v2

    invoke-direct {p0, v2}, Landroid/icu/impl/Trie2$Trie2Iterator;->rangeEndLS(C)I

    move-result v0

    .line 926
    :goto_6c
    const v2, 0xdbff

    if-lt v0, v2, :cond_72

    .line 927
    goto :goto_84

    .line 929
    :cond_72
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->this$0:Landroid/icu/impl/Trie2;

    add-int/lit8 v4, v0, 0x1

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Landroid/icu/impl/Trie2;->getFromU16SingleLead(C)I

    move-result v1

    .line 930
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->mapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-interface {v2, v1}, Landroid/icu/impl/Trie2$ValueMapper;->map(I)I

    move-result v2

    if-eq v2, v3, :cond_a1

    .line 931
    nop

    .line 936
    :goto_84
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    iget v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iput v4, v2, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    .line 937
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    iput v0, v2, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    .line 938
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    iput v3, v2, Landroid/icu/impl/Trie2$Range;->value:I

    .line 939
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    iget-boolean v4, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v2, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    .line 940
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    .line 941
    iget-object v2, p0, Landroid/icu/impl/Trie2$Trie2Iterator;->returnValue:Landroid/icu/impl/Trie2$Range;

    return-object v2

    .line 933
    :cond_a1
    add-int/lit8 v2, v0, 0x1

    int-to-char v2, v2

    invoke-direct {p0, v2}, Landroid/icu/impl/Trie2$Trie2Iterator;->rangeEndLS(C)I

    move-result v0

    goto :goto_6c

    .line 889
    .end local v0    # "endOfRange":I
    .end local v1    # "val":I
    .end local v3    # "mappedVal":I
    :cond_a9
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 859
    invoke-virtual {p0}, Landroid/icu/impl/Trie2$Trie2Iterator;->next()Landroid/icu/impl/Trie2$Range;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 954
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
