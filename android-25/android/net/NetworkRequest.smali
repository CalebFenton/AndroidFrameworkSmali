.class public Landroid/net/NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkRequest$1;,
        Landroid/net/NetworkRequest$Builder;,
        Landroid/net/NetworkRequest$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final legacyType:I

.field public final networkCapabilities:Landroid/net/NetworkCapabilities;

.field public final requestId:I

.field public final type:Landroid/net/NetworkRequest$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 286
    new-instance v0, Landroid/net/NetworkRequest$1;

    #@2
    invoke-direct {v0}, Landroid/net/NetworkRequest$1;-><init>()V

    #@5
    .line 285
    sput-object v0, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "legacyType"    # I
    .param p3, "rId"    # I
    .param p4, "type"    # Landroid/net/NetworkRequest$Type;

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 108
    if-nez p1, :cond_0

    #@5
    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 111
    :cond_0
    iput p3, p0, Landroid/net/NetworkRequest;->requestId:I

    #@d
    .line 112
    iput-object p1, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@f
    .line 113
    iput p2, p0, Landroid/net/NetworkRequest;->legacyType:I

    #@11
    .line 114
    iput-object p4, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@13
    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "that"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 121
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@5
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@7
    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@a
    iput-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@c
    .line 122
    iget v0, p1, Landroid/net/NetworkRequest;->requestId:I

    #@e
    iput v0, p0, Landroid/net/NetworkRequest;->requestId:I

    #@10
    .line 123
    iget v0, p1, Landroid/net/NetworkRequest;->legacyType:I

    #@12
    iput v0, p0, Landroid/net/NetworkRequest;->legacyType:I

    #@14
    .line 124
    iget-object v0, p1, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@16
    iput-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@18
    .line 120
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 277
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 362
    instance-of v2, p1, Landroid/net/NetworkRequest;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 363
    check-cast v0, Landroid/net/NetworkRequest;

    #@9
    .line 364
    .local v0, "that":Landroid/net/NetworkRequest;
    iget v2, v0, Landroid/net/NetworkRequest;->legacyType:I

    #@b
    iget v3, p0, Landroid/net/NetworkRequest;->legacyType:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 365
    iget v2, v0, Landroid/net/NetworkRequest;->requestId:I

    #@11
    iget v3, p0, Landroid/net/NetworkRequest;->requestId:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    .line 366
    iget-object v2, v0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@17
    iget-object v3, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@19
    if-ne v2, v3, :cond_1

    #@1b
    .line 367
    iget-object v1, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@1d
    iget-object v2, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@1f
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    .line 364
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 371
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/net/NetworkRequest;->requestId:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget v1, p0, Landroid/net/NetworkRequest;->legacyType:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    iget-object v1, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    iget-object v1, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-object v1, v0, v2

    #@1f
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@22
    move-result v0

    #@23
    return v0
.end method

.method public isBackgroundRequest()Z
    .locals 2

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@2
    sget-object v1, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isForegroundRequest()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 343
    iget-object v1, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@3
    sget-object v2, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget-object v1, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@9
    sget-object v2, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    #@b
    if-ne v1, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public isListen()Z
    .locals 2

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@2
    sget-object v1, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isRequest()Z
    .locals 1

    #@0
    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/net/NetworkRequest;->isForegroundRequest()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/net/NetworkRequest;->isBackgroundRequest()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NetworkRequest [ "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " id="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/net/NetworkRequest;->requestId:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 357
    iget v0, p0, Landroid/net/NetworkRequest;->legacyType:I

    #@21
    const/4 v2, -0x1

    #@22
    if-eq v0, v2, :cond_0

    #@24
    new-instance v0, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v2, ", legacyType="

    #@2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    iget v2, p0, Landroid/net/NetworkRequest;->legacyType:I

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    .line 356
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 358
    const-string/jumbo v1, ", "

    #@41
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 358
    iget-object v1, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@47
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    .line 358
    const-string/jumbo v1, " ]"

    #@52
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    return-object v0

    #@5b
    .line 357
    :cond_0
    const-string/jumbo v0, ""

    #@5e
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 281
    iget v0, p0, Landroid/net/NetworkRequest;->legacyType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 282
    iget v0, p0, Landroid/net/NetworkRequest;->requestId:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 283
    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@11
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Type;->name()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 279
    return-void
.end method
