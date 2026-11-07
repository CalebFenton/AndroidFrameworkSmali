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
        "Ljava/util/Comparator<",
        "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
        ">;"
    }
.end annotation


# static fields
.field static final greylist-max-o INSTANCE:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1031
    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;-><init>()V

    sput-object v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;->INSTANCE:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o compare(Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;)I
    .registers 7
    .param p1, "sL"    # Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .param p2, "sR"    # Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    .line 1020
    iget-object v0, p1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1021
    .local v0, "lenL":I
    iget-object v1, p2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1022
    .local v1, "lenR":I
    if-ge v0, v1, :cond_10

    .line 1023
    const/4 v2, -0x1

    return v2

    .line 1024
    :cond_10
    if-le v0, v1, :cond_14

    .line 1025
    const/4 v2, 0x1

    return v2

    .line 1027
    :cond_14
    iget-object v2, p1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    iget-object v3, p2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1017
    check-cast p1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    check-cast p2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;->compare(Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;)I

    move-result p1

    return p1
.end method
