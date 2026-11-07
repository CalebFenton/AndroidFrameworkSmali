.class public final Landroid/view/VerifiedKeyEvent;
.super Landroid/view/VerifiedInputEvent;
.source "VerifiedKeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedKeyEvent$KeyEventAction;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedKeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VerifiedKeyEvent"


# instance fields
.field private blacklist mAction:I

.field private blacklist mDownTimeNanos:J

.field private blacklist mFlags:I

.field private blacklist mKeyCode:I

.field private blacklist mMetaState:I

.field private blacklist mRepeatCount:I

.field private blacklist mScanCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 378
    new-instance v0, Landroid/view/VerifiedKeyEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedKeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJIIIJIIIII)V
    .registers 22
    .param p1, "deviceId"    # I
    .param p2, "eventTimeNanos"    # J
    .param p4, "source"    # I
    .param p5, "displayId"    # I
    .param p6, "action"    # I
    .param p7, "downTimeNanos"    # J
    .param p9, "flags"    # I
    .param p10, "keyCode"    # I
    .param p11, "scanCode"    # I
    .param p12, "metaState"    # I
    .param p13, "repeatCount"    # I

    .line 197
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/VerifiedInputEvent;-><init>(IIJII)V

    .line 198
    iput p6, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    .line 199
    const-class v1, Landroid/view/VerifiedKeyEvent$KeyEventAction;

    const/4 v2, 0x0

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 201
    move-wide v1, p7

    iput-wide v1, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    .line 202
    move/from16 v3, p9

    iput v3, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    .line 203
    move/from16 v4, p10

    iput v4, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    .line 204
    move/from16 v5, p11

    iput v5, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    .line 205
    move/from16 v6, p12

    iput v6, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    .line 206
    move/from16 v7, p13

    iput v7, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    .line 207
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 354
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/VerifiedInputEvent;-><init>(Landroid/os/Parcel;I)V

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 357
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 358
    .local v1, "downTimeNanos":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 359
    .local v3, "flags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 360
    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 361
    .local v5, "scanCode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 362
    .local v6, "metaState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 364
    .local v7, "repeatCount":I
    iput v0, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    .line 365
    const-class v8, Landroid/view/VerifiedKeyEvent$KeyEventAction;

    const/4 v9, 0x0

    iget v10, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 367
    iput-wide v1, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    .line 368
    iput v3, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    .line 369
    iput v4, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    .line 370
    iput v5, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    .line 371
    iput v6, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    .line 372
    iput v7, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    .line 375
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 294
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 295
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4b

    .line 297
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/VerifiedKeyEvent;

    .line 299
    .local v2, "that":Landroid/view/VerifiedKeyEvent;
    nop

    .line 300
    invoke-super {p0, v2}, Landroid/view/VerifiedInputEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mAction:I

    if-ne v3, v4, :cond_49

    iget-wide v3, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    iget-wide v5, v2, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_49

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mFlags:I

    if-ne v3, v4, :cond_49

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    if-ne v3, v4, :cond_49

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    if-ne v3, v4, :cond_49

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    if-ne v3, v4, :cond_49

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    if-ne v3, v4, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v1

    .line 299
    :goto_4a
    return v0

    .line 295
    .end local v2    # "that":Landroid/view/VerifiedKeyEvent;
    :cond_4b
    :goto_4b
    return v1
.end method

.method public whitelist getAction()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    return v0
.end method

.method public whitelist getDownTimeNanos()J
    .registers 3

    .line 229
    iget-wide v0, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    return-wide v0
.end method

.method public whitelist getFlag(I)Ljava/lang/Boolean;
    .registers 3
    .param p1, "flag"    # I

    .line 126
    sparse-switch p1, :sswitch_data_12

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 131
    :sswitch_5
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

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
        0x20 -> :sswitch_5
        0x800 -> :sswitch_5
    .end sparse-switch
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 241
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    return v0
.end method

.method public whitelist getKeyCode()I
    .registers 2

    .line 251
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    return v0
.end method

.method public whitelist getMetaState()I
    .registers 2

    .line 273
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    return v0
.end method

.method public whitelist getRepeatCount()I
    .registers 2

    .line 284
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    return v0
.end method

.method public whitelist getScanCode()I
    .registers 2

    .line 262
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 316
    const/4 v0, 0x1

    .line 317
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/view/VerifiedInputEvent;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 318
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    add-int/2addr v0, v2

    .line 319
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 320
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    add-int/2addr v0, v2

    .line 321
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    add-int/2addr v1, v2

    .line 322
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    add-int/2addr v0, v2

    .line 323
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    add-int/2addr v1, v2

    .line 324
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    add-int/2addr v0, v2

    .line 325
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 333
    invoke-super {p0, p1, p2}, Landroid/view/VerifiedInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 335
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-wide v0, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 337
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    return-void
.end method
