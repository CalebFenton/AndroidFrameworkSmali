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
.field blacklist fEndChar:I

.field blacklist fFirstInGroup:Z

.field blacklist fIncludesDict:Z

.field blacklist fIncludesSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field blacklist fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

.field blacklist fNum:I

.field blacklist fStartChar:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    .line 46
    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    .line 47
    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 48
    iput-boolean v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    .line 49
    iput-boolean v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    .line 57
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/text/RBBISetBuilder$RangeDescriptor;)V
    .registers 4
    .param p1, "other"    # Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    .line 46
    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    .line 47
    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 48
    iput-boolean v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    .line 49
    iput-boolean v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    .line 60
    iget v0, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    .line 61
    iget v0, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    .line 62
    iget v0, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    iput v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 63
    iget-boolean v0, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    iput-boolean v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    .line 64
    iget-boolean v0, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    iput-boolean v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method blacklist isDictionaryRange()Z
    .registers 8

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 102
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBINode;

    .line 103
    .local v1, "usetNode":Landroid/icu/text/RBBINode;
    const-string v2, ""

    .line 104
    .local v2, "setName":Ljava/lang/String;
    iget-object v3, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 105
    .local v3, "setRef":Landroid/icu/text/RBBINode;
    if-eqz v3, :cond_22

    .line 106
    iget-object v4, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 107
    .local v4, "varRef":Landroid/icu/text/RBBINode;
    if-eqz v4, :cond_22

    iget v5, v4, Landroid/icu/text/RBBINode;->fType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_22

    .line 108
    iget-object v2, v4, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 111
    .end local v4    # "varRef":Landroid/icu/text/RBBINode;
    :cond_22
    const-string v4, "dictionary"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 112
    const/4 v4, 0x1

    return v4

    .line 101
    .end local v1    # "usetNode":Landroid/icu/text/RBBINode;
    .end local v2    # "setName":Ljava/lang/String;
    .end local v3    # "setRef":Landroid/icu/text/RBBINode;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    .end local v0    # "i":I
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method blacklist split(I)V
    .registers 4
    .param p1, "where"    # I

    .line 74
    iget v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    if-le p1, v0, :cond_a

    iget v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 75
    new-instance v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;-><init>(Landroid/icu/text/RBBISetBuilder$RangeDescriptor;)V

    .line 79
    .local v0, "nr":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    iput p1, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    .line 80
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    .line 81
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    iput-object v1, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .line 82
    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .line 87
    return-void
.end method
