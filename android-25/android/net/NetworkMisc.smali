.class public Landroid/net/NetworkMisc;
.super Ljava/lang/Object;
.source "NetworkMisc.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkMisc$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkMisc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public acceptUnvalidated:Z

.field public allowBypass:Z

.field public explicitlySelected:Z

.field public provisioningNotificationDisabled:Z

.field public subscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 95
    new-instance v0, Landroid/net/NetworkMisc$1;

    #@2
    invoke-direct {v0}, Landroid/net/NetworkMisc$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkMisc;)V
    .locals 1
    .param p1, "nm"    # Landroid/net/NetworkMisc;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    if-eqz p1, :cond_0

    #@5
    .line 73
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->allowBypass:Z

    #@7
    iput-boolean v0, p0, Landroid/net/NetworkMisc;->allowBypass:Z

    #@9
    .line 74
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@b
    iput-boolean v0, p0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@d
    .line 75
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@f
    iput-boolean v0, p0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@11
    .line 76
    iget-object v0, p1, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    #@13
    iput-object v0, p0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    #@15
    .line 77
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    #@17
    iput-boolean v0, p0, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    #@19
    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 88
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->allowBypass:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 89
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    move v0, v1

    #@f
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 90
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    move v0, v1

    #@17
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 91
    iget-object v0, p0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    .line 92
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    #@21
    if-eqz v0, :cond_3

    #@23
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 87
    return-void

    #@27
    :cond_0
    move v0, v2

    #@28
    .line 88
    goto :goto_0

    #@29
    :cond_1
    move v0, v2

    #@2a
    .line 89
    goto :goto_1

    #@2b
    :cond_2
    move v0, v2

    #@2c
    .line 90
    goto :goto_2

    #@2d
    :cond_3
    move v1, v2

    #@2e
    .line 92
    goto :goto_3
.end method
