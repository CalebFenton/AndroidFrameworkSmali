.class Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;
.super Ljava/lang/Object;
.source "ApkLiteParseUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/parsing/ApkLiteParseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplitNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/parsing/ApkLiteParseUtils-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 1014
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "lhs"    # Ljava/lang/String;
    .param p2, "rhs"    # Ljava/lang/String;

    .line 1017
    if-nez p1, :cond_4

    .line 1018
    const/4 v0, -0x1

    return v0

    .line 1019
    :cond_4
    if-nez p2, :cond_8

    .line 1020
    const/4 v0, 0x1

    return v0

    .line 1022
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
