.class public Landroid/security/keymaster/KeymasterBlob;
.super Ljava/lang/Object;
.source "KeymasterBlob.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keymaster/KeymasterBlob$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/keymaster/KeymasterBlob;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blob:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    new-instance v0, Landroid/security/keymaster/KeymasterBlob$1;

    #@2
    invoke-direct {v0}, Landroid/security/keymaster/KeymasterBlob$1;-><init>()V

    #@5
    sput-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 25
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/security/keymaster/KeymasterBlob;->blob:[B

    #@9
    .line 42
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "blob"    # [B

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Landroid/security/keymaster/KeymasterBlob;->blob:[B

    #@5
    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid/security/keymaster/KeymasterBlob;->blob:[B

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@5
    .line 52
    return-void
.end method
