.class public Landroid/content/pm/ResolveInfo$DisplayNameComparator;
.super Ljava/lang/Object;
.source "ResolveInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ResolveInfo;
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
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mPM:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 449
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    #@9
    .line 429
    iput-object p1, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    #@b
    .line 430
    iget-object v0, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    #@11
    .line 428
    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 5
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    .line 435
    iget v2, p1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    #@3
    if-eq v2, v3, :cond_0

    #@5
    .line 436
    const/4 v2, 0x1

    #@6
    return v2

    #@7
    .line 438
    :cond_0
    iget v2, p2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    #@9
    if-eq v2, v3, :cond_1

    #@b
    .line 439
    const/4 v2, -0x1

    #@c
    return v2

    #@d
    .line 441
    :cond_1
    iget-object v2, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    #@f
    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    .line 442
    .local v0, "sa":Ljava/lang/CharSequence;
    if-nez v0, :cond_2

    #@15
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@17
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@19
    .line 443
    :cond_2
    iget-object v2, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    #@1b
    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@1e
    move-result-object v1

    #@1f
    .line 444
    .local v1, "sb":Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    #@21
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@23
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@25
    .line 446
    :cond_3
    iget-object v2, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    #@27
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    move-result v2

    #@33
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 433
    check-cast p1, Landroid/content/pm/ResolveInfo;

    #@2
    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    #@4
    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
