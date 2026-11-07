.class public final Landroid/net/wifi/OuiKeyedData;
.super Ljava/lang/Object;
.source "OuiKeyedData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/OuiKeyedData$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OuiKeyedData"


# instance fields
.field private final blacklist mData:Landroid/os/PersistableBundle;

.field private final blacklist mOui:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 129
    new-instance v0, Landroid/net/wifi/OuiKeyedData$1;

    invoke-direct {v0}, Landroid/net/wifi/OuiKeyedData$1;-><init>()V

    sput-object v0, Landroid/net/wifi/OuiKeyedData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "oui"    # I
    .param p2, "data"    # Landroid/os/PersistableBundle;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroid/net/wifi/OuiKeyedData;->mOui:I

    .line 49
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-object v0, p0, Landroid/net/wifi/OuiKeyedData;->mData:Landroid/os/PersistableBundle;

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/os/PersistableBundle;Landroid/net/wifi/OuiKeyedData-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/OuiKeyedData;-><init>(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/OuiKeyedData;->mOui:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/OuiKeyedData;->mData:Landroid/os/PersistableBundle;

    .line 125
    return-void
.end method

.method private static blacklist validateOui(I)Z
    .registers 2
    .param p0, "oui"    # I

    .line 74
    if-eqz p0, :cond_9

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 91
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 92
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/wifi/OuiKeyedData;

    .line 93
    .local v2, "that":Landroid/net/wifi/OuiKeyedData;
    iget v3, p0, Landroid/net/wifi/OuiKeyedData;->mOui:I

    iget v4, v2, Landroid/net/wifi/OuiKeyedData;->mOui:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/net/wifi/OuiKeyedData;->mData:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/net/wifi/OuiKeyedData;->mData:Landroid/os/PersistableBundle;

    invoke-static {v3, v4}, Landroid/net/wifi/util/PersistableBundleUtils;->isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    .line 91
    .end local v2    # "that":Landroid/net/wifi/OuiKeyedData;
    :cond_28
    :goto_28
    return v1
.end method

.method public whitelist getData()Landroid/os/PersistableBundle;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/net/wifi/OuiKeyedData;->mData:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getOui()I
    .registers 2

    .line 59
    iget v0, p0, Landroid/net/wifi/OuiKeyedData;->mOui:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 99
    iget v0, p0, Landroid/net/wifi/OuiKeyedData;->mOui:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/OuiKeyedData;->mData:Landroid/os/PersistableBundle;

    invoke-static {v1}, Landroid/net/wifi/util/PersistableBundleUtils;->getHashCode(Landroid/os/PersistableBundle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{oui="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/OuiKeyedData;->mOui:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/OuiKeyedData;->getData()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()Z
    .registers 2

    .line 84
    iget v0, p0, Landroid/net/wifi/OuiKeyedData;->mOui:I

    invoke-static {v0}, Landroid/net/wifi/OuiKeyedData;->validateOui(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/OuiKeyedData;->getData()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget v0, p0, Landroid/net/wifi/OuiKeyedData;->mOui:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Landroid/net/wifi/OuiKeyedData;->mData:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 119
    return-void
.end method
