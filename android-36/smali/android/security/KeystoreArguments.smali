.class public Landroid/security/KeystoreArguments;
.super Ljava/lang/Object;
.source "KeystoreArguments.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/KeystoreArguments;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o args:[[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/security/KeystoreArguments$1;

    invoke-direct {v0}, Landroid/security/KeystoreArguments$1;-><init>()V

    sput-object v0, Landroid/security/KeystoreArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/KeystoreArguments;->args:[[B

    .line 45
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Landroid/security/KeystoreArguments;->readFromParcel(Landroid/os/Parcel;)V

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/KeystoreArguments-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/KeystoreArguments;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-r <init>([[B)V
    .registers 2
    .param p1, "args"    # [[B

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/security/KeystoreArguments;->args:[[B

    .line 50
    return-void
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, "length":I
    new-array v1, v0, [[B

    iput-object v1, p0, Landroid/security/KeystoreArguments;->args:[[B

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_16

    .line 72
    iget-object v2, p0, Landroid/security/KeystoreArguments;->args:[[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    aput-object v3, v2, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 74
    .end local v1    # "i":I
    :cond_16
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 58
    iget-object v0, p0, Landroid/security/KeystoreArguments;->args:[[B

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 61
    :cond_9
    iget-object v0, p0, Landroid/security/KeystoreArguments;->args:[[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Landroid/security/KeystoreArguments;->args:[[B

    array-length v2, v0

    :goto_12
    if-ge v1, v2, :cond_1c

    aget-object v3, v0, v1

    .line 63
    .local v3, "arg":[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 62
    .end local v3    # "arg":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 66
    :cond_1c
    :goto_1c
    return-void
.end method
