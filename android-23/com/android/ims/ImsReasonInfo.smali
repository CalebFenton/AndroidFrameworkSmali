.class public Lcom/android/ims/ImsReasonInfo;
.super Ljava/lang/Object;
.source "ImsReasonInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsReasonInfo$1;
    }
.end annotation


# static fields
.field public static final CODE_BLACKLISTED_CALL_ID:I = 0x1fa

.field public static final CODE_CALL_DROP_IWLAN_TO_LTE_UNAVAILABLE:I = 0x44c

.field public static final CODE_ECBM_NOT_SUPPORTED:I = 0x385

.field public static final CODE_LOCAL_CALL_BUSY:I = 0x8e

.field public static final CODE_LOCAL_CALL_CS_RETRY_REQUIRED:I = 0x92

.field public static final CODE_LOCAL_CALL_DECLINE:I = 0x8f

.field public static final CODE_LOCAL_CALL_EXCEEDED:I = 0x8d

.field public static final CODE_LOCAL_CALL_RESOURCE_RESERVATION_FAILED:I = 0x91

.field public static final CODE_LOCAL_CALL_TERMINATED:I = 0x94

.field public static final CODE_LOCAL_CALL_VCC_ON_PROGRESSING:I = 0x90

.field public static final CODE_LOCAL_CALL_VOLTE_RETRY_REQUIRED:I = 0x93

.field public static final CODE_LOCAL_ILLEGAL_ARGUMENT:I = 0x65

.field public static final CODE_LOCAL_ILLEGAL_STATE:I = 0x66

.field public static final CODE_LOCAL_IMS_SERVICE_DOWN:I = 0x6a

.field public static final CODE_LOCAL_INTERNAL_ERROR:I = 0x67

.field public static final CODE_LOCAL_LOW_BATTERY:I = 0x70

.field public static final CODE_LOCAL_NETWORK_IP_CHANGED:I = 0x7c

.field public static final CODE_LOCAL_NETWORK_NO_LTE_COVERAGE:I = 0x7a

.field public static final CODE_LOCAL_NETWORK_NO_SERVICE:I = 0x79

.field public static final CODE_LOCAL_NETWORK_ROAMING:I = 0x7b

.field public static final CODE_LOCAL_NOT_REGISTERED:I = 0x84

.field public static final CODE_LOCAL_NO_PENDING_CALL:I = 0x6b

.field public static final CODE_LOCAL_POWER_OFF:I = 0x6f

.field public static final CODE_LOCAL_SERVICE_UNAVAILABLE:I = 0x83

.field public static final CODE_LOW_BATTERY:I = 0x1f9

.field public static final CODE_MEDIA_INIT_FAILED:I = 0x191

.field public static final CODE_MEDIA_NOT_ACCEPTABLE:I = 0x193

.field public static final CODE_MEDIA_NO_DATA:I = 0x192

.field public static final CODE_MEDIA_UNSPECIFIED:I = 0x194

.field public static final CODE_REGISTRATION_ERROR:I = 0x3e8

.field public static final CODE_SIP_BAD_ADDRESS:I = 0x151

.field public static final CODE_SIP_BAD_REQUEST:I = 0x14b

.field public static final CODE_SIP_BUSY:I = 0x152

.field public static final CODE_SIP_CLIENT_ERROR:I = 0x156

.field public static final CODE_SIP_FORBIDDEN:I = 0x14c

.field public static final CODE_SIP_GLOBAL_ERROR:I = 0x16a

.field public static final CODE_SIP_NOT_ACCEPTABLE:I = 0x154

.field public static final CODE_SIP_NOT_FOUND:I = 0x14d

.field public static final CODE_SIP_NOT_REACHABLE:I = 0x155

.field public static final CODE_SIP_NOT_SUPPORTED:I = 0x14e

.field public static final CODE_SIP_REDIRECTED:I = 0x141

.field public static final CODE_SIP_REQUEST_CANCELLED:I = 0x153

.field public static final CODE_SIP_REQUEST_TIMEOUT:I = 0x14f

.field public static final CODE_SIP_SERVER_ERROR:I = 0x162

.field public static final CODE_SIP_SERVER_INTERNAL_ERROR:I = 0x15f

.field public static final CODE_SIP_SERVER_TIMEOUT:I = 0x161

.field public static final CODE_SIP_SERVICE_UNAVAILABLE:I = 0x160

.field public static final CODE_SIP_TEMPRARILY_UNAVAILABLE:I = 0x150

.field public static final CODE_SIP_USER_REJECTED:I = 0x169

.field public static final CODE_TIMEOUT_1XX_WAITING:I = 0xc9

.field public static final CODE_TIMEOUT_NO_ANSWER:I = 0xca

.field public static final CODE_TIMEOUT_NO_ANSWER_CALL_UPDATE:I = 0xcb

.field public static final CODE_UNSPECIFIED:I = 0x0

.field public static final CODE_USER_DECLINE:I = 0x1f8

.field public static final CODE_USER_IGNORE:I = 0x1f7

.field public static final CODE_USER_NOANSWER:I = 0x1f6

.field public static final CODE_USER_TERMINATED:I = 0x1f5

.field public static final CODE_USER_TERMINATED_BY_REMOTE:I = 0x1fe

.field public static final CODE_UT_CB_PASSWORD_MISMATCH:I = 0x335

.field public static final CODE_UT_NETWORK_ERROR:I = 0x324

.field public static final CODE_UT_NOT_SUPPORTED:I = 0x321

.field public static final CODE_UT_OPERATION_NOT_ALLOWED:I = 0x323

.field public static final CODE_UT_SERVICE_UNAVAILABLE:I = 0x322

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CODE_CALL_RETRY_BY_SETTINGS:I = 0x3

.field public static final EXTRA_CODE_CALL_RETRY_NORMAL:I = 0x1

.field public static final EXTRA_CODE_CALL_RETRY_SILENT_REDIAL:I = 0x2

.field public static final EXTRA_MSG_SERVICE_NOT_AUTHORIZED:Ljava/lang/String; = "Forbidden. Not Authorized for Service"


# instance fields
.field public mCode:I

.field public mExtraCode:I

.field public mExtraMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 312
    new-instance v0, Lcom/android/ims/ImsReasonInfo$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/ImsReasonInfo$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 243
    iput v0, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    #@6
    .line 244
    iput v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    #@8
    .line 245
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@b
    .line 242
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "extraCode"    # I

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 253
    iput p1, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    #@5
    .line 254
    iput p2, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    #@7
    .line 255
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@a
    .line 252
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "extraCode"    # I
    .param p3, "extraMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 259
    iput p1, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    #@5
    .line 260
    iput p2, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    #@7
    .line 261
    iput-object p3, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@9
    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 249
    invoke-direct {p0, p1}, Lcom/android/ims/ImsReasonInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 248
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    #@6
    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    #@c
    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@12
    .line 306
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 296
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCode()I
    .locals 1

    #@0
    .prologue
    .line 268
    iget v0, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    #@2
    return v0
.end method

.method public getExtraCode()I
    .locals 1

    #@0
    .prologue
    .line 275
    iget v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    #@2
    return v0
.end method

.method public getExtraMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ImsReasonInfo :: {"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "}"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 301
    iget v0, p0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 302
    iget v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 303
    iget-object v0, p0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 300
    return-void
.end method
