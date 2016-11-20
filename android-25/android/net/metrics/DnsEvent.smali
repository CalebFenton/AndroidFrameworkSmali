.class public final Landroid/net/metrics/DnsEvent;
.super Ljava/lang/Object;
.source "DnsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DnsEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/DnsEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final eventTypes:[B

.field public final latenciesMs:[I

.field public final netId:I

.field public final returnCodes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 74
    new-instance v0, Landroid/net/metrics/DnsEvent$1;

    #@2
    invoke-direct {v0}, Landroid/net/metrics/DnsEvent$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/metrics/DnsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>(I[B[B[I)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "eventTypes"    # [B
    .param p3, "returnCodes"    # [B
    .param p4, "latenciesMs"    # [I

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput p1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    #@5
    .line 44
    iput-object p2, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    #@7
    .line 45
    iput-object p3, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    #@9
    .line 46
    iput-object p4, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    #@b
    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/net/metrics/DnsEvent;->netId:I

    #@9
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    #@f
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    #@15
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    #@1b
    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DnsEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/DnsEvent;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static logEvent(I[B[B[I)V
    .locals 0
    .param p0, "netId"    # I
    .param p1, "eventTypes"    # [B
    .param p2, "returnCodes"    # [B
    .param p3, "latenciesMs"    # [I

    #@0
    .prologue
    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, "DnsEvent(%d, %d events)"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget v2, p0, Landroid/net/metrics/DnsEvent;->netId:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    #@11
    array-length v2, v2

    #@12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v2

    #@16
    const/4 v3, 0x1

    #@17
    aput-object v2, v1, v3

    #@19
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 58
    iget v0, p0, Landroid/net/metrics/DnsEvent;->netId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 59
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@a
    .line 60
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@f
    .line 61
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@14
    .line 57
    return-void
.end method
