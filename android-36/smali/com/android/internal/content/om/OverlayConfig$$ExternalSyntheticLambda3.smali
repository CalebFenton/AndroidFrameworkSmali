.class public final synthetic Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/io/File;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda3;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda3;->f$0:Ljava/io/File;

    check-cast p1, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-static {v0, p1}, Lcom/android/internal/content/om/OverlayConfig;->lambda$new$1(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object p1

    return-object p1
.end method
