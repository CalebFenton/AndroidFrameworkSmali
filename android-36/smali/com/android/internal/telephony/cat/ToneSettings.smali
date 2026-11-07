.class public Lcom/android/internal/telephony/cat/ToneSettings;
.super Ljava/lang/Object;
.source "ToneSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/ToneSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist duration:Lcom/android/internal/telephony/cat/Duration;

.field public blacklist tone:Lcom/android/internal/telephony/cat/Tone;

.field public blacklist vibrate:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Lcom/android/internal/telephony/cat/ToneSettings$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/ToneSettings$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/ToneSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lcom/android/internal/telephony/cat/Duration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Duration;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 39
    const-class v0, Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Tone;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/ToneSettings-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ToneSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/Duration;Lcom/android/internal/telephony/cat/Tone;Z)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 33
    iput-object p2, p0, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    .line 34
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

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

    .line 50
    iget-object p2, p0, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    iget-object p2, p0, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 52
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
