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

.field public subscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 84
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
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkMisc;)V
    .locals 1
    .param p1, "nm"    # Landroid/net/NetworkMisc;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    if-eqz p1, :cond_0

    #@5
    .line 64
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->allowBypass:Z

    #@7
    iput-boolean v0, p0, Landroid/net/NetworkMisc;->allowBypass:Z

    #@9
    .line 65
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@b
    iput-boolean v0, p0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@d
    .line 66
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@f
    iput-boolean v0, p0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@11
    .line 67
    iget-object v0, p1, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    #@13
    iput-object v0, p0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    #@15
    .line 62
    :cond_0
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
    .line 78
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->allowBypass:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 79
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    move v0, v1

    #@f
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 80
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 81
    iget-object v0, p0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 77
    return-void

    #@1f
    :cond_0
    move v0, v2

    #@20
    .line 78
    goto :goto_0

    #@21
    :cond_1
    move v0, v2

    #@22
    .line 79
    goto :goto_1

    #@23
    :cond_2
    move v1, v2

    #@24
    .line 80
    goto :goto_2
.end method
