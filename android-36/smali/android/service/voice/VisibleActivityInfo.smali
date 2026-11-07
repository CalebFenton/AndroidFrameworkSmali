.class public final Landroid/service/voice/VisibleActivityInfo;
.super Ljava/lang/Object;
.source "VisibleActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/VisibleActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_ACTIVITY_ADDED:I = 0x1

.field public static final blacklist TYPE_ACTIVITY_REMOVED:I = 0x2


# instance fields
.field private final blacklist mAssistToken:Landroid/os/IBinder;

.field private final blacklist mTaskId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 180
    new-instance v0, Landroid/service/voice/VisibleActivityInfo$1;

    invoke-direct {v0}, Landroid/service/voice/VisibleActivityInfo$1;-><init>()V

    sput-object v0, Landroid/service/voice/VisibleActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/os/IBinder;)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "assistToken"    # Landroid/os/IBinder;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iput p1, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    .line 78
    iput-object p2, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    .line 79
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .local v0, "taskId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 171
    .local v1, "assistToken":Landroid/os/IBinder;
    iput v0, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    .line 172
    iput-object v1, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    .line 173
    const-class v2, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 126
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 128
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/voice/VisibleActivityInfo;

    .line 130
    .local v2, "that":Landroid/service/voice/VisibleActivityInfo;
    iget v3, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    iget v4, v2, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    .line 132
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    .line 130
    :goto_27
    return v0

    .line 126
    .end local v2    # "that":Landroid/service/voice/VisibleActivityInfo;
    :cond_28
    :goto_28
    return v1
.end method

.method public whitelist getActivityId()Landroid/service/voice/VoiceInteractionSession$ActivityId;
    .registers 4

    .line 88
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$ActivityId;

    iget v1, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    iget-object v2, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, v2}, Landroid/service/voice/VoiceInteractionSession$ActivityId;-><init>(ILandroid/os/IBinder;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 141
    const/4 v0, 0x1

    .line 142
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    add-int/2addr v1, v2

    .line 143
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 144
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisibleActivityInfo { taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", assistToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 153
    iget v0, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 155
    return-void
.end method
