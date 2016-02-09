.class public Landroid/net/NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkRequest$Builder;,
        Landroid/net/NetworkRequest$1;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 206
    new-instance v0, Landroid/net/NetworkRequest$1;

    #@2
    invoke-direct {v0}, Landroid/net/NetworkRequest$1;-><init>()V

    #@5
    .line 205
    sput-object v0, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkCapabilities;II)V
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "legacyType"    # I
    .param p3, "rId"    # I

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    if-nez p1, :cond_0

    #@5
    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 56
    :cond_0
    iput p3, p0, Landroid/net/NetworkRequest;->requestId:I

    #@d
    .line 57
    iput-object p1, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@f
    .line 58
    iput p2, p0, Landroid/net/NetworkRequest;->legacyType:I

    #@11
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "that"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@5
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@7
    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@a
    iput-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@c
    .line 66
    iget v0, p1, Landroid/net/NetworkRequest;->requestId:I

    #@e
    iput v0, p0, Landroid/net/NetworkRequest;->requestId:I

    #@10
    .line 67
    iget v0, p1, Landroid/net/NetworkRequest;->legacyType:I

    #@12
    iput v0, p0, Landroid/net/NetworkRequest;->legacyType:I

    #@14
    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 198
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
    .line 225
    instance-of v2, p1, Landroid/net/NetworkRequest;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 226
    check-cast v0, Landroid/net/NetworkRequest;

    #@9
    .line 227
    .local v0, "that":Landroid/net/NetworkRequest;
    iget v2, v0, Landroid/net/NetworkRequest;->legacyType:I

    #@b
    iget v3, p0, Landroid/net/NetworkRequest;->legacyType:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 228
    iget v2, v0, Landroid/net/NetworkRequest;->requestId:I

    #@11
    iget v3, p0, Landroid/net/NetworkRequest;->requestId:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    .line 229
    iget-object v2, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@17
    if-nez v2, :cond_2

    #@19
    iget-object v2, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@1b
    if-nez v2, :cond_2

    #@1d
    const/4 v1, 0x1

    #@1e
    .line 227
    :cond_1
    :goto_0
    return v1

    #@1f
    .line 230
    :cond_2
    iget-object v2, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 231
    iget-object v1, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@25
    iget-object v2, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@27
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 235
    iget v0, p0, Landroid/net/NetworkRequest;->requestId:I

    #@2
    iget v1, p0, Landroid/net/NetworkRequest;->legacyType:I

    #@4
    mul-int/lit16 v1, v1, 0x3f5

    #@6
    add-int/2addr v0, v1

    #@7
    .line 236
    iget-object v1, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@9
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->hashCode()I

    #@c
    move-result v1

    #@d
    mul-int/lit16 v1, v1, 0x41b

    #@f
    .line 235
    add-int/2addr v0, v1

    #@10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NetworkRequest [ id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/net/NetworkRequest;->requestId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", legacyType="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/net/NetworkRequest;->legacyType:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 221
    const-string/jumbo v1, ", "

    #@22
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 221
    iget-object v1, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@28
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 221
    const-string/jumbo v1, " ]"

    #@33
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 202
    iget v0, p0, Landroid/net/NetworkRequest;->legacyType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 203
    iget v0, p0, Landroid/net/NetworkRequest;->requestId:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 200
    return-void
.end method
