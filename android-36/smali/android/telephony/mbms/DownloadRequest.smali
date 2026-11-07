.class public final Landroid/telephony/mbms/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;,
        Landroid/telephony/mbms/DownloadRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o CURRENT_VERSION:I = 0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "MbmsDownloadRequest"

.field public static final greylist-max-o MAX_APP_INTENT_SIZE:I = 0xc350

.field public static final greylist-max-o MAX_DESTINATION_URI_SIZE:I = 0xc350


# instance fields
.field private final greylist-max-o destinationUri:Landroid/net/Uri;

.field private final greylist-max-o fileServiceId:Ljava/lang/String;

.field private final greylist-max-o serializedResultIntentForApp:Ljava/lang/String;

.field private final greylist-max-o sourceUri:Landroid/net/Uri;

.field private final greylist-max-o subscriptionId:I

.field private final greylist-max-o version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdestinationUri(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfileServiceId(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetserializedResultIntentForApp(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsourceUri(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsubscriptionId(Landroid/telephony/mbms/DownloadRequest;)I
    .registers 1

    iget p0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetversion(Landroid/telephony/mbms/DownloadRequest;)I
    .registers 1

    iget p0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 332
    new-instance v0, Landroid/telephony/mbms/DownloadRequest$1;

    invoke-direct {v0}, Landroid/telephony/mbms/DownloadRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    .line 250
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/mbms/DownloadRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/mbms/DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 7
    .param p1, "fileServiceId"    # Ljava/lang/String;
    .param p2, "source"    # Landroid/net/Uri;
    .param p3, "destination"    # Landroid/net/Uri;
    .param p4, "sub"    # I
    .param p5, "appIntent"    # Ljava/lang/String;
    .param p6, "version"    # I

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    .line 237
    iput p4, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    .line 238
    iput-object p3, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    .line 239
    iput-object p5, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    .line 240
    iput p6, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    .line 241
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ILandroid/telephony/mbms/DownloadRequest-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/telephony/mbms/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;I)V

    return-void
.end method

.method public static whitelist getMaxAppIntentSize()I
    .registers 1

    .line 347
    const v0, 0xc350

    return v0
.end method

.method public static whitelist getMaxDestinationUriSize()I
    .registers 1

    .line 355
    const v0, 0xc350

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 384
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 385
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 386
    return v1

    .line 388
    :cond_8
    instance-of v2, p1, Landroid/telephony/mbms/DownloadRequest;

    if-nez v2, :cond_d

    .line 389
    return v1

    .line 391
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/telephony/mbms/DownloadRequest;

    .line 392
    .local v2, "request":Landroid/telephony/mbms/DownloadRequest;
    iget v3, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    iget v4, v2, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    if-ne v3, v4, :cond_45

    iget v3, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    iget v4, v2, Landroid/telephony/mbms/DownloadRequest;->version:I

    if-ne v3, v4, :cond_45

    iget-object v3, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    .line 394
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    iget-object v4, v2, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    .line 395
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    iget-object v4, v2, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    .line 396
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    .line 397
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_46

    :cond_45
    move v0, v1

    .line 392
    :goto_46
    return v0
.end method

.method public whitelist getDestinationUri()Landroid/net/Uri;
    .registers 2

    .line 283
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getFileServiceId()Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getHash()Ljava/lang/String;
    .registers 4

    .line 366
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_44

    .line 369
    .local v0, "digest":Ljava/security/MessageDigest;
    nop

    .line 370
    iget v1, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_39

    .line 372
    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 373
    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 374
    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 375
    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 379
    :cond_39
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 367
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_44
    move-exception v0

    .line 368
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get sha256 hash object"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o getIntentForApp()Landroid/content/Intent;
    .registers 3

    .line 300
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 301
    :catch_8
    move-exception v0

    .line 302
    .local v0, "e":Ljava/net/URISyntaxException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSourceUri()Landroid/net/Uri;
    .registers 2

    .line 276
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getSubscriptionId()I
    .registers 2

    .line 290
    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    return v0
.end method

.method public greylist-max-o getVersion()I
    .registers 2

    .line 329
    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 402
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    iget v3, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    .line 403
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    iget v5, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 402
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist toByteArray()[B
    .registers 5

    .line 314
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 315
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 316
    .local v1, "stream":Ljava/io/ObjectOutputStream;
    new-instance v2, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;

    invoke-direct {v2, p0}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;-><init>(Landroid/telephony/mbms/DownloadRequest;)V

    .line 317
    .local v2, "container":Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 318
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 319
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v3

    .line 320
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "stream":Ljava/io/ObjectOutputStream;
    .end local v2    # "container":Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;
    :catch_1a
    move-exception v0

    .line 322
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MbmsDownloadRequest"

    const-string v2, "Got IOException trying to serialize opaque data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 257
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 259
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 260
    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    return-void
.end method
