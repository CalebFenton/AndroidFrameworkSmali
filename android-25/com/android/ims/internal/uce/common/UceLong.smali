.class public Lcom/android/ims/internal/uce/common/UceLong;
.super Ljava/lang/Object;
.source "UceLong.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/common/UceLong$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/common/UceLong;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClientId:I

.field private mUceLong:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 97
    new-instance v0, Lcom/android/ims/internal/uce/common/UceLong$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/UceLong$1;-><init>()V

    #@5
    .line 96
    sput-object v0, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    const/16 v0, 0x3e9

    #@5
    iput v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    #@7
    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    const/16 v0, 0x3e9

    #@5
    iput v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    #@7
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/common/UceLong;->readFromParcel(Landroid/os/Parcel;)V

    #@a
    .line 109
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/common/UceLong;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/common/UceLong;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static getUceLongInstance()Lcom/android/ims/internal/uce/common/UceLong;
    .locals 1

    #@0
    .prologue
    .line 75
    new-instance v0, Lcom/android/ims/internal/uce/common/UceLong;

    #@2
    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/UceLong;-><init>()V

    #@5
    return-object v0
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 91
    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mUceLong:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 92
    iget v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 90
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getClientId()I
    .locals 1

    #@0
    .prologue
    .line 58
    iget v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    #@2
    return v0
.end method

.method public getUceLong()J
    .locals 2

    #@0
    .prologue
    .line 43
    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mUceLong:J

    #@2
    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mUceLong:J

    #@6
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    #@c
    .line 114
    return-void
.end method

.method public setClientId(I)V
    .locals 0
    .param p1, "nClientId"    # I

    #@0
    .prologue
    .line 66
    iput p1, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    #@2
    .line 65
    return-void
.end method

.method public setUceLong(J)V
    .locals 1
    .param p1, "uceLong"    # J

    #@0
    .prologue
    .line 51
    iput-wide p1, p0, Lcom/android/ims/internal/uce/common/UceLong;->mUceLong:J

    #@2
    .line 50
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;)V

    #@3
    .line 84
    return-void
.end method
