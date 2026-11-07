.class public final Landroid/content/integrity/AtomicFormula$StringAtomicFormula;
.super Landroid/content/integrity/AtomicFormula;
.source "AtomicFormula.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/AtomicFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringAtomicFormula"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/AtomicFormula$StringAtomicFormula;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsHashedValue:Ljava/lang/Boolean;

.field private final blacklist mValue:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 398
    new-instance v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula$1;

    invoke-direct {v0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula$1;-><init>()V

    sput-object v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 5
    .param p1, "key"    # I

    .line 324
    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    .line 325
    const/4 v0, 0x1

    if-eqz p1, :cond_17

    if-eq p1, v0, :cond_17

    const/4 v1, 0x3

    if-eq p1, v1, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    const/4 v1, 0x7

    if-eq p1, v1, :cond_17

    const/16 v1, 0x8

    if-ne p1, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 332
    :cond_17
    :goto_17
    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 325
    const-string v2, "Key %s cannot be used with StringAtomicFormula"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    .line 334
    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    .line 335
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 11
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 373
    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    .line 374
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz p1, :cond_19

    if-eq p1, v4, :cond_19

    if-eq p1, v3, :cond_19

    const/4 v5, 0x2

    if-eq p1, v5, :cond_19

    if-eq p1, v2, :cond_19

    if-ne p1, v1, :cond_17

    goto :goto_19

    :cond_17
    move v5, v0

    goto :goto_1a

    :cond_19
    :goto_19
    move v5, v4

    .line 381
    :goto_1a
    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 374
    const-string v7, "Key %s cannot be used with StringAtomicFormula"

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 382
    invoke-static {p1, p2}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->hashValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    .line 383
    if-eq p1, v4, :cond_3d

    if-eq p1, v3, :cond_3d

    if-eq p1, v2, :cond_3d

    if-eq p1, v1, :cond_3d

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    .line 388
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    :cond_3d
    move v0, v4

    .line 384
    :cond_3e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    .line 389
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isHashed"    # Z

    .line 346
    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    .line 347
    const/4 v0, 0x1

    if-eqz p1, :cond_17

    if-eq p1, v0, :cond_17

    const/4 v1, 0x3

    if-eq p1, v1, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    const/4 v1, 0x7

    if-eq p1, v1, :cond_17

    const/16 v1, 0x8

    if-ne p1, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 354
    :cond_17
    :goto_17
    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 347
    const-string v2, "Key %s cannot be used with StringAtomicFormula"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 355
    iput-object p2, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    .line 356
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    .line 357
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    .line 395
    return-void
.end method

.method private static blacklist getMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)Ljava/util/List;
    .registers 5
    .param p0, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/integrity/AppInstallMetadata;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 489
    packed-switch p1, :pswitch_data_46

    .line 503
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected key in StringAtomicFormula: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :pswitch_1c
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getAppCertificateLineage()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 499
    :pswitch_21
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getStampCertificateHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 495
    :pswitch_2a
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getInstallerCertificates()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 497
    :pswitch_2f
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getInstallerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 493
    :pswitch_38
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getAppCertificates()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 491
    :pswitch_3d
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_38
        :pswitch_2f
        :pswitch_2a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method

.method private static blacklist hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .line 521
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 522
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 523
    .local v1, "hashBytes":[B
    invoke-static {v1}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v2

    .line 524
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "hashBytes":[B
    :catch_15
    move-exception v0

    .line 525
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SHA-256 algorithm not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist hashValue(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 511
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_12

    .line 512
    if-eqz p0, :cond_d

    const/4 v0, 0x2

    if-ne p0, v0, :cond_12

    .line 513
    :cond_d
    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 516
    :cond_12
    return-object p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 449
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 450
    return v0

    .line 452
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 455
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    .line 456
    .local v2, "that":Landroid/content/integrity/AtomicFormula$StringAtomicFormula;
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v3

    invoke-virtual {v2}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v4

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    .line 453
    .end local v2    # "that":Landroid/content/integrity/AtomicFormula$StringAtomicFormula;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist getIsHashedValue()Ljava/lang/Boolean;
    .registers 2

    .line 484
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 480
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 461
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isAppCertificateFormula()Z
    .registers 3

    .line 426
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public blacklist isAppCertificateLineageFormula()Z
    .registers 3

    .line 431
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isInstallerFormula()Z
    .registers 3

    .line 436
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public blacklist matches(Landroid/content/integrity/AppInstallMetadata;)Z
    .registers 4
    .param p1, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;

    .line 418
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    goto :goto_18

    .line 421
    :cond_9
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 419
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 441
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    goto :goto_23

    .line 444
    :cond_9
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->operatorToString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(%s %s %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 442
    :cond_23
    :goto_23
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 471
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_1f

    .line 474
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->mIsHashedValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 477
    return-void

    .line 472
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write an empty StringAtomicFormula."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
