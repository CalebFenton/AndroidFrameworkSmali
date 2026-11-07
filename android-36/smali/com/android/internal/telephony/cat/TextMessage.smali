.class public Lcom/android/internal/telephony/cat/TextMessage;
.super Ljava/lang/Object;
.source "TextMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/TextMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist duration:Lcom/android/internal/telephony/cat/Duration;

.field public blacklist icon:Landroid/graphics/Bitmap;

.field public greylist-max-r iconSelfExplanatory:Z

.field public blacklist isHighPriority:Z

.field public blacklist responseNeeded:Z

.field public greylist-max-r text:Ljava/lang/String;

.field public blacklist title:Ljava/lang/String;

.field public blacklist userClear:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/TextMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-r <init>()V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    const/4 v2, 0x1

    .line 33
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 35
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    const/4 v2, 0x1

    .line 33
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 35
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 44
    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_3a

    move v3, v2

    goto :goto_3b

    :cond_3a
    move v3, v1

    :goto_3b
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_45

    move v3, v2

    goto :goto_46

    :cond_45
    move v3, v1

    :goto_46
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_50

    move v3, v2

    goto :goto_51

    :cond_50
    move v3, v1

    :goto_51
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_5a

    move v1, v2

    :cond_5a
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/cat/Duration;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/TextMessage-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/TextMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " iconSelfExplanatory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isHighPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " responseNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " userClear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 59
    iget-object p2, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object p0, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
