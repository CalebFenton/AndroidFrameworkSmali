.class public final Landroid/os/StrictMode$VmPolicy$Builder;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode$VmPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClassInstanceLimit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClassInstanceLimitNeedCow:Z

.field private mMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 649
    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    #@6
    .line 652
    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    #@8
    .line 651
    return-void
.end method

.method public constructor <init>(Landroid/os/StrictMode$VmPolicy;)V
    .locals 1
    .param p1, "base"    # Landroid/os/StrictMode$VmPolicy;

    #@0
    .prologue
    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 649
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    #@6
    .line 659
    iget v0, p1, Landroid/os/StrictMode$VmPolicy;->mask:I

    #@8
    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    #@a
    .line 660
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    #@d
    .line 661
    iget-object v0, p1, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    #@f
    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    #@11
    .line 658
    return-void
.end method

.method private enable(I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1
    .param p1, "bit"    # I

    #@0
    .prologue
    .line 818
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    #@5
    .line 819
    return-object p0
.end method


# virtual methods
.method public build()Landroid/os/StrictMode$VmPolicy;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 832
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 833
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    #@7
    const/high16 v1, 0x270000

    #@9
    and-int/2addr v0, v1

    #@a
    if-nez v0, :cond_0

    #@c
    .line 835
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    #@f
    .line 837
    :cond_0
    new-instance v1, Landroid/os/StrictMode$VmPolicy;

    #@11
    iget v2, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    #@13
    .line 838
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    #@15
    if-eqz v0, :cond_1

    #@17
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    #@19
    .line 837
    :goto_0
    invoke-direct {v1, v2, v0, v3}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$VmPolicy;)V

    #@1c
    return-object v1

    #@1d
    .line 838
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->-get0()Ljava/util/HashMap;

    #@20
    move-result-object v0

    #@21
    goto :goto_0
.end method

.method public detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 692
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public detectAll()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 3

    #@0
    .prologue
    .line 703
    const/16 v0, 0x3700

    #@2
    .line 709
    .local v0, "flags":I
    const-string/jumbo v1, "persist.sys.strictmode.clear"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 710
    const/16 v0, 0x7700

    #@e
    .line 713
    :cond_0
    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public detectCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 778
    const/16 v0, 0x4000

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 757
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 738
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 747
    const/16 v0, 0x1000

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 726
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 787
    const/high16 v0, 0x40000

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public penaltyDeathOnCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 797
    const/high16 v0, 0x800000

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 814
    const/high16 v0, 0x200000

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 804
    const/high16 v0, 0x10000

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setClassInstanceLimit(Ljava/lang/Class;I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 2
    .param p1, "klass"    # Ljava/lang/Class;
    .param p2, "instanceLimit"    # I

    #@0
    .prologue
    .line 669
    if-nez p1, :cond_0

    #@2
    .line 670
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "klass == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 672
    :cond_0
    iget-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    #@d
    if-eqz v0, :cond_3

    #@f
    .line 673
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 674
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    #@19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/Integer;

    #@1f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@22
    move-result v0

    #@23
    if-ne v0, p2, :cond_1

    #@25
    .line 676
    return-object p0

    #@26
    .line 678
    :cond_1
    const/4 v0, 0x0

    #@27
    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    #@29
    .line 679
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    #@2b
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Ljava/util/HashMap;

    #@31
    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    #@33
    .line 683
    :cond_2
    :goto_0
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    #@35
    or-int/lit16 v0, v0, 0x800

    #@37
    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    #@39
    .line 684
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    #@3b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 685
    return-object p0

    #@43
    .line 680
    :cond_3
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    #@45
    if-nez v0, :cond_2

    #@47
    .line 681
    new-instance v0, Ljava/util/HashMap;

    #@49
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@4c
    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    #@4e
    goto :goto_0
.end method
