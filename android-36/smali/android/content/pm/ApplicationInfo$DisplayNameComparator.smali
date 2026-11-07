.class public Landroid/content/pm/ApplicationInfo$DisplayNameComparator;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-p mPM:Landroid/content/pm/PackageManager;

.field private final greylist-max-p sCollator:Ljava/text/Collator;


# direct methods
.method public constructor whitelist <init>(Landroid/content/pm/PackageManager;)V
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 2021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2038
    nop

    .line 2039
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->sCollator:Ljava/text/Collator;

    .line 2022
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    .line 2023
    return-void
.end method


# virtual methods
.method public final whitelist compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .registers 8
    .param p1, "aa"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "ab"    # Landroid/content/pm/ApplicationInfo;

    .line 2026
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2027
    .local v0, "sa":Ljava/lang/CharSequence;
    if-nez v0, :cond_a

    .line 2028
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2030
    :cond_a
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2031
    .local v1, "sb":Ljava/lang/CharSequence;
    if-nez v1, :cond_14

    .line 2032
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2035
    :cond_14
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->sCollator:Ljava/text/Collator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 2019
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result p1

    return p1
.end method
