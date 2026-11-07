.class public final Landroid/nearby/DataElement;
.super Ljava/lang/Object;
.source "DataElement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/DataElement$DataType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nearby/DataElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mKey:I

.field private final blacklist mValue:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 125
    new-instance v0, Landroid/nearby/DataElement$1;

    invoke-direct {v0}, Landroid/nearby/DataElement$1;-><init>()V

    sput-object v0, Landroid/nearby/DataElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[B)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "value"    # [B

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    if-eqz p2, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "value cannot be null"

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 120
    iput p1, p0, Landroid/nearby/DataElement;->mKey:I

    .line 121
    iput-object p2, p0, Landroid/nearby/DataElement;->mValue:[B

    .line 122
    return-void
.end method

.method public static blacklist isTestDeType(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 112
    const v0, 0x7fffff80

    if-lt p0, v0, :cond_c

    const v0, 0x7fffffff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 142
    instance-of v0, p1, Landroid/nearby/DataElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 143
    iget v0, p0, Landroid/nearby/DataElement;->mKey:I

    move-object v2, p1

    check-cast v2, Landroid/nearby/DataElement;

    iget v2, v2, Landroid/nearby/DataElement;->mKey:I

    if-ne v0, v2, :cond_1d

    iget-object v0, p0, Landroid/nearby/DataElement;->mValue:[B

    move-object v2, p1

    check-cast v2, Landroid/nearby/DataElement;

    iget-object v2, v2, Landroid/nearby/DataElement;->mValue:[B

    .line 144
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    nop

    .line 143
    :goto_1e
    return v1

    .line 146
    :cond_1f
    return v1
.end method

.method public whitelist getKey()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/nearby/DataElement;->mKey:I

    return v0
.end method

.method public whitelist getValue()[B
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/nearby/DataElement;->mValue:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 151
    iget v0, p0, Landroid/nearby/DataElement;->mKey:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/nearby/DataElement;->mValue:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isIdentityDataType()Z
    .registers 4

    .line 101
    iget v0, p0, Landroid/nearby/DataElement;->mKey:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Landroid/nearby/DataElement;->mKey:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    iget v0, p0, Landroid/nearby/DataElement;->mKey:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_16

    iget v0, p0, Landroid/nearby/DataElement;->mKey:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_16
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 161
    iget v0, p0, Landroid/nearby/DataElement;->mKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Landroid/nearby/DataElement;->mValue:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Landroid/nearby/DataElement;->mValue:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 164
    return-void
.end method
