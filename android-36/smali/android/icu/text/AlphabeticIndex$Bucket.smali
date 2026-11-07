.class public Landroid/icu/text/AlphabeticIndex$Bucket;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/text/AlphabeticIndex$Record<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o displayBucket:Landroid/icu/text/AlphabeticIndex$Bucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;"
        }
    .end annotation
.end field

.field private greylist-max-o displayIndex:I

.field private final greylist-max-o label:Ljava/lang/String;

.field private final greylist-max-o labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field private final greylist-max-o lowerBoundary:Ljava/lang/String;

.field private greylist-max-o records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/AlphabeticIndex$Record<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdisplayBucket(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayBucket:Landroid/icu/text/AlphabeticIndex$Bucket;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdisplayIndex(Landroid/icu/text/AlphabeticIndex$Bucket;)I
    .registers 1

    iget p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlabelType(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlowerBoundary(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrecords(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputdisplayBucket(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayBucket:Landroid/icu/text/AlphabeticIndex$Bucket;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputdisplayIndex(Landroid/icu/text/AlphabeticIndex$Bucket;I)V
    .registers 2

    iput p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputrecords(Landroid/icu/text/AlphabeticIndex$Bucket;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;)V
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "lowerBoundary"    # Ljava/lang/String;
    .param p3, "labelType"    # Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    .line 899
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    .line 901
    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    .line 902
    iput-object p3, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    .line 903
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getLabel()Ljava/lang/String;
    .registers 2

    .line 911
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getLabelType()Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .registers 2

    .line 920
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/text/AlphabeticIndex$Record<",
            "TV;>;>;"
        }
    .end annotation

    .line 937
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    if-nez v0, :cond_d

    .line 938
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 940
    :cond_d
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 929
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 948
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{labelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowerBoundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
