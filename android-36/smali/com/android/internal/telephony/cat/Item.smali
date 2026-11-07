.class public Lcom/android/internal/telephony/cat/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/Item;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist icon:Landroid/graphics/Bitmap;

.field public blacklist id:I

.field public blacklist text:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Lcom/android/internal/telephony/cat/Item$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Item$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/Item;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/internal/telephony/cat/Item;->id:I

    .line 42
    iput-object p2, p0, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/Item;->id:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    .line 49
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 59
    iget v0, p0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
