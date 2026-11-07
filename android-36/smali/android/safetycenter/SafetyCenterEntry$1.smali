.class Landroid/safetycenter/SafetyCenterEntry$1;
.super Ljava/lang/Object;
.source "SafetyCenterEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetyCenterEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterEntry;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 138
    .local v1, "title":Ljava/lang/CharSequence;
    new-instance v2, Landroid/safetycenter/SafetyCenterEntry$Builder;

    invoke-direct {v2, v0, v1}, Landroid/safetycenter/SafetyCenterEntry$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 139
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/safetycenter/SafetyCenterEntry$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterEntry$Builder;

    move-result-object v2

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/safetycenter/SafetyCenterEntry$Builder;->setSeverityLevel(I)Landroid/safetycenter/SafetyCenterEntry$Builder;

    move-result-object v2

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/safetycenter/SafetyCenterEntry$Builder;->setSeverityUnspecifiedIconType(I)Landroid/safetycenter/SafetyCenterEntry$Builder;

    move-result-object v2

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/safetycenter/SafetyCenterEntry$Builder;->setEnabled(Z)Landroid/safetycenter/SafetyCenterEntry$Builder;

    move-result-object v2

    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 143
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/safetycenter/SafetyCenterEntry$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetyCenterEntry$Builder;

    move-result-object v2

    sget-object v3, Landroid/safetycenter/SafetyCenterEntry$IconAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 144
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/safetycenter/SafetyCenterEntry$IconAction;

    invoke-virtual {v2, v3}, Landroid/safetycenter/SafetyCenterEntry$Builder;->setIconAction(Landroid/safetycenter/SafetyCenterEntry$IconAction;)Landroid/safetycenter/SafetyCenterEntry$Builder;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Landroid/safetycenter/SafetyCenterEntry$Builder;->build()Landroid/safetycenter/SafetyCenterEntry;

    move-result-object v2

    .line 138
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

    .line 133
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterEntry$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterEntry;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetyCenterEntry;
    .registers 3
    .param p1, "size"    # I

    .line 150
    new-array v0, p1, [Landroid/safetycenter/SafetyCenterEntry;

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

    .line 133
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterEntry$1;->newArray(I)[Landroid/safetycenter/SafetyCenterEntry;

    move-result-object p1

    return-object p1
.end method
