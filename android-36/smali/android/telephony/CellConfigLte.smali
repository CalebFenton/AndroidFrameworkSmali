.class public Landroid/telephony/CellConfigLte;
.super Ljava/lang/Object;
.source "CellConfigLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellConfigLte;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsEndcAvailable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 94
    new-instance v0, Landroid/telephony/CellConfigLte$1;

    invoke-direct {v0}, Landroid/telephony/CellConfigLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellConfigLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/CellConfigLte;->mIsEndcAvailable:Z

    .line 34
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CellConfigLte;->mIsEndcAvailable:Z

    .line 92
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellConfigLte-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellConfigLte;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellConfigLte;)V
    .registers 3
    .param p1, "config"    # Landroid/telephony/CellConfigLte;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-boolean v0, p1, Landroid/telephony/CellConfigLte;->mIsEndcAvailable:Z

    iput-boolean v0, p0, Landroid/telephony/CellConfigLte;->mIsEndcAvailable:Z

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "isEndcAvailable"    # Z

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean p1, p0, Landroid/telephony/CellConfigLte;->mIsEndcAvailable:Z

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 70
    instance-of v0, p1, Landroid/telephony/CellConfigLte;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 72
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellConfigLte;

    .line 73
    .local v0, "o":Landroid/telephony/CellConfigLte;
    iget-boolean v2, p0, Landroid/telephony/CellConfigLte;->mIsEndcAvailable:Z

    iget-boolean v3, v0, Landroid/telephony/CellConfigLte;->mIsEndcAvailable:Z

    if-ne v2, v3, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 65
    iget-boolean v0, p0, Landroid/telephony/CellConfigLte;->mIsEndcAvailable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method blacklist isEndcAvailable()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Landroid/telephony/CellConfigLte;->mIsEndcAvailable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string v1, " :{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isEndcAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/CellConfigLte;->mIsEndcAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    iget-boolean v0, p0, Landroid/telephony/CellConfigLte;->mIsEndcAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 79
    return-void
.end method
