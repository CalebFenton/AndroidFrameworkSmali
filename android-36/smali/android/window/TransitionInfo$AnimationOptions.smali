.class public final Landroid/window/TransitionInfo$AnimationOptions;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo$AnimationOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_ANIMATION_RESOURCES_ID:I = -0x1


# instance fields
.field private blacklist mAnimations:I

.field private blacklist mBackgroundColor:I

.field private blacklist mChangeResId:I

.field private blacklist mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

.field private blacklist mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

.field private blacklist mEnterResId:I

.field private blacklist mExitResId:I

.field private blacklist mOverrideTaskTransition:Z

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mThumbnail:Landroid/hardware/HardwareBuffer;

.field private final blacklist mTransitionBounds:Landroid/graphics/Rect;

.field private blacklist mType:I

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1345
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$AnimationOptions$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo$AnimationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 3
    .param p1, "type"    # I

    .line 1148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    .line 1134
    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    .line 1135
    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    .line 1138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    .line 1149
    iput p1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    .line 1150
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    .line 1134
    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    .line 1135
    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    .line 1138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    .line 1153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    .line 1154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    .line 1155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    .line 1156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    .line 1157
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    .line 1158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    .line 1159
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 1160
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    .line 1161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    .line 1162
    sget-object v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    .line 1163
    sget-object v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    .line 1164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mUserId:I

    .line 1165
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist makeAnimOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 3
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 1179
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1180
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    .line 1181
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    .line 1182
    return-object v0
.end method

.method public static blacklist makeClipRevealAnimOptions(IIII)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 8
    .param p0, "startX"    # I
    .param p1, "startY"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1232
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1233
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iget-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    add-int v2, p0, p2

    add-int v3, p1, p3

    invoke-virtual {v1, p0, p1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1234
    return-object v0
.end method

.method public static blacklist makeCommonAnimOptions(Ljava/lang/String;)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1170
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1171
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iput-object p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    .line 1172
    return-object v0
.end method

.method public static blacklist makeCrossProfileAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;
    .registers 2

    .line 1261
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1262
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    return-object v0
.end method

.method public static blacklist makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "enterResId"    # I
    .param p2, "changeResId"    # I
    .param p3, "exitResId"    # I
    .param p4, "overrideTaskTransition"    # Z

    .line 1219
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1220
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iput-object p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    .line 1221
    iput p1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    .line 1222
    iput p2, v0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    .line 1223
    iput p3, v0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    .line 1224
    iput-boolean p4, v0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    .line 1225
    return-object v0
.end method

.method public static blacklist makeScaleUpAnimOptions(IIIIZ)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 9
    .param p0, "startX"    # I
    .param p1, "startY"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "overrideTaskTransition"    # Z

    .line 1241
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1242
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iget-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    add-int v2, p0, p2

    add-int v3, p1, p3

    invoke-virtual {v1, p0, p1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1243
    iput-boolean p4, v0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    .line 1244
    return-object v0
.end method

.method public static blacklist makeSceneTransitionAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;
    .registers 2

    .line 1268
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1269
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    return-object v0
.end method

.method public static blacklist makeThumbnailAnimOptions(Landroid/hardware/HardwareBuffer;IIZ)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 6
    .param p0, "srcThumb"    # Landroid/hardware/HardwareBuffer;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "scaleUp"    # Z

    .line 1251
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    .line 1252
    if-eqz p3, :cond_6

    const/4 v1, 0x3

    goto :goto_7

    :cond_6
    const/4 v1, 0x4

    :goto_7
    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 1253
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iget-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1254
    iput-object p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    .line 1255
    return-object v0
.end method

.method private static blacklist typeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .line 1366
    packed-switch p0, :pswitch_data_36

    .line 1375
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 1374
    :pswitch_1d
    const-string v0, "FROM_STYLE"

    goto :goto_34

    .line 1373
    :pswitch_20
    const-string v0, "OPEN_CROSS_PROFILE_APPS"

    goto :goto_34

    .line 1372
    :pswitch_23
    const-string v0, "CLIP_REVEAL"

    goto :goto_34

    .line 1371
    :pswitch_26
    const-string v0, "SCENE_TRANSITION"

    goto :goto_34

    .line 1370
    :pswitch_29
    const-string v0, "THUMBNAIL_SCALE_DOWN"

    goto :goto_34

    .line 1369
    :pswitch_2c
    const-string v0, "THUMBNAIL_SCALE_UP"

    goto :goto_34

    .line 1368
    :pswitch_2f
    const-string v0, "SCALE_UP"

    goto :goto_34

    .line 1367
    :pswitch_32
    const-string v0, "CUSTOM"

    .line 1366
    :goto_34
    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_23
        :pswitch_20
        :pswitch_3
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public blacklist addCustomActivityTransition(ZIII)V
    .registers 7
    .param p1, "isOpen"    # Z
    .param p2, "enterResId"    # I
    .param p3, "exitResId"    # I
    .param p4, "backgroundColor"    # I

    .line 1193
    if-eqz p1, :cond_5

    .line 1194
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    .line 1195
    .local v0, "customTransition":Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;
    :goto_7
    if-nez v0, :cond_16

    .line 1196
    new-instance v1, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    invoke-direct {v1}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;-><init>()V

    move-object v0, v1

    .line 1197
    if-eqz p1, :cond_14

    .line 1198
    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    goto :goto_16

    .line 1200
    :cond_14
    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    .line 1203
    :cond_16
    :goto_16
    invoke-virtual {v0, p2, p3, p4}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->addCustomActivityTransition(III)V

    .line 1204
    return-void
.end method

.method public blacklist addOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 1187
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    .line 1188
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1361
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAnimations()I
    .registers 2

    .line 1319
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    return v0
.end method

.method public blacklist getChangeResId()I
    .registers 2

    .line 1291
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    return v0
.end method

.method public blacklist getCustomActivityTransition(Z)Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;
    .registers 3
    .param p1, "open"    # Z

    .line 1325
    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    :goto_7
    return-object v0
.end method

.method public blacklist getEnterResId()I
    .registers 2

    .line 1286
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    return v0
.end method

.method public blacklist getExitResId()I
    .registers 2

    .line 1296
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    return v0
.end method

.method public blacklist getOverrideTaskTransition()Z
    .registers 2

    .line 1300
    iget-boolean v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 1305
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getThumbnail()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 1315
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public blacklist getTransitionBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1310
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 1281
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 1277
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mUserId:I

    return v0
.end method

.method public blacklist setUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 1273
    iput p1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mUserId:I

    .line 1274
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1383
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    invoke-static {v2}, Landroid/window/TransitionInfo$AnimationOptions;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    iget-boolean v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    if-eqz v1, :cond_20

    .line 1385
    const-string v1, " overrideTask=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    :cond_20
    iget-object v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 1388
    const-string v1, " bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1390
    :cond_33
    iget v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_43

    .line 1391
    const-string v1, " enterResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1393
    :cond_43
    iget v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    if-eq v1, v2, :cond_52

    .line 1394
    const-string v1, " changeResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1396
    :cond_52
    iget v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    if-eq v1, v2, :cond_61

    .line 1397
    const-string v1, " exitResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1399
    :cond_61
    const-string v1, " mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionInfo$AnimationOptions;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1400
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1330
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mChangeResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1334
    iget-boolean v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1335
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1336
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1337
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1338
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityOpenTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1340
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mCustomActivityCloseTransition:Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1341
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    return-void
.end method
