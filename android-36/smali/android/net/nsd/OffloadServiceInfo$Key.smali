.class public final Landroid/net/nsd/OffloadServiceInfo$Key;
.super Ljava/lang/Object;
.source "OffloadServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/OffloadServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/nsd/OffloadServiceInfo$Key;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mServiceName:Ljava/lang/String;

.field private final blacklist mServiceType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 304
    new-instance v0, Landroid/net/nsd/OffloadServiceInfo$Key$1;

    invoke-direct {v0}, Landroid/net/nsd/OffloadServiceInfo$Key$1;-><init>()V

    sput-object v0, Landroid/net/nsd/OffloadServiceInfo$Key;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceName:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceType:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceType"    # Ljava/lang/String;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iput-object p1, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceName:Ljava/lang/String;

    .line 262
    iput-object p2, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceType:Ljava/lang/String;

    .line 263
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 319
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 320
    :cond_4
    instance-of v1, p1, Landroid/net/nsd/OffloadServiceInfo$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 321
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/nsd/OffloadServiceInfo$Key;

    .line 322
    .local v1, "that":Landroid/net/nsd/OffloadServiceInfo$Key;
    iget-object v3, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceName:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceType:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceType:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public whitelist getServiceName()Ljava/lang/String;
    .registers 2

    .line 281
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceType()Ljava/lang/String;
    .registers 2

    .line 289
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 328
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceType:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 333
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceType:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "OffloadServiceInfoKey{ mServiceName=%s, mServiceType=%s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 294
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Landroid/net/nsd/OffloadServiceInfo$Key;->mServiceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    return-void
.end method
