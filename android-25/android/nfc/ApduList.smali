.class public Landroid/nfc/ApduList;
.super Ljava/lang/Object;
.source "ApduList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/ApduList$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/ApduList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private commands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 28
    new-instance v0, Landroid/nfc/ApduList$1;

    #@2
    invoke-direct {v0}, Landroid/nfc/ApduList$1;-><init>()V

    #@5
    .line 27
    sput-object v0, Landroid/nfc/ApduList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    #@a
    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 14
    new-instance v4, Ljava/util/ArrayList;

    #@5
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v4, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    #@a
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v1

    #@e
    .line 43
    .local v1, "count":I
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@11
    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v3

    #@15
    .line 46
    .local v3, "length":I
    new-array v0, v3, [B

    #@17
    .line 47
    .local v0, "cmd":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    #@1a
    .line 48
    iget-object v4, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    .line 43
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 40
    .end local v0    # "cmd":[B
    .end local v3    # "length":I
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/nfc/ApduList;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/nfc/ApduList;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public add([B)V
    .locals 1
    .param p1, "command"    # [B

    #@0
    .prologue
    .line 20
    iget-object v0, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 19
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    #@0
    .prologue
    .line 24
    iget-object v0, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 59
    iget-object v2, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 61
    iget-object v2, p0, Landroid/nfc/ApduList;->commands:Ljava/util/ArrayList;

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "cmd$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, [B

    #@1b
    .line 62
    .local v0, "cmd":[B
    array-length v2, v0

    #@1c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@22
    goto :goto_0

    #@23
    .line 58
    .end local v0    # "cmd":[B
    :cond_0
    return-void
.end method
