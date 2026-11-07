.class Landroid/safetycenter/SafetySourceStatus$1;
.super Ljava/lang/Object;
.source "SafetySourceStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetySourceStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetySourceStatus;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 59
    .local v0, "title":Ljava/lang/CharSequence;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 60
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    .local v2, "severityLevel":I
    new-instance v3, Landroid/safetycenter/SafetySourceStatus$Builder;

    invoke-direct {v3, v0, v1, v2}, Landroid/safetycenter/SafetySourceStatus$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/safetycenter/SafetySourceStatus$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object v3

    sget-object v4, Landroid/safetycenter/SafetySourceStatus$IconAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 63
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/safetycenter/SafetySourceStatus$IconAction;

    invoke-virtual {v3, v4}, Landroid/safetycenter/SafetySourceStatus$Builder;->setIconAction(Landroid/safetycenter/SafetySourceStatus$IconAction;)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object v3

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/safetycenter/SafetySourceStatus$Builder;->setEnabled(Z)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Landroid/safetycenter/SafetySourceStatus$Builder;->build()Landroid/safetycenter/SafetySourceStatus;

    move-result-object v3

    .line 61
    return-object v3
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

    .line 55
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetySourceStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetySourceStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetySourceStatus;
    .registers 3
    .param p1, "size"    # I

    .line 70
    new-array v0, p1, [Landroid/safetycenter/SafetySourceStatus;

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

    .line 55
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetySourceStatus$1;->newArray(I)[Landroid/safetycenter/SafetySourceStatus;

    move-result-object p1

    return-object p1
.end method
