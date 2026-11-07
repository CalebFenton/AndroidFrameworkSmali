.class public Lcom/android/internal/telephony/cat/Input;
.super Ljava/lang/Object;
.source "Input.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/Input;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist defaultText:Ljava/lang/String;

.field public blacklist digitOnly:Z

.field public blacklist duration:Lcom/android/internal/telephony/cat/Duration;

.field public blacklist echo:Z

.field public blacklist helpAvailable:Z

.field public blacklist icon:Landroid/graphics/Bitmap;

.field public blacklist iconSelfExplanatory:Z

.field public blacklist maxLen:I

.field public blacklist minLen:I

.field public blacklist packed:Z

.field public blacklist text:Ljava/lang/String;

.field public blacklist ucs2:Z

.field public blacklist yesNo:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Lcom/android/internal/telephony/cat/Input$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/Input;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    const/4 v2, 0x1

    .line 47
    iput v2, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 48
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 54
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    .line 61
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_33

    move v0, v2

    goto :goto_34

    :cond_33
    move v0, v1

    :goto_34
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3e

    move v0, v2

    goto :goto_3f

    :cond_3e
    move v0, v1

    :goto_3f
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_49

    move v0, v2

    goto :goto_4a

    :cond_49
    move v0, v1

    :goto_4a
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_54

    move v0, v2

    goto :goto_55

    :cond_54
    move v0, v1

    :goto_55
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5f

    move v0, v2

    goto :goto_60

    :cond_5f
    move v0, v1

    :goto_60
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_6a

    move v0, v2

    goto :goto_6b

    :cond_6a
    move v0, v1

    :goto_6b
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Duration;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_7d

    move v1, v2

    :cond_7d
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/Input-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/Input;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 81
    iget-object p2, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    iget p2, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget p2, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object p2, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 93
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
