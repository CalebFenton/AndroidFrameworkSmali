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
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mCollator:Ljava/text/Collator;

.field private final greylist-max-o mPM:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor whitelist <init>(Landroid/content/pm/PackageManager;)V
    .registers 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    .line 571
    iput-object p1, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    .line 572
    iget-object v0, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 573
    return-void
.end method


# virtual methods
.method public final whitelist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 8
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Landroid/content/pm/ResolveInfo;

    .line 577
    iget v0, p1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_7

    .line 578
    const/4 v0, 0x1

    return v0

    .line 580
    :cond_7
    iget v0, p2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-eq v0, v1, :cond_d

    .line 581
    const/4 v0, -0x1

    return v0

    .line 583
    :cond_d
    iget-object v0, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 584
    .local v0, "sa":Ljava/lang/CharSequence;
    if-nez v0, :cond_19

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 585
    :cond_19
    iget-object v1, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 586
    .local v1, "sb":Ljava/lang/CharSequence;
    if-nez v1, :cond_25

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 588
    :cond_25
    iget-object v2, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mCollator:Ljava/text/Collator;

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

    .line 568
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p1

    return p1
.end method
