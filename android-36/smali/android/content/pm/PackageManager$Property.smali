.class public final Landroid/content/pm/PackageManager$Property;
.super Ljava/lang/Object;
.source "PackageManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TYPE_BOOLEAN:I = 0x1

.field private static final blacklist TYPE_FLOAT:I = 0x2

.field private static final blacklist TYPE_INTEGER:I = 0x3

.field private static final blacklist TYPE_RESOURCE:I = 0x4

.field private static final blacklist TYPE_STRING:I = 0x5


# instance fields
.field private blacklist mBooleanValue:Z

.field private final blacklist mClassName:Ljava/lang/String;

.field private blacklist mFloatValue:F

.field private blacklist mIntegerValue:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mStringValue:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 545
    new-instance v0, Landroid/content/pm/PackageManager$Property$1;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$Property$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageManager$Property;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .line 377
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 378
    iput p2, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    .line 379
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1e

    const/4 v0, 0x5

    if-gt p2, v0, :cond_1e

    .line 363
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    .line 364
    iput p2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    .line 365
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    .line 366
    iput-object p4, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    .line 367
    return-void

    .line 361
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "isResource"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    .line 383
    if-eqz p3, :cond_4

    const/4 v0, 0x4

    goto :goto_5

    :cond_4
    const/4 v0, 0x3

    :goto_5
    invoke-direct {p0, p1, v0, p4, p5}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 384
    iput p2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    .line 385
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .line 389
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 390
    iput-object p2, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .line 371
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 372
    iput-boolean p2, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    .line 373
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 574
    instance-of v0, p1, Landroid/content/pm/PackageManager$Property;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 575
    return v1

    .line 577
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/content/pm/PackageManager$Property;

    .line 578
    .local v0, "property":Landroid/content/pm/PackageManager$Property;
    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    iget v3, v0, Landroid/content/pm/PackageManager$Property;->mType:I

    if-ne v2, v3, :cond_6d

    iget-object v2, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    .line 579
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    .line 580
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    .line 581
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    iget-boolean v2, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    iget-boolean v4, v0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    if-ne v2, v4, :cond_6d

    goto :goto_6b

    :cond_39
    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_49

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    iget v4, v0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    .line 583
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_6d

    :goto_48
    goto :goto_6b

    :cond_49
    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_55

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    iget v4, v0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    if-ne v2, v4, :cond_6d

    goto :goto_48

    :cond_55
    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_61

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    iget v4, v0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    if-ne v2, v4, :cond_6d

    goto :goto_48

    :cond_61
    iget-object v2, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    .line 586
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    :goto_6b
    move v1, v3

    goto :goto_6e

    :cond_6d
    nop

    .line 578
    :goto_6e
    return v1
.end method

.method public whitelist getBoolean()Z
    .registers 2

    .line 427
    iget-boolean v0, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    return v0
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .registers 2

    .line 419
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFloat()F
    .registers 2

    .line 442
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    return v0
.end method

.method public whitelist getInteger()I
    .registers 3

    .line 457
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 403
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 410
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResourceId()I
    .registers 3

    .line 472
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getString()Ljava/lang/String;
    .registers 2

    .line 487
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 396
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 591
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 592
    .local v0, "result":I
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 593
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    add-int v0, v1, v2

    goto :goto_57

    .line 594
    :cond_20
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    .line 595
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    goto :goto_57

    .line 596
    :cond_30
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3c

    .line 597
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    add-int v0, v1, v2

    goto :goto_57

    .line 598
    :cond_3c
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_48

    .line 599
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    add-int v0, v1, v2

    goto :goto_57

    .line 600
    :cond_48
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_57

    .line 601
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 603
    :cond_57
    :goto_57
    return v0
.end method

.method public whitelist isBoolean()Z
    .registers 3

    .line 434
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public whitelist isFloat()Z
    .registers 3

    .line 449
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isInteger()Z
    .registers 3

    .line 464
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isResourceId()Z
    .registers 3

    .line 479
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isString()Z
    .registers 3

    .line 494
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "outBundle"    # Landroid/os/Bundle;

    .line 504
    if-eqz p1, :cond_9

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne p1, v0, :cond_7

    goto :goto_9

    .line 505
    :cond_7
    move-object v0, p1

    goto :goto_e

    :cond_9
    :goto_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 506
    .local v0, "b":Landroid/os/Bundle;
    :goto_e
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 507
    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4e

    .line 508
    :cond_1b
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    .line 509
    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_4e

    .line 510
    :cond_28
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_35

    .line 511
    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4e

    .line 512
    :cond_35
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_42

    .line 513
    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4e

    .line 514
    :cond_42
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4e

    .line 515
    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 527
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 531
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 532
    iget-boolean v0, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_4a

    .line 533
    :cond_1f
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 534
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_4a

    .line 535
    :cond_2a
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 536
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4a

    .line 537
    :cond_35
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_40

    .line 538
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4a

    .line 539
    :cond_40
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4a

    .line 540
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    :cond_4a
    :goto_4a
    return-void
.end method
