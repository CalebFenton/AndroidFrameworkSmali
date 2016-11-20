.class public Lcom/android/internal/telephony/cat/Input;
.super Ljava/lang/Object;
.source "Input.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/Input$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/Input;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultText:Ljava/lang/String;

.field public digitOnly:Z

.field public duration:Lcom/android/internal/telephony/cat/Duration;

.field public echo:Z

.field public helpAvailable:Z

.field public icon:Landroid/graphics/Bitmap;

.field public maxLen:I

.field public minLen:I

.field public packed:Z

.field public text:Ljava/lang/String;

.field public ucs2:Z

.field public yesNo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 92
    new-instance v0, Lcom/android/internal/telephony/cat/Input$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/cat/Input;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 42
    const-string/jumbo v0, ""

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    #@a
    .line 43
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    #@c
    .line 44
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    #@e
    .line 45
    iput v1, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    #@10
    .line 46
    const/4 v0, 0x1

    #@11
    iput v0, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@13
    .line 47
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    #@15
    .line 48
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    #@17
    .line 49
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    #@19
    .line 50
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    #@1b
    .line 51
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    #@1d
    .line 52
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    #@1f
    .line 53
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@21
    .line 41
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
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    #@c
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    #@12
    .line 59
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/graphics/Bitmap;

    #@18
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    #@1a
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    #@20
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@26
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    if-ne v0, v1, :cond_0

    #@2c
    move v0, v1

    #@2d
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    #@2f
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v0

    #@33
    if-ne v0, v1, :cond_1

    #@35
    move v0, v1

    #@36
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    #@38
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v0

    #@3c
    if-ne v0, v1, :cond_2

    #@3e
    move v0, v1

    #@3f
    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    #@41
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v0

    #@45
    if-ne v0, v1, :cond_3

    #@47
    move v0, v1

    #@48
    :goto_3
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    #@4a
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v0

    #@4e
    if-ne v0, v1, :cond_4

    #@50
    move v0, v1

    #@51
    :goto_4
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    #@53
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v0

    #@57
    if-ne v0, v1, :cond_5

    #@59
    :goto_5
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    #@5b
    .line 68
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@5e
    move-result-object v0

    #@5f
    check-cast v0, Lcom/android/internal/telephony/cat/Duration;

    #@61
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@63
    .line 56
    return-void

    #@64
    :cond_0
    move v0, v2

    #@65
    .line 62
    goto :goto_0

    #@66
    :cond_1
    move v0, v2

    #@67
    .line 63
    goto :goto_1

    #@68
    :cond_2
    move v0, v2

    #@69
    .line 64
    goto :goto_2

    #@6a
    :cond_3
    move v0, v2

    #@6b
    .line 65
    goto :goto_3

    #@6c
    :cond_4
    move v0, v2

    #@6d
    .line 66
    goto :goto_4

    #@6e
    :cond_5
    move v1, v2

    #@6f
    .line 67
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/Input;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/Input;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "Icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 104
    const/4 v0, 0x1

    #@1
    return v0
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
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    #@e
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@11
    .line 81
    iget v0, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 82
    iget v0, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 83
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    #@1d
    if-eqz v0, :cond_0

    #@1f
    move v0, v1

    #@20
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 84
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    #@25
    if-eqz v0, :cond_1

    #@27
    move v0, v1

    #@28
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    #@2d
    if-eqz v0, :cond_2

    #@2f
    move v0, v1

    #@30
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    #@35
    if-eqz v0, :cond_3

    #@37
    move v0, v1

    #@38
    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 87
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    #@3d
    if-eqz v0, :cond_4

    #@3f
    move v0, v1

    #@40
    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 88
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    #@45
    if-eqz v0, :cond_5

    #@47
    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@4c
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@4f
    .line 77
    return-void

    #@50
    :cond_0
    move v0, v2

    #@51
    .line 83
    goto :goto_0

    #@52
    :cond_1
    move v0, v2

    #@53
    .line 84
    goto :goto_1

    #@54
    :cond_2
    move v0, v2

    #@55
    .line 85
    goto :goto_2

    #@56
    :cond_3
    move v0, v2

    #@57
    .line 86
    goto :goto_3

    #@58
    :cond_4
    move v0, v2

    #@59
    .line 87
    goto :goto_4

    #@5a
    :cond_5
    move v1, v2

    #@5b
    .line 88
    goto :goto_5
.end method
