.class public final synthetic Landroid/hardware/radio/Utils$$ExternalSyntheticLambda1;
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

    iput-object p1, p0, Landroid/hardware/radio/Utils$$ExternalSyntheticLambda1;->f$0:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/radio/Utils$$ExternalSyntheticLambda1;->f$0:Landroid/os/Parcel;

    check-cast p1, Landroid/os/Parcelable;

    invoke-static {v0, p1}, Landroid/hardware/radio/Utils;->lambda$writeSet$0(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return-void
.end method
