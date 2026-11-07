.class Landroid/hardware/radio/voice/CdmaDisplayInfoRecord$1;
.super Ljava/lang/Object;
.source "CdmaDisplayInfoRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 31
    new-instance v0, Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;

    invoke-direct {v0}, Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;-><init>()V

    .line 32
    .local v0, "_aidl_out":Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;
    invoke-virtual {v0, p1}, Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;->readFromParcel(Landroid/os/Parcel;)V

    .line 33
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

    .line 28
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/CdmaDisplayInfoRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 37
    new-array v0, p1, [Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;

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

    .line 28
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/CdmaDisplayInfoRecord$1;->newArray(I)[Landroid/hardware/radio/voice/CdmaDisplayInfoRecord;

    move-result-object p1

    return-object p1
.end method
