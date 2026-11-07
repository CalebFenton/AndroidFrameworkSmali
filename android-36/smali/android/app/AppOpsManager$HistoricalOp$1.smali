.class Landroid/app/AppOpsManager$HistoricalOp$1;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager$HistoricalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/AppOpsManager$HistoricalOp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 7622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 7625
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/os/Parcel;Landroid/app/AppOpsManager-IA;)V

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

    .line 7622
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/AppOpsManager$HistoricalOp;
    .registers 3
    .param p1, "size"    # I

    .line 7630
    new-array v0, p1, [Landroid/app/AppOpsManager$HistoricalOp;

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

    .line 7622
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp$1;->newArray(I)[Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object p1

    return-object p1
.end method
