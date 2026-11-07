.class Landroid/safetycenter/SafetySourceStatus$IconAction$1;
.super Ljava/lang/Object;
.source "SafetySourceStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceStatus$IconAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetySourceStatus$IconAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetySourceStatus$IconAction;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .local v0, "iconType":I
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 224
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/safetycenter/SafetySourceStatus$IconAction;

    invoke-direct {v2, v0, v1}, Landroid/safetycenter/SafetySourceStatus$IconAction;-><init>(ILandroid/app/PendingIntent;)V

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

    .line 219
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetySourceStatus$IconAction$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetySourceStatus$IconAction;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetySourceStatus$IconAction;
    .registers 3
    .param p1, "size"    # I

    .line 229
    new-array v0, p1, [Landroid/safetycenter/SafetySourceStatus$IconAction;

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

    .line 219
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetySourceStatus$IconAction$1;->newArray(I)[Landroid/safetycenter/SafetySourceStatus$IconAction;

    move-result-object p1

    return-object p1
.end method
