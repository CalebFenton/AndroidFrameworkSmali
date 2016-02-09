.class Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPUStringPool"
.end annotation


# instance fields
.field private fHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private fVec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1397
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    #@a
    .line 1398
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fHash:Ljava/util/Hashtable;

    #@11
    .line 1396
    return-void
.end method


# virtual methods
.method public addString(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1415
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fHash:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    #@8
    .line 1416
    .local v0, "hashedString":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    if-nez v0, :cond_0

    #@a
    .line 1417
    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    #@c
    .end local v0    # "hashedString":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    invoke-direct {v0, p1}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;-><init>(Ljava/lang/String;)V

    #@f
    .line 1418
    .restart local v0    # "hashedString":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fHash:Ljava/util/Hashtable;

    #@11
    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 1419
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    #@16
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@19
    .line 1421
    :cond_0
    return-object v0
.end method

.method public getByIndex(I)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1407
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    #@8
    .line 1408
    .local v0, "retString":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1402
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public sort()V
    .locals 3

    #@0
    .prologue
    .line 1426
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    #@2
    new-instance v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;-><init>(Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;)V

    #@8
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@b
    .line 1425
    return-void
.end method
