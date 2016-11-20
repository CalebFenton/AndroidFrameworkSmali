.class public Landroid/bluetooth/OobData;
.super Ljava/lang/Object;
.source "OobData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/OobData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/OobData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private securityManagerTk:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 64
    new-instance v0, Landroid/bluetooth/OobData$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/OobData$1;-><init>()V

    #@5
    .line 63
    sput-object v0, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/bluetooth/OobData;->securityManagerTk:[B

    #@9
    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/OobData;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/OobData;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 55
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getSecurityManagerTk()[B
    .locals 1

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Landroid/bluetooth/OobData;->securityManagerTk:[B

    #@2
    return-object v0
.end method

.method public setSecurityManagerTk([B)V
    .locals 0
    .param p1, "securityManagerTk"    # [B

    #@0
    .prologue
    .line 45
    iput-object p1, p0, Landroid/bluetooth/OobData;->securityManagerTk:[B

    #@2
    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/bluetooth/OobData;->securityManagerTk:[B

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@5
    .line 59
    return-void
.end method
