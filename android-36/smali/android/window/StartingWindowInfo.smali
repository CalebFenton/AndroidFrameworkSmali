.class public final Landroid/window/StartingWindowInfo;
.super Ljava/lang/Object;
.source "StartingWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/StartingWindowInfo$StartingTypeParams;,
        Landroid/window/StartingWindowInfo$StartingWindowType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/StartingWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STARTING_WINDOW_TYPE_LEGACY_SPLASH_SCREEN:I = 0x4

.field public static final blacklist STARTING_WINDOW_TYPE_NONE:I = 0x0

.field public static final blacklist STARTING_WINDOW_TYPE_SNAPSHOT:I = 0x2

.field public static final blacklist STARTING_WINDOW_TYPE_SOLID_COLOR_SPLASH_SCREEN:I = 0x3

.field public static final blacklist STARTING_WINDOW_TYPE_SPLASH_SCREEN:I = 0x1

.field public static final blacklist STARTING_WINDOW_TYPE_WINDOWLESS:I = 0x5

.field public static final blacklist TYPE_PARAMETER_ACTIVITY_CREATED:I = 0x10

.field public static final blacklist TYPE_PARAMETER_ACTIVITY_DRAWN:I = 0x40

.field public static final blacklist TYPE_PARAMETER_ALLOW_HANDLE_SOLID_COLOR_SCREEN:I = 0x80

.field public static final blacklist TYPE_PARAMETER_ALLOW_TASK_SNAPSHOT:I = 0x8

.field public static final blacklist TYPE_PARAMETER_APP_PREFERS_ICON:I = 0x200

.field public static final blacklist TYPE_PARAMETER_LEGACY_SPLASH_SCREEN:I = -0x80000000

.field public static final blacklist TYPE_PARAMETER_NEW_TASK:I = 0x1

.field public static final blacklist TYPE_PARAMETER_PROCESS_RUNNING:I = 0x4

.field public static final blacklist TYPE_PARAMETER_TASK_SWITCH:I = 0x2

.field public static final blacklist TYPE_PARAMETER_USE_SOLID_COLOR_SPLASH_SCREEN:I = 0x20

.field public static final blacklist TYPE_PARAMETER_WINDOWLESS:I = 0x100


# instance fields
.field public blacklist appToken:Landroid/os/IBinder;

.field public blacklist isKeyguardOccluded:Z

.field public blacklist mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public blacklist requestedVisibleTypes:I

.field public blacklist rootSurface:Landroid/view/SurfaceControl;

.field public blacklist splashScreenThemeResId:I

.field public blacklist startingWindowTypeParameter:I

.field public blacklist targetActivityInfo:Landroid/content/pm/ActivityInfo;

.field public final blacklist taskBounds:Landroid/graphics/Rect;

.field public blacklist taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public blacklist taskSnapshot:Landroid/window/TaskSnapshot;

.field public blacklist windowlessStartingSurfaceCallback:Landroid/window/IWindowlessStartingSurfaceCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 289
    new-instance v0, Landroid/window/StartingWindowInfo$1;

    invoke-direct {v0}, Landroid/window/StartingWindowInfo$1;-><init>()V

    sput-object v0, Landroid/window/StartingWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/StartingWindowInfo;->taskBounds:Landroid/graphics/Rect;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    .line 197
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/window/StartingWindowInfo;->requestedVisibleTypes:I

    .line 227
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/StartingWindowInfo;->taskBounds:Landroid/graphics/Rect;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    .line 197
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    iput v0, p0, Landroid/window/StartingWindowInfo;->requestedVisibleTypes:I

    .line 230
    invoke-virtual {p0, p1}, Landroid/window/StartingWindowInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 231
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/StartingWindowInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/StartingWindowInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist allowHandleSolidColorSplashScreen()Z
    .registers 2

    .line 237
    iget v0, p0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyAddComplete(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "addedSurface"    # Landroid/view/SurfaceControl;

    .line 216
    iget-object v0, p0, Landroid/window/StartingWindowInfo;->windowlessStartingSurfaceCallback:Landroid/window/IWindowlessStartingSurfaceCallback;

    if-eqz v0, :cond_b

    .line 218
    :try_start_4
    iget-object v0, p0, Landroid/window/StartingWindowInfo;->windowlessStartingSurfaceCallback:Landroid/window/IWindowlessStartingSurfaceCallback;

    invoke-interface {v0, p1}, Landroid/window/IWindowlessStartingSurfaceCallback;->onSurfaceAdded(Landroid/view/SurfaceControl;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 221
    goto :goto_b

    .line 219
    :catch_a
    move-exception v0

    .line 223
    :cond_b
    :goto_b
    return-void
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 262
    sget-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 263
    iget-object v0, p0, Landroid/window/StartingWindowInfo;->taskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 264
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    .line 266
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    .line 269
    sget-object v0, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskSnapshot;

    iput-object v0, p0, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/StartingWindowInfo;->requestedVisibleTypes:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/StartingWindowInfo;->appToken:Landroid/os/IBinder;

    .line 272
    nop

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IWindowlessStartingSurfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IWindowlessStartingSurfaceCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/window/StartingWindowInfo;->windowlessStartingSurfaceCallback:Landroid/window/IWindowlessStartingSurfaceCallback;

    .line 274
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/window/StartingWindowInfo;->rootSurface:Landroid/view/SurfaceControl;

    .line 275
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartingWindowInfo{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetActivityInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " preferredStartingWindowType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    .line 284
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mainWindowLayoutParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " splashScreenThemeResId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    .line 286
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 247
    iget-object v0, p0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 248
    iget-object v0, p0, Landroid/window/StartingWindowInfo;->taskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 249
    iget-object v0, p0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 250
    iget v0, p0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v0, p0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 252
    iget v0, p0, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-boolean v0, p0, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 254
    iget-object v0, p0, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 255
    iget v0, p0, Landroid/window/StartingWindowInfo;->requestedVisibleTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-object v0, p0, Landroid/window/StartingWindowInfo;->appToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 257
    iget-object v0, p0, Landroid/window/StartingWindowInfo;->windowlessStartingSurfaceCallback:Landroid/window/IWindowlessStartingSurfaceCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 258
    iget-object v0, p0, Landroid/window/StartingWindowInfo;->rootSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 259
    return-void
.end method
