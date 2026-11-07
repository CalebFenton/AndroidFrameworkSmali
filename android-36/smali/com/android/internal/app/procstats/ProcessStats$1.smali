.class Lcom/android/internal/app/procstats/ProcessStats$1;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/app/procstats/ProcessStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/procstats/ProcessStats;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 445
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v0, p1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Landroid/os/Parcel;)V

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

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessStats$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/procstats/ProcessStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/app/procstats/ProcessStats;
    .registers 3
    .param p1, "size"    # I

    .line 449
    new-array v0, p1, [Lcom/android/internal/app/procstats/ProcessStats;

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

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessStats$1;->newArray(I)[Lcom/android/internal/app/procstats/ProcessStats;

    move-result-object p1

    return-object p1
.end method
