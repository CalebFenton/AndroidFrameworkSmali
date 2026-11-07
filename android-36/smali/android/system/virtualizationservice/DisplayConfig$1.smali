.class Landroid/system/virtualizationservice/DisplayConfig$1;
.super Ljava/lang/Object;
.source "DisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/DisplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/system/virtualizationservice/DisplayConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualizationservice/DisplayConfig;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 20
    new-instance v0, Landroid/system/virtualizationservice/DisplayConfig;

    invoke-direct {v0}, Landroid/system/virtualizationservice/DisplayConfig;-><init>()V

    .line 21
    .local v0, "_aidl_out":Landroid/system/virtualizationservice/DisplayConfig;
    invoke-virtual {v0, p1}, Landroid/system/virtualizationservice/DisplayConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 22
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

    .line 17
    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/DisplayConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualizationservice/DisplayConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/system/virtualizationservice/DisplayConfig;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 26
    new-array v0, p1, [Landroid/system/virtualizationservice/DisplayConfig;

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

    .line 17
    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/DisplayConfig$1;->newArray(I)[Landroid/system/virtualizationservice/DisplayConfig;

    move-result-object p1

    return-object p1
.end method
