.class public final synthetic Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;

    check-cast p2, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;

    invoke-static {p1, p2}, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;->$r8$lambda$lqiADw-0WB2XMCdWsGFdre4e_QE(Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;)I

    move-result p0

    return p0
.end method
