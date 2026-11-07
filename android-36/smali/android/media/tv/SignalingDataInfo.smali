.class public final Landroid/media/tv/SignalingDataInfo;
.super Ljava/lang/Object;
.source "SignalingDataInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/SignalingDataInfo$ContentEncoding;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_ENCODING_BASE64:Ljava/lang/String; = "Base64"

.field public static final whitelist CONTENT_ENCODING_UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/SignalingDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LLS_NO_GROUP_ID:I = -0x1


# instance fields
.field private final blacklist mEncoding:Ljava/lang/String;

.field private final blacklist mGroup:I

.field private final blacklist mSignalingDataType:Ljava/lang/String;

.field private final blacklist mTable:Ljava/lang/String;

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/media/tv/SignalingDataInfo$1;

    invoke-direct {v0}, Landroid/media/tv/SignalingDataInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/SignalingDataInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "table":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "metadataType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .local v2, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .local v3, "group":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "encoding":Ljava/lang/String;
    iput-object v0, p0, Landroid/media/tv/SignalingDataInfo;->mTable:Ljava/lang/String;

    .line 188
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/media/tv/SignalingDataInfo;->mTable:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 189
    iput-object v1, p0, Landroid/media/tv/SignalingDataInfo;->mSignalingDataType:Ljava/lang/String;

    .line 190
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/media/tv/SignalingDataInfo;->mSignalingDataType:Ljava/lang/String;

    .line 191
    invoke-static {v5, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 192
    iput v2, p0, Landroid/media/tv/SignalingDataInfo;->mVersion:I

    .line 193
    iput v3, p0, Landroid/media/tv/SignalingDataInfo;->mGroup:I

    .line 194
    iput-object v4, p0, Landroid/media/tv/SignalingDataInfo;->mEncoding:Ljava/lang/String;

    .line 195
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/media/tv/SignalingDataInfo;->mEncoding:Ljava/lang/String;

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "signalingDataType"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "group"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/media/tv/SignalingDataInfo;->mTable:Ljava/lang/String;

    .line 83
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/tv/SignalingDataInfo;->mTable:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 84
    iput-object p2, p0, Landroid/media/tv/SignalingDataInfo;->mSignalingDataType:Ljava/lang/String;

    .line 85
    iput p3, p0, Landroid/media/tv/SignalingDataInfo;->mVersion:I

    .line 86
    iput p4, p0, Landroid/media/tv/SignalingDataInfo;->mGroup:I

    .line 87
    const-string v0, "UTF-8"

    iput-object v0, p0, Landroid/media/tv/SignalingDataInfo;->mEncoding:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "signalingDataType"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "group"    # I
    .param p5, "encoding"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/media/tv/SignalingDataInfo;->mTable:Ljava/lang/String;

    .line 97
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/media/tv/SignalingDataInfo;->mTable:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 98
    iput-object p2, p0, Landroid/media/tv/SignalingDataInfo;->mSignalingDataType:Ljava/lang/String;

    .line 99
    iput p3, p0, Landroid/media/tv/SignalingDataInfo;->mVersion:I

    .line 100
    iput p4, p0, Landroid/media/tv/SignalingDataInfo;->mGroup:I

    .line 101
    iput-object p5, p0, Landroid/media/tv/SignalingDataInfo;->mEncoding:Ljava/lang/String;

    .line 102
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/media/tv/SignalingDataInfo;->mEncoding:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEncoding()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/media/tv/SignalingDataInfo;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGroup()I
    .registers 2

    .line 152
    iget v0, p0, Landroid/media/tv/SignalingDataInfo;->mGroup:I

    return v0
.end method

.method public whitelist getSignalingDataType()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/media/tv/SignalingDataInfo;->mSignalingDataType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTable()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/media/tv/SignalingDataInfo;->mTable:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 142
    iget v0, p0, Landroid/media/tv/SignalingDataInfo;->mVersion:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 168
    iget-object v0, p0, Landroid/media/tv/SignalingDataInfo;->mTable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Landroid/media/tv/SignalingDataInfo;->mSignalingDataType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget v0, p0, Landroid/media/tv/SignalingDataInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Landroid/media/tv/SignalingDataInfo;->mGroup:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v0, p0, Landroid/media/tv/SignalingDataInfo;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    return-void
.end method
