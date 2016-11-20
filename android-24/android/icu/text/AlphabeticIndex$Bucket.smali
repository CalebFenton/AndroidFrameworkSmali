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
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/text/AlphabeticIndex$Record",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private displayBucket:Landroid/icu/text/AlphabeticIndex$Bucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;"
        }
    .end annotation
.end field

.field private displayIndex:I

.field private final label:Ljava/lang/String;

.field private final labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field private final lowerBoundary:Ljava/lang/String;

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Record",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayBucket:Landroid/icu/text/AlphabeticIndex$Bucket;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/AlphabeticIndex$Bucket;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayIndex:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayBucket:Landroid/icu/text/AlphabeticIndex$Bucket;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/icu/text/AlphabeticIndex$Bucket;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->displayIndex:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/icu/text/AlphabeticIndex$Bucket;Ljava/util/List;)Ljava/util/List;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    #@2
    return-object p1
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "lowerBoundary"    # Ljava/lang/String;
    .param p3, "labelType"    # Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@0
    .prologue
    .line 897
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex<TV;>.Bucket<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 898
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    #@5
    .line 899
    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    #@7
    .line 900
    iput-object p3, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@9
    .line 897
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$Bucket;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "lowerBoundary"    # Ljava/lang/String;
    .param p3, "labelType"    # Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@0
    .prologue
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex<TV;>.Bucket<TV;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;)V

    #@3
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 909
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex<TV;>.Bucket<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLabelType()Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 1

    #@0
    .prologue
    .line 918
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex<TV;>.Bucket<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@2
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Record",
            "<TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 934
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex<TV;>.Bucket<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 935
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 937
    :cond_0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    #@f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 927
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex<TV;>.Bucket<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->records:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 945
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex<TV;>.Bucket<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{labelType="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 946
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->labelType:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@e
    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 947
    const-string/jumbo v1, ", "

    #@15
    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 948
    const-string/jumbo v1, "lowerBoundary="

    #@1c
    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 948
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->lowerBoundary:Ljava/lang/String;

    #@22
    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 949
    const-string/jumbo v1, ", "

    #@29
    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 950
    const-string/jumbo v1, "label="

    #@30
    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 950
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$Bucket;->label:Ljava/lang/String;

    #@36
    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 951
    const-string/jumbo v1, "}"

    #@3d
    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    return-object v0
.end method
