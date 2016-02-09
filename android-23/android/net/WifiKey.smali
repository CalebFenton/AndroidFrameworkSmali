.class public Landroid/net/WifiKey;
.super Ljava/lang/Object;
.source "WifiKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/WifiKey$1;
    }
.end annotation


# static fields
.field private static final BSSID_PATTERN:Ljava/util/regex/Pattern;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/WifiKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final SSID_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final bssid:Ljava/lang/String;

.field public final ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 36
    const-string/jumbo v0, "(\".*\")|(0x[\\p{XDigit}]+)"

    #@3
    .line 37
    const/16 v1, 0x20

    #@5
    .line 36
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/net/WifiKey;->SSID_PATTERN:Ljava/util/regex/Pattern;

    #@b
    .line 39
    const-string/jumbo v0, "([\\p{XDigit}]{2}:){5}[\\p{XDigit}]{2}"

    #@e
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@11
    move-result-object v0

    #@12
    .line 38
    sput-object v0, Landroid/net/WifiKey;->BSSID_PATTERN:Ljava/util/regex/Pattern;

    #@14
    .line 114
    new-instance v0, Landroid/net/WifiKey$1;

    #@16
    invoke-direct {v0}, Landroid/net/WifiKey$1;-><init>()V

    #@19
    .line 113
    sput-object v0, Landroid/net/WifiKey;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    #@9
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    #@f
    .line 77
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/WifiKey;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/WifiKey;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    sget-object v0, Landroid/net/WifiKey;->SSID_PATTERN:Ljava/util/regex/Pattern;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Invalid ssid: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 70
    :cond_0
    sget-object v0, Landroid/net/WifiKey;->BSSID_PATTERN:Ljava/util/regex/Pattern;

    #@2b
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_1

    #@35
    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@37
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v2, "Invalid bssid: "

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v0

    #@4f
    .line 73
    :cond_1
    iput-object p1, p0, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    #@51
    .line 74
    iput-object p2, p0, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    #@53
    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 84
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 95
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 96
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/net/WifiKey;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 98
    check-cast v0, Landroid/net/WifiKey;

    #@15
    .line 100
    .local v0, "wifiKey":Landroid/net/WifiKey;
    iget-object v2, p0, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    #@17
    iget-object v3, v0, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    #@19
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    iget-object v1, p0, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    #@21
    iget-object v2, v0, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    #@23
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 105
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-object v1, p0, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget-object v1, p0, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "WifiKey[SSID="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ",BSSID="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "]"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 90
    iget-object v0, p0, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 88
    return-void
.end method
