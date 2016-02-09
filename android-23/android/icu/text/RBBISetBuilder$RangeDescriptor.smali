.class Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
.super Ljava/lang/Object;
.source "RBBISetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBISetBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeDescriptor"
.end annotation


# instance fields
.field fEndChar:I

.field fIncludesSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

.field fNum:I

.field fStartChar:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@a
    .line 47
    return-void
.end method

.method constructor <init>(Landroid/icu/text/RBBISetBuilder$RangeDescriptor;)V
    .locals 2
    .param p1, "other"    # Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iget v0, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    #@5
    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    #@7
    .line 53
    iget v0, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    #@9
    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    #@b
    .line 54
    iget v0, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@d
    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@f
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    #@11
    iget-object v1, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@16
    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@18
    .line 51
    return-void
.end method


# virtual methods
.method setDictionaryFlag()V
    .locals 7

    #@0
    .prologue
    .line 101
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@3
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@6
    move-result v5

    #@7
    if-ge v0, v5, :cond_1

    #@9
    .line 102
    iget-object v5, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@b
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/icu/text/RBBINode;

    #@11
    .line 103
    .local v3, "usetNode":Landroid/icu/text/RBBINode;
    const-string/jumbo v1, ""

    #@14
    .line 104
    .local v1, "setName":Ljava/lang/String;
    iget-object v2, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@16
    .line 105
    .local v2, "setRef":Landroid/icu/text/RBBINode;
    if-eqz v2, :cond_0

    #@18
    .line 106
    iget-object v4, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@1a
    .line 107
    .local v4, "varRef":Landroid/icu/text/RBBINode;
    if-eqz v4, :cond_0

    #@1c
    iget v5, v4, Landroid/icu/text/RBBINode;->fType:I

    #@1e
    const/4 v6, 0x2

    #@1f
    if-ne v5, v6, :cond_0

    #@21
    .line 108
    iget-object v1, v4, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@23
    .line 111
    .end local v4    # "varRef":Landroid/icu/text/RBBINode;
    :cond_0
    const-string/jumbo v5, "dictionary"

    #@26
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_2

    #@2c
    .line 112
    iget v5, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@2e
    or-int/lit16 v5, v5, 0x4000

    #@30
    iput v5, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@32
    .line 98
    .end local v1    # "setName":Ljava/lang/String;
    .end local v2    # "setRef":Landroid/icu/text/RBBINode;
    .end local v3    # "usetNode":Landroid/icu/text/RBBINode;
    :cond_1
    return-void

    #@33
    .line 101
    .restart local v1    # "setName":Ljava/lang/String;
    .restart local v2    # "setRef":Landroid/icu/text/RBBINode;
    .restart local v3    # "usetNode":Landroid/icu/text/RBBINode;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0
.end method

.method split(I)V
    .locals 3
    .param p1, "where"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 64
    iget v2, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    #@3
    if-le p1, v2, :cond_0

    #@5
    iget v2, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    #@7
    if-gt p1, v2, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :cond_0
    invoke-static {v1}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@d
    .line 65
    new-instance v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@f
    invoke-direct {v0, p0}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;-><init>(Landroid/icu/text/RBBISetBuilder$RangeDescriptor;)V

    #@12
    .line 69
    .local v0, "nr":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    iput p1, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    #@14
    .line 70
    add-int/lit8 v1, p1, -0x1

    #@16
    iput v1, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    #@18
    .line 71
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@1a
    iput-object v1, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@1c
    .line 72
    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@1e
    .line 63
    return-void
.end method
