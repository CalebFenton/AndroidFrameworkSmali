.class public final synthetic Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    check-cast p1, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;

    invoke-static {v0, p1}, Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;->lambda$writeSegmentsToParcel$1(Landroid/os/Parcel;Landroid/health/connect/internal/datatypes/ExerciseSegmentInternal;)V

    return-void
.end method
