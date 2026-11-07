.class public final Landroid/graphics/drawable/Icon;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Icon$LoadDrawableTask;,
        Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;,
        Landroid/graphics/drawable/Icon$IconType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field static final blacklist DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

.field public static final greylist-max-o MIN_ASHMEM_ICON_SIZE:I = 0x20000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Icon"

.field public static final whitelist TYPE_ADAPTIVE_BITMAP:I = 0x5

.field public static final whitelist TYPE_BITMAP:I = 0x1

.field public static final whitelist TYPE_DATA:I = 0x3

.field public static final whitelist TYPE_RESOURCE:I = 0x2

.field public static final whitelist TYPE_URI:I = 0x4

.field public static final whitelist TYPE_URI_ADAPTIVE_BITMAP:I = 0x6

.field private static final greylist-max-o VERSION_STREAM_SERIALIZER:I = 0x1


# instance fields
.field private blacklist mBlendMode:Landroid/graphics/BlendMode;

.field private blacklist mCachedAshmem:Z

.field private blacklist mInsetScale:F

.field private greylist-max-o mInt1:I

.field private greylist-max-o mInt2:I

.field private greylist-max-o mObj1:Ljava/lang/Object;

.field private greylist-max-p mString1:Ljava/lang/String;

.field private greylist-max-o mTintList:Landroid/content/res/ColorStateList;

.field private final greylist-max-p mType:I

.field private blacklist mUseMonochrome:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 133
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    sput-object v0, Landroid/graphics/drawable/Icon;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    .line 1127
    new-instance v0, Landroid/graphics/drawable/Icon$1;

    invoke-direct {v0}, Landroid/graphics/drawable/Icon$1;-><init>()V

    sput-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "mType"    # I

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mBlendMode:Landroid/graphics/BlendMode;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/Icon;->mCachedAshmem:Z

    .line 160
    iput-boolean v0, p0, Landroid/graphics/drawable/Icon;->mUseMonochrome:Z

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/Icon;->mInsetScale:F

    .line 683
    iput p1, p0, Landroid/graphics/drawable/Icon;->mType:I

    .line 684
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1051
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 1052
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v0, :pswitch_data_bc

    .line 1082
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1083
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type in parcel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :pswitch_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, "uri":Ljava/lang/String;
    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 1080
    goto :goto_a0

    .line 1067
    .end local v0    # "uri":Ljava/lang/String;
    :pswitch_41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1068
    .local v0, "len":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v1

    .line 1069
    .local v1, "a":[B
    array-length v2, v1

    if-ne v0, v2, :cond_51

    .line 1073
    iput v0, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    .line 1074
    iput-object v1, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    .line 1075
    goto :goto_a0

    .line 1070
    :cond_51
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "internal unparceling error: blob length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") != expected length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1059
    .end local v0    # "len":I
    .end local v1    # "a":[B
    :pswitch_7c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1061
    .local v1, "resId":I
    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 1062
    iput v1, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    .line 1063
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/graphics/drawable/Icon;->mUseMonochrome:Z

    .line 1064
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/Icon;->mInsetScale:F

    .line 1065
    goto :goto_a0

    .line 1055
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "resId":I
    :pswitch_95
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1056
    .local v0, "bits":Landroid/graphics/Bitmap;
    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    .line 1057
    nop

    .line 1085
    .end local v0    # "bits":Landroid/graphics/Bitmap;
    :goto_a0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b1

    .line 1086
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    .line 1088
    :cond_b1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1089
    return-void

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_95
        :pswitch_7c
        :pswitch_41
        :pswitch_3a
        :pswitch_95
        :pswitch_3a
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/graphics/drawable/Icon-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/drawable/Icon;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist crateMonochromeDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "inset"    # F

    .line 396
    instance-of v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_13

    .line 397
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 399
    .local v0, "monochromeDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_13

    .line 400
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    return-object v1

    .line 403
    .end local v0    # "monochromeDrawable":Landroid/graphics/drawable/Drawable;
    :cond_13
    return-object p0
.end method

.method public static greylist-max-o createFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;
    .registers 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 695
    .local v0, "inputStream":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 696
    .local v1, "version":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_54

    .line 697
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 698
    .local v2, "type":I
    packed-switch v2, :pswitch_data_56

    goto :goto_54

    .line 716
    :pswitch_14
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmapContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    return-object v4

    .line 702
    .end local v3    # "uri":Ljava/lang/String;
    :pswitch_1d
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    return-object v3

    .line 713
    :pswitch_26
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 714
    .local v3, "uriOrPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    return-object v4

    .line 704
    .end local v3    # "uriOrPath":Ljava/lang/String;
    :pswitch_2f
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 705
    .local v3, "length":I
    new-array v4, v3, [B

    .line 706
    .local v4, "data":[B
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/io/DataInputStream;->read([BII)I

    .line 707
    invoke-static {v4, v5, v3}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v5

    return-object v5

    .line 709
    .end local v3    # "length":I
    .end local v4    # "data":[B
    :pswitch_3e
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 711
    .local v4, "resId":I
    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    return-object v5

    .line 700
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "resId":I
    :pswitch_4b
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    return-object v3

    .line 720
    .end local v2    # "type":I
    :cond_54
    :goto_54
    const/4 v2, 0x0

    return-object v2

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_3e
        :pswitch_2f
        :pswitch_26
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method

.method public static whitelist createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    .registers 3
    .param p0, "bits"    # Landroid/graphics/Bitmap;

    .line 843
    if-eqz p0, :cond_c

    .line 846
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 847
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    invoke-direct {v0, p0}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 848
    return-object v0

    .line 844
    .end local v0    # "rep":Landroid/graphics/drawable/Icon;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 919
    if-eqz p0, :cond_b

    .line 922
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmapContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 920
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createWithAdaptiveBitmapContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .registers 3
    .param p0, "uri"    # Ljava/lang/String;

    .line 903
    if-eqz p0, :cond_b

    .line 906
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 907
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 908
    return-object v0

    .line 904
    .end local v0    # "rep":Landroid/graphics/drawable/Icon;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    .registers 3
    .param p0, "bits"    # Landroid/graphics/Bitmap;

    .line 829
    if-eqz p0, :cond_c

    .line 832
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 833
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    invoke-direct {v0, p0}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 834
    return-object v0

    .line 830
    .end local v0    # "rep":Landroid/graphics/drawable/Icon;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 890
    if-eqz p0, :cond_b

    .line 893
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 891
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .registers 3
    .param p0, "uri"    # Ljava/lang/String;

    .line 876
    if-eqz p0, :cond_b

    .line 879
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 880
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 881
    return-object v0

    .line 877
    .end local v0    # "rep":Landroid/graphics/drawable/Icon;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createWithData([BII)Landroid/graphics/drawable/Icon;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 860
    if-eqz p0, :cond_f

    .line 863
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 864
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    .line 865
    iput p2, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    .line 866
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt2:I

    .line 867
    return-object v0

    .line 861
    .end local v0    # "rep":Landroid/graphics/drawable/Icon;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createWithFilePath(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 991
    if-eqz p0, :cond_b

    .line 994
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 995
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 996
    return-object v0

    .line 992
    .end local v0    # "rep":Landroid/graphics/drawable/Icon;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 765
    if-eqz p0, :cond_11

    .line 768
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 769
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    .line 770
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 771
    return-object v0

    .line 766
    .end local v0    # "rep":Landroid/graphics/drawable/Icon;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-r createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 780
    if-eqz p0, :cond_11

    .line 783
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 784
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    .line 785
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 786
    return-object v0

    .line 781
    .end local v0    # "rep":Landroid/graphics/drawable/Icon;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Resource must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .registers 4
    .param p0, "resPackage"    # Ljava/lang/String;
    .param p1, "resId"    # I

    .line 795
    if-eqz p0, :cond_d

    .line 798
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 799
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    .line 800
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 801
    return-object v0

    .line 796
    .end local v0    # "rep":Landroid/graphics/drawable/Icon;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Resource package name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createWithResourceAdaptiveDrawable(Ljava/lang/String;IZF)Landroid/graphics/drawable/Icon;
    .registers 6
    .param p0, "resPackage"    # Ljava/lang/String;
    .param p1, "resId"    # I
    .param p2, "useMonochrome"    # Z
    .param p3, "inset"    # F

    .line 813
    if-eqz p0, :cond_11

    .line 816
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 817
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    .line 818
    iput-boolean p2, v0, Landroid/graphics/drawable/Icon;->mUseMonochrome:Z

    .line 819
    iput p3, v0, Landroid/graphics/drawable/Icon;->mInsetScale:F

    .line 820
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 821
    return-object v0

    .line 814
    .end local v0    # "rep":Landroid/graphics/drawable/Icon;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Resource package name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist fixMaxBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 412
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    sget v1, Landroid/graphics/RecordingCanvas;->MAX_BITMAP_SIZE:I

    if-le v0, v1, :cond_31

    .line 413
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    .line 414
    .local v0, "bytesPerPixel":I
    sget v1, Landroid/graphics/RecordingCanvas;->MAX_BITMAP_SIZE:I

    div-int/2addr v1, v0

    .line 415
    .local v1, "maxNumPixels":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 416
    .local v2, "aspRatio":F
    int-to-float v3, v1

    div-float/2addr v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 417
    .local v3, "newHeight":I
    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 425
    .local v4, "newWidth":I
    invoke-static {p1, v4, v3}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    .line 427
    .end local v0    # "bytesPerPixel":I
    .end local v1    # "maxNumPixels":I
    .end local v2    # "aspRatio":F
    .end local v3    # "newHeight":I
    .end local v4    # "newWidth":I
    :cond_31
    return-object p1
.end method

.method private blacklist fixMaxBitmapSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 436
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_15

    .line 437
    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/Icon;->fixMaxBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 438
    .local v0, "scaledBmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 440
    .end local v0    # "scaledBmp":Landroid/graphics/Bitmap;
    :cond_15
    return-object p2
.end method

.method private blacklist getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 535
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 536
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Icon"

    if-nez v2, :cond_40

    .line 538
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_40

    .line 546
    :cond_1b
    :try_start_1b
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_27} :catch_28

    return-object v2

    .line 547
    :catch_28
    move-exception v2

    .line 548
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load image from path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    .line 540
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_40
    :goto_40
    :try_start_40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_49

    return-object v2

    .line 541
    :catch_49
    move-exception v2

    .line 542
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load image from URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    .end local v2    # "e":Ljava/lang/Exception;
    nop

    .line 551
    :goto_61
    const/4 v2, 0x0

    return-object v2
.end method

.method private greylist-max-o loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 447
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const-string v1, "Unable to decode image from URI: "

    const-string v2, "Icon"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_190

    goto/16 :goto_18f

    .line 513
    :pswitch_c
    :try_start_c
    invoke-direct {p0, p1}, Landroid/graphics/drawable/Icon;->getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_68

    .line 514
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_61

    .line 515
    :try_start_12
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 516
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_3d

    .line 517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {}, Lcom/android/graphics/flags/Flags;->iconLoadDrawableReturnNullWhenUriDecodeFails()Z

    move-result v1
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_55

    if-eqz v1, :cond_3d

    .line 519
    nop

    .line 526
    if-eqz v0, :cond_3c

    :try_start_39
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_68

    .line 519
    :cond_3c
    return-object v3

    .line 522
    :cond_3d
    :try_start_3d
    new-instance v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 523
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 524
    invoke-direct {p0, v4}, Landroid/graphics/drawable/Icon;->fixMaxBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_55

    .line 526
    if-eqz v0, :cond_54

    :try_start_51
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_68

    .line 522
    :cond_54
    return-object v1

    .line 513
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_55
    move-exception v1

    if-eqz v0, :cond_60

    :try_start_58
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v2

    :try_start_5d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/graphics/drawable/Icon;
    .end local p1    # "context":Landroid/content/Context;
    :cond_60
    :goto_60
    throw v1

    .line 526
    .restart local p0    # "this":Landroid/graphics/drawable/Icon;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_61
    if-eqz v0, :cond_66

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_66} :catch_68

    .line 528
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_66
    goto/16 :goto_18f

    .line 526
    :catch_68
    move-exception v0

    .line 527
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 451
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_6f
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 452
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/graphics/drawable/Icon;->fixMaxBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 451
    return-object v0

    .line 497
    :pswitch_86
    :try_start_86
    invoke-direct {p0, p1}, Landroid/graphics/drawable/Icon;->getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8a} :catch_dd

    .line 498
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_d6

    .line 499
    :try_start_8c
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 500
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_b7

    .line 501
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-static {}, Lcom/android/graphics/flags/Flags;->iconLoadDrawableReturnNullWhenUriDecodeFails()Z

    move-result v1
    :try_end_ae
    .catchall {:try_start_8c .. :try_end_ae} :catchall_ca

    if-eqz v1, :cond_b7

    .line 503
    nop

    .line 508
    if-eqz v0, :cond_b6

    :try_start_b3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_dd

    .line 503
    :cond_b6
    return-object v3

    .line 506
    :cond_b7
    :try_start_b7
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v4}, Landroid/graphics/drawable/Icon;->fixMaxBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_c4
    .catchall {:try_start_b7 .. :try_end_c4} :catchall_ca

    .line 508
    if-eqz v0, :cond_c9

    :try_start_c6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_dd

    .line 506
    :cond_c9
    return-object v1

    .line 497
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_ca
    move-exception v1

    if-eqz v0, :cond_d5

    :try_start_cd
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_d1

    goto :goto_d5

    :catchall_d1
    move-exception v2

    :try_start_d2
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/graphics/drawable/Icon;
    .end local p1    # "context":Landroid/content/Context;
    :cond_d5
    :goto_d5
    throw v1

    .line 508
    .restart local p0    # "this":Landroid/graphics/drawable/Icon;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_d6
    if-eqz v0, :cond_db

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_db} :catch_dd

    .line 510
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_db
    goto/16 :goto_18f

    .line 508
    :catch_dd
    move-exception v0

    .line 509
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 493
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_e4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 494
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v3

    .line 495
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v4

    .line 494
    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 493
    invoke-direct {p0, v2}, Landroid/graphics/drawable/Icon;->fixMaxBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 454
    :pswitch_102
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_148

    .line 456
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "resPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 461
    :cond_116
    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 462
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    goto :goto_148

    .line 464
    :cond_125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 466
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x2400

    :try_start_12b
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 470
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_138

    .line 471
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;
    :try_end_137
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12b .. :try_end_137} :catch_139

    .line 479
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_148

    .line 473
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_138
    goto :goto_18f

    .line 475
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_139
    move-exception v4

    .line 476
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Unable to find pkg=%s for icon %s"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    goto :goto_18f

    .line 483
    .end local v0    # "resPackage":Ljava/lang/String;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_148
    :goto_148
    :try_start_148
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 484
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 483
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/Icon;->fixMaxBitmapSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_160
    .catch Ljava/lang/RuntimeException; {:try_start_148 .. :try_end_160} :catch_161

    return-object v0

    .line 485
    :catch_161
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/RuntimeException;
    nop

    .line 487
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 488
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 486
    const-string v4, "Unable to load resource 0x%08x from pkg=%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_18f

    .line 449
    :pswitch_17d
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/Icon;->fixMaxBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 531
    :goto_18f
    return-object v3

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_17d
        :pswitch_102
        :pswitch_e4
        :pswitch_86
        :pswitch_6f
        :pswitch_c
    .end packed-switch
.end method

.method public static greylist-max-o scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 1148
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1149
    .local v0, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1150
    .local v1, "bitmapHeight":I
    if-gt v0, p1, :cond_c

    if-le v1, p2, :cond_29

    .line 1151
    :cond_c
    int-to-float v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    int-to-float v3, p2

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1153
    .local v2, "scale":F
    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 1154
    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v5, v1

    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 1155
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1153
    invoke-static {p0, v3, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1158
    .end local v2    # "scale":F
    :cond_29
    return-object p0
.end method

.method private greylist-max-o setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    goto :goto_14

    .line 202
    :cond_12
    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    .line 204
    :goto_14
    iput-boolean v1, p0, Landroid/graphics/drawable/Icon;->mCachedAshmem:Z

    .line 205
    return-void
.end method

.method private static final greylist-max-o typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "x"    # I

    .line 318
    packed-switch p0, :pswitch_data_18

    .line 325
    const-string v0, "UNKNOWN"

    return-object v0

    .line 324
    :pswitch_6
    const-string v0, "URI_MASKABLE"

    return-object v0

    .line 320
    :pswitch_9
    const-string v0, "BITMAP_MASKABLE"

    return-object v0

    .line 323
    :pswitch_c
    const-string v0, "URI"

    return-object v0

    .line 321
    :pswitch_f
    const-string v0, "DATA"

    return-object v0

    .line 322
    :pswitch_12
    const-string v0, "RESOURCE"

    return-object v0

    .line 319
    :pswitch_15
    const-string v0, "BITMAP"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o convertToAshmem()V
    .registers 4

    .line 642
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2b

    .line 643
    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 644
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    const/high16 v2, 0x20000

    if-lt v0, v2, :cond_2b

    .line 645
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 647
    :cond_2b
    iput-boolean v1, p0, Landroid/graphics/drawable/Icon;->mCachedAshmem:Z

    .line 648
    return-void
.end method

.method public whitelist describeContents()I
    .registers 4

    .line 1044
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_12

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    goto :goto_12

    .line 1045
    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    nop

    .line 1044
    :goto_13
    return v1
.end method

.method public greylist getBitmap()Landroid/graphics/Bitmap;
    .registers 4

    .line 185
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    goto :goto_24

    .line 186
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getBitmap() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_24
    :goto_24
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public greylist-max-p getDataBytes()[B
    .registers 4

    .line 243
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 246
    monitor-enter p0

    .line 247
    :try_start_6
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    check-cast v0, [B

    monitor-exit p0

    return-object v0

    .line 248
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v0

    .line 244
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getDataBytes() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r getDataLength()I
    .registers 4

    .line 213
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 216
    monitor-enter p0

    .line 217
    :try_start_6
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    monitor-exit p0

    return v0

    .line 218
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v0

    .line 214
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getDataLength() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-p getDataOffset()I
    .registers 4

    .line 228
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 231
    monitor-enter p0

    .line 232
    :try_start_6
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt2:I

    monitor-exit p0

    return v0

    .line 233
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v0

    .line 229
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getDataOffset() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getResId()I
    .registers 4

    .line 287
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 290
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    return v0

    .line 288
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getResId() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getResPackage()Ljava/lang/String;
    .registers 4

    .line 272
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 275
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0

    .line 273
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getResPackage() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-p getResources()Landroid/content/res/Resources;
    .registers 4

    .line 257
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 260
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Resources;

    return-object v0

    .line 258
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getResources() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 975
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public blacklist getTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 948
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    return v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 314
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getUriString()Ljava/lang/String;
    .registers 4

    .line 299
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    goto :goto_24

    .line 300
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called getUriString() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_24
    :goto_24
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r hasTint()Z
    .registers 3

    .line 981
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mBlendMode:Landroid/graphics/BlendMode;

    sget-object v1, Landroid/graphics/drawable/Icon;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    if-eq v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 373
    invoke-direct {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 374
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->hasTint()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 375
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 376
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 377
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 380
    :cond_19
    iget-boolean v1, p0, Landroid/graphics/drawable/Icon;->mUseMonochrome:Z

    if-eqz v1, :cond_24

    .line 381
    iget v1, p0, Landroid/graphics/drawable/Icon;->mInsetScale:F

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->crateMonochromeDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 384
    :cond_24
    return-object v0
.end method

.method public greylist-max-o loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 561
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6b

    .line 562
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "resPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 564
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 566
    :cond_13
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_6b

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 569
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v1, p2, :cond_2d

    .line 570
    move-object v1, p1

    .local v1, "userContext":Landroid/content/Context;
    goto :goto_47

    .line 572
    .end local v1    # "userContext":Landroid/content/Context;
    :cond_2d
    nop

    .line 573
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    .line 574
    .local v1, "sameAppWithProcess":Z
    or-int/lit8 v2, v1, 0x4

    .line 576
    .local v2, "flags":I
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    move-object v1, v3

    .line 579
    .end local v2    # "flags":I
    .local v1, "userContext":Landroid/content/Context;
    :goto_47
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 582
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_4b
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;
    :try_end_51
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4b .. :try_end_51} :catch_52

    .line 588
    goto :goto_6b

    .line 583
    :catch_52
    move-exception v3

    .line 584
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 585
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v4

    .line 586
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 584
    const-string v5, "Unable to find pkg=%s user=%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Icon"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    .end local v0    # "resPackage":Ljava/lang/String;
    .end local v1    # "userContext":Landroid/content/Context;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6b
    :goto_6b
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 359
    new-instance v0, Landroid/graphics/drawable/Icon$LoadDrawableTask;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/graphics/drawable/Icon$LoadDrawableTask;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Handler;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon$LoadDrawableTask;->runAsync()V

    .line 360
    return-void
.end method

.method public whitelist loadDrawableAsync(Landroid/content/Context;Landroid/os/Message;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "andThen"    # Landroid/os/Message;

    .line 340
    invoke-virtual {p2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 343
    new-instance v0, Landroid/graphics/drawable/Icon$LoadDrawableTask;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/drawable/Icon$LoadDrawableTask;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon$LoadDrawableTask;->runAsync()V

    .line 344
    return-void

    .line 341
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback message must have a target handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist loadDrawableCheckingUriGrant(Landroid/content/Context;Landroid/app/IUriGrantsManager;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iugm"    # Landroid/app/IUriGrantsManager;
    .param p3, "callingUid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 617
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    goto :goto_13

    :cond_f
    move-object v1, p2

    move v2, p3

    move-object v3, p4

    goto :goto_2c

    .line 619
    :cond_13
    :goto_13
    nop

    .line 622
    :try_start_14
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 624
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v6
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_24} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_24} :catch_34

    .line 619
    const/4 v5, 0x1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    .end local p2    # "iugm":Landroid/app/IUriGrantsManager;
    .end local p3    # "callingUid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .local v1, "iugm":Landroid/app/IUriGrantsManager;
    .local v2, "callingUid":I
    .local v3, "packageName":Ljava/lang/String;
    :try_start_28
    invoke-interface/range {v1 .. v6}, Landroid/app/IUriGrantsManager;->checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_2b} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_31

    .line 629
    nop

    .line 631
    :goto_2c
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    return-object p2

    .line 626
    :catch_31
    move-exception v0

    move-object p2, v0

    goto :goto_39

    .end local v1    # "iugm":Landroid/app/IUriGrantsManager;
    .end local v2    # "callingUid":I
    .end local v3    # "packageName":Ljava/lang/String;
    .restart local p2    # "iugm":Landroid/app/IUriGrantsManager;
    .restart local p3    # "callingUid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    :catch_34
    move-exception v0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object p2, v0

    .line 627
    .end local p3    # "callingUid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .restart local v1    # "iugm":Landroid/app/IUriGrantsManager;
    .restart local v2    # "callingUid":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .local p2, "e":Ljava/lang/Exception;
    :goto_39
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to get URI permission for: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Icon"

    invoke-static {p4, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    const/4 p3, 0x0

    return-object p3
.end method

.method public greylist-max-o sameAs(Landroid/graphics/drawable/Icon;)Z
    .registers 6
    .param p1, "otherIcon"    # Landroid/graphics/drawable/Icon;

    .line 732
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 733
    return v0

    .line 735
    :cond_4
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_e

    .line 736
    return v3

    .line 738
    :cond_e
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v1, :pswitch_data_7c

    .line 755
    return v3

    .line 753
    :pswitch_14
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 743
    :pswitch_21
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v2

    if-ne v1, v2, :cond_44

    .line 744
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v2

    if-ne v1, v2, :cond_44

    .line 745
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_45

    :cond_44
    move v0, v3

    .line 743
    :goto_45
    return v0

    .line 747
    :pswitch_46
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    if-ne v1, v2, :cond_6d

    .line 748
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-boolean v1, p0, Landroid/graphics/drawable/Icon;->mUseMonochrome:Z

    iget-boolean v2, p1, Landroid/graphics/drawable/Icon;->mUseMonochrome:Z

    if-ne v1, v2, :cond_6d

    iget v1, p0, Landroid/graphics/drawable/Icon;->mInsetScale:F

    iget v2, p1, Landroid/graphics/drawable/Icon;->mInsetScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6d

    goto :goto_6e

    :cond_6d
    move v0, v3

    .line 747
    :goto_6e
    return v0

    .line 741
    :pswitch_6f
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-ne v1, v2, :cond_7a

    goto :goto_7b

    :cond_7a
    move v0, v3

    :goto_7b
    return v0

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_46
        :pswitch_21
        :pswitch_14
        :pswitch_6f
        :pswitch_14
    .end packed-switch
.end method

.method public greylist-max-o scaleDownIfNecessary(II)V
    .registers 5
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 1170
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    .line 1171
    return-void

    .line 1173
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1174
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1175
    return-void
.end method

.method public whitelist setTint(I)Landroid/graphics/drawable/Icon;
    .registers 3
    .param p1, "tint"    # I

    .line 932
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)Landroid/graphics/drawable/Icon;
    .registers 2
    .param p1, "mode"    # Landroid/graphics/BlendMode;

    .line 969
    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mBlendMode:Landroid/graphics/BlendMode;

    .line 970
    return-object p0
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;
    .registers 2
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 942
    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    .line 943
    return-object p0
.end method

.method public whitelist setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;
    .registers 3
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 958
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mBlendMode:Landroid/graphics/BlendMode;

    .line 959
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Icon(typ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1002
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v1, :pswitch_data_e0

    goto/16 :goto_96

    .line 1024
    :pswitch_18
    const-string v1, " uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_96

    .line 1017
    :pswitch_26
    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v1

    if-eqz v1, :cond_96

    .line 1019
    const-string v1, " off="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_96

    .line 1011
    :pswitch_47
    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1012
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1013
    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1014
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "0x%08x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    goto :goto_96

    .line 1005
    :pswitch_71
    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1006
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1007
    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1008
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1009
    nop

    .line 1027
    :cond_96
    :goto_96
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_c4

    .line 1028
    const-string v1, " tint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    const-string v1, ""

    .line 1030
    .local v1, "sep":Ljava/lang/String;
    iget-object v2, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_a9
    if-ge v4, v3, :cond_c4

    aget v5, v2, v4

    .line 1031
    .local v5, "c":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%s0x%08x"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const-string/jumbo v1, "|"

    .line 1030
    .end local v5    # "c":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    .line 1035
    .end local v1    # "sep":Ljava/lang/String;
    :cond_c4
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mBlendMode:Landroid/graphics/BlendMode;

    sget-object v2, Landroid/graphics/drawable/Icon;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    if-eq v1, v2, :cond_d5

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/drawable/Icon;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1036
    :cond_d5
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_71
        :pswitch_47
        :pswitch_26
        :pswitch_18
        :pswitch_71
        :pswitch_18
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1093
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_78

    goto :goto_5c

    .line 1115
    :pswitch_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5c

    .line 1110
    :pswitch_14
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Parcel;->writeBlob([BII)V

    .line 1112
    goto :goto_5c

    .line 1104
    :pswitch_2b
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    iget-boolean v0, p0, Landroid/graphics/drawable/Icon;->mUseMonochrome:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1107
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInsetScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1108
    goto :goto_5c

    .line 1097
    :pswitch_44
    iget-boolean v0, p0, Landroid/graphics/drawable/Icon;->mCachedAshmem:Z

    if-nez v0, :cond_54

    .line 1098
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    .line 1099
    iput-boolean v1, p0, Landroid/graphics/drawable/Icon;->mCachedAshmem:Z

    .line 1101
    :cond_54
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1102
    nop

    .line 1118
    :goto_5c
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_65

    .line 1119
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6d

    .line 1121
    :cond_65
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1124
    :goto_6d
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v0}, Landroid/graphics/BlendMode;->toValue(Landroid/graphics/BlendMode;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_44
        :pswitch_2b
        :pswitch_14
        :pswitch_c
        :pswitch_44
        :pswitch_c
    .end packed-switch
.end method

.method public greylist-max-o writeToStream(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 659
    .local v0, "dataStream":Ljava/io/DataOutputStream;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 660
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 662
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v1, :pswitch_data_50

    goto :goto_4e

    .line 677
    :pswitch_14
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_4e

    .line 668
    :pswitch_1c
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 669
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 670
    goto :goto_4e

    .line 672
    :pswitch_33
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 674
    goto :goto_4e

    .line 665
    :pswitch_42
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 666
    nop

    .line 680
    :goto_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_42
        :pswitch_33
        :pswitch_1c
        :pswitch_14
        :pswitch_42
        :pswitch_14
    .end packed-switch
.end method
