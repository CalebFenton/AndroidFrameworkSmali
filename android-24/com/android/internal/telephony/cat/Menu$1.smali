.class final Lcom/android/internal/telephony/cat/Menu$1;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/Menu;
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
        "Lcom/android/internal/telephony/cat/Menu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/Menu;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 101
    new-instance v0, Lcom/android/internal/telephony/cat/Menu;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/cat/Menu;-><init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/Menu;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/Menu$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/Menu;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/cat/Menu;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 106
    new-array v0, p1, [Lcom/android/internal/telephony/cat/Menu;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/Menu$1;->newArray(I)[Lcom/android/internal/telephony/cat/Menu;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
