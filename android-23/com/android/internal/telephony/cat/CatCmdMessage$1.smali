.class final Lcom/android/internal/telephony/cat/CatCmdMessage$1;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
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
        "Lcom/android/internal/telephony/cat/CatCmdMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 190
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 195
    new-array v0, p1, [Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage$1;->newArray(I)[Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
