.class Landroid/safetycenter/SafetyCenterErrorDetails$1;
.super Ljava/lang/Object;
.source "SafetyCenterErrorDetails.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterErrorDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetyCenterErrorDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterErrorDetails;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 49
    .local v0, "errorMessage":Ljava/lang/CharSequence;
    new-instance v1, Landroid/safetycenter/SafetyCenterErrorDetails;

    invoke-direct {v1, v0}, Landroid/safetycenter/SafetyCenterErrorDetails;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
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

    .line 44
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterErrorDetails$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterErrorDetails;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetyCenterErrorDetails;
    .registers 3
    .param p1, "size"    # I

    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/safetycenter/SafetyCenterErrorDetails;

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

    .line 44
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterErrorDetails$1;->newArray(I)[Landroid/safetycenter/SafetyCenterErrorDetails;

    move-result-object p1

    return-object p1
.end method
