.class public Landroid/app/ActivityOptions$SceneTransitionInfo;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SceneTransitionInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityOptions$SceneTransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mExitCoordinatorIndex:I

.field private blacklist mIsReturning:Z

.field private blacklist mResultCode:I

.field private blacklist mResultData:Landroid/content/Intent;

.field private blacklist mResultReceiver:Landroid/os/ResultReceiver;

.field private blacklist mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2896
    new-instance v0, Landroid/app/ActivityOptions$SceneTransitionInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityOptions$SceneTransitionInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityOptions$SceneTransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 2884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2885
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2888
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    .line 2889
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    .line 2890
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    .line 2891
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    .line 2892
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 2893
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    .line 2894
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2910
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExitCoordinatorKey()I
    .registers 2

    .line 2971
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    return v0
.end method

.method public blacklist getResultCode()I
    .registers 2

    .line 2936
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    return v0
.end method

.method public blacklist getResultData()Landroid/content/Intent;
    .registers 2

    .line 2945
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getResultReceiver()Landroid/os/ResultReceiver;
    .registers 2

    .line 2963
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public blacklist getSharedElementNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2954
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method blacklist isCrossTask()Z
    .registers 2

    .line 2975
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isReturning()Z
    .registers 2

    .line 2928
    iget-boolean v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    return v0
.end method

.method public blacklist setExitCoordinatorKey(I)V
    .registers 2
    .param p1, "exitCoordinatorKey"    # I

    .line 2967
    iput p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    .line 2968
    return-void
.end method

.method public blacklist setResultCode(I)V
    .registers 2
    .param p1, "resultCode"    # I

    .line 2932
    iput p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    .line 2933
    return-void
.end method

.method public blacklist setResultData(Landroid/content/Intent;)V
    .registers 2
    .param p1, "resultData"    # Landroid/content/Intent;

    .line 2940
    iput-object p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    .line 2941
    return-void
.end method

.method public blacklist setResultReceiver(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2958
    iput-object p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 2959
    return-void
.end method

.method public blacklist setReturning(Z)V
    .registers 2
    .param p1, "isReturning"    # Z

    .line 2924
    iput-boolean p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    .line 2925
    return-void
.end method

.method public blacklist setSharedElementNames(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2949
    .local p1, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    .line 2950
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneTransitionInfo, mIsReturning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSharedElementNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransitionReceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExitCoordinatorIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2915
    iget-boolean v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2916
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2917
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2918
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2919
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2920
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2921
    return-void
.end method
