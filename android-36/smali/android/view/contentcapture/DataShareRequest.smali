.class public final Landroid/view/contentcapture/DataShareRequest;
.super Ljava/lang/Object;
.source "DataShareRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/contentcapture/DataShareRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLocusId:Landroid/content/LocusId;

.field private final blacklist mMimeType:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 183
    new-instance v0, Landroid/view/contentcapture/DataShareRequest$1;

    invoke-direct {v0}, Landroid/view/contentcapture/DataShareRequest$1;-><init>()V

    sput-object v0, Landroid/view/contentcapture/DataShareRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/LocusId;Ljava/lang/String;)V
    .registers 4
    .param p1, "locusId"    # Landroid/content/LocusId;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/DataShareRequest;->mPackageName:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Landroid/view/contentcapture/DataShareRequest;->mLocusId:Landroid/content/LocusId;

    .line 55
    iput-object p2, p0, Landroid/view/contentcapture/DataShareRequest;->mMimeType:Ljava/lang/String;

    .line 56
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 167
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "packageName":Ljava/lang/String;
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    goto :goto_1a

    :cond_12
    sget-object v2, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/LocusId;

    .line 169
    .local v2, "locusId":Landroid/content/LocusId;
    :goto_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "mimeType":Ljava/lang/String;
    iput-object v1, p0, Landroid/view/contentcapture/DataShareRequest;->mPackageName:Ljava/lang/String;

    .line 172
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/view/contentcapture/DataShareRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v5, v3, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 174
    iput-object v2, p0, Landroid/view/contentcapture/DataShareRequest;->mLocusId:Landroid/content/LocusId;

    .line 175
    iput-object v4, p0, Landroid/view/contentcapture/DataShareRequest;->mMimeType:Ljava/lang/String;

    .line 176
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/view/contentcapture/DataShareRequest;->mMimeType:Ljava/lang/String;

    invoke-static {v5, v3, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 117
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 118
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 120
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/contentcapture/DataShareRequest;

    .line 122
    .local v2, "that":Landroid/view/contentcapture/DataShareRequest;
    iget-object v3, p0, Landroid/view/contentcapture/DataShareRequest;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/view/contentcapture/DataShareRequest;->mPackageName:Ljava/lang/String;

    .line 123
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/view/contentcapture/DataShareRequest;->mLocusId:Landroid/content/LocusId;

    iget-object v4, v2, Landroid/view/contentcapture/DataShareRequest;->mLocusId:Landroid/content/LocusId;

    .line 124
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/view/contentcapture/DataShareRequest;->mMimeType:Ljava/lang/String;

    iget-object v4, v2, Landroid/view/contentcapture/DataShareRequest;->mMimeType:Ljava/lang/String;

    .line 125
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 122
    :goto_35
    return v0

    .line 118
    .end local v2    # "that":Landroid/view/contentcapture/DataShareRequest;
    :cond_36
    :goto_36
    return v1
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/view/contentcapture/DataShareRequest;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/view/contentcapture/DataShareRequest;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/view/contentcapture/DataShareRequest;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 134
    const/4 v0, 0x1

    .line 135
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/contentcapture/DataShareRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 136
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/contentcapture/DataShareRequest;->mLocusId:Landroid/content/LocusId;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 137
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/contentcapture/DataShareRequest;->mMimeType:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 138
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataShareRequest { packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/DataShareRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locusId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/DataShareRequest;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mimeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/contentcapture/DataShareRequest;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "flg":B
    iget-object v1, p0, Landroid/view/contentcapture/DataShareRequest;->mLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 149
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 150
    iget-object v1, p0, Landroid/view/contentcapture/DataShareRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Landroid/view/contentcapture/DataShareRequest;->mLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/view/contentcapture/DataShareRequest;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 152
    :cond_19
    iget-object v1, p0, Landroid/view/contentcapture/DataShareRequest;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return-void
.end method
