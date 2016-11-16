.class public Lcom/android/internal/telephony/cat/TextMessage;
.super Ljava/lang/Object;
.source "TextMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/TextMessage$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/TextMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public duration:Lcom/android/internal/telephony/cat/Duration;

.field public icon:Landroid/graphics/Bitmap;

.field public iconSelfExplanatory:Z

.field public isHighPriority:Z

.field public responseNeeded:Z

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public userClear:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 64
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/cat/TextMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 23
    return-void
.end method

.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 24
    const-string/jumbo v0, ""

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    #@a
    .line 25
    iput-object v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@c
    .line 26
    iput-object v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    #@e
    .line 27
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@10
    .line 28
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    #@12
    .line 29
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    #@15
    .line 30
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    #@17
    .line 31
    iput-object v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@19
    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 24
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    #@b
    .line 25
    iput-object v3, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@d
    .line 26
    iput-object v3, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    #@f
    .line 27
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@11
    .line 28
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    #@13
    .line 29
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    #@15
    .line 30
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    #@17
    .line 31
    iput-object v3, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@19
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    #@1f
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@25
    .line 39
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/graphics/Bitmap;

    #@2b
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    #@2d
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    if-ne v0, v1, :cond_0

    #@33
    move v0, v1

    #@34
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@36
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    if-ne v0, v1, :cond_1

    #@3c
    move v0, v1

    #@3d
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    #@3f
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v0

    #@43
    if-ne v0, v1, :cond_2

    #@45
    move v0, v1

    #@46
    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    #@48
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v0

    #@4c
    if-ne v0, v1, :cond_3

    #@4e
    :goto_3
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    #@50
    .line 44
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Lcom/android/internal/telephony/cat/Duration;

    #@56
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@58
    .line 36
    return-void

    #@59
    :cond_0
    move v0, v2

    #@5a
    .line 40
    goto :goto_0

    #@5b
    :cond_1
    move v0, v2

    #@5c
    .line 41
    goto :goto_1

    #@5d
    :cond_2
    move v0, v2

    #@5e
    .line 42
    goto :goto_2

    #@5f
    :cond_3
    move v1, v2

    #@60
    .line 43
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/TextMessage;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "title="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " text="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, " icon="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 79
    const-string/jumbo v1, " iconSelfExplanatory="

    #@2f
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 79
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@35
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 79
    const-string/jumbo v1, " isHighPriority="

    #@3c
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 80
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    #@42
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 80
    const-string/jumbo v1, " responseNeeded="

    #@49
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 80
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    #@4f
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 80
    const-string/jumbo v1, " userClear="

    #@56
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 81
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    #@5c
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 81
    const-string/jumbo v1, " duration="

    #@63
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 81
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@69
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    #@e
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@11
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    move v0, v1

    #@16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    #@1b
    if-eqz v0, :cond_1

    #@1d
    move v0, v1

    #@1e
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    #@23
    if-eqz v0, :cond_2

    #@25
    move v0, v1

    #@26
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    #@2b
    if-eqz v0, :cond_3

    #@2d
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@32
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@35
    .line 53
    return-void

    #@36
    :cond_0
    move v0, v2

    #@37
    .line 57
    goto :goto_0

    #@38
    :cond_1
    move v0, v2

    #@39
    .line 58
    goto :goto_1

    #@3a
    :cond_2
    move v0, v2

    #@3b
    .line 59
    goto :goto_2

    #@3c
    :cond_3
    move v1, v2

    #@3d
    .line 60
    goto :goto_3
.end method
