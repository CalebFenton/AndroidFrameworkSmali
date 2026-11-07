.class public final Landroid/nfc/Entry;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEntry:Ljava/lang/String;

.field private final blacklist mNfceeId:B

.field private final blacklist mRoutingType:Ljava/lang/String;

.field private final blacklist mType:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Landroid/nfc/Entry$1;

    invoke-direct {v0}, Landroid/nfc/Entry$1;-><init>()V

    sput-object v0, Landroid/nfc/Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/Entry;->mEntry:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/nfc/Entry;->mNfceeId:B

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/nfc/Entry;->mType:B

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/Entry;->mRoutingType:Ljava/lang/String;

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/nfc/Entry-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/nfc/Entry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;BBLjava/lang/String;)V
    .registers 5
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "type"    # B
    .param p3, "nfceeId"    # B
    .param p4, "routingType"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/nfc/Entry;->mEntry:Ljava/lang/String;

    .line 32
    iput-byte p2, p0, Landroid/nfc/Entry;->mType:B

    .line 33
    iput-byte p3, p0, Landroid/nfc/Entry;->mNfceeId:B

    .line 34
    iput-object p4, p0, Landroid/nfc/Entry;->mRoutingType:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEntry()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Landroid/nfc/Entry;->mEntry:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNfceeId()B
    .registers 2

    .line 42
    iget-byte v0, p0, Landroid/nfc/Entry;->mNfceeId:B

    return v0
.end method

.method public blacklist getRoutingType()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/nfc/Entry;->mRoutingType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()B
    .registers 2

    .line 38
    iget-byte v0, p0, Landroid/nfc/Entry;->mType:B

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    iget-object v0, p0, Landroid/nfc/Entry;->mEntry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-byte v0, p0, Landroid/nfc/Entry;->mNfceeId:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 82
    iget-byte v0, p0, Landroid/nfc/Entry;->mType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 83
    iget-object v0, p0, Landroid/nfc/Entry;->mRoutingType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method
