.class Landroid/safetycenter/SafetyCenterStatus$1;
.super Ljava/lang/Object;
.source "SafetyCenterStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetyCenterStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterStatus;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 124
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 125
    .local v0, "title":Ljava/lang/CharSequence;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 126
    .local v1, "summary":Ljava/lang/CharSequence;
    new-instance v2, Landroid/safetycenter/SafetyCenterStatus$Builder;

    invoke-direct {v2, v0, v1}, Landroid/safetycenter/SafetyCenterStatus$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/safetycenter/SafetyCenterStatus$Builder;->setSeverityLevel(I)Landroid/safetycenter/SafetyCenterStatus$Builder;

    move-result-object v2

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/safetycenter/SafetyCenterStatus$Builder;->setRefreshStatus(I)Landroid/safetycenter/SafetyCenterStatus$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroid/safetycenter/SafetyCenterStatus$Builder;->build()Landroid/safetycenter/SafetyCenterStatus;

    move-result-object v2

    .line 126
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

    .line 121
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetyCenterStatus;
    .registers 3
    .param p1, "size"    # I

    .line 134
    new-array v0, p1, [Landroid/safetycenter/SafetyCenterStatus;

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

    .line 121
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterStatus$1;->newArray(I)[Landroid/safetycenter/SafetyCenterStatus;

    move-result-object p1

    return-object p1
.end method
