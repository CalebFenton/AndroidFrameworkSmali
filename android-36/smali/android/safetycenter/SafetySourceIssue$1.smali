.class Landroid/safetycenter/SafetySourceIssue$1;
.super Ljava/lang/Object;
.source "SafetySourceIssue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceIssue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetySourceIssue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetySourceIssue;
    .registers 14
    .param p1, "in"    # Landroid/os/Parcel;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "id":Ljava/lang/String;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .line 218
    .local v2, "title":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    .line 219
    .local v6, "subtitle":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    .line 220
    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 221
    .local v4, "severityLevel":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 222
    .local v7, "issueCategory":I
    sget-object v0, Landroid/safetycenter/SafetySourceIssue$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 223
    .local v8, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetySourceIssue$Action;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 224
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    .line 225
    .local v9, "onDismissPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "issueTypeId":Ljava/lang/String;
    new-instance v0, Landroid/safetycenter/SafetySourceIssue$Builder;

    invoke-direct/range {v0 .. v5}, Landroid/safetycenter/SafetySourceIssue$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 228
    invoke-virtual {v0, v6}, Landroid/safetycenter/SafetySourceIssue$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0, v7}, Landroid/safetycenter/SafetySourceIssue$Builder;->setIssueCategory(I)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0, v9}, Landroid/safetycenter/SafetySourceIssue$Builder;->setOnDismissPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object v0

    .line 231
    .local v0, "builder":Landroid/safetycenter/SafetySourceIssue$Builder;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_53
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_65

    .line 232
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/safetycenter/SafetySourceIssue$Action;

    invoke-virtual {v0, v11}, Landroid/safetycenter/SafetySourceIssue$Builder;->addAction(Landroid/safetycenter/SafetySourceIssue$Action;)Landroid/safetycenter/SafetySourceIssue$Builder;

    .line 231
    add-int/lit8 v10, v10, 0x1

    goto :goto_53

    .line 234
    .end local v10    # "i":I
    :cond_65
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v10

    if-eqz v10, :cond_96

    .line 235
    sget-object v10, Landroid/safetycenter/SafetySourceIssue$Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/safetycenter/SafetySourceIssue$Notification;

    invoke-virtual {v0, v10}, Landroid/safetycenter/SafetySourceIssue$Builder;->setCustomNotification(Landroid/safetycenter/SafetySourceIssue$Notification;)Landroid/safetycenter/SafetySourceIssue$Builder;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/safetycenter/SafetySourceIssue$Builder;->setNotificationBehavior(I)Landroid/safetycenter/SafetySourceIssue$Builder;

    .line 237
    sget-object v10, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 238
    invoke-interface {v10, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    .line 237
    invoke-virtual {v0, v10}, Landroid/safetycenter/SafetySourceIssue$Builder;->setAttributionTitle(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetySourceIssue$Builder;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/safetycenter/SafetySourceIssue$Builder;->setDeduplicationId(Ljava/lang/String;)Landroid/safetycenter/SafetySourceIssue$Builder;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/safetycenter/SafetySourceIssue$Builder;->setIssueActionability(I)Landroid/safetycenter/SafetySourceIssue$Builder;

    .line 242
    :cond_96
    invoke-virtual {v0}, Landroid/safetycenter/SafetySourceIssue$Builder;->build()Landroid/safetycenter/SafetySourceIssue;

    move-result-object v10

    return-object v10
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

    .line 213
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetySourceIssue$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetySourceIssue;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetySourceIssue;
    .registers 3
    .param p1, "size"    # I

    .line 247
    new-array v0, p1, [Landroid/safetycenter/SafetySourceIssue;

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

    .line 213
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetySourceIssue$1;->newArray(I)[Landroid/safetycenter/SafetySourceIssue;

    move-result-object p1

    return-object p1
.end method
