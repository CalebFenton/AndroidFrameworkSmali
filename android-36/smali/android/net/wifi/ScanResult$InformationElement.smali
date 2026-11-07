.class public Landroid/net/wifi/ScanResult$InformationElement;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InformationElement"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-r EID_BSS_LOAD:I = 0xb

.field public static final blacklist EID_COUNTRY:I = 0x7

.field public static final greylist-max-r EID_ERP:I = 0x2a

.field public static final greylist-max-r EID_EXTENDED_CAPS:I = 0x7f

.field public static final greylist-max-r EID_EXTENDED_SUPPORTED_RATES:I = 0x32

.field public static final blacklist EID_EXTENSION_PRESENT:I = 0xff

.field public static final blacklist EID_EXT_EHT_CAPABILITIES:I = 0x6c

.field public static final blacklist EID_EXT_EHT_OPERATION:I = 0x6a

.field public static final blacklist EID_EXT_HE_CAPABILITIES:I = 0x23

.field public static final blacklist EID_EXT_HE_OPERATION:I = 0x24

.field public static final blacklist EID_EXT_MULTI_LINK:I = 0x6b

.field public static final blacklist EID_FRAGMENT_SUB_ELEMENT_MULTI_LINK:I = 0xfe

.field public static final greylist-max-o EID_HT_CAPABILITIES:I = 0x2d

.field public static final greylist-max-r EID_HT_OPERATION:I = 0x3d

.field public static final greylist-max-r EID_INTERWORKING:I = 0x6b

.field public static final blacklist EID_RNR:I = 0xc9

.field public static final greylist-max-r EID_ROAMING_CONSORTIUM:I = 0x6f

.field public static final greylist-max-r EID_RSN:I = 0x30

.field public static final blacklist EID_RSN_EXTENSION:I = 0xf4

.field public static final greylist-max-r EID_SSID:I = 0x0

.field public static final greylist-max-r EID_SUPPORTED_RATES:I = 0x1

.field public static final greylist-max-r EID_TIM:I = 0x5

.field public static final greylist-max-o EID_VHT_CAPABILITIES:I = 0xbf

.field public static final greylist-max-r EID_VHT_OPERATION:I = 0xc0

.field public static final greylist-max-r EID_VSA:I = 0xdd


# instance fields
.field public greylist bytes:[B

.field public greylist id:I

.field public blacklist idExt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1415
    new-instance v0, Landroid/net/wifi/ScanResult$InformationElement$1;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult$InformationElement$1;-><init>()V

    sput-object v0, Landroid/net/wifi/ScanResult$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    return-void
.end method

.method public constructor whitelist <init>(II[B)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "idExt"    # I
    .param p3, "bytes"    # [B

    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1367
    iput p1, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 1368
    iput p2, p0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 1369
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 1370
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/ScanResult$InformationElement;)V
    .registers 3
    .param p1, "rhs"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 1372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    iput v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 1374
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    iput v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 1375
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 1376
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1404
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "that"    # Ljava/lang/Object;

    .line 1432
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1435
    :cond_4
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 1437
    :cond_c
    instance-of v1, p1, Landroid/net/wifi/ScanResult$InformationElement;

    if-nez v1, :cond_11

    return v2

    .line 1439
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/ScanResult$InformationElement;

    .line 1440
    .local v1, "thatIE":Landroid/net/wifi/ScanResult$InformationElement;
    iget v3, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    iget v4, v1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    if-ne v3, v4, :cond_2b

    iget v3, p0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    iget v4, v1, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    if-ne v3, v4, :cond_2b

    iget-object v3, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    iget-object v4, v1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 1442
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    .line 1440
    :goto_2c
    return v0
.end method

.method public whitelist getBytes()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1399
    iget-object v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 1383
    iget v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    return v0
.end method

.method public whitelist getIdExt()I
    .registers 2

    .line 1391
    iget v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1448
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 1450
    :cond_b
    iget v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1409
    iget v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    iget v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1411
    iget-object v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1412
    return-void
.end method
