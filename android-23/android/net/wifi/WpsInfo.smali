.class public Landroid/net/wifi/WpsInfo;
.super Ljava/lang/Object;
.source "WpsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WpsInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WpsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY:I = 0x1

.field public static final INVALID:I = 0x4

.field public static final KEYPAD:I = 0x2

.field public static final LABEL:I = 0x3

.field public static final PBC:I


# instance fields
.field public BSSID:Ljava/lang/String;

.field public pin:Ljava/lang/String;

.field public setup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 89
    new-instance v0, Landroid/net/wifi/WpsInfo$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WpsInfo$1;-><init>()V

    #@5
    .line 88
    sput-object v0, Landroid/net/wifi/WpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 50
    const/4 v0, 0x4

    #@5
    iput v0, p0, Landroid/net/wifi/WpsInfo;->setup:I

    #@7
    .line 51
    iput-object v1, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    #@9
    .line 52
    iput-object v1, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@b
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WpsInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/WpsInfo;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    if-eqz p1, :cond_0

    #@5
    .line 74
    iget v0, p1, Landroid/net/wifi/WpsInfo;->setup:I

    #@7
    iput v0, p0, Landroid/net/wifi/WpsInfo;->setup:I

    #@9
    .line 75
    iget-object v0, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    #@b
    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    #@d
    .line 76
    iget-object v0, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@f
    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@11
    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 57
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, " setup: "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d
    move-result-object v1

    #@e
    iget v2, p0, Landroid/net/wifi/WpsInfo;->setup:I

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@13
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@16
    .line 59
    const-string/jumbo v1, " BSSID: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@25
    .line 61
    const-string/jumbo v1, " pin: "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    move-result-object v1

    #@2c
    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@34
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 82
    iget v0, p0, Landroid/net/wifi/WpsInfo;->setup:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 83
    iget-object v0, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 84
    iget-object v0, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 81
    return-void
.end method
