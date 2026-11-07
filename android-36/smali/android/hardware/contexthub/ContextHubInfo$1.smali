.class Landroid/hardware/contexthub/ContextHubInfo$1;
.super Ljava/lang/Object;
.source "ContextHubInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/ContextHubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/contexthub/ContextHubInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contexthub/ContextHubInfo;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 29
    new-instance v0, Landroid/hardware/contexthub/ContextHubInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/ContextHubInfo;-><init>()V

    .line 30
    .local v0, "_aidl_out":Landroid/hardware/contexthub/ContextHubInfo;
    invoke-virtual {v0, p1}, Landroid/hardware/contexthub/ContextHubInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
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

    .line 26
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/ContextHubInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contexthub/ContextHubInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/contexthub/ContextHubInfo;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 35
    new-array v0, p1, [Landroid/hardware/contexthub/ContextHubInfo;

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

    .line 26
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/ContextHubInfo$1;->newArray(I)[Landroid/hardware/contexthub/ContextHubInfo;

    move-result-object p1

    return-object p1
.end method
