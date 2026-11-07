.class Landroid/net/NetworkInfo$1;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/NetworkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkInfo;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 633
    .local v0, "netType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 634
    .local v1, "subtype":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, "typeName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, "subtypeName":Ljava/lang/String;
    new-instance v4, Landroid/net/NetworkInfo;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 637
    .local v4, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkInfo$State;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/NetworkInfo;->-$$Nest$fputmState(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)V

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/NetworkInfo;->-$$Nest$fputmDetailedState(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_35

    move v5, v6

    goto :goto_36

    :cond_35
    move v5, v7

    :goto_36
    invoke-static {v4, v5}, Landroid/net/NetworkInfo;->-$$Nest$fputmIsFailover(Landroid/net/NetworkInfo;Z)V

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_41

    move v5, v6

    goto :goto_42

    :cond_41
    move v5, v7

    :goto_42
    invoke-static {v4, v5}, Landroid/net/NetworkInfo;->-$$Nest$fputmIsAvailable(Landroid/net/NetworkInfo;Z)V

    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_4d

    :cond_4c
    move v6, v7

    :goto_4d
    invoke-static {v4, v6}, Landroid/net/NetworkInfo;->-$$Nest$fputmIsRoaming(Landroid/net/NetworkInfo;Z)V

    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/NetworkInfo;->-$$Nest$fputmReason(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/NetworkInfo;->-$$Nest$fputmExtraInfo(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 644
    return-object v4
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

    .line 629
    invoke-virtual {p0, p1}, Landroid/net/NetworkInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/NetworkInfo;
    .registers 3
    .param p1, "size"    # I

    .line 649
    new-array v0, p1, [Landroid/net/NetworkInfo;

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

    .line 629
    invoke-virtual {p0, p1}, Landroid/net/NetworkInfo$1;->newArray(I)[Landroid/net/NetworkInfo;

    move-result-object p1

    return-object p1
.end method
