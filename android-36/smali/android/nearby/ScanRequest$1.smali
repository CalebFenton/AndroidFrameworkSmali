.class Landroid/nearby/ScanRequest$1;
.super Ljava/lang/Object;
.source "ScanRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/ScanRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nearby/ScanRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nearby/ScanRequest;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    new-instance v0, Landroid/nearby/ScanRequest$Builder;

    invoke-direct {v0}, Landroid/nearby/ScanRequest$Builder;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/nearby/ScanRequest$Builder;->setScanType(I)Landroid/nearby/ScanRequest$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/nearby/ScanRequest$Builder;->setScanMode(I)Landroid/nearby/ScanRequest$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/nearby/ScanRequest$Builder;->setBleEnabled(Z)Landroid/nearby/ScanRequest$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/nearby/ScanRequest$Builder;->setOffloadOnly(Z)Landroid/nearby/ScanRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/nearby/ScanRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/nearby/ScanRequest$Builder;

    move-result-object v0

    .line 86
    .local v0, "builder":Landroid/nearby/ScanRequest$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    if-ge v2, v1, :cond_42

    .line 88
    invoke-static {p1}, Landroid/nearby/ScanFilter;->createFromParcel(Landroid/os/Parcel;)Landroid/nearby/ScanFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/nearby/ScanRequest$Builder;->addScanFilter(Landroid/nearby/ScanFilter;)Landroid/nearby/ScanRequest$Builder;

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 90
    .end local v2    # "i":I
    :cond_42
    invoke-virtual {v0}, Landroid/nearby/ScanRequest$Builder;->build()Landroid/nearby/ScanRequest;

    move-result-object v2

    return-object v2
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

    .line 77
    invoke-virtual {p0, p1}, Landroid/nearby/ScanRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nearby/ScanRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nearby/ScanRequest;
    .registers 3
    .param p1, "size"    # I

    .line 95
    new-array v0, p1, [Landroid/nearby/ScanRequest;

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

    .line 77
    invoke-virtual {p0, p1}, Landroid/nearby/ScanRequest$1;->newArray(I)[Landroid/nearby/ScanRequest;

    move-result-object p1

    return-object p1
.end method
