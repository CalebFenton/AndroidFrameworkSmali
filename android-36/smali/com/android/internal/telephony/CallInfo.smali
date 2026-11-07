.class public Lcom/android/internal/telephony/CallInfo;
.super Ljava/lang/Object;
.source "CallInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/CallInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist handle:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/android/internal/telephony/CallInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "handle"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/CallInfo;->handle:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHandle()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/CallInfo;->handle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/CallInfo;->handle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return-void
.end method
