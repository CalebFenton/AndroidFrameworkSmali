.class public Lcom/google/android/gsf/LoginData;
.super Ljava/lang/Object;
.source "LoginData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/LoginData$Status;,
        Lcom/google/android/gsf/LoginData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gsf/LoginData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAuthtoken:Ljava/lang/String;

.field public mCaptchaAnswer:Ljava/lang/String;

.field public mCaptchaData:[B

.field public mCaptchaMimeType:Ljava/lang/String;

.field public mCaptchaToken:Ljava/lang/String;

.field public mEncryptedPassword:Ljava/lang/String;

.field public mFlags:I

.field public mJsonString:Ljava/lang/String;

.field public mOAuthAccessToken:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mService:Ljava/lang/String;

.field public mSid:Ljava/lang/String;

.field public mStatus:Lcom/google/android/gsf/LoginData$Status;

.field public mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 122
    new-instance v0, Lcom/google/android/gsf/LoginData$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/gsf/LoginData$1;-><init>()V

    #@5
    .line 121
    sput-object v0, Lcom/google/android/gsf/LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 46
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    #@6
    .line 47
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    #@8
    .line 48
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    #@a
    .line 49
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    #@c
    .line 50
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    #@e
    .line 51
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    #@10
    .line 52
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    #@12
    .line 53
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    #@14
    .line 54
    const/4 v0, 0x0

    #@15
    iput v0, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    #@17
    .line 55
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    #@19
    .line 56
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    #@1b
    .line 57
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    #@1d
    .line 58
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    #@1f
    .line 63
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    #@21
    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 46
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    #@6
    .line 47
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    #@8
    .line 48
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    #@a
    .line 49
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    #@c
    .line 50
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    #@e
    .line 51
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    #@10
    .line 52
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    #@12
    .line 53
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    #@14
    .line 54
    const/4 v0, 0x0

    #@15
    iput v0, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    #@17
    .line 55
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    #@19
    .line 56
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    #@1b
    .line 57
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    #@1d
    .line 58
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    #@1f
    .line 63
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    #@21
    .line 134
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/LoginData;->readFromParcel(Landroid/os/Parcel;)V

    #@24
    .line 133
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gsf/LoginData;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gsf/LoginData;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    #@7
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    #@d
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    #@13
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    #@19
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    #@1f
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v0

    #@23
    .line 145
    .local v0, "len":I
    const/4 v2, -0x1

    #@24
    if-ne v0, v2, :cond_0

    #@26
    .line 146
    iput-object v3, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    #@28
    .line 151
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    #@2e
    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    #@34
    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v2

    #@38
    iput v2, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    #@3a
    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 155
    .local v1, "status":Ljava/lang/String;
    if-nez v1, :cond_1

    #@40
    .line 156
    iput-object v3, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    #@42
    .line 160
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    #@48
    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    #@4e
    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    #@54
    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    #@5a
    .line 138
    return-void

    #@5b
    .line 148
    .end local v1    # "status":Ljava/lang/String;
    :cond_0
    new-array v2, v0, [B

    #@5d
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    #@5f
    .line 149
    iget-object v2, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    #@61
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    #@64
    goto :goto_0

    #@65
    .line 158
    .restart local v1    # "status":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/google/android/gsf/LoginData$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/LoginData$Status;

    #@68
    move-result-object v2

    #@69
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    #@6b
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6
    .line 96
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 98
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 99
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 100
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 101
    const/4 v0, -0x1

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 106
    :goto_0
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 107
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2c
    .line 108
    iget v0, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    #@2e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 109
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    #@33
    if-nez v0, :cond_1

    #@35
    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@38
    .line 114
    :goto_1
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    #@3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3d
    .line 115
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    #@3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@42
    .line 116
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    #@44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@47
    .line 117
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    #@49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4c
    .line 94
    return-void

    #@4d
    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    #@4f
    array-length v0, v0

    #@50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 104
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    #@55
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@58
    goto :goto_0

    #@59
    .line 112
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    #@5b
    invoke-virtual {v0}, Lcom/google/android/gsf/LoginData$Status;->name()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@62
    goto :goto_1
.end method
