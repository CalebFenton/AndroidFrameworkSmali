.class public final Landroid/view/textclassifier/TextClassifier$EntityConfig;
.super Ljava/lang/Object;
.source "TextClassifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntityConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExcludedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIncludeTypesFromTextClassifier:Z

.field private final blacklist mIncludedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 612
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedTypes:Ljava/util/List;

    .line 494
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedTypes:Ljava/util/List;

    .line 496
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v0, "tmpHints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 499
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mHints:Ljava/util/List;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    iput-boolean v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludeTypesFromTextClassifier:Z

    .line 501
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifier$EntityConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .registers 6
    .param p4, "includeTypesFromTextClassifier"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 485
    .local p1, "includedEntityTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "excludedEntityTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedTypes:Ljava/util/List;

    .line 487
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedTypes:Ljava/util/List;

    .line 488
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mHints:Ljava/util/List;

    .line 489
    iput-boolean p4, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludeTypesFromTextClassifier:Z

    .line 490
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLandroid/view/textclassifier/TextClassifier-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/textclassifier/TextClassifier$EntityConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public static whitelist create(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 542
    .local p0, "hints":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p1, "includedEntityTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "excludedEntityTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;-><init>()V

    .line 543
    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->setIncludedTypes(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object v0

    .line 544
    invoke-virtual {v0, p2}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->setExcludedTypes(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object v0

    .line 545
    invoke-virtual {v0, p0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->setHints(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object v0

    .line 546
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->includeTypesFromTextClassifier(Z)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->build()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v0

    .line 542
    return-object v0
.end method

.method public static whitelist createWithExplicitEntityList(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 560
    .local p0, "entityTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;-><init>()V

    .line 561
    invoke-virtual {v0, p0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->setIncludedTypes(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object v0

    .line 562
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->includeTypesFromTextClassifier(Z)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->build()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v0

    .line 560
    return-object v0
.end method

.method public static whitelist createWithHints(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 520
    .local p0, "hints":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;-><init>()V

    .line 521
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->includeTypesFromTextClassifier(Z)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object v0

    .line 522
    invoke-virtual {v0, p0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->setHints(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->build()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v0

    .line 520
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 609
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHints()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mHints:Ljava/util/List;

    return-object v0
.end method

.method public whitelist resolveEntityListModifications(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 576
    .local p1, "entityTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 577
    .local v0, "finalSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludeTypesFromTextClassifier:Z

    if-eqz v1, :cond_c

    .line 578
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 580
    :cond_c
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedTypes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 581
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedTypes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 582
    return-object v0
.end method

.method public whitelist shouldIncludeTypesFromTextClassifier()Z
    .registers 2

    .line 604
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludeTypesFromTextClassifier:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 505
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludedTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 506
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mExcludedTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 507
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mHints:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 508
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig;->mIncludeTypesFromTextClassifier:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 509
    return-void
.end method
