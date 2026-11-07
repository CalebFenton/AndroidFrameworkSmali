.class public final synthetic Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/internal/guava_common/base/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;->$r8$lambda$CzTLjLkoK6UatzjHCc5rIEsndsg(Ljava/util/List;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method
