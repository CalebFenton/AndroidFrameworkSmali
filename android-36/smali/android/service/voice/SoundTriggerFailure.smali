.class public final Landroid/service/voice/SoundTriggerFailure;
.super Ljava/lang/Object;
.source "SoundTriggerFailure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/SoundTriggerFailure$SoundTriggerErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/SoundTriggerFailure;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_CODE_MODULE_DIED:I = 0x1

.field public static final whitelist ERROR_CODE_RECOGNITION_RESUME_FAILED:I = 0x2

.field public static final whitelist ERROR_CODE_UNEXPECTED_PREEMPTION:I = 0x3

.field public static final whitelist ERROR_CODE_UNKNOWN:I


# instance fields
.field private final blacklist mErrorCode:I

.field private final blacklist mErrorMessage:Ljava/lang/String;

.field private final blacklist mSuggestedAction:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 172
    new-instance v0, Landroid/service/voice/SoundTriggerFailure$1;

    invoke-direct {v0}, Landroid/service/voice/SoundTriggerFailure$1;-><init>()V

    sput-object v0, Landroid/service/voice/SoundTriggerFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 85
    invoke-static {p1}, Landroid/service/voice/SoundTriggerFailure;->getSuggestedActionBasedOnErrorCode(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;I)V

    .line 86
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;I)V
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "suggestedAction"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 96
    packed-switch p1, :pswitch_data_62

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :pswitch_25
    iput p1, p0, Landroid/service/voice/SoundTriggerFailure;->mErrorCode:I

    .line 102
    nop

    .line 106
    invoke-static {p1}, Landroid/service/voice/SoundTriggerFailure;->getSuggestedActionBasedOnErrorCode(I)I

    move-result v0

    if-eq p3, v0, :cond_54

    if-nez p1, :cond_31

    goto :goto_54

    .line 108
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid suggested next action: errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", suggestedAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_54
    :goto_54
    iput-object p2, p0, Landroid/service/voice/SoundTriggerFailure;->mErrorMessage:Ljava/lang/String;

    .line 112
    iput p3, p0, Landroid/service/voice/SoundTriggerFailure;->mSuggestedAction:I

    .line 113
    return-void

    .line 94
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorMessage is empty or null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method private static blacklist getSuggestedActionBasedOnErrorCode(I)I
    .registers 3
    .param p0, "errorCode"    # I

    .line 140
    packed-switch p0, :pswitch_data_10

    .line 148
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unexpected error code"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 146
    :pswitch_b
    const/4 v0, 0x4

    return v0

    .line 144
    :pswitch_d
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getErrorCode()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/service/voice/SoundTriggerFailure;->mErrorCode:I

    return v0
.end method

.method public whitelist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/service/voice/SoundTriggerFailure;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestedAction()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/service/voice/SoundTriggerFailure;->mSuggestedAction:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundTriggerFailure { errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/SoundTriggerFailure;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/SoundTriggerFailure;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", suggestedNextAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/SoundTriggerFailure;->mSuggestedAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 159
    iget v0, p0, Landroid/service/voice/SoundTriggerFailure;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, Landroid/service/voice/SoundTriggerFailure;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 161
    return-void
.end method
