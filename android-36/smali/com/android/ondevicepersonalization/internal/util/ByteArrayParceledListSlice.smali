.class public final Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;
.super Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;
.source "ByteArrayParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final blacklist BYTE_ARRAY_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final blacklist CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice$1;

    invoke-direct {v0}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice$1;-><init>()V

    sput-object v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;->BYTE_ARRAY_CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    new-instance v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice$2;

    invoke-direct {v0}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice$2;-><init>()V

    sput-object v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 71
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0, p1}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;-><init>(Ljava/util/List;)V

    .line 72
    return-void
.end method

.method public static blacklist create([Ljava/lang/Object;)Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;
    .registers 9
    .param p0, "inputData"    # [Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "byteArrayList":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_3d

    .line 82
    aget-object v2, p0, v1

    .line 83
    .local v2, "obj":Ljava/lang/Object;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_10
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1f} :catch_23

    .line 91
    nop

    .line 81
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 88
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_23
    move-exception v4

    .line 89
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t convert inference input at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 93
    .end local v1    # "i":I
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3d
    new-instance v1, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    invoke-direct {v1, v0}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static blacklist emptyList()Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;
    .registers 2

    .line 101
    new-instance v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 118
    invoke-super {p0}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .registers 4
    .param p1, "from"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;->BYTE_ARRAY_CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public bridge synthetic blacklist setInlineCountLimit(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 36
    invoke-super {p0, p1}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->setInlineCountLimit(I)V

    return-void
.end method

.method public bridge synthetic blacklist writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 36
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;->writeElement([BLandroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist writeElement([BLandroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcelable"    # [B
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "callFlags"    # I

    .line 111
    array-length v0, p1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 113
    return-void
.end method

.method public bridge synthetic blacklist writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 36
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;->writeParcelableCreator([BLandroid/os/Parcel;)V

    return-void
.end method

.method public blacklist writeParcelableCreator([BLandroid/os/Parcel;)V
    .registers 3
    .param p1, "parcelable"    # [B
    .param p2, "dest"    # Landroid/os/Parcel;

    .line 123
    return-void
.end method

.method public bridge synthetic whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 36
    invoke-super {p0, p1, p2}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
