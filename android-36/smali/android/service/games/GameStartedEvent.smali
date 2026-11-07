.class public final Landroid/service/games/GameStartedEvent;
.super Ljava/lang/Object;
.source "GameStartedEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/games/GameStartedEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mTaskId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/service/games/GameStartedEvent$1;

    invoke-direct {v0}, Landroid/service/games/GameStartedEvent$1;-><init>()V

    sput-object v0, Landroid/service/games/GameStartedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Landroid/service/games/GameStartedEvent;->mTaskId:I

    .line 60
    iput-object p2, p0, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 103
    return v0

    .line 106
    :cond_4
    instance-of v1, p1, Landroid/service/games/GameStartedEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 107
    return v2

    .line 110
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/service/games/GameStartedEvent;

    .line 111
    .local v1, "that":Landroid/service/games/GameStartedEvent;
    iget v3, p0, Landroid/service/games/GameStartedEvent;->mTaskId:I

    iget v4, v1, Landroid/service/games/GameStartedEvent;->mTaskId:I

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    .line 112
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 111
    :goto_1f
    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTaskId()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/service/games/GameStartedEvent;->mTaskId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 117
    iget v0, p0, Landroid/service/games/GameStartedEvent;->mTaskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameStartedEvent{mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/games/GameStartedEvent;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

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

    .line 70
    iget v0, p0, Landroid/service/games/GameStartedEvent;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Landroid/service/games/GameStartedEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return-void
.end method
