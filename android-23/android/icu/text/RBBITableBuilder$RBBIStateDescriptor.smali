.class Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
.super Ljava/lang/Object;
.source "RBBITableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBITableBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RBBIStateDescriptor"
.end annotation


# instance fields
.field fAccepting:I

.field fDtran:[I

.field fLookAhead:I

.field fMarked:Z

.field fPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fTagVals:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fTagsIdx:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxInputSymbol"    # I

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-instance v0, Ljava/util/TreeSet;

    #@5
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagVals:Ljava/util/SortedSet;

    #@a
    .line 54
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    #@11
    .line 55
    add-int/lit8 v0, p1, 0x1

    #@13
    new-array v0, v0, [I

    #@15
    iput-object v0, p0, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    #@17
    .line 52
    return-void
.end method
