.class Landroid/telephony/ActivityStatsTechSpecificInfo$1;
.super Ljava/lang/Object;
.source "ActivityStatsTechSpecificInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ActivityStatsTechSpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ActivityStatsTechSpecificInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ActivityStatsTechSpecificInfo;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    .local v0, "rat":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 227
    .local v1, "frequencyRange":I
    const/4 v2, 0x5

    new-array v2, v2, [I

    .line 228
    .local v2, "txTimeMs":[I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 230
    .local v3, "rxTimeMs":I
    new-instance v4, Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    return-object v4
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

    .line 223
    invoke-virtual {p0, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ActivityStatsTechSpecificInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/ActivityStatsTechSpecificInfo;
    .registers 3
    .param p1, "size"    # I

    .line 235
    new-array v0, p1, [Landroid/telephony/ActivityStatsTechSpecificInfo;

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

    .line 223
    invoke-virtual {p0, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo$1;->newArray(I)[Landroid/telephony/ActivityStatsTechSpecificInfo;

    move-result-object p1

    return-object p1
.end method
