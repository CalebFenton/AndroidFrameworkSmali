.class public Landroid/security/keymaster/KeymasterBlob;
.super Ljava/lang/Object;
.source "KeymasterBlob.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/KeymasterBlob;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o blob:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/security/keymaster/KeymasterBlob$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterBlob$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/KeymasterBlob;->blob:[B

    .line 47
    return-void
.end method

.method public constructor greylist-max-o <init>([B)V
    .registers 2
    .param p1, "blob"    # [B

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/security/keymaster/KeymasterBlob;->blob:[B

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 56
    iget-object v0, p0, Landroid/security/keymaster/KeymasterBlob;->blob:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 57
    return-void
.end method
