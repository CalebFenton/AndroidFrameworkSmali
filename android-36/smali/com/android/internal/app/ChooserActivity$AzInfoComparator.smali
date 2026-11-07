.class Lcom/android/internal/app/ChooserActivity$AzInfoComparator;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AzInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 2454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2455
    nop

    .line 2456
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 2459
    .local v0, "collator":Ljava/text/Collator;
    new-instance v1, Lcom/android/internal/app/ChooserActivity$AzInfoComparator$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserActivity$AzInfoComparator$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/ChooserActivity$AzInfoComparator$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/app/ChooserActivity$AzInfoComparator$$ExternalSyntheticLambda1;-><init>()V

    .line 2460
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;->mComparator:Ljava/util/Comparator;

    .line 2462
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/android/internal/app/chooser/DisplayResolveInfo;)I
    .registers 2
    .param p0, "displayResolveInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 2461
    invoke-virtual {p0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/chooser/DisplayResolveInfo;)I
    .registers 4
    .param p1, "lhsp"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 2467
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;->mComparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
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

    .line 2452
    check-cast p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    check-cast p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;->compare(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/chooser/DisplayResolveInfo;)I

    move-result p1

    return p1
.end method
