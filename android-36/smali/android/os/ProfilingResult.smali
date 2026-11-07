.class public final Landroid/os/ProfilingResult;
.super Ljava/lang/Object;
.source "ProfilingResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ProfilingResult$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ProfilingResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_FAILED_EXECUTING:I = 0x4

.field public static final whitelist ERROR_FAILED_INVALID_REQUEST:I = 0x7

.field public static final whitelist ERROR_FAILED_NO_DISK_SPACE:I = 0x6

.field public static final whitelist ERROR_FAILED_POST_PROCESSING:I = 0x5

.field public static final whitelist ERROR_FAILED_PROFILING_IN_PROGRESS:I = 0x3

.field public static final whitelist ERROR_FAILED_RATE_LIMIT_PROCESS:I = 0x2

.field public static final whitelist ERROR_FAILED_RATE_LIMIT_SYSTEM:I = 0x1

.field public static final whitelist ERROR_NONE:I = 0x0

.field public static final whitelist ERROR_UNKNOWN:I = 0x8


# instance fields
.field final blacklist mErrorCode:I

.field final blacklist mErrorMessage:Ljava/lang/String;

.field final blacklist mResultFilePath:Ljava/lang/String;

.field final blacklist mTag:Ljava/lang/String;

.field final blacklist mTriggerType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Landroid/os/ProfilingResult$1;

    invoke-direct {v0}, Landroid/os/ProfilingResult$1;-><init>()V

    sput-object v0, Landroid/os/ProfilingResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "errorCode"    # I
    .param p2, "resultFilePath"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "errorMessage"    # Ljava/lang/String;
    .param p5, "triggerType"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Landroid/os/ProfilingResult;->mErrorCode:I

    .line 98
    iput-object p2, p0, Landroid/os/ProfilingResult;->mResultFilePath:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Landroid/os/ProfilingResult;->mTag:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Landroid/os/ProfilingResult;->mErrorMessage:Ljava/lang/String;

    .line 101
    iput p5, p0, Landroid/os/ProfilingResult;->mTriggerType:I

    .line 102
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/ProfilingResult;->mErrorCode:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ProfilingResult;->mResultFilePath:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ProfilingResult;->mTag:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ProfilingResult;->mErrorMessage:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/ProfilingResult;->mTriggerType:I

    .line 112
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 187
    const/4 v0, 0x0

    if-eqz p1, :cond_4a

    instance-of v1, p1, Landroid/os/ProfilingResult;

    if-nez v1, :cond_8

    goto :goto_4a

    .line 191
    :cond_8
    move-object v1, p1

    check-cast v1, Landroid/os/ProfilingResult;

    .line 193
    .local v1, "o":Landroid/os/ProfilingResult;
    invoke-static {}, Landroid/os/profiling/Flags;->systemTriggeredProfilingNew()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 194
    iget v2, p0, Landroid/os/ProfilingResult;->mTriggerType:I

    invoke-virtual {v1}, Landroid/os/ProfilingResult;->getTriggerType()I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 195
    return v0

    .line 199
    :cond_1a
    iget v2, p0, Landroid/os/ProfilingResult;->mErrorCode:I

    invoke-virtual {v1}, Landroid/os/ProfilingResult;->getErrorCode()I

    move-result v3

    if-ne v2, v3, :cond_48

    iget-object v2, p0, Landroid/os/ProfilingResult;->mResultFilePath:Ljava/lang/String;

    .line 200
    invoke-virtual {v1}, Landroid/os/ProfilingResult;->getResultFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Landroid/os/ProfilingResult;->mTag:Ljava/lang/String;

    .line 201
    invoke-virtual {v1}, Landroid/os/ProfilingResult;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Landroid/os/ProfilingResult;->mErrorMessage:Ljava/lang/String;

    .line 202
    invoke-virtual {v1}, Landroid/os/ProfilingResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    nop

    .line 199
    :goto_49
    return v0

    .line 188
    .end local v1    # "o":Landroid/os/ProfilingResult;
    :cond_4a
    :goto_4a
    return v0
.end method

.method public whitelist getErrorCode()I
    .registers 2

    .line 148
    iget v0, p0, Landroid/os/ProfilingResult;->mErrorCode:I

    return v0
.end method

.method public whitelist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/os/ProfilingResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResultFilePath()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/os/ProfilingResult;->mResultFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/os/ProfilingResult;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTriggerType()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/os/ProfilingResult;->mTriggerType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 208
    iget v0, p0, Landroid/os/ProfilingResult;->mErrorCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ProfilingResult;->mResultFilePath:Ljava/lang/String;

    iget-object v2, p0, Landroid/os/ProfilingResult;->mTag:Ljava/lang/String;

    iget-object v3, p0, Landroid/os/ProfilingResult;->mErrorMessage:Ljava/lang/String;

    iget v4, p0, Landroid/os/ProfilingResult;->mTriggerType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget v0, p0, Landroid/os/ProfilingResult;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Landroid/os/ProfilingResult;->mResultFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/os/ProfilingResult;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Landroid/os/ProfilingResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget v0, p0, Landroid/os/ProfilingResult;->mTriggerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void
.end method
