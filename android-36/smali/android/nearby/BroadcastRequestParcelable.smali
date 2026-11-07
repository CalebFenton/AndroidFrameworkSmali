.class public Landroid/nearby/BroadcastRequestParcelable;
.super Ljava/lang/Object;
.source "BroadcastRequestParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nearby/BroadcastRequestParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBroadcastRequest:Landroid/nearby/BroadcastRequest;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/nearby/BroadcastRequestParcelable$1;

    invoke-direct {v0}, Landroid/nearby/BroadcastRequestParcelable$1;-><init>()V

    sput-object v0, Landroid/nearby/BroadcastRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/nearby/BroadcastRequest;)V
    .registers 2
    .param p1, "broadcastRequest"    # Landroid/nearby/BroadcastRequest;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/nearby/BroadcastRequestParcelable;->mBroadcastRequest:Landroid/nearby/BroadcastRequest;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBroadcastRequest()Landroid/nearby/BroadcastRequest;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/nearby/BroadcastRequestParcelable;->mBroadcastRequest:Landroid/nearby/BroadcastRequest;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    iget-object v0, p0, Landroid/nearby/BroadcastRequestParcelable;->mBroadcastRequest:Landroid/nearby/BroadcastRequest;

    invoke-virtual {v0, p1, p2}, Landroid/nearby/BroadcastRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    return-void
.end method
