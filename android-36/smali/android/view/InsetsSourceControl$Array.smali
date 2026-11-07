.class public Landroid/view/InsetsSourceControl$Array;
.super Ljava/lang/Object;
.source "InsetsSourceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsSourceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Array"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSourceControl$Array;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mControls:[Landroid/view/InsetsSourceControl;

.field private blacklist mSeq:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 382
    new-instance v0, Landroid/view/InsetsSourceControl$Array$1;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$Array$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSourceControl$Array;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 295
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 305
    invoke-virtual {p0, p1}, Landroid/view/InsetsSourceControl$Array;->readFromParcel(Landroid/os/Parcel;)V

    .line 306
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsSourceControl$Array;Z)V
    .registers 4
    .param p1, "other"    # Landroid/view/InsetsSourceControl$Array;
    .param p2, "copyControls"    # Z

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 301
    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsSourceControl$Array;->setTo(Landroid/view/InsetsSourceControl$Array;Z)V

    .line 302
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 394
    if-ne p0, p1, :cond_4

    .line 395
    const/4 v0, 0x1

    return v0

    .line 397
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 400
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/view/InsetsSourceControl$Array;

    .line 402
    .local v0, "other":Landroid/view/InsetsSourceControl$Array;
    iget-object v1, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    iget-object v2, v0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 398
    .end local v0    # "other":Landroid/view/InsetsSourceControl$Array;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist get()[Landroid/view/InsetsSourceControl;
    .registers 2

    .line 339
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    return-object v0
.end method

.method public blacklist getSeq()I
    .registers 2

    .line 309
    iget v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 407
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 372
    sget-object v0, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/InsetsSourceControl;

    iput-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 374
    return-void
.end method

.method public blacklist release()V
    .registers 6

    .line 344
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    if-nez v0, :cond_5

    .line 345
    return-void

    .line 347
    :cond_5
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 348
    .local v3, "control":Landroid/view/InsetsSourceControl;
    if-eqz v3, :cond_17

    .line 349
    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 347
    .end local v3    # "control":Landroid/view/InsetsSourceControl;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 352
    :cond_1a
    return-void
.end method

.method public blacklist set([Landroid/view/InsetsSourceControl;Z)V
    .registers 7
    .param p1, "controls"    # [Landroid/view/InsetsSourceControl;
    .param p2, "copyControls"    # Z

    .line 324
    if-eqz p1, :cond_24

    if-nez p2, :cond_5

    goto :goto_24

    .line 329
    :cond_5
    array-length v0, p1

    new-array v0, v0, [Landroid/view/InsetsSourceControl;

    iput-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    .line 330
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_23

    .line 331
    aget-object v1, p1, v0

    if-eqz v1, :cond_20

    .line 332
    iget-object v1, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    new-instance v2, Landroid/view/InsetsSourceControl;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    aput-object v2, v1, v0

    .line 330
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 335
    .end local v0    # "i":I
    :cond_23
    return-void

    .line 325
    :cond_24
    :goto_24
    iput-object p1, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    .line 326
    return-void
.end method

.method public blacklist setParcelableFlags(I)V
    .registers 6
    .param p1, "parcelableFlags"    # I

    .line 356
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    if-nez v0, :cond_5

    .line 357
    return-void

    .line 359
    :cond_5
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    .line 360
    .local v3, "control":Landroid/view/InsetsSourceControl;
    if-eqz v3, :cond_12

    .line 361
    invoke-virtual {v3, p1}, Landroid/view/InsetsSourceControl;->setParcelableFlags(I)V

    .line 359
    .end local v3    # "control":Landroid/view/InsetsSourceControl;
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 364
    :cond_15
    return-void
.end method

.method public blacklist setSeq(I)V
    .registers 2
    .param p1, "seq"    # I

    .line 313
    iput p1, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 314
    return-void
.end method

.method public blacklist setTo(Landroid/view/InsetsSourceControl$Array;Z)V
    .registers 4
    .param p1, "other"    # Landroid/view/InsetsSourceControl$Array;
    .param p2, "copyControls"    # Z

    .line 318
    iget-object v0, p1, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {p0, v0, p2}, Landroid/view/InsetsSourceControl$Array;->set([Landroid/view/InsetsSourceControl;Z)V

    .line 319
    iget v0, p1, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 320
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 378
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 379
    iget v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    return-void
.end method
