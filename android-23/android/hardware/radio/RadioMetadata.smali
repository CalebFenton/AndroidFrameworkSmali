.class public final Landroid/hardware/radio/RadioMetadata;
.super Ljava/lang/Object;
.source "RadioMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioMetadata$Builder;,
        Landroid/hardware/radio/RadioMetadata$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final METADATA_KEYS_TYPE:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.hardware.radio.metadata.ALBUM"

.field public static final METADATA_KEY_ART:Ljava/lang/String; = "android.hardware.radio.metadata.ART"

.field public static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.hardware.radio.metadata.ARTIST"

.field public static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.hardware.radio.metadata.GENRE"

.field public static final METADATA_KEY_ICON:Ljava/lang/String; = "android.hardware.radio.metadata.ICON"

.field public static final METADATA_KEY_RBDS_PTY:Ljava/lang/String; = "android.hardware.radio.metadata.RBDS_PTY"

.field public static final METADATA_KEY_RDS_PI:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PI"

.field public static final METADATA_KEY_RDS_PS:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PS"

.field public static final METADATA_KEY_RDS_PTY:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PTY"

.field public static final METADATA_KEY_RDS_RT:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_RT"

.field public static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.hardware.radio.metadata.TITLE"

.field private static final METADATA_TYPE_BITMAP:I = 0x2

.field private static final METADATA_TYPE_INT:I = 0x0

.field private static final METADATA_TYPE_INVALID:I = -0x1

.field private static final METADATA_TYPE_TEXT:I = 0x1

.field private static final NATIVE_KEY_ALBUM:I = 0x7

.field private static final NATIVE_KEY_ART:I = 0xa

.field private static final NATIVE_KEY_ARTIST:I = 0x6

.field private static final NATIVE_KEY_GENRE:I = 0x8

.field private static final NATIVE_KEY_ICON:I = 0x9

.field private static final NATIVE_KEY_INVALID:I = -0x1

.field private static final NATIVE_KEY_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_KEY_RBDS_PTY:I = 0x3

.field private static final NATIVE_KEY_RDS_PI:I = 0x0

.field private static final NATIVE_KEY_RDS_PS:I = 0x1

.field private static final NATIVE_KEY_RDS_PTY:I = 0x2

.field private static final NATIVE_KEY_RDS_RT:I = 0x4

.field private static final NATIVE_KEY_TITLE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "RadioMetadata"


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method static synthetic -get0()Landroid/util/ArrayMap;
    .locals 1

    #@0
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/radio/RadioMetadata;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    .line 107
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    sput-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@a
    .line 108
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@c
    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_PI"

    #@f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 109
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@18
    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_PS"

    #@1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 110
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@24
    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_PTY"

    #@27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 111
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@30
    const-string/jumbo v1, "android.hardware.radio.metadata.RBDS_PTY"

    #@33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 112
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@3c
    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_RT"

    #@3f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 113
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@48
    const-string/jumbo v1, "android.hardware.radio.metadata.TITLE"

    #@4b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 114
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@54
    const-string/jumbo v1, "android.hardware.radio.metadata.ARTIST"

    #@57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    .line 115
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@60
    const-string/jumbo v1, "android.hardware.radio.metadata.ALBUM"

    #@63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 116
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@6c
    const-string/jumbo v1, "android.hardware.radio.metadata.GENRE"

    #@6f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    .line 117
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@78
    const-string/jumbo v1, "android.hardware.radio.metadata.ICON"

    #@7b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    .line 118
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@84
    const-string/jumbo v1, "android.hardware.radio.metadata.ART"

    #@87
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    .line 138
    new-instance v0, Landroid/util/SparseArray;

    #@90
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@93
    sput-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    #@95
    .line 139
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    #@97
    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_PI"

    #@9a
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@9d
    .line 140
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    #@9f
    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_PS"

    #@a2
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@a5
    .line 141
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    #@a7
    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_PTY"

    #@aa
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@ad
    .line 142
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    #@af
    const-string/jumbo v1, "android.hardware.radio.metadata.RBDS_PTY"

    #@b2
    const/4 v2, 0x3

    #@b3
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@b6
    .line 143
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    #@b8
    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_RT"

    #@bb
    const/4 v2, 0x4

    #@bc
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@bf
    .line 144
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    #@c1
    const-string/jumbo v1, "android.hardware.radio.metadata.TITLE"

    #@c4
    const/4 v2, 0x5

    #@c5
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@c8
    .line 145
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    #@ca
    const-string/jumbo v1, "android.hardware.radio.metadata.ARTIST"

    #@cd
    const/4 v2, 0x6

    #@ce
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@d1
    .line 146
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    #@d3
    const-string/jumbo v1, "android.hardware.radio.metadata.ALBUM"

    #@d6
    const/4 v2, 0x7

    #@d7
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@da
    .line 147
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    #@dc
    const-string/jumbo v1, "android.hardware.radio.metadata.GENRE"

    #@df
    const/16 v2, 0x8

    #@e1
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@e4
    .line 148
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    #@e6
    const-string/jumbo v1, "android.hardware.radio.metadata.ICON"

    #@e9
    const/16 v2, 0x9

    #@eb
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@ee
    .line 149
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    #@f0
    const-string/jumbo v1, "android.hardware.radio.metadata.ART"

    #@f3
    const/16 v2, 0xa

    #@f5
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@f8
    .line 256
    new-instance v0, Landroid/hardware/radio/RadioMetadata$1;

    #@fa
    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$1;-><init>()V

    #@fd
    .line 255
    sput-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ff
    .line 40
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 155
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@8
    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@a
    .line 154
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 159
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@8
    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@a
    .line 158
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Landroid/hardware/radio/RadioMetadata;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata;-><init>(Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@9
    .line 162
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioMetadata;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static getKeyFromNativeKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "nativeKey"    # I

    #@0
    .prologue
    .line 252
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 217
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 205
    const/4 v1, 0x0

    #@1
    .line 207
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@3
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@6
    move-result-object v3

    #@7
    move-object v0, v3

    #@8
    check-cast v0, Landroid/graphics/Bitmap;

    #@a
    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 212
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    #@c
    .line 208
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    #@d
    .line 210
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "RadioMetadata"

    #@10
    const-string/jumbo v4, "Failed to retrieve a key as Bitmap."

    #@13
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method putBitmapFromNative(I[B)I
    .locals 7
    .param p1, "nativeKey"    # I
    .param p2, "value"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 432
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 433
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 434
    sget-object v3, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Ljava/lang/Integer;

    #@16
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v3

    #@1a
    const/4 v4, 0x2

    #@1b
    if-eq v3, v4, :cond_1

    #@1d
    .line 435
    :cond_0
    return v5

    #@1e
    .line 437
    :cond_1
    const/4 v0, 0x0

    #@1f
    .line 439
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    array-length v3, p2

    #@20
    const/4 v4, 0x0

    #@21
    invoke-static {p2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result-object v0

    #@25
    .line 442
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    #@27
    .line 443
    return v5

    #@28
    .line 445
    :cond_2
    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@2a
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@2d
    .line 446
    return v6

    #@2e
    .line 440
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    #@2f
    .line 443
    .local v1, "e":Ljava/lang/Exception;
    return v5

    #@30
    .line 441
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@31
    .line 443
    return v5
.end method

.method putIntFromNative(II)I
    .locals 3
    .param p1, "nativeKey"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 412
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 413
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 414
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/Integer;

    #@15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 415
    :cond_0
    const/4 v1, -0x1

    #@1c
    return v1

    #@1d
    .line 417
    :cond_1
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@1f
    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@22
    .line 418
    return v2
.end method

.method putStringFromNative(ILjava/lang/String;)I
    .locals 3
    .param p1, "nativeKey"    # I
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 422
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 423
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 424
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/Integer;

    #@14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v1

    #@18
    const/4 v2, 0x1

    #@19
    if-eq v1, v2, :cond_1

    #@1b
    .line 425
    :cond_0
    const/4 v1, -0x1

    #@1c
    return v1

    #@1d
    .line 427
    :cond_1
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@1f
    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 428
    const/4 v1, 0x0

    #@23
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@5
    .line 221
    return-void
.end method
