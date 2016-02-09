.class public Landroid/telecom/Voicemail;
.super Ljava/lang/Object;
.source "Voicemail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Voicemail$Builder;,
        Landroid/telecom/Voicemail$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDuration:Ljava/lang/Long;

.field private final mHasContent:Ljava/lang/Boolean;

.field private final mId:Ljava/lang/Long;

.field private final mIsRead:Ljava/lang/Boolean;

.field private final mNumber:Ljava/lang/String;

.field private final mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final mProviderData:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;

.field private final mTimestamp:Ljava/lang/Long;

.field private final mTranscription:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 287
    new-instance v0, Landroid/telecom/Voicemail$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/Voicemail$1;-><init>()V

    #@5
    .line 286
    sput-object v0, Landroid/telecom/Voicemail;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@9
    move-result-wide v4

    #@a
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    #@10
    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    iput-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    #@18
    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    if-lez v0, :cond_0

    #@1e
    .line 303
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    #@26
    iput-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@28
    .line 307
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2b
    move-result-wide v4

    #@2c
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    #@32
    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@35
    move-result-wide v4

    #@36
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    #@3c
    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Ljava/lang/String;

    #@42
    iput-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    #@44
    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Ljava/lang/String;

    #@4a
    iput-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    #@4c
    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v0

    #@50
    if-lez v0, :cond_1

    #@52
    .line 312
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@54
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Landroid/net/Uri;

    #@5a
    iput-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    #@5c
    .line 316
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v0

    #@60
    if-lez v0, :cond_2

    #@62
    move v0, v1

    #@63
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@66
    move-result-object v0

    #@67
    iput-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    #@69
    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6c
    move-result v0

    #@6d
    if-lez v0, :cond_3

    #@6f
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@72
    move-result-object v0

    #@73
    iput-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    #@75
    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@78
    move-result-object v0

    #@79
    check-cast v0, Ljava/lang/String;

    #@7b
    iput-object v0, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    #@7d
    .line 299
    return-void

    #@7e
    .line 305
    :cond_0
    iput-object v3, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@80
    goto :goto_0

    #@81
    .line 314
    :cond_1
    iput-object v3, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    #@83
    goto :goto_1

    #@84
    :cond_2
    move v0, v2

    #@85
    .line 316
    goto :goto_2

    #@86
    :cond_3
    move v1, v2

    #@87
    .line 317
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/Voicemail;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/Voicemail;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
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

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    #@5
    .line 45
    iput-object p2, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    #@7
    .line 46
    iput-object p3, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@9
    .line 47
    iput-object p4, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    #@b
    .line 48
    iput-object p5, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    #@d
    .line 49
    iput-object p6, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    #@f
    .line 50
    iput-object p7, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    #@11
    .line 51
    iput-object p8, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    #@13
    .line 52
    iput-object p9, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    #@15
    .line 53
    iput-object p10, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    #@17
    .line 54
    iput-object p11, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    #@19
    .line 43
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Landroid/telecom/Voicemail;)V
    .locals 0
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

    #@0
    .prologue
    invoke-direct/range {p0 .. p11}, Landroid/telecom/Voicemail;-><init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public static createForInsertion(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 2
    .param p0, "timestamp"    # J
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    new-instance v0, Landroid/telecom/Voicemail$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/telecom/Voicemail$Builder;-><init>(Landroid/telecom/Voicemail$Builder;)V

    #@6
    invoke-virtual {v0, p2}, Landroid/telecom/Voicemail$Builder;->setNumber(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Voicemail$Builder;->setTimestamp(J)Landroid/telecom/Voicemail$Builder;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static createForUpdate(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 2
    .param p0, "id"    # J
    .param p2, "sourceData"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    new-instance v0, Landroid/telecom/Voicemail$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/telecom/Voicemail$Builder;-><init>(Landroid/telecom/Voicemail$Builder;)V

    #@6
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Voicemail$Builder;->setId(J)Landroid/telecom/Voicemail$Builder;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p2}, Landroid/telecom/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 250
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDuration()J
    .locals 2

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    #@2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getId()J
    .locals 2

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    #@2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@2
    return-object v0
.end method

.method public getSourceData()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSourcePackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTimestampMillis()J
    .locals 2

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    #@2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getTranscription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    #@2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRead()Z
    .locals 1

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    #@2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 255
    iget-object v0, p0, Landroid/telecom/Voicemail;->mTimestamp:Ljava/lang/Long;

    #@4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@7
    move-result-wide v0

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@b
    .line 256
    iget-object v0, p0, Landroid/telecom/Voicemail;->mNumber:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@10
    .line 257
    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@12
    if-nez v0, :cond_0

    #@14
    .line 258
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 263
    :goto_0
    iget-object v0, p0, Landroid/telecom/Voicemail;->mId:Ljava/lang/Long;

    #@19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@1c
    move-result-wide v0

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@20
    .line 264
    iget-object v0, p0, Landroid/telecom/Voicemail;->mDuration:Ljava/lang/Long;

    #@22
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@25
    move-result-wide v0

    #@26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@29
    .line 265
    iget-object v0, p0, Landroid/telecom/Voicemail;->mSource:Ljava/lang/String;

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@2e
    .line 266
    iget-object v0, p0, Landroid/telecom/Voicemail;->mProviderData:Ljava/lang/String;

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@33
    .line 267
    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    #@35
    if-nez v0, :cond_1

    #@37
    .line 268
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 273
    :goto_1
    iget-object v0, p0, Landroid/telecom/Voicemail;->mIsRead:Ljava/lang/Boolean;

    #@3c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_2

    #@42
    .line 274
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@45
    .line 278
    :goto_2
    iget-object v0, p0, Landroid/telecom/Voicemail;->mHasContent:Ljava/lang/Boolean;

    #@47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_3

    #@4d
    .line 279
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 283
    :goto_3
    iget-object v0, p0, Landroid/telecom/Voicemail;->mTranscription:Ljava/lang/String;

    #@52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@55
    .line 254
    return-void

    #@56
    .line 260
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@59
    .line 261
    iget-object v0, p0, Landroid/telecom/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@5b
    invoke-virtual {v0, p1, p2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@5e
    goto :goto_0

    #@5f
    .line 270
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@62
    .line 271
    iget-object v0, p0, Landroid/telecom/Voicemail;->mUri:Landroid/net/Uri;

    #@64
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@67
    goto :goto_1

    #@68
    .line 276
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    goto :goto_2

    #@6c
    .line 281
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    goto :goto_3
.end method
