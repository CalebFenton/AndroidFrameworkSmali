.class Landroid/safetycenter/SafetyCenterStaticEntry$1;
.super Ljava/lang/Object;
.source "SafetyCenterStaticEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterStaticEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetyCenterStaticEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterStaticEntry;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 53
    .local v0, "title":Ljava/lang/CharSequence;
    new-instance v1, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;

    invoke-direct {v1, v0}, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;-><init>(Ljava/lang/CharSequence;)V

    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 54
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterStaticEntry$Builder;

    move-result-object v1

    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetyCenterStaticEntry$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;->build()Landroid/safetycenter/SafetyCenterStaticEntry;

    move-result-object v1

    .line 53
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

    .line 49
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterStaticEntry$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyCenterStaticEntry;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetyCenterStaticEntry;
    .registers 3
    .param p1, "size"    # I

    .line 61
    new-array v0, p1, [Landroid/safetycenter/SafetyCenterStaticEntry;

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

    .line 49
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyCenterStaticEntry$1;->newArray(I)[Landroid/safetycenter/SafetyCenterStaticEntry;

    move-result-object p1

    return-object p1
.end method
