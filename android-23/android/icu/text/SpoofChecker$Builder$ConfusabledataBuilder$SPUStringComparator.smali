.class Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;
.super Ljava/lang/Object;
.source "SpoofChecker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPUStringComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;)I
    .locals 4
    .param p1, "sL"    # Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .param p2, "sR"    # Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    #@0
    .prologue
    .line 1377
    iget-object v2, p1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    .line 1378
    .local v0, "lenL":I
    iget-object v2, p2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    .line 1379
    .local v1, "lenR":I
    if-ge v0, v1, :cond_0

    #@e
    .line 1380
    const/4 v2, -0x1

    #@f
    return v2

    #@10
    .line 1381
    :cond_0
    if-le v0, v1, :cond_1

    #@12
    .line 1382
    const/4 v2, 0x1

    #@13
    return v2

    #@14
    .line 1384
    :cond_1
    iget-object v2, p1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@16
    iget-object v3, p2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@1b
    move-result v2

    #@1c
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "sL"    # Ljava/lang/Object;
    .param p2, "sR"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1376
    check-cast p1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    #@2
    .end local p1    # "sL":Ljava/lang/Object;
    check-cast p2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    #@4
    .end local p2    # "sR":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;->compare(Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
