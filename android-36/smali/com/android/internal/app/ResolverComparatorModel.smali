.class interface abstract Lcom/android/internal/app/ResolverComparatorModel;
.super Ljava/lang/Object;
.source "ResolverComparatorModel.java"


# virtual methods
.method public abstract blacklist getComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
.end method

.method public abstract blacklist notifyOnTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;)V
.end method
