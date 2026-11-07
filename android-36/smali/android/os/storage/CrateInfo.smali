.class public final Landroid/os/storage/CrateInfo;
.super Ljava/lang/Object;
.source "CrateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "CrateInfo"


# instance fields
.field private blacklist mExpiration:J

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mLabel:Ljava/lang/CharSequence;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 237
    new-instance v0, Landroid/os/storage/CrateInfo$1;

    invoke-direct {v0}, Landroid/os/storage/CrateInfo$1;-><init>()V

    sput-object v0, Landroid/os/storage/CrateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/storage/CrateInfo;->mExpiration:J

    .line 96
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/storage/CrateInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/storage/CrateInfo;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 123
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/os/storage/CrateInfo;-><init>(Ljava/lang/CharSequence;J)V

    .line 124
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;J)V
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "expiration"    # J

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string v0, "Label should not be either null or empty string"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 109
    const-string v0, "Expiration should be non negative number"

    invoke-static {p2, p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    .line 112
    iput-object p1, p0, Landroid/os/storage/CrateInfo;->mLabel:Ljava/lang/CharSequence;

    .line 113
    iput-wide p2, p0, Landroid/os/storage/CrateInfo;->mExpiration:J

    .line 114
    return-void
.end method

.method public static blacklist copyFrom(ILjava/lang/String;Ljava/lang/String;)Landroid/os/storage/CrateInfo;
    .registers 6
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .line 272
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_21

    .line 276
    :cond_13
    new-instance v0, Landroid/os/storage/CrateInfo;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p2, v1, v2}, Landroid/os/storage/CrateInfo;-><init>(Ljava/lang/CharSequence;J)V

    .line 277
    .local v0, "crateInfo":Landroid/os/storage/CrateInfo;
    iput p0, v0, Landroid/os/storage/CrateInfo;->mUid:I

    .line 278
    iput-object p1, v0, Landroid/os/storage/CrateInfo;->mPackageName:Ljava/lang/String;

    .line 279
    iput-object p2, v0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    .line 280
    return-object v0

    .line 273
    .end local v0    # "crateInfo":Landroid/os/storage/CrateInfo;
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 180
    if-nez p1, :cond_4

    .line 181
    const/4 v0, 0x0

    return v0

    .line 184
    :cond_4
    instance-of v0, p1, Landroid/os/storage/CrateInfo;

    if-eqz v0, :cond_1f

    .line 185
    move-object v0, p1

    check-cast v0, Landroid/os/storage/CrateInfo;

    .line 186
    .local v0, "crateInfo":Landroid/os/storage/CrateInfo;
    iget-object v1, p0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    .line 187
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 188
    const/4 v1, 0x1

    return v1

    .line 192
    .end local v0    # "crateInfo":Landroid/os/storage/CrateInfo;
    :cond_1f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getExpirationMillis()J
    .registers 3

    .line 149
    iget-wide v0, p0, Landroid/os/storage/CrateInfo;->mExpiration:J

    return-wide v0
.end method

.method public blacklist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/os/storage/CrateInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 133
    iget-object v0, p0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    return-object v0

    .line 135
    :cond_b
    iget-object v0, p0, Landroid/os/storage/CrateInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 164
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 224
    if-nez p1, :cond_3

    .line 225
    return-void

    .line 228
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/CrateInfo;->mLabel:Ljava/lang/CharSequence;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/storage/CrateInfo;->mExpiration:J

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/CrateInfo;->mUid:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/CrateInfo;->mPackageName:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public blacklist setExpiration(J)V
    .registers 3
    .param p1, "expiration"    # J

    .line 158
    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 159
    iput-wide p1, p0, Landroid/os/storage/CrateInfo;->mExpiration:J

    .line 160
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 204
    if-nez p1, :cond_3

    .line 205
    return-void

    .line 208
    :cond_3
    iget-object v0, p0, Landroid/os/storage/CrateInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 209
    iget-wide v0, p0, Landroid/os/storage/CrateInfo;->mExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    iget v0, p0, Landroid/os/storage/CrateInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v0, p0, Landroid/os/storage/CrateInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    return-void
.end method
