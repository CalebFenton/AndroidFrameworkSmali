.class public Landroid/telecom/Voicemail;
.super Ljava/lang/Object;
.source "Voicemail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Voicemail$Builder;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mDuration:Ljava/lang/Long;

.field private final greylist-max-o mHasContent:Ljava/lang/Boolean;

.field private final greylist-max-o mId:Ljava/lang/Long;

.field private final greylist-max-o mIsRead:Ljava/lang/Boolean;

.field private final greylist-max-o mNumber:Ljava/lang/String;

.field private final greylist-max-o mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final greylist-max-o mProviderData:Ljava/lang/String;

.field private final greylist-max-o mSource:Ljava/lang/String;

.field private final greylist-max-o mTimestamp:Ljava/lang/Long;

.field private final greylist-max-o mTranscription:Ljava/lang/String;

.field private final greylist-max-o mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 286
    new-instance v0, Landroid/telecom/Voicemail$1;

    invoke-direct {v0}, Landroid/telecom/Voicemail$1;-><init>()V

    sput-object v0, Landroid/telecom/Voicemail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_27

    .line 303
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    goto :goto_29

    .line 305
    :cond_27
    iput-object v1, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 307
    :goto_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_5e

    .line 312
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    goto :goto_60

    .line 314
    :cond_5e
    iput-object v1, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    .line 316
    :goto_60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_6a

    move v0, v1

    goto :goto_6b

    :cond_6a
    move v0, v2

    :goto_6b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_78

    goto :goto_79

    :cond_78
    move v1, v2

    :goto_79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    .line 319
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telecom/Voicemail-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/Voicemail;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 12
    .param p1, "timestamp"    # Ljava/lang/Long;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p4, "id"    # Ljava/lang/Long;
    .param p5, "duration"    # Ljava/lang/Long;
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "providerData"    # Ljava/lang/String;
    .param p8, "uri"    # Landroid/net/Uri;
    .param p9, "isRead"    # Ljava/lang/Boolean;
    .param p10, "hasContent"    # Ljava/lang/Boolean;
    .param p11, "transcription"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    .line 45
    iput-object p2, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 47
    iput-object p4, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    .line 48
    iput-object p5, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    .line 49
    iput-object p6, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    .line 51
    iput-object p8, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    .line 52
    iput-object p9, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    .line 53
    iput-object p10, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    .line 54
    iput-object p11, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Landroid/telecom/Voicemail-IA;)V
    .registers 13

    invoke-direct/range {p0 .. p11}, Landroid/telecom/Voicemail;-><init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist-max-o createForInsertion(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 5
    .param p0, "timestamp"    # J
    .param p2, "number"    # Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/telecom/Voicemail$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/Voicemail$Builder;-><init>(Landroid/telecom/Voicemail-IA;)V

    invoke-virtual {v0, p2}, Landroid/telecom/Voicemail$Builder;->setNumber(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Voicemail$Builder;->setTimestamp(J)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createForUpdate(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 5
    .param p0, "id"    # J
    .param p2, "sourceData"    # Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/telecom/Voicemail$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/Voicemail$Builder;-><init>(Landroid/telecom/Voicemail-IA;)V

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Voicemail$Builder;->setId(J)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getDuration()J
    .registers 3

    .line 193
    iget-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getId()J
    .registers 3

    .line 173
    iget-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getNumber()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public greylist-max-o getSourceData()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSourcePackage()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getTimestampMillis()J
    .registers 3

    .line 188
    iget-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getTranscription()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getUri()Landroid/net/Uri;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public greylist-max-o hasContent()Z
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isRead()Z
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 255
    iget-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 256
    iget-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    .line 258
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 260
    :cond_18
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 263
    :goto_20
    iget-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 264
    iget-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 265
    iget-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_44

    .line 268
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4c

    .line 270
    :cond_44
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 273
    :goto_4c
    iget-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 274
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5b

    .line 276
    :cond_58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    :goto_5b
    iget-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 279
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6a

    .line 281
    :cond_67
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    :goto_6a
    iget-object v0, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method
