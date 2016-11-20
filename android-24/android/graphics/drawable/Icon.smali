.class public final Landroid/graphics/drawable/Icon;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Icon$1;,
        Landroid/graphics/drawable/Icon$LoadDrawableTask;,
        Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field public static final MIN_ASHMEM_ICON_SIZE:I = 0x20000

.field private static final TAG:Ljava/lang/String; = "Icon"

.field public static final TYPE_BITMAP:I = 0x1

.field public static final TYPE_DATA:I = 0x3

.field public static final TYPE_RESOURCE:I = 0x2

.field public static final TYPE_URI:I = 0x4

.field private static final VERSION_STREAM_SERIALIZER:I = 0x1


# instance fields
.field private mInt1:I

.field private mInt2:I

.field private mObj1:Ljava/lang/Object;

.field private mString1:Ljava/lang/String;

.field private mTintList:Landroid/content/res/ColorStateList;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 76
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@2
    sput-object v0, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@4
    .line 768
    new-instance v0, Landroid/graphics/drawable/Icon$1;

    #@6
    invoke-direct {v0}, Landroid/graphics/drawable/Icon$1;-><init>()V

    #@9
    .line 767
    sput-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b
    .line 59
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "mType"    # I

    #@0
    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    sget-object v0, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@5
    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@7
    .line 429
    iput p1, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@9
    .line 428
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 702
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v6

    #@4
    invoke-direct {p0, v6}, Landroid/graphics/drawable/Icon;-><init>(I)V

    #@7
    .line 703
    iget v6, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@9
    packed-switch v6, :pswitch_data_0

    #@c
    .line 729
    new-instance v6, Ljava/lang/RuntimeException;

    #@e
    new-instance v7, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v8, "invalid "

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    .line 730
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v8

    #@1e
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@21
    move-result-object v8

    #@22
    .line 729
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    .line 730
    const-string/jumbo v8, " type in parcel: "

    #@29
    .line 729
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    .line 730
    iget v8, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@2f
    .line 729
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v6

    #@3b
    .line 705
    :pswitch_0
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Landroid/graphics/Bitmap;

    #@43
    .line 706
    .local v1, "bits":Landroid/graphics/Bitmap;
    iput-object v1, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    #@45
    .line 732
    .end local v1    # "bits":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v6

    #@49
    const/4 v7, 0x1

    #@4a
    if-ne v6, v7, :cond_0

    #@4c
    .line 733
    sget-object v6, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@51
    move-result-object v6

    #@52
    check-cast v6, Landroid/content/res/ColorStateList;

    #@54
    iput-object v6, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    #@56
    .line 735
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v6

    #@5a
    invoke-static {v6}, Landroid/graphics/PorterDuff;->intToMode(I)Landroid/graphics/PorterDuff$Mode;

    #@5d
    move-result-object v6

    #@5e
    iput-object v6, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@60
    .line 701
    return-void

    #@61
    .line 709
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    .line 710
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v4

    #@69
    .line 711
    .local v4, "resId":I
    iput-object v3, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    #@6b
    .line 712
    iput v4, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    #@6d
    goto :goto_0

    #@6e
    .line 715
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "resId":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v2

    #@72
    .line 716
    .local v2, "len":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    #@75
    move-result-object v0

    #@76
    .line 717
    .local v0, "a":[B
    array-length v6, v0

    #@77
    if-eq v2, v6, :cond_1

    #@79
    .line 718
    new-instance v6, Ljava/lang/RuntimeException;

    #@7b
    new-instance v7, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v8, "internal unparceling error: blob length ("

    #@83
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v7

    #@87
    .line 719
    array-length v8, v0

    #@88
    .line 718
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v7

    #@8c
    .line 719
    const-string/jumbo v8, ") != expected length ("

    #@8f
    .line 718
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v7

    #@93
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v7

    #@97
    .line 719
    const-string/jumbo v8, ")"

    #@9a
    .line 718
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v7

    #@9e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v7

    #@a2
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v6

    #@a6
    .line 721
    :cond_1
    iput v2, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    #@a8
    .line 722
    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    #@aa
    goto :goto_0

    #@ab
    .line 725
    .end local v0    # "a":[B
    .end local v2    # "len":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ae
    move-result-object v5

    #@af
    .line 726
    .local v5, "uri":Ljava/lang/String;
    iput-object v5, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    #@b1
    goto :goto_0

    #@b2
    .line 703
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/Icon;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static createFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;
    .locals 10
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 439
    new-instance v1, Ljava/io/DataInputStream;

    #@3
    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@6
    .line 441
    .local v1, "inputStream":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@9
    move-result v7

    #@a
    .line 442
    .local v7, "version":I
    const/4 v8, 0x1

    #@b
    if-lt v7, v8, :cond_0

    #@d
    .line 443
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    #@10
    move-result v5

    #@11
    .line 444
    .local v5, "type":I
    packed-switch v5, :pswitch_data_0

    #@14
    .line 461
    .end local v5    # "type":I
    :cond_0
    const/4 v8, 0x0

    #@15
    return-object v8

    #@16
    .line 446
    .restart local v5    # "type":I
    :pswitch_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@19
    move-result-object v8

    #@1a
    invoke-static {v8}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    #@1d
    move-result-object v8

    #@1e
    return-object v8

    #@1f
    .line 448
    :pswitch_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@22
    move-result v2

    #@23
    .line 449
    .local v2, "length":I
    new-array v0, v2, [B

    #@25
    .line 450
    .local v0, "data":[B
    invoke-virtual {v1, v0, v9, v2}, Ljava/io/DataInputStream;->read([BII)I

    #@28
    .line 451
    invoke-static {v0, v9, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    #@2b
    move-result-object v8

    #@2c
    return-object v8

    #@2d
    .line 453
    .end local v0    # "data":[B
    .end local v2    # "length":I
    :pswitch_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    .line 454
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@34
    move-result v4

    #@35
    .line 455
    .local v4, "resId":I
    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    #@38
    move-result-object v8

    #@39
    return-object v8

    #@3a
    .line 457
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "resId":I
    :pswitch_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    .line 458
    .local v6, "uriOrPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    #@41
    move-result-object v8

    #@42
    return-object v8

    #@43
    .line 444
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "bits"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 545
    if-nez p0, :cond_0

    #@2
    .line 546
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Bitmap must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 548
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    #@11
    .line 549
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    invoke-direct {v0, p0}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    #@14
    .line 550
    return-object v0
.end method

.method public static createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 592
    if-nez p0, :cond_0

    #@2
    .line 593
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Uri must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 595
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    #@d
    const/4 v1, 0x4

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    #@11
    .line 596
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    #@17
    .line 597
    return-object v0
.end method

.method public static createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 578
    if-nez p0, :cond_0

    #@2
    .line 579
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Uri must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 581
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    #@d
    const/4 v1, 0x4

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    #@11
    .line 582
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    #@13
    .line 583
    return-object v0
.end method

.method public static createWithData([BII)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 562
    if-nez p0, :cond_0

    #@2
    .line 563
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Data must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 565
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    #@d
    const/4 v1, 0x3

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    #@11
    .line 566
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    #@13
    .line 567
    iput p2, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    #@15
    .line 568
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt2:I

    #@17
    .line 569
    return-object v0
.end method

.method public static createWithFilePath(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 644
    if-nez p0, :cond_0

    #@2
    .line 645
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Path must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 647
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    #@d
    const/4 v1, 0x4

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    #@11
    .line 648
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    #@13
    .line 649
    return-object v0
.end method

.method public static createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 502
    if-nez p0, :cond_0

    #@2
    .line 503
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Context must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 505
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    #@d
    const/4 v1, 0x2

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    #@11
    .line 506
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    #@13
    .line 507
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    #@19
    .line 508
    return-object v0
.end method

.method public static createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 516
    if-nez p0, :cond_0

    #@2
    .line 517
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Resource must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 519
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    #@d
    const/4 v1, 0x2

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    #@11
    .line 520
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    #@13
    .line 521
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    #@19
    .line 522
    return-object v0
.end method

.method public static createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "resPackage"    # Ljava/lang/String;
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 531
    if-nez p0, :cond_0

    #@2
    .line 532
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Resource package name must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 534
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    #@d
    const/4 v1, 0x2

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    #@11
    .line 535
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    #@13
    .line 536
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    #@15
    .line 537
    return-object v0
.end method

.method private loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 285
    move-object/from16 v0, p0

    #@2
    iget v12, v0, Landroid/graphics/drawable/Icon;->mType:I

    #@4
    packed-switch v12, :pswitch_data_0

    #@7
    .line 352
    :cond_0
    :goto_0
    const/4 v12, 0x0

    #@8
    return-object v12

    #@9
    .line 287
    :pswitch_0
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    #@b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v13

    #@f
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@12
    move-result-object v14

    #@13
    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@16
    return-object v12

    #@17
    .line 289
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    #@1a
    move-result-object v12

    #@1b
    if-nez v12, :cond_2

    #@1d
    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@20
    move-result-object v9

    #@21
    .line 292
    .local v9, "resPackage":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@24
    move-result v12

    #@25
    if-eqz v12, :cond_1

    #@27
    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2a
    move-result-object v9

    #@2b
    .line 296
    :cond_1
    const-string/jumbo v12, "android"

    #@2e
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v12

    #@32
    if-eqz v12, :cond_3

    #@34
    .line 297
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@37
    move-result-object v12

    #@38
    move-object/from16 v0, p0

    #@3a
    iput-object v12, v0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    #@3c
    .line 316
    .end local v9    # "resPackage":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    #@3f
    move-result-object v12

    #@40
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResId()I

    #@43
    move-result v13

    #@44
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@47
    move-result-object v14

    #@48
    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@4b
    move-result-object v12

    #@4c
    return-object v12

    #@4d
    .line 299
    .restart local v9    # "resPackage":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@50
    move-result-object v8

    #@51
    .line 302
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/16 v12, 0x2000

    #@53
    .line 301
    :try_start_1
    invoke-virtual {v8, v9, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@56
    move-result-object v1

    #@57
    .line 303
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    #@59
    .line 304
    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@5c
    move-result-object v12

    #@5d
    move-object/from16 v0, p0

    #@5f
    iput-object v12, v0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@61
    goto :goto_1

    #@62
    .line 308
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    #@63
    .line 309
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v12, "Icon"

    #@66
    const-string/jumbo v13, "Unable to find pkg=%s for icon %s"

    #@69
    const/4 v14, 0x2

    #@6a
    new-array v14, v14, [Ljava/lang/Object;

    #@6c
    .line 310
    const/4 v15, 0x0

    #@6d
    aput-object v9, v14, v15

    #@6f
    const/4 v15, 0x1

    #@70
    aput-object p0, v14, v15

    #@72
    .line 309
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@75
    move-result-object v13

    #@76
    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@79
    goto :goto_0

    #@7a
    .line 317
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "resPackage":Ljava/lang/String;
    :catch_1
    move-exception v5

    #@7b
    .line 318
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v12, "Icon"

    #@7e
    const-string/jumbo v13, "Unable to load resource 0x%08x from pkg=%s"

    #@81
    const/4 v14, 0x2

    #@82
    new-array v14, v14, [Ljava/lang/Object;

    #@84
    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResId()I

    #@87
    move-result v15

    #@88
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8b
    move-result-object v15

    #@8c
    const/16 v16, 0x0

    #@8e
    aput-object v15, v14, v16

    #@90
    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@93
    move-result-object v15

    #@94
    const/16 v16, 0x1

    #@96
    aput-object v15, v14, v16

    #@98
    .line 318
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9b
    move-result-object v13

    #@9c
    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9f
    goto/16 :goto_0

    #@a1
    .line 325
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :pswitch_2
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    #@a3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a6
    move-result-object v13

    #@a7
    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    #@aa
    move-result-object v14

    #@ab
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    #@ae
    move-result v15

    #@af
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    #@b2
    move-result v16

    #@b3
    invoke-static/range {v14 .. v16}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    #@b6
    move-result-object v14

    #@b7
    .line 325
    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@ba
    return-object v12

    #@bb
    .line 329
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    #@be
    move-result-object v11

    #@bf
    .line 330
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@c2
    move-result-object v10

    #@c3
    .line 331
    .local v10, "scheme":Ljava/lang/String;
    const/4 v6, 0x0

    #@c4
    .line 332
    .local v6, "is":Ljava/io/InputStream;
    const-string/jumbo v12, "content"

    #@c7
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ca
    move-result v12

    #@cb
    if-nez v12, :cond_4

    #@cd
    .line 333
    const-string/jumbo v12, "file"

    #@d0
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result v12

    #@d4
    .line 332
    if-eqz v12, :cond_5

    #@d6
    .line 335
    :cond_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d9
    move-result-object v12

    #@da
    invoke-virtual {v12, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@dd
    move-result-object v6

    #@de
    .line 346
    .end local v6    # "is":Ljava/io/InputStream;
    :goto_2
    if-eqz v6, :cond_0

    #@e0
    .line 347
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    #@e2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e5
    move-result-object v13

    #@e6
    .line 348
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@e9
    move-result-object v14

    #@ea
    .line 347
    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@ed
    return-object v12

    #@ee
    .line 336
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    #@ef
    .line 337
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "Icon"

    #@f2
    new-instance v13, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    const-string/jumbo v14, "Unable to load image from URI: "

    #@fa
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v13

    #@fe
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v13

    #@102
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v13

    #@106
    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@109
    goto :goto_2

    #@10a
    .line 341
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    new-instance v7, Ljava/io/FileInputStream;

    #@10c
    new-instance v12, Ljava/io/File;

    #@10e
    move-object/from16 v0, p0

    #@110
    iget-object v13, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    #@112
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@115
    invoke-direct {v7, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    #@118
    .local v7, "is":Ljava/io/InputStream;
    move-object v6, v7

    #@119
    .end local v7    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    goto :goto_2

    #@11a
    .line 342
    .local v6, "is":Ljava/io/InputStream;
    :catch_3
    move-exception v3

    #@11b
    .line 343
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v12, "Icon"

    #@11e
    new-instance v13, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v14, "Unable to load image from path: "

    #@126
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v13

    #@12a
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v13

    #@12e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v13

    #@132
    invoke-static {v12, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@135
    goto :goto_2

    #@136
    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 122
    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    #@2
    .line 121
    return-void
.end method

.method private static final typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "x"    # I

    #@0
    .prologue
    .line 219
    packed-switch p0, :pswitch_data_0

    #@3
    .line 224
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 220
    :pswitch_0
    const-string/jumbo v0, "BITMAP"

    #@a
    return-object v0

    #@b
    .line 221
    :pswitch_1
    const-string/jumbo v0, "DATA"

    #@e
    return-object v0

    #@f
    .line 222
    :pswitch_2
    const-string/jumbo v0, "RESOURCE"

    #@12
    return-object v0

    #@13
    .line 223
    :pswitch_3
    const-string/jumbo v0, "URI"

    #@16
    return-object v0

    #@17
    .line 219
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public convertToAshmem()V
    .locals 2

    #@0
    .prologue
    .line 391
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 392
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@c
    move-result v0

    #@d
    .line 391
    if-eqz v0, :cond_0

    #@f
    .line 393
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    #@16
    move-result v0

    #@17
    const/high16 v1, 0x20000

    #@19
    if-lt v0, v1, :cond_0

    #@1b
    .line 394
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    #@22
    move-result-object v0

    #@23
    invoke-direct {p0, v0}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    #@26
    .line 390
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 695
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@3
    if-eq v1, v0, :cond_0

    #@5
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@7
    const/4 v2, 0x3

    #@8
    if-ne v1, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    .line 696
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    #@0
    .prologue
    .line 115
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "called getBitmap() on "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 118
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    #@21
    check-cast v0, Landroid/graphics/Bitmap;

    #@23
    return-object v0
.end method

.method public getDataBytes()[B
    .locals 3

    #@0
    .prologue
    .line 158
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "called getDataBytes() on "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 161
    :cond_0
    monitor-enter p0

    #@20
    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    #@22
    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit p0

    #@25
    return-object v0

    #@26
    .line 161
    :catchall_0
    move-exception v0

    #@27
    monitor-exit p0

    #@28
    throw v0
.end method

.method public getDataLength()I
    .locals 3

    #@0
    .prologue
    .line 130
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "called getDataLength() on "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 133
    :cond_0
    monitor-enter p0

    #@20
    .line 134
    :try_start_0
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit p0

    #@23
    return v0

    #@24
    .line 133
    :catchall_0
    move-exception v0

    #@25
    monitor-exit p0

    #@26
    throw v0
.end method

.method public getDataOffset()I
    .locals 3

    #@0
    .prologue
    .line 144
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "called getDataOffset() on "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 147
    :cond_0
    monitor-enter p0

    #@20
    .line 148
    :try_start_0
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit p0

    #@23
    return v0

    #@24
    .line 147
    :catchall_0
    move-exception v0

    #@25
    monitor-exit p0

    #@26
    throw v0
.end method

.method public getResId()I
    .locals 3

    #@0
    .prologue
    .line 193
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "called getResId() on "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 196
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    #@21
    return v0
.end method

.method public getResPackage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 182
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "called getResPackage() on "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 185
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    #@21
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    #@0
    .prologue
    .line 171
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "called getResources() on "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 174
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    #@21
    check-cast v0, Landroid/content/res/Resources;

    #@23
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@2
    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 204
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@2
    const/4 v1, 0x4

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "called getUriString() on "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 207
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    #@21
    return-object v0
.end method

.method public hasTint()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 634
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@7
    sget-object v2, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@9
    if-eq v1, v2, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 272
    invoke-direct {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 273
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    #@8
    if-nez v1, :cond_0

    #@a
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c
    sget-object v2, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@e
    if-eq v1, v2, :cond_1

    #@10
    .line 274
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@13
    .line 275
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    #@15
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@18
    .line 276
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@1a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@1d
    .line 278
    :cond_1
    return-object v0
.end method

.method public loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 362
    iget v3, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@3
    if-ne v3, v5, :cond_1

    #@5
    .line 363
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 364
    .local v2, "resPackage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 367
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object v3

    #@17
    if-nez v3, :cond_1

    #@19
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, "android"

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 380
    .end local v2    # "resPackage":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object v3

    #@2a
    return-object v3

    #@2b
    .line 368
    .restart local v2    # "resPackage":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2e
    move-result-object v1

    #@2f
    .line 371
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    #@32
    move-result-object v3

    #@33
    iput-object v3, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    goto :goto_0

    #@36
    .line 372
    :catch_0
    move-exception v0

    #@37
    .line 373
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "Icon"

    #@3a
    const-string/jumbo v4, "Unable to find pkg=%s user=%d"

    #@3d
    new-array v5, v5, [Ljava/lang/Object;

    #@3f
    .line 374
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    const/4 v7, 0x0

    #@44
    aput-object v6, v5, v7

    #@46
    .line 375
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v6

    #@4a
    const/4 v7, 0x1

    #@4b
    aput-object v6, v5, v7

    #@4d
    .line 373
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@54
    goto :goto_0
.end method

.method public loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 258
    new-instance v0, Landroid/graphics/drawable/Icon$LoadDrawableTask;

    #@2
    invoke-direct {v0, p0, p1, p3, p2}, Landroid/graphics/drawable/Icon$LoadDrawableTask;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Handler;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;)V

    #@5
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon$LoadDrawableTask;->runAsync()V

    #@8
    .line 257
    return-void
.end method

.method public loadDrawableAsync(Landroid/content/Context;Landroid/os/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "andThen"    # Landroid/os/Message;

    #@0
    .prologue
    .line 239
    invoke-virtual {p2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "callback message must have a target handler"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 242
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon$LoadDrawableTask;

    #@11
    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/drawable/Icon$LoadDrawableTask;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Message;)V

    #@14
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon$LoadDrawableTask;->runAsync()V

    #@17
    .line 238
    return-void
.end method

.method public sameAs(Landroid/graphics/drawable/Icon;)Z
    .locals 4
    .param p1, "otherIcon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 473
    if-ne p1, p0, :cond_0

    #@4
    .line 474
    return v0

    #@5
    .line 476
    :cond_0
    iget v2, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@7
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    #@a
    move-result v3

    #@b
    if-eq v2, v3, :cond_1

    #@d
    .line 477
    return v1

    #@e
    .line 479
    :cond_1
    iget v2, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@10
    packed-switch v2, :pswitch_data_0

    #@13
    .line 492
    return v1

    #@14
    .line 481
    :pswitch_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@1b
    move-result-object v3

    #@1c
    if-ne v2, v3, :cond_2

    #@1e
    :goto_0
    return v0

    #@1f
    :cond_2
    move v0, v1

    #@20
    goto :goto_0

    #@21
    .line 483
    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    #@24
    move-result v2

    #@25
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataLength()I

    #@28
    move-result v3

    #@29
    if-ne v2, v3, :cond_4

    #@2b
    .line 484
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    #@2e
    move-result v2

    #@2f
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    #@32
    move-result v3

    #@33
    if-ne v2, v3, :cond_4

    #@35
    .line 485
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    #@38
    move-result-object v2

    #@39
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    #@3c
    move-result-object v3

    #@3d
    if-ne v2, v3, :cond_3

    #@3f
    .line 483
    :goto_1
    return v0

    #@40
    :cond_3
    move v0, v1

    #@41
    .line 485
    goto :goto_1

    #@42
    :cond_4
    move v0, v1

    #@43
    .line 483
    goto :goto_1

    #@44
    .line 487
    :pswitch_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    #@47
    move-result v0

    #@48
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    #@4b
    move-result v2

    #@4c
    if-ne v0, v2, :cond_5

    #@4e
    .line 488
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@59
    move-result v1

    #@5a
    .line 487
    :cond_5
    return v1

    #@5b
    .line 490
    :pswitch_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@66
    move-result v0

    #@67
    return v0

    #@68
    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setTint(I)Landroid/graphics/drawable/Icon;
    .locals 1
    .param p1, "tint"    # I

    #@0
    .prologue
    .line 607
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;
    .locals 0
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 617
    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    #@2
    .line 618
    return-object p0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;
    .locals 0
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 628
    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 629
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 654
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v5, "Icon(typ="

    #@7
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    iget v5, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@c
    invoke-static {v5}, Landroid/graphics/drawable/Icon;->typeToString(I)Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 655
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@16
    packed-switch v3, :pswitch_data_0

    #@19
    .line 678
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 679
    const-string/jumbo v3, " tint="

    #@20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 680
    const-string/jumbo v2, ""

    #@26
    .line 681
    .local v2, "sep":Ljava/lang/String;
    iget-object v3, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    #@28
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getColors()[I

    #@2b
    move-result-object v5

    #@2c
    array-length v6, v5

    #@2d
    move v3, v4

    #@2e
    :goto_1
    if-ge v3, v6, :cond_1

    #@30
    aget v0, v5, v3

    #@32
    .line 682
    .local v0, "c":I
    const-string/jumbo v7, "%s0x%08x"

    #@35
    const/4 v8, 0x2

    #@36
    new-array v8, v8, [Ljava/lang/Object;

    #@38
    aput-object v2, v8, v4

    #@3a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v9

    #@3e
    aput-object v9, v8, v10

    #@40
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 683
    const-string/jumbo v2, "|"

    #@4a
    .line 681
    add-int/lit8 v3, v3, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 657
    .end local v0    # "c":I
    .end local v2    # "sep":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v3, " size="

    #@50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    .line 658
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    #@5b
    move-result v5

    #@5c
    .line 657
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    .line 659
    const-string/jumbo v5, "x"

    #@63
    .line 657
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    .line 660
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    #@6e
    move-result v5

    #@6f
    .line 657
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    goto :goto_0

    #@73
    .line 663
    :pswitch_1
    const-string/jumbo v3, " pkg="

    #@76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    .line 664
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    .line 663
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v3

    #@82
    .line 665
    const-string/jumbo v5, " id="

    #@85
    .line 663
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    .line 666
    const-string/jumbo v5, "0x%08x"

    #@8c
    new-array v6, v10, [Ljava/lang/Object;

    #@8e
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    #@91
    move-result v7

    #@92
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@95
    move-result-object v7

    #@96
    aput-object v7, v6, v4

    #@98
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    .line 663
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    goto/16 :goto_0

    #@a1
    .line 669
    :pswitch_2
    const-string/jumbo v3, " len="

    #@a4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    #@ab
    move-result v5

    #@ac
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    .line 670
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    #@b2
    move-result v3

    #@b3
    if-eqz v3, :cond_0

    #@b5
    .line 671
    const-string/jumbo v3, " off="

    #@b8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    #@bf
    move-result v5

    #@c0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3
    goto/16 :goto_0

    #@c5
    .line 675
    :pswitch_3
    const-string/jumbo v3, " uri="

    #@c8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v3

    #@cc
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    #@cf
    move-result-object v5

    #@d0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    goto/16 :goto_0

    #@d5
    .line 686
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@d7
    sget-object v4, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@d9
    if-eq v3, v4, :cond_2

    #@db
    const-string/jumbo v3, " mode="

    #@de
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v3

    #@e2
    iget-object v4, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@e4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e7
    .line 687
    :cond_2
    const-string/jumbo v3, ")"

    #@ea
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    .line 688
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v3

    #@f1
    return-object v3

    #@f2
    .line 655
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 740
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 741
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@7
    packed-switch v1, :pswitch_data_0

    #@a
    .line 758
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    #@c
    if-nez v1, :cond_0

    #@e
    .line 759
    const/4 v1, 0x0

    #@f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 764
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@14
    invoke-static {v1}, Landroid/graphics/PorterDuff;->modeToInt(Landroid/graphics/PorterDuff$Mode;)I

    #@17
    move-result v1

    #@18
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 739
    return-void

    #@1c
    .line 743
    :pswitch_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@1f
    move-result-object v0

    #@20
    .line 744
    .local v0, "bits":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@27
    goto :goto_0

    #@28
    .line 747
    .end local v0    # "bits":Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f
    .line 748
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    #@32
    move-result v1

    #@33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    goto :goto_0

    #@37
    .line 751
    :pswitch_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    #@3a
    move-result v1

    #@3b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 752
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    #@41
    move-result-object v1

    #@42
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    #@45
    move-result v2

    #@46
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    #@49
    move-result v3

    #@4a
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->writeBlob([BII)V

    #@4d
    goto :goto_0

    #@4e
    .line 755
    :pswitch_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@55
    goto :goto_0

    #@56
    .line 761
    :cond_0
    const/4 v1, 0x1

    #@57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 762
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    #@5c
    invoke-virtual {v1, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    #@5f
    goto :goto_1

    #@60
    .line 741
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 405
    new-instance v0, Ljava/io/DataOutputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@5
    .line 407
    .local v0, "dataStream":Ljava/io/DataOutputStream;
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@9
    .line 408
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@b
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@e
    .line 410
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    #@10
    packed-switch v1, :pswitch_data_0

    #@13
    .line 404
    :goto_0
    return-void

    #@14
    .line 412
    :pswitch_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@17
    move-result-object v1

    #@18
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@1a
    const/16 v3, 0x64

    #@1c
    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@1f
    goto :goto_0

    #@20
    .line 415
    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    #@23
    move-result v1

    #@24
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@27
    .line 416
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    #@2e
    move-result v2

    #@2f
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    #@32
    move-result v3

    #@33
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    #@36
    goto :goto_0

    #@37
    .line 419
    :pswitch_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@3e
    .line 420
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    #@41
    move-result v1

    #@42
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@45
    goto :goto_0

    #@46
    .line 423
    :pswitch_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@4d
    goto :goto_0

    #@4e
    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
