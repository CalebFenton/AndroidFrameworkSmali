.class public Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;
.super Ljava/lang/Object;
.source "AudioHalCapCriterionV2.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioHalCapCriterionV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForceConfigForUse"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist defaultValue:Landroid/media/audio/common/AudioPolicyForceUse;

.field public blacklist logic:B

.field public blacklist values:[Landroid/media/audio/common/AudioPolicyForceUse;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 277
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->logic:B

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 328
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 329
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 332
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 331
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 334
    :cond_19
    return v1

    .line 336
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 337
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 339
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->values:[Landroid/media/audio/common/AudioPolicyForceUse;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 324
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->defaultValue:Landroid/media/audio/common/AudioPolicyForceUse;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 325
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 304
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 306
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7e

    .line 307
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_7c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 314
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 317
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 307
    return-void

    .line 315
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_26
    :try_start_26
    sget-object v2, Landroid/media/audio/common/AudioPolicyForceUse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioPolicyForceUse;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->values:[Landroid/media/audio/common/AudioPolicyForceUse;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_7c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 314
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 317
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 309
    return-void

    .line 315
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 310
    :cond_46
    :try_start_46
    sget-object v2, Landroid/media/audio/common/AudioPolicyForceUse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioPolicyForceUse;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->defaultValue:Landroid/media/audio/common/AudioPolicyForceUse;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_7c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_66

    .line 314
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_60

    .line 317
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 311
    return-void

    .line 315
    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_66
    :try_start_66
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->logic:B
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_7c

    .line 314
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_76

    .line 317
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 318
    nop

    .line 319
    return-void

    .line 315
    :cond_76
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :catchall_7c
    move-exception v2

    goto :goto_86

    .line 306
    :cond_7e
    :try_start_7e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_7c

    .line 314
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_86
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8f

    .line 315
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_8f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 318
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 292
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->values:[Landroid/media/audio/common/AudioPolicyForceUse;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 294
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->defaultValue:Landroid/media/audio/common/AudioPolicyForceUse;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 295
    iget-byte v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->logic:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 297
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 298
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 300
    return-void
.end method
