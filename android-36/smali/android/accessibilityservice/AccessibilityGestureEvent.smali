.class public final Landroid/accessibilityservice/AccessibilityGestureEvent;
.super Ljava/lang/Object;
.source "AccessibilityGestureEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityGestureEvent$GestureId;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/AccessibilityGestureEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayId:I

.field private final blacklist mGestureId:I

.field private blacklist mMotionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 336
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent$1;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityGestureEvent$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/AccessibilityGestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "gestureId"    # I
    .param p2, "displayId"    # I

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 171
    return-void
.end method

.method public constructor whitelist <init>(IILjava/util/List;)V
    .registers 5
    .param p1, "gestureId"    # I
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p3, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    .line 162
    iput p1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    .line 163
    iput p2, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    .line 164
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 177
    .local v0, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/MotionEvent;>;"
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    .line 178
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/accessibilityservice/AccessibilityGestureEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist gestureIdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "id"    # I

    .line 259
    packed-switch p0, :pswitch_data_98

    .line 314
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 278
    :pswitch_8
    const-string v0, "GESTURE_3_FINGER_TRIPLE_TAP_AND_HOLD"

    return-object v0

    .line 272
    :pswitch_b
    const-string v0, "GESTURE_3_FINGER_SINGLE_TAP_AND_HOLD"

    return-object v0

    .line 265
    :pswitch_e
    const-string v0, "GESTURE_2_FINGER_TRIPLE_TAP_AND_HOLD"

    return-object v0

    .line 282
    :pswitch_11
    const-string v0, "GESTURE_4_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    .line 275
    :pswitch_14
    const-string v0, "GESTURE_3_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    .line 268
    :pswitch_17
    const-string v0, "GESTURE_2_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    .line 283
    :pswitch_1a
    const-string v0, "GESTURE_4_FINGER_TRIPLE_TAP"

    return-object v0

    .line 280
    :pswitch_1d
    const-string v0, "GESTURE_4_FINGER_DOUBLE_TAP"

    return-object v0

    .line 279
    :pswitch_20
    const-string v0, "GESTURE_4_FINGER_SINGLE_TAP"

    return-object v0

    .line 312
    :pswitch_23
    const-string v0, "GESTURE_4_FINGER_SWIPE_RIGHT"

    return-object v0

    .line 311
    :pswitch_26
    const-string v0, "GESTURE_4_FINGER_SWIPE_LEFT"

    return-object v0

    .line 310
    :pswitch_29
    const-string v0, "GESTURE_4_FINGER_SWIPE_DOWN"

    return-object v0

    .line 313
    :pswitch_2c
    const-string v0, "GESTURE_4_FINGER_SWIPE_UP"

    return-object v0

    .line 308
    :pswitch_2f
    const-string v0, "GESTURE_3_FINGER_SWIPE_RIGHT"

    return-object v0

    .line 307
    :pswitch_32
    const-string v0, "GESTURE_3_FINGER_SWIPE_LEFT"

    return-object v0

    .line 306
    :pswitch_35
    const-string v0, "GESTURE_3_FINGER_SWIPE_DOWN"

    return-object v0

    .line 309
    :pswitch_38
    const-string v0, "GESTURE_3_FINGER_SWIPE_UP"

    return-object v0

    .line 304
    :pswitch_3b
    const-string v0, "GESTURE_2_FINGER_SWIPE_RIGHT"

    return-object v0

    .line 303
    :pswitch_3e
    const-string v0, "GESTURE_2_FINGER_SWIPE_LEFT"

    return-object v0

    .line 302
    :pswitch_41
    const-string v0, "GESTURE_2_FINGER_SWIPE_DOWN"

    return-object v0

    .line 305
    :pswitch_44
    const-string v0, "GESTURE_2_FINGER_SWIPE_UP"

    return-object v0

    .line 276
    :pswitch_47
    const-string v0, "GESTURE_3_FINGER_TRIPLE_TAP"

    return-object v0

    .line 273
    :pswitch_4a
    const-string v0, "GESTURE_3_FINGER_DOUBLE_TAP"

    return-object v0

    .line 270
    :pswitch_4d
    const-string v0, "GESTURE_3_FINGER_SINGLE_TAP"

    return-object v0

    .line 269
    :pswitch_50
    const-string v0, "GESTURE_2_FINGER_TRIPLE_TAP"

    return-object v0

    .line 266
    :pswitch_53
    const-string v0, "GESTURE_2_FINGER_DOUBLE_TAP"

    return-object v0

    .line 263
    :pswitch_56
    const-string v0, "GESTURE_2_FINGER_SINGLE_TAP"

    return-object v0

    .line 285
    :pswitch_59
    const-string v0, "GESTURE_DOUBLE_TAP_AND_HOLD"

    return-object v0

    .line 284
    :pswitch_5c
    const-string v0, "GESTURE_DOUBLE_TAP"

    return-object v0

    .line 289
    :pswitch_5f
    const-string v0, "GESTURE_SWIPE_DOWN_AND_RIGHT"

    return-object v0

    .line 287
    :pswitch_62
    const-string v0, "GESTURE_SWIPE_DOWN_AND_LEFT"

    return-object v0

    .line 301
    :pswitch_65
    const-string v0, "GESTURE_SWIPE_UP_AND_RIGHT"

    return-object v0

    .line 299
    :pswitch_68
    const-string v0, "GESTURE_SWIPE_UP_AND_LEFT"

    return-object v0

    .line 297
    :pswitch_6b
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_DOWN"

    return-object v0

    .line 295
    :pswitch_6e
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_UP"

    return-object v0

    .line 293
    :pswitch_71
    const-string v0, "GESTURE_SWIPE_LEFT_AND_DOWN"

    return-object v0

    .line 291
    :pswitch_74
    const-string v0, "GESTURE_SWIPE_LEFT_AND_UP"

    return-object v0

    .line 288
    :pswitch_77
    const-string v0, "GESTURE_SWIPE_DOWN_AND_UP"

    return-object v0

    .line 300
    :pswitch_7a
    const-string v0, "GESTURE_SWIPE_UP_AND_DOWN"

    return-object v0

    .line 296
    :pswitch_7d
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_LEFT"

    return-object v0

    .line 292
    :pswitch_80
    const-string v0, "GESTURE_SWIPE_LEFT_AND_RIGHT"

    return-object v0

    .line 294
    :pswitch_83
    const-string v0, "GESTURE_SWIPE_RIGHT"

    return-object v0

    .line 290
    :pswitch_86
    const-string v0, "GESTURE_SWIPE_LEFT"

    return-object v0

    .line 286
    :pswitch_89
    const-string v0, "GESTURE_SWIPE_DOWN"

    return-object v0

    .line 298
    :pswitch_8c
    const-string v0, "GESTURE_SWIPE_UP"

    return-object v0

    .line 260
    :pswitch_8f
    const-string v0, "GESTURE_UNKNOWN"

    return-object v0

    .line 261
    :pswitch_92
    const-string v0, "GESTURE_PASSTHROUGH"

    return-object v0

    .line 262
    :pswitch_95
    const-string v0, "GESTURE_TOUCH_EXPLORATION"

    return-object v0

    :pswitch_data_98
    .packed-switch -0x2
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist copyForAsync()Landroid/accessibilityservice/AccessibilityGestureEvent;
    .registers 6

    .line 217
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    iget v2, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    .line 218
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/accessibilityservice/AccessibilityGestureEvent$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/accessibilityservice/AccessibilityGestureEvent$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 217
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDisplayId()I
    .registers 2

    .line 187
    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    return v0
.end method

.method public whitelist getGestureId()I
    .registers 2

    .line 197
    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    return v0
.end method

.method public whitelist getMotionEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    return-object v0
.end method

.method public blacklist recycle()V
    .registers 3

    .line 228
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    new-instance v1, Landroid/accessibilityservice/AccessibilityGestureEvent$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/accessibilityservice/AccessibilityGestureEvent$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 229
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessibilityGestureEvent["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "gestureId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityGestureEvent;->gestureIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v2, "displayId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v2, "Motion Events: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 242
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "action":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_58

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 247
    :cond_58
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .end local v3    # "action":Ljava/lang/String;
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 250
    .end local v2    # "i":I
    :cond_60
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 328
    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 331
    return-void
.end method
