.class Landroid/telecom/DisconnectCause$1;
.super Ljava/lang/Object;
.source "DisconnectCause.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/DisconnectCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/DisconnectCause;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/DisconnectCause;
    .registers 11
    .param p1, "source"    # Landroid/os/Parcel;

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    .local v1, "code":I
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .line 444
    .local v2, "label":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    .line 445
    .local v3, "description":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "reason":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 447
    .local v5, "tone":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 448
    .local v6, "telephonyDisconnectCause":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 449
    .local v7, "telephonyPreciseDisconnectCause":I
    const/4 v0, 0x0

    const-class v8, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p1, v0, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 450
    .local v8, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-direct/range {v0 .. v8}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IIILandroid/telephony/ims/ImsReasonInfo;)V

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

    .line 439
    invoke-virtual {p0, p1}, Landroid/telecom/DisconnectCause$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/DisconnectCause;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/DisconnectCause;
    .registers 3
    .param p1, "size"    # I

    .line 456
    new-array v0, p1, [Landroid/telecom/DisconnectCause;

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

    .line 439
    invoke-virtual {p0, p1}, Landroid/telecom/DisconnectCause$1;->newArray(I)[Landroid/telecom/DisconnectCause;

    move-result-object p1

    return-object p1
.end method
