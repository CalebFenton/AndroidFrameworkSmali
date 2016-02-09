.class public final Landroid/bluetooth/le/ResultStorageDescriptor;
.super Ljava/lang/Object;
.source "ResultStorageDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ResultStorageDescriptor$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLength:I

.field private mOffset:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 82
    new-instance v0, Landroid/bluetooth/le/ResultStorageDescriptor$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/le/ResultStorageDescriptor$1;-><init>()V

    #@5
    sput-object v0, Landroid/bluetooth/le/ResultStorageDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput p1, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mType:I

    #@5
    .line 55
    iput p2, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mOffset:I

    #@7
    .line 56
    iput p3, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mLength:I

    #@9
    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ResultStorageDescriptor;->ReadFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 71
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/ResultStorageDescriptor;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ResultStorageDescriptor;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private ReadFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mType:I

    #@6
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mOffset:I

    #@c
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mLength:I

    #@12
    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 43
    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mLength:I

    #@2
    return v0
.end method

.method public getOffset()I
    .locals 1

    #@0
    .prologue
    .line 39
    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mOffset:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 35
    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mType:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 66
    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 67
    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mOffset:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 68
    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mLength:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 65
    return-void
.end method
