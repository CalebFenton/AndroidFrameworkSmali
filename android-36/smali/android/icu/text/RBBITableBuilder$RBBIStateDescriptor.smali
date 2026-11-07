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
.field blacklist fAccepting:I

.field blacklist fDtran:[I

.field blacklist fLookAhead:I

.field blacklist fMarked:Z

.field blacklist fPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field blacklist fTagVals:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist fTagsIdx:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "maxInputSymbol"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagVals:Ljava/util/SortedSet;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    .line 57
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    .line 61
    return-void
.end method
