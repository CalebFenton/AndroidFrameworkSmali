.class public Lcom/android/internal/telephony/cat/ToneSettings;
.super Ljava/lang/Object;
.source "ToneSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/ToneSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/ToneSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public duration:Lcom/android/internal/telephony/cat/Duration;

.field public tone:Lcom/android/internal/telephony/cat/Tone;

.field public vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 55
    new-instance v0, Lcom/android/internal/telephony/cat/ToneSettings$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/ToneSettings$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/cat/ToneSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 38
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/cat/Duration;

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@d
    .line 39
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/telephony/cat/Tone;

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    #@15
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    if-ne v0, v1, :cond_0

    #@1b
    move v0, v1

    #@1c
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    #@1e
    .line 37
    return-void

    #@1f
    .line 40
    :cond_0
    const/4 v0, 0x0

    #@20
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/ToneSettings;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ToneSettings;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/Duration;Lcom/android/internal/telephony/cat/Tone;Z)V
    .locals 0
    .param p1, "duration"    # Lcom/android/internal/telephony/cat/Duration;
    .param p2, "tone"    # Lcom/android/internal/telephony/cat/Tone;
    .param p3, "vibrate"    # Z

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@5
    .line 33
    iput-object p2, p0, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    #@7
    .line 34
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    #@9
    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 45
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 50
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@3
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@6
    .line 51
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    #@8
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@b
    .line 52
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 49
    return-void
.end method
