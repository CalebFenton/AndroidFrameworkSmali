.class public Landroid/nfc/ApduList;
.super Ljava/lang/Object;
.source "ApduList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/ApduList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o commands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroid/nfc/ApduList$1;

    invoke-direct {v0}, Landroid/nfc/ApduList$1;-><init>()V

    sput-object v0, Landroid/nfc/ApduList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_22

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    .local v2, "length":I
    new-array v3, v2, [B

    .line 63
    .local v3, "cmd":[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 64
    iget-object v4, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v2    # "length":I
    .end local v3    # "cmd":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 66
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/nfc/ApduList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/nfc/ApduList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o add([B)V
    .registers 3
    .param p1, "command"    # [B

    .line 36
    iget-object v0, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o get()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget-object v0, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 78
    .local v1, "cmd":[B
    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 80
    .end local v1    # "cmd":[B
    goto :goto_f

    .line 81
    :cond_23
    return-void
.end method
