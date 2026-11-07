.class Landroid/federatedcompute/common/TrainingInterval$1;
.super Ljava/lang/Object;
.source "TrainingInterval.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/common/TrainingInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/federatedcompute/common/TrainingInterval;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/federatedcompute/common/TrainingInterval;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 204
    new-instance v0, Landroid/federatedcompute/common/TrainingInterval;

    invoke-direct {v0, p1}, Landroid/federatedcompute/common/TrainingInterval;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 195
    invoke-virtual {p0, p1}, Landroid/federatedcompute/common/TrainingInterval$1;->createFromParcel(Landroid/os/Parcel;)Landroid/federatedcompute/common/TrainingInterval;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/federatedcompute/common/TrainingInterval;
    .registers 3
    .param p1, "size"    # I

    .line 198
    new-array v0, p1, [Landroid/federatedcompute/common/TrainingInterval;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 195
    invoke-virtual {p0, p1}, Landroid/federatedcompute/common/TrainingInterval$1;->newArray(I)[Landroid/federatedcompute/common/TrainingInterval;

    move-result-object p1

    return-object p1
.end method
