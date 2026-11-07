.class public final Landroid/net/DhcpOption;
.super Ljava/lang/Object;
.source "DhcpOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/DhcpOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mType:B

.field private final blacklist mValue:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/net/DhcpOption$1;

    invoke-direct {v0}, Landroid/net/DhcpOption$1;-><init>()V

    sput-object v0, Landroid/net/DhcpOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(B[B)V
    .registers 3
    .param p1, "type"    # B
    .param p2, "value"    # [B

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-byte p1, p0, Landroid/net/DhcpOption;->mType:B

    .line 47
    iput-object p2, p0, Landroid/net/DhcpOption;->mValue:[B

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getType()B
    .registers 2

    .line 76
    iget-byte v0, p0, Landroid/net/DhcpOption;->mType:B

    return v0
.end method

.method public blacklist getValue()[B
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/net/DhcpOption;->mValue:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Landroid/net/DhcpOption;->mValue:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_e
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    iget-byte v0, p0, Landroid/net/DhcpOption;->mType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 58
    iget-object v0, p0, Landroid/net/DhcpOption;->mValue:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 59
    return-void
.end method
