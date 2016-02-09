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
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mPM:Landroid/content/pm/PackageManager;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 741
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->sCollator:Ljava/text/Collator;

    #@9
    .line 725
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    #@b
    .line 724
    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 5
    .param p1, "aa"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "ab"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 729
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    #@2
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    .line 730
    .local v0, "sa":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    #@8
    .line 731
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@a
    .line 733
    :cond_0
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    #@c
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    .line 734
    .local v1, "sb":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    #@12
    .line 735
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@14
    .line 738
    :cond_1
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->sCollator:Ljava/text/Collator;

    #@16
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    move-result v2

    #@22
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "aa"    # Ljava/lang/Object;
    .param p2, "ab"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 728
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    #@2
    .end local p1    # "aa":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ApplicationInfo;

    #@4
    .end local p2    # "ab":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
