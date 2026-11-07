.class Landroid/net/metrics/ValidationProbeEvent$1;
.super Ljava/lang/Object;
.source "ValidationProbeEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/ValidationProbeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/metrics/ValidationProbeEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/ValidationProbeEvent;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 147
    new-instance v0, Landroid/net/metrics/ValidationProbeEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/metrics/ValidationProbeEvent;-><init>(Landroid/os/Parcel;Landroid/net/metrics/ValidationProbeEvent-IA;)V

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

    .line 145
    invoke-virtual {p0, p1}, Landroid/net/metrics/ValidationProbeEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/ValidationProbeEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/metrics/ValidationProbeEvent;
    .registers 3
    .param p1, "size"    # I

    .line 151
    new-array v0, p1, [Landroid/net/metrics/ValidationProbeEvent;

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

    .line 145
    invoke-virtual {p0, p1}, Landroid/net/metrics/ValidationProbeEvent$1;->newArray(I)[Landroid/net/metrics/ValidationProbeEvent;

    move-result-object p1

    return-object p1
.end method
