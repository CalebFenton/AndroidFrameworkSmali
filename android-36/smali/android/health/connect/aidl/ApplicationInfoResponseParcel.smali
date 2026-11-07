.class public Landroid/health/connect/aidl/ApplicationInfoResponseParcel;
.super Ljava/lang/Object;
.source "ApplicationInfoResponseParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist COMPRESS_FACTOR:I = 0x64

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/ApplicationInfoResponseParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/health/connect/aidl/ApplicationInfoResponseParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/ApplicationInfoResponseParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/ApplicationInfoResponseParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/aidl/ApplicationInfoResponseParcel;->mAppInfoList:Ljava/util/List;

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_38

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 70
    .local v4, "icon":[B
    if-eqz v4, :cond_26

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    .line 71
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :goto_27
    iget-object v6, p0, Landroid/health/connect/aidl/ApplicationInfoResponseParcel;->mAppInfoList:Ljava/util/List;

    new-instance v7, Landroid/health/connect/datatypes/AppInfo$Builder;

    invoke-direct {v7, v2, v3, v5}, Landroid/health/connect/datatypes/AppInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/health/connect/datatypes/AppInfo$Builder;->build()Landroid/health/connect/datatypes/AppInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "icon":[B
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 73
    .end local v1    # "i":I
    :cond_38
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AppInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Landroid/health/connect/aidl/ApplicationInfoResponseParcel;->mAppInfoList:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$0(Landroid/os/Parcel;Landroid/health/connect/datatypes/AppInfo;)V
    .registers 7
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "appInfo"    # Landroid/health/connect/datatypes/AppInfo;

    .line 97
    invoke-virtual {p1}, Landroid/health/connect/datatypes/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/health/connect/datatypes/AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroid/health/connect/datatypes/AppInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 101
    .local v1, "bitmapData":[B
    if-eqz v0, :cond_3b

    .line 102
    :try_start_15
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_34

    .line 103
    .local v2, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_1a
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 104
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_2a

    move-object v1, v3

    .line 105
    :try_start_26
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_34

    .line 107
    .end local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3b

    .line 102
    .restart local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_2a
    move-exception v3

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v4

    :try_start_30
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapData":[B
    .end local p0    # "dest":Landroid/os/Parcel;
    .end local p1    # "appInfo":Landroid/health/connect/datatypes/AppInfo;
    :goto_33
    throw v3
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_34

    .line 105
    .end local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmapData":[B
    .restart local p0    # "dest":Landroid/os/Parcel;
    .restart local p1    # "appInfo":Landroid/health/connect/datatypes/AppInfo;
    :catch_34
    move-exception v2

    .line 106
    .local v2, "exception":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 109
    .end local v2    # "exception":Ljava/io/IOException;
    :cond_3b
    :goto_3b
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 110
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AppInfo;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroid/health/connect/aidl/ApplicationInfoResponseParcel;->mAppInfoList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget-object v0, p0, Landroid/health/connect/aidl/ApplicationInfoResponseParcel;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Landroid/health/connect/aidl/ApplicationInfoResponseParcel;->mAppInfoList:Ljava/util/List;

    new-instance v1, Landroid/health/connect/aidl/ApplicationInfoResponseParcel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/health/connect/aidl/ApplicationInfoResponseParcel$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 111
    return-void
.end method
