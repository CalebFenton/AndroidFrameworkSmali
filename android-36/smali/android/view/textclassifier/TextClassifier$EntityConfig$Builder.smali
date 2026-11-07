.class public final Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;
.super Ljava/lang/Object;
.source "TextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifier$EntityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExcludedTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIncludeTypesFromTextClassifier:Z

.field private blacklist mIncludedTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mIncludeTypesFromTextClassifier:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .registers 7

    .line 683
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 684
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mIncludedTypes:Ljava/util/Collection;

    if-nez v1, :cond_b

    .line 685
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_12

    .line 686
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mIncludedTypes:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 687
    :goto_12
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mExcludedTypes:Ljava/util/Collection;

    if-nez v2, :cond_1b

    .line 688
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_22

    .line 689
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mExcludedTypes:Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 690
    :goto_22
    iget-object v3, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mHints:Ljava/util/Collection;

    if-nez v3, :cond_2b

    .line 691
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_36

    .line 692
    :cond_2b
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mHints:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_36
    iget-boolean v4, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mIncludeTypesFromTextClassifier:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/TextClassifier$EntityConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLandroid/view/textclassifier/TextClassifier-IA;)V

    .line 683
    return-object v0
.end method

.method public whitelist includeTypesFromTextClassifier(Z)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;
    .registers 2
    .param p1, "includeTypesFromTextClassifier"    # Z

    .line 661
    iput-boolean p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mIncludeTypesFromTextClassifier:Z

    .line 662
    return-object p0
.end method

.method public whitelist setExcludedTypes(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;"
        }
    .end annotation

    .line 651
    .local p1, "excludedTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mExcludedTypes:Ljava/util/Collection;

    .line 652
    return-object p0
.end method

.method public whitelist setHints(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;"
        }
    .end annotation

    .line 673
    .local p1, "hints":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mHints:Ljava/util/Collection;

    .line 674
    return-object p0
.end method

.method public whitelist setIncludedTypes(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;"
        }
    .end annotation

    .line 642
    .local p1, "includedTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mIncludedTypes:Ljava/util/Collection;

    .line 643
    return-object p0
.end method
