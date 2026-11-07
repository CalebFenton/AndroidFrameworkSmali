.class public final Landroid/window/TaskFragmentTransaction$Change;
.super Ljava/lang/Object;
.source "TaskFragmentTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Change"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentTransaction$Change;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityIntent:Landroid/content/Intent;

.field private blacklist mActivityToken:Landroid/os/IBinder;

.field private blacklist mErrorBundle:Landroid/os/Bundle;

.field private blacklist mErrorCallbackToken:Landroid/os/IBinder;

.field private blacklist mOtherActivityToken:Landroid/os/IBinder;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private blacklist mTaskFragmentInfo:Landroid/window/TaskFragmentInfo;

.field private blacklist mTaskFragmentParentInfo:Landroid/window/TaskFragmentParentInfo;

.field private blacklist mTaskFragmentToken:Landroid/os/IBinder;

.field private blacklist mTaskId:I

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 415
    new-instance v0, Landroid/window/TaskFragmentTransaction$Change$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentTransaction$Change$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentTransaction$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Landroid/window/TaskFragmentTransaction$Change;->mType:I

    .line 204
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mType:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 209
    sget-object v0, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentInfo;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentInfo:Landroid/window/TaskFragmentInfo;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskId:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 212
    const-class v0, Landroid/window/TaskFragmentTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorBundle:Landroid/os/Bundle;

    .line 213
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityIntent:Landroid/content/Intent;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityToken:Landroid/os/IBinder;

    .line 215
    sget-object v0, Landroid/window/TaskFragmentParentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentParentInfo;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentParentInfo:Landroid/window/TaskFragmentParentInfo;

    .line 216
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mOtherActivityToken:Landroid/os/IBinder;

    .line 218
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentTransaction$Change;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivityIntent()Landroid/content/Intent;
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 371
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getErrorBundle()Landroid/os/Bundle;
    .registers 2

    .line 360
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorBundle:Landroid/os/Bundle;

    goto :goto_9

    :cond_7
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_9
    return-object v0
.end method

.method public blacklist getErrorCallbackToken()Landroid/os/IBinder;
    .registers 2

    .line 355
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorCallbackToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getOtherActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 377
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mOtherActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;
    .registers 2

    .line 346
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentInfo:Landroid/window/TaskFragmentInfo;

    return-object v0
.end method

.method public blacklist getTaskFragmentParentInfo()Landroid/window/TaskFragmentParentInfo;
    .registers 2

    .line 386
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentParentInfo:Landroid/window/TaskFragmentParentInfo;

    return-object v0
.end method

.method public blacklist getTaskFragmentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 401
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getTaskFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 341
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 350
    iget v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskId:I

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 336
    iget v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mType:I

    return v0
.end method

.method public blacklist setActivityIntent(Landroid/content/Intent;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 283
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityIntent:Landroid/content/Intent;

    .line 284
    return-object p0
.end method

.method public blacklist setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 296
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityToken:Landroid/os/IBinder;

    .line 297
    return-object p0
.end method

.method public blacklist setErrorBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 3
    .param p1, "errorBundle"    # Landroid/os/Bundle;

    .line 273
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorBundle:Landroid/os/Bundle;

    .line 274
    return-object p0
.end method

.method public blacklist setErrorCallbackToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 2
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 263
    iput-object p1, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 264
    return-object p0
.end method

.method public blacklist setOtherActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 311
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mOtherActivityToken:Landroid/os/IBinder;

    .line 312
    return-object p0
.end method

.method public blacklist setTaskFragmentInfo(Landroid/window/TaskFragmentInfo;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 3
    .param p1, "info"    # Landroid/window/TaskFragmentInfo;

    .line 245
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentInfo;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentInfo:Landroid/window/TaskFragmentInfo;

    .line 246
    return-object p0
.end method

.method public blacklist setTaskFragmentParentInfo(Landroid/window/TaskFragmentParentInfo;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 3
    .param p1, "info"    # Landroid/window/TaskFragmentParentInfo;

    .line 323
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentParentInfo;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentParentInfo:Landroid/window/TaskFragmentParentInfo;

    .line 324
    return-object p0
.end method

.method public blacklist setTaskFragmentSurfaceControl(Landroid/view/SurfaceControl;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 2
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 330
    iput-object p1, p0, Landroid/window/TaskFragmentTransaction$Change;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 331
    return-object p0
.end method

.method public blacklist setTaskFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 3
    .param p1, "taskFragmentToken"    # Landroid/os/IBinder;

    .line 238
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 239
    return-object p0
.end method

.method public blacklist setTaskId(I)Landroid/window/TaskFragmentTransaction$Change;
    .registers 2
    .param p1, "taskId"    # I

    .line 252
    iput p1, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskId:I

    .line 253
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change{ type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentTransaction$Change;->mType:I

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

    .line 222
    iget v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 224
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentInfo:Landroid/window/TaskFragmentInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 225
    iget v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 227
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mErrorBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 228
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 229
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 230
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mTaskFragmentParentInfo:Landroid/window/TaskFragmentParentInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 231
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 232
    iget-object v0, p0, Landroid/window/TaskFragmentTransaction$Change;->mOtherActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 233
    return-void
.end method
