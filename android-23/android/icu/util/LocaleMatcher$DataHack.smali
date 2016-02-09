.class Landroid/icu/util/LocaleMatcher$DataHack;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataHack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/util/LocaleMatcher$DataHack;",
        ">;"
    }
.end annotation


# static fields
.field static final STAR_KEEP:Ljava/util/regex/Pattern;


# instance fields
.field percent:I

.field final source:Ljava/lang/String;

.field final target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 797
    const-string/jumbo v0, "([^_]+)(?:_[^_]+(?:_[^_]+)?)?"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/icu/util/LocaleMatcher$DataHack;->STAR_KEEP:Ljava/util/regex/Pattern;

    #@9
    .line 788
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "percent"    # I

    #@0
    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 793
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$DataHack;->source:Ljava/lang/String;

    #@5
    .line 794
    const-string/jumbo v0, "de_CH"

    #@8
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    const-string/jumbo p2, "de"

    #@11
    .end local p2    # "target":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Landroid/icu/util/LocaleMatcher$DataHack;->target:Ljava/lang/String;

    #@13
    .line 795
    iput p3, p0, Landroid/icu/util/LocaleMatcher$DataHack;->percent:I

    #@15
    .line 792
    return-void
.end method

.method private getUnderbars(Ljava/lang/String;)I
    .locals 3
    .param p1, "source2"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x5f

    #@2
    const/4 v1, 0x0

    #@3
    .line 839
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 840
    .local v0, "pos":I
    if-gez v0, :cond_0

    #@9
    .line 841
    return v1

    #@a
    .line 843
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@c
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    #@f
    move-result v0

    #@10
    .line 844
    if-gez v0, :cond_1

    #@12
    const/4 v1, 0x1

    #@13
    :goto_0
    return v1

    #@14
    :cond_1
    const/4 v1, 0x2

    #@15
    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/icu/util/LocaleMatcher$DataHack;)I
    .locals 9
    .param p1, "other"    # Landroid/icu/util/LocaleMatcher$DataHack;

    #@0
    .prologue
    const/16 v8, 0xfe

    #@2
    const/16 v7, 0x2a

    #@4
    .line 800
    iget-object v5, p0, Landroid/icu/util/LocaleMatcher$DataHack;->source:Ljava/lang/String;

    #@6
    invoke-direct {p0, v5}, Landroid/icu/util/LocaleMatcher$DataHack;->getUnderbars(Ljava/lang/String;)I

    #@9
    move-result v5

    #@a
    iget-object v6, p1, Landroid/icu/util/LocaleMatcher$DataHack;->source:Ljava/lang/String;

    #@c
    invoke-direct {p0, v6}, Landroid/icu/util/LocaleMatcher$DataHack;->getUnderbars(Ljava/lang/String;)I

    #@f
    move-result v6

    #@10
    sub-int v0, v5, v6

    #@12
    .line 801
    .local v0, "diff":I
    if-eqz v0, :cond_0

    #@14
    .line 802
    return v0

    #@15
    .line 804
    :cond_0
    iget-object v5, p0, Landroid/icu/util/LocaleMatcher$DataHack;->source:Ljava/lang/String;

    #@17
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 805
    .local v3, "thisSource":Ljava/lang/String;
    iget-object v5, p1, Landroid/icu/util/LocaleMatcher$DataHack;->source:Ljava/lang/String;

    #@1d
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 806
    .local v1, "otherSource":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@24
    move-result v0

    #@25
    .line 807
    if-eqz v0, :cond_1

    #@27
    .line 808
    return v0

    #@28
    .line 810
    :cond_1
    iget-object v5, p0, Landroid/icu/util/LocaleMatcher$DataHack;->target:Ljava/lang/String;

    #@2a
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 811
    .local v4, "thisTarget":Ljava/lang/String;
    iget-object v5, p1, Landroid/icu/util/LocaleMatcher$DataHack;->target:Ljava/lang/String;

    #@30
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    .line 812
    .local v2, "otherTarget":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@37
    move-result v0

    #@38
    .line 826
    if-eqz v0, :cond_2

    #@3a
    .line 827
    return v0

    #@3b
    .line 829
    :cond_2
    iget-object v5, p0, Landroid/icu/util/LocaleMatcher$DataHack;->source:Ljava/lang/String;

    #@3d
    iget-object v6, p1, Landroid/icu/util/LocaleMatcher$DataHack;->source:Ljava/lang/String;

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@42
    move-result v0

    #@43
    .line 830
    if-eqz v0, :cond_3

    #@45
    .line 831
    return v0

    #@46
    .line 833
    :cond_3
    iget-object v5, p0, Landroid/icu/util/LocaleMatcher$DataHack;->target:Ljava/lang/String;

    #@48
    iget-object v6, p1, Landroid/icu/util/LocaleMatcher$DataHack;->target:Ljava/lang/String;

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@4d
    move-result v5

    #@4e
    return v5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 798
    check-cast p1, Landroid/icu/util/LocaleMatcher$DataHack;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/util/LocaleMatcher$DataHack;->compareTo(Landroid/icu/util/LocaleMatcher$DataHack;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$DataHack;->source:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ", "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$DataHack;->target:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, " => "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget v1, p0, Landroid/icu/util/LocaleMatcher$DataHack;->percent:I

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method
