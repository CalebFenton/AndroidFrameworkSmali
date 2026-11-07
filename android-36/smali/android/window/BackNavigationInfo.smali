.class public final Landroid/window/BackNavigationInfo;
.super Ljava/lang/Object;
.source "BackNavigationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackNavigationInfo$CustomAnimationInfo;,
        Landroid/window/BackNavigationInfo$Builder;,
        Landroid/window/BackNavigationInfo$BackTargetType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackNavigationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KEY_GESTURE_FINISHED:Ljava/lang/String; = "GestureFinished"

.field public static final blacklist KEY_NAVIGATION_FINISHED:Ljava/lang/String; = "NavigationFinished"

.field public static final blacklist KEY_TOUCH_GESTURE_TRANSFERRED:Ljava/lang/String; = "TouchGestureTransferred"

.field public static final blacklist TYPE_CALLBACK:I = 0x4

.field public static final blacklist TYPE_CROSS_ACTIVITY:I = 0x2

.field public static final blacklist TYPE_CROSS_TASK:I = 0x3

.field public static final blacklist TYPE_DIALOG_CLOSE:I = 0x0

.field public static final blacklist TYPE_RETURN_TO_HOME:I = 0x1

.field public static final blacklist TYPE_UNDEFINED:I = -0x1


# instance fields
.field private final blacklist mAnimationCallback:Z

.field private blacklist mAppProgressGenerationAllowed:Z

.field private final blacklist mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

.field private final blacklist mFocusedTaskId:I

.field private final blacklist mLetterboxColor:I

.field private final blacklist mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field private final blacklist mOnBackNavigationDone:Landroid/os/RemoteCallback;

.field private final blacklist mPrepareRemoteAnimation:Z

.field private final blacklist mTouchableRegion:Landroid/graphics/Rect;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 300
    new-instance v0, Landroid/window/BackNavigationInfo$1;

    invoke-direct {v0}, Landroid/window/BackNavigationInfo$1;-><init>()V

    sput-object v0, Landroid/window/BackNavigationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;ZZLandroid/window/BackNavigationInfo$CustomAnimationInfo;ILandroid/graphics/Rect;ZI)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "onBackNavigationDone"    # Landroid/os/RemoteCallback;
    .param p3, "onBackInvokedCallback"    # Landroid/window/IOnBackInvokedCallback;
    .param p4, "isPrepareRemoteAnimation"    # Z
    .param p5, "isAnimationCallback"    # Z
    .param p6, "customAnimationInfo"    # Landroid/window/BackNavigationInfo$CustomAnimationInfo;
    .param p7, "letterboxColor"    # I
    .param p8, "touchableRegion"    # Landroid/graphics/Rect;
    .param p9, "appProgressGenerationAllowed"    # Z
    .param p10, "focusedTaskId"    # I

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Landroid/window/BackNavigationInfo;->mType:I

    .line 151
    iput-object p2, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    .line 152
    iput-object p3, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    .line 153
    iput-boolean p4, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    .line 154
    iput-boolean p5, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    .line 155
    iput-object p6, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    .line 156
    iput p7, p0, Landroid/window/BackNavigationInfo;->mLetterboxColor:I

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mTouchableRegion:Landroid/graphics/Rect;

    .line 158
    iput-boolean p9, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    .line 159
    iput p10, p0, Landroid/window/BackNavigationInfo;->mFocusedTaskId:I

    .line 160
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;ZZLandroid/window/BackNavigationInfo$CustomAnimationInfo;ILandroid/graphics/Rect;ZILandroid/window/BackNavigationInfo-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/window/BackNavigationInfo;-><init>(ILandroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;ZZLandroid/window/BackNavigationInfo$CustomAnimationInfo;ILandroid/graphics/Rect;ZI)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    .line 164
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IOnBackInvokedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    .line 168
    sget-object v0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo;->mLetterboxColor:I

    .line 170
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mTouchableRegion:Landroid/graphics/Rect;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo;->mFocusedTaskId:I

    .line 173
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/BackNavigationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/BackNavigationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 329
    packed-switch p0, :pswitch_data_1a

    .line 343
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :pswitch_8
    const-string v0, "TYPE_CALLBACK"

    return-object v0

    .line 339
    :pswitch_b
    const-string v0, "TYPE_CROSS_TASK"

    return-object v0

    .line 337
    :pswitch_e
    const-string v0, "TYPE_CROSS_ACTIVITY"

    return-object v0

    .line 335
    :pswitch_11
    const-string v0, "TYPE_RETURN_TO_HOME"

    return-object v0

    .line 333
    :pswitch_14
    const-string v0, "TYPE_DIALOG_CLOSE"

    return-object v0

    .line 331
    :pswitch_17
    const-string v0, "TYPE_UNDEFINED"

    return-object v0

    :pswitch_data_1a
    .packed-switch -0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableAppProgressGenerationAllowed()V
    .registers 2

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    .line 268
    return-void
.end method

.method public blacklist getCustomAnimationInfo()Landroid/window/BackNavigationInfo$CustomAnimationInfo;
    .registers 2

    .line 290
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    return-object v0
.end method

.method public blacklist getFocusedTaskId()I
    .registers 2

    .line 259
    iget v0, p0, Landroid/window/BackNavigationInfo;->mFocusedTaskId:I

    return v0
.end method

.method public blacklist getLetterboxColor()I
    .registers 2

    .line 234
    iget v0, p0, Landroid/window/BackNavigationInfo;->mLetterboxColor:I

    return v0
.end method

.method public blacklist getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    return-object v0
.end method

.method public blacklist getTouchableRegion()Landroid/graphics/Rect;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mTouchableRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 196
    iget v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    return v0
.end method

.method public blacklist isAnimationCallback()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    return v0
.end method

.method public blacklist isAppProgressGenerationAllowed()Z
    .registers 2

    .line 251
    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    return v0
.end method

.method public blacklist isPrepareRemoteAnimation()Z
    .registers 2

    .line 218
    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    return v0
.end method

.method public blacklist onBackNavigationFinished(Z)V
    .registers 4
    .param p1, "triggerBack"    # Z

    .line 277
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_13

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "NavigationFinished"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 282
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_13
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackNavigationInfo{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackNavigationInfo;->mType:I

    .line 315
    invoke-static {v1}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackNavigationInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mOnBackNavigationDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnBackInvokedCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrepareRemoteAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAnimationCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCustomizeAnimationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 178
    iget v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 180
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 181
    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 182
    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 183
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 184
    iget v0, p0, Landroid/window/BackNavigationInfo;->mLetterboxColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 186
    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 187
    iget v0, p0, Landroid/window/BackNavigationInfo;->mFocusedTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    return-void
.end method
