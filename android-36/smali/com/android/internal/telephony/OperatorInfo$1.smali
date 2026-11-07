.class Lcom/android/internal/telephony/OperatorInfo$1;
.super Ljava/lang/Object;
.source "OperatorInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/telephony/OperatorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/OperatorInfo;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 188
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/internal/telephony/OperatorInfo$State;

    .line 192
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-class v5, Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/OperatorInfo$State;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;I)V

    .line 194
    .local v0, "opInfo":Lcom/android/internal/telephony/OperatorInfo;
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/OperatorInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/telephony/OperatorInfo;
    .registers 3
    .param p1, "size"    # I

    .line 199
    new-array v0, p1, [Lcom/android/internal/telephony/OperatorInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/OperatorInfo$1;->newArray(I)[Lcom/android/internal/telephony/OperatorInfo;

    move-result-object p1

    return-object p1
.end method
