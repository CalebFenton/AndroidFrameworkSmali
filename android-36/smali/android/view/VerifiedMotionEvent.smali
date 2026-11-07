.class public final Landroid/view/VerifiedMotionEvent;
.super Landroid/view/VerifiedInputEvent;
.source "VerifiedMotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedMotionEvent$MotionEventAction;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedMotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VerifiedMotionEvent"


# instance fields
.field private blacklist mActionMasked:I

.field private blacklist mButtonState:I

.field private blacklist mDownTimeNanos:J

.field private blacklist mFlags:I

.field private blacklist mMetaState:I

.field private blacklist mRawX:F

.field private blacklist mRawY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 362
    new-instance v0, Landroid/view/VerifiedMotionEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedMotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJIIFFIJIII)V
    .registers 22
    .param p1, "deviceId"    # I
    .param p2, "eventTimeNanos"    # J
    .param p4, "source"    # I
    .param p5, "displayId"    # I
    .param p6, "rawX"    # F
    .param p7, "rawY"    # F
    .param p8, "actionMasked"    # I
    .param p9, "downTimeNanos"    # J
    .param p11, "flags"    # I
    .param p12, "metaState"    # I
    .param p13, "buttonState"    # I

    .line 185
    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/VerifiedInputEvent;-><init>(IIJII)V

    .line 186
    iput p6, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    .line 187
    iput p7, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    .line 188
    move/from16 v2, p8

    iput v2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    .line 189
    const-class v3, Landroid/view/VerifiedMotionEvent$MotionEventAction;

    const/4 v4, 0x0

    iget v5, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 191
    move-wide/from16 v3, p9

    iput-wide v3, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    .line 192
    move/from16 v5, p11

    iput v5, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    .line 193
    move/from16 v6, p12

    iput v6, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    .line 194
    move/from16 v7, p13

    iput v7, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    .line 197
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 338
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/view/VerifiedInputEvent;-><init>(Landroid/os/Parcel;I)V

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 341
    .local v0, "rawX":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 342
    .local v1, "rawY":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 343
    .local v2, "actionMasked":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 344
    .local v3, "downTimeNanos":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 345
    .local v5, "flags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 346
    .local v6, "metaState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 348
    .local v7, "buttonState":I
    iput v0, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    .line 349
    iput v1, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    .line 350
    iput v2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    .line 351
    const-class v8, Landroid/view/VerifiedMotionEvent$MotionEventAction;

    const/4 v9, 0x0

    iget v10, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 353
    iput-wide v3, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    .line 354
    iput v5, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    .line 355
    iput v6, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    .line 356
    iput v7, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    .line 359
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 278
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 279
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4f

    .line 281
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/VerifiedMotionEvent;

    .line 283
    .local v2, "that":Landroid/view/VerifiedMotionEvent;
    nop

    .line 284
    invoke-super {p0, v2}, Landroid/view/VerifiedInputEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mRawX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4d

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mRawY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4d

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    if-ne v3, v4, :cond_4d

    iget-wide v3, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    iget-wide v5, v2, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4d

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mFlags:I

    if-ne v3, v4, :cond_4d

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    if-ne v3, v4, :cond_4d

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    if-ne v3, v4, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v1

    .line 283
    :goto_4e
    return v0

    .line 279
    .end local v2    # "that":Landroid/view/VerifiedMotionEvent;
    :cond_4f
    :goto_4f
    return v1
.end method

.method public whitelist getActionMasked()I
    .registers 2

    .line 226
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    return v0
.end method

.method public whitelist getButtonState()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    return v0
.end method

.method public whitelist getDownTimeNanos()J
    .registers 3

    .line 237
    iget-wide v0, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    return-wide v0
.end method

.method public whitelist getFlag(I)Ljava/lang/Boolean;
    .registers 3
    .param p1, "flag"    # I

    .line 121
    sparse-switch p1, :sswitch_data_12

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 127
    :sswitch_5
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x800 -> :sswitch_5
    .end sparse-switch
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 248
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    return v0
.end method

.method public whitelist getMetaState()I
    .registers 2

    .line 258
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    return v0
.end method

.method public whitelist getRawX()F
    .registers 2

    .line 206
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    return v0
.end method

.method public whitelist getRawY()F
    .registers 2

    .line 216
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 300
    const/4 v0, 0x1

    .line 301
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/view/VerifiedInputEvent;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 302
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 303
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 304
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    add-int/2addr v0, v2

    .line 305
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 306
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    add-int/2addr v0, v2

    .line 307
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    add-int/2addr v1, v2

    .line 308
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    add-int/2addr v0, v2

    .line 309
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 317
    invoke-super {p0, p1, p2}, Landroid/view/VerifiedInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 319
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 320
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 321
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-wide v0, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 323
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    return-void
.end method
