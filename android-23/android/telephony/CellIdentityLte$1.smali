.class final Landroid/telephony/CellIdentityLte$1;
.super Ljava/lang/Object;
.source "CellIdentityLte.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellIdentityLte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telephony/CellIdentityLte;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentityLte;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 189
    new-instance v0, Landroid/telephony/CellIdentityLte;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityLte;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 188
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentityLte$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentityLte;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CellIdentityLte;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 194
    new-array v0, p1, [Landroid/telephony/CellIdentityLte;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 193
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentityLte$1;->newArray(I)[Landroid/telephony/CellIdentityLte;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
