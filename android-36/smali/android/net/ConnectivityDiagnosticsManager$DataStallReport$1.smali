.class Landroid/net/ConnectivityDiagnosticsManager$DataStallReport$1;
.super Ljava/lang/Object;
.source "ConnectivityDiagnosticsManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 592
    new-instance v0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    .line 593
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 594
    move-object v4, v1

    move-object v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 595
    move-object v5, v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 596
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    .line 597
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkCapabilities;

    .line 598
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    move-object v8, v7

    move-object v7, v5

    move-object v5, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v7}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;-><init>(Landroid/net/Network;JILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/os/PersistableBundle;)V

    .line 592
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

    .line 590
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;
    .registers 3
    .param p1, "size"    # I

    .line 602
    new-array v0, p1, [Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

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

    .line 590
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport$1;->newArray(I)[Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    move-result-object p1

    return-object p1
.end method
