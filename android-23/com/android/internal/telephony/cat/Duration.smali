.class public Lcom/android/internal/telephony/cat/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/Duration$TimeUnit;,
        Lcom/android/internal/telephony/cat/Duration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/Duration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public timeInterval:I

.field public timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 72
    new-instance v0, Lcom/android/internal/telephony/cat/Duration$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Duration$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/cat/Duration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>(ILcom/android/internal/telephony/cat/Duration$TimeUnit;)V
    .locals 0
    .param p1, "timeInterval"    # I
    .param p2, "timeUnit"    # Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput p1, p0, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    #@5
    .line 53
    iput-object p2, p0, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@7
    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    #@9
    .line 58
    invoke-static {}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v1

    #@11
    aget-object v0, v0, v1

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@15
    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/Duration;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/Duration;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->ordinal()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 62
    return-void
.end method
