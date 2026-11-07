.class public final Landroid/hardware/radio/RadioMetadata;
.super Ljava/lang/Object;
.source "RadioMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioMetadata$Clock;,
        Landroid/hardware/radio/RadioMetadata$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o METADATA_KEYS_TYPE:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist METADATA_KEY_ALBUM:Ljava/lang/String; = "android.hardware.radio.metadata.ALBUM"

.field public static final whitelist METADATA_KEY_ART:Ljava/lang/String; = "android.hardware.radio.metadata.ART"

.field public static final whitelist METADATA_KEY_ARTIST:Ljava/lang/String; = "android.hardware.radio.metadata.ARTIST"

.field public static final whitelist METADATA_KEY_CLOCK:Ljava/lang/String; = "android.hardware.radio.metadata.CLOCK"

.field public static final whitelist METADATA_KEY_COMMENT_ACTUAL_TEXT:Ljava/lang/String; = "android.hardware.radio.metadata.COMMENT_ACTUAL_TEXT"

.field public static final whitelist METADATA_KEY_COMMENT_SHORT_DESCRIPTION:Ljava/lang/String; = "android.hardware.radio.metadata.COMMENT_SHORT_DESCRIPTION"

.field public static final whitelist METADATA_KEY_COMMERCIAL:Ljava/lang/String; = "android.hardware.radio.metadata.COMMERCIAL"

.field public static final whitelist METADATA_KEY_DAB_COMPONENT_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

.field public static final whitelist METADATA_KEY_DAB_COMPONENT_NAME_SHORT:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

.field public static final whitelist METADATA_KEY_DAB_ENSEMBLE_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

.field public static final whitelist METADATA_KEY_DAB_ENSEMBLE_NAME_SHORT:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

.field public static final whitelist METADATA_KEY_DAB_SERVICE_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_SERVICE_NAME"

.field public static final whitelist METADATA_KEY_DAB_SERVICE_NAME_SHORT:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

.field public static final whitelist METADATA_KEY_GENRE:Ljava/lang/String; = "android.hardware.radio.metadata.GENRE"

.field public static final whitelist METADATA_KEY_HD_STATION_NAME_LONG:Ljava/lang/String; = "android.hardware.radio.metadata.HD_STATION_NAME_LONG"

.field public static final whitelist METADATA_KEY_HD_STATION_NAME_SHORT:Ljava/lang/String; = "android.hardware.radio.metadata.HD_STATION_NAME_SHORT"

.field public static final whitelist METADATA_KEY_HD_SUBCHANNELS_AVAILABLE:Ljava/lang/String; = "android.hardware.radio.metadata.HD_SUBCHANNELS_AVAILABLE"

.field public static final whitelist METADATA_KEY_ICON:Ljava/lang/String; = "android.hardware.radio.metadata.ICON"

.field public static final whitelist METADATA_KEY_PROGRAM_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.PROGRAM_NAME"

.field public static final whitelist METADATA_KEY_RBDS_PTY:Ljava/lang/String; = "android.hardware.radio.metadata.RBDS_PTY"

.field public static final whitelist METADATA_KEY_RDS_PI:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PI"

.field public static final whitelist METADATA_KEY_RDS_PS:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PS"

.field public static final whitelist METADATA_KEY_RDS_PTY:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PTY"

.field public static final whitelist METADATA_KEY_RDS_RT:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_RT"

.field public static final whitelist METADATA_KEY_TITLE:Ljava/lang/String; = "android.hardware.radio.metadata.TITLE"

.field public static final whitelist METADATA_KEY_UFIDS:Ljava/lang/String; = "android.hardware.radio.metadata.UFIDS"

.field private static final greylist-max-o METADATA_TYPE_BITMAP:I = 0x2

.field private static final greylist-max-o METADATA_TYPE_CLOCK:I = 0x3

.field private static final greylist-max-o METADATA_TYPE_INT:I = 0x0

.field private static final greylist-max-o METADATA_TYPE_INVALID:I = -0x1

.field private static final greylist-max-o METADATA_TYPE_TEXT:I = 0x1

.field private static final blacklist METADATA_TYPE_TEXT_ARRAY:I = 0x4

.field private static final greylist-max-o NATIVE_KEY_ALBUM:I = 0x7

.field private static final greylist-max-o NATIVE_KEY_ART:I = 0xa

.field private static final greylist-max-o NATIVE_KEY_ARTIST:I = 0x6

.field private static final greylist-max-o NATIVE_KEY_CLOCK:I = 0xb

.field private static final greylist-max-o NATIVE_KEY_GENRE:I = 0x8

.field private static final greylist-max-o NATIVE_KEY_ICON:I = 0x9

.field private static final greylist-max-o NATIVE_KEY_INVALID:I = -0x1

.field private static final greylist-max-o NATIVE_KEY_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o NATIVE_KEY_RBDS_PTY:I = 0x3

.field private static final greylist-max-o NATIVE_KEY_RDS_PI:I = 0x0

.field private static final greylist-max-o NATIVE_KEY_RDS_PS:I = 0x1

.field private static final greylist-max-o NATIVE_KEY_RDS_PTY:I = 0x2

.field private static final greylist-max-o NATIVE_KEY_RDS_RT:I = 0x4

.field private static final greylist-max-o NATIVE_KEY_TITLE:I = 0x5

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BroadcastRadio.metadata"


# instance fields
.field private final greylist-max-o mBundle:Landroid/os/Bundle;

.field private blacklist mHashCode:Ljava/lang/Integer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBundle(Landroid/hardware/radio/RadioMetadata;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;
    .registers 1

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smputInt(Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/hardware/radio/RadioMetadata;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 19

    .line 229
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    .line 230
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.hardware.radio.metadata.RDS_PI"

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "android.hardware.radio.metadata.RDS_PS"

    invoke-virtual {v0, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v7, "android.hardware.radio.metadata.RDS_PTY"

    invoke-virtual {v0, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v8, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-virtual {v0, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v9, "android.hardware.radio.metadata.RDS_RT"

    invoke-virtual {v0, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v10, "android.hardware.radio.metadata.TITLE"

    invoke-virtual {v0, v10, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v11, "android.hardware.radio.metadata.ARTIST"

    invoke-virtual {v0, v11, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v12, "android.hardware.radio.metadata.ALBUM"

    invoke-virtual {v0, v12, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v13, "android.hardware.radio.metadata.GENRE"

    invoke-virtual {v0, v13, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "android.hardware.radio.metadata.ICON"

    invoke-virtual {v0, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v4, "android.hardware.radio.metadata.ART"

    invoke-virtual {v0, v4, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v1, "android.hardware.radio.metadata.CLOCK"

    invoke-virtual {v0, v1, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v15, "android.hardware.radio.metadata.PROGRAM_NAME"

    invoke-virtual {v0, v15, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v15, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

    invoke-virtual {v0, v15, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v15, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

    invoke-virtual {v0, v15, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v15, "android.hardware.radio.metadata.DAB_SERVICE_NAME"

    invoke-virtual {v0, v15, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v15, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

    invoke-virtual {v0, v15, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v15, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

    invoke-virtual {v0, v15, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v15, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

    invoke-virtual {v0, v15, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v15, "android.hardware.radio.metadata.COMMENT_SHORT_DESCRIPTION"

    invoke-virtual {v0, v15, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v15, "android.hardware.radio.metadata.COMMENT_ACTUAL_TEXT"

    invoke-virtual {v0, v15, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v15, "android.hardware.radio.metadata.COMMERCIAL"

    invoke-virtual {v0, v15, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v18, v1

    const-string v1, "android.hardware.radio.metadata.UFIDS"

    invoke-virtual {v0, v1, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.HD_STATION_NAME_SHORT"

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.HD_STATION_NAME_LONG"

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.hardware.radio.metadata.HD_SUBCHANNELS_AVAILABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    .line 277
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    move/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/16 v1, 0xb

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    new-instance v0, Landroid/hardware/radio/RadioMetadata$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    .line 386
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    .line 390
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Bundle;Landroid/hardware/radio/RadioMetadata-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    .line 394
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioMetadata-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o getKeyFromNativeKey(I)Ljava/lang/String;
    .registers 3
    .param p0, "nativeKey"    # I

    .line 601
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static greylist-max-o putInt(Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 456
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 457
    .local v0, "type":I
    if-eqz v0, :cond_36

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    goto :goto_36

    .line 458
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key cannot be used to put an int"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    :cond_36
    :goto_36
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    return-void
.end method


# virtual methods
.method public whitelist containsKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 441
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 365
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 366
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/RadioMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 367
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioMetadata;

    iget-object v1, v1, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    .line 368
    .local v1, "otherBundle":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 369
    return v2

    .line 371
    :cond_20
    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 372
    .local v4, "key":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioImproved()Z

    move-result v5

    if-eqz v5, :cond_5e

    sget-object v5, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 373
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 372
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 374
    iget-object v5, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    .line 375
    return v2

    .line 377
    :cond_5e
    iget-object v5, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    .line 378
    return v2

    .line 380
    .end local v4    # "key":Ljava/lang/String;
    :cond_6f
    goto :goto_2a

    .line 381
    :cond_70
    return v0
.end method

.method public whitelist getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    const/4 v0, 0x0

    .line 485
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 489
    goto :goto_15

    .line 486
    :catch_d
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BroadcastRadio.metadata"

    const-string v3, "Failed to retrieve a key as Bitmap."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15
    return-object v0
.end method

.method public whitelist getBitmapId(Ljava/lang/String;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 516
    const-string v0, "Metadata key can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 517
    const-string v0, "android.hardware.radio.metadata.ICON"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "android.hardware.radio.metadata.ART"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_35

    .line 518
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as bitmap key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_35
    :goto_35
    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioMetadata;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getClock(Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Clock;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 524
    const/4 v0, 0x0

    .line 526
    .local v0, "clock":Landroid/hardware/radio/RadioMetadata$Clock;
    :try_start_1
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    const-class v2, Landroid/hardware/radio/RadioMetadata$Clock;

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioMetadata$Clock;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 530
    goto :goto_15

    .line 527
    :catch_d
    move-exception v1

    .line 529
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BroadcastRadio.metadata"

    const-string v3, "Failed to retrieve a key as Clock."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15
    return-object v0
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 471
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 452
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 552
    const-string v0, "Metadata key can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 553
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 557
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "stringArrayValue":[Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 561
    return-object v0

    .line 559
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not found in metadata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    .end local v0    # "stringArrayValue":[Ljava/lang/String;
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as string array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 350
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;

    if-nez v0, :cond_49

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 352
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 353
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 354
    .local v1, "objs":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 355
    mul-int/lit8 v3, v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 356
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 358
    .end local v2    # "i":I
    :cond_3f
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;

    .line 360
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "objs":[Ljava/lang/Object;
    :cond_49
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o putBitmapFromNative(I[B)I
    .registers 8
    .param p1, "nativeKey"    # I
    .param p2, "value"    # [B

    .line 837
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_33

    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    .line 839
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1d

    goto :goto_33

    .line 842
    :cond_1d
    const/4 v1, 0x0

    .line 844
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_1e
    array-length v3, p2

    const/4 v4, 0x0

    invoke-static {p2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    .line 845
    if-eqz v1, :cond_30

    .line 846
    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 848
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2f} :catch_31

    .line 849
    return v4

    .line 852
    :cond_30
    goto :goto_32

    .line 851
    :catch_31
    move-exception v3

    .line 853
    :goto_32
    return v2

    .line 840
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_33
    :goto_33
    return v2
.end method

.method greylist-max-o putClockFromNative(IJI)I
    .registers 8
    .param p1, "nativeKey"    # I
    .param p2, "utcEpochSeconds"    # J
    .param p4, "timezoneOffsetInMinutes"    # I

    .line 857
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    .line 859
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1c

    goto :goto_2b

    .line 862
    :cond_1c
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    new-instance v2, Landroid/hardware/radio/RadioMetadata$Clock;

    invoke-direct {v2, p2, p3, p4}, Landroid/hardware/radio/RadioMetadata$Clock;-><init>(JI)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 865
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;

    .line 866
    const/4 v1, 0x0

    return v1

    .line 860
    :cond_2b
    :goto_2b
    const/4 v1, -0x1

    return v1
.end method

.method greylist-max-o putIntFromNative(II)I
    .registers 6
    .param p1, "nativeKey"    # I
    .param p2, "value"    # I

    .line 813
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "key":Ljava/lang/String;
    :try_start_4
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-static {v1, v0, p2}, Landroid/hardware/radio/RadioMetadata;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 817
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_c} :catch_e

    .line 818
    const/4 v1, 0x0

    return v1

    .line 819
    :catch_e
    move-exception v1

    .line 820
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v2, -0x1

    return v2
.end method

.method greylist-max-o putStringFromNative(ILjava/lang/String;)I
    .registers 6
    .param p1, "nativeKey"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 825
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    .line 827
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1c

    goto :goto_26

    .line 830
    :cond_1c
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;

    .line 833
    const/4 v1, 0x0

    return v1

    .line 828
    :cond_26
    :goto_26
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist size()I
    .registers 2

    .line 580
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RadioMetadata["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "android.hardware.radio.metadata"

    .line 403
    .local v1, "removePrefix":Ljava/lang/String;
    const/4 v2, 0x1

    .line 404
    .local v2, "first":Z
    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 405
    .local v4, "key":Ljava/lang/String;
    if-eqz v2, :cond_24

    const/4 v2, 0x0

    goto :goto_29

    .line 406
    :cond_24
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :goto_29
    move-object v5, v4

    .line 409
    .local v5, "keyDisp":Ljava/lang/String;
    const-string v6, "android.hardware.radio.metadata"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 411
    :cond_3a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioImproved()Z

    move-result v6

    if-eqz v6, :cond_7d

    sget-object v6, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 414
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 413
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 415
    iget-object v6, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 416
    .local v6, "stringArrayValue":[Ljava/lang/String;
    const/16 v7, 0x5b

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_65
    array-length v8, v6

    if-ge v7, v8, :cond_77

    .line 418
    if-eqz v7, :cond_6f

    .line 419
    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    :cond_6f
    aget-object v8, v6, v7

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    add-int/lit8 v7, v7, 0x1

    goto :goto_65

    .line 423
    .end local v7    # "i":I
    :cond_77
    const/16 v7, 0x5d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    .end local v6    # "stringArrayValue":[Ljava/lang/String;
    goto :goto_86

    .line 425
    :cond_7d
    iget-object v6, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyDisp":Ljava/lang/String;
    :goto_86
    goto :goto_14

    .line 430
    :cond_87
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 571
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 572
    return-void
.end method
