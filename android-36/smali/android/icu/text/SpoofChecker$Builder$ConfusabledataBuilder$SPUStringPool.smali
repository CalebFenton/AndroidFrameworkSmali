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
.field private greylist-max-o fHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o fVec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    .line 1043
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fHash:Ljava/util/Hashtable;

    .line 1044
    return-void
.end method


# virtual methods
.method public greylist-max-o addString(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .registers 4
    .param p1, "src"    # Ljava/lang/String;

    .line 1060
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fHash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    .line 1061
    .local v0, "hashedString":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    if-nez v0, :cond_1a

    .line 1062
    new-instance v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    invoke-direct {v1, p1}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 1063
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fHash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1066
    :cond_1a
    return-object v0
.end method

.method public greylist-max-o getByIndex(I)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .registers 3
    .param p1, "index"    # I

    .line 1052
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    .line 1053
    .local v0, "retString":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    return-object v0
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 1047
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-o sort()V
    .registers 3

    .line 1071
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->fVec:Ljava/util/Vector;

    sget-object v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;->INSTANCE:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1072
    return-void
.end method
