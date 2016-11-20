.class public Landroid/security/keymaster/ExportResult;
.super Ljava/lang/Object;
.source "ExportResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keymaster/ExportResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/keymaster/ExportResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final exportData:[B

.field public final resultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    new-instance v0, Landroid/security/keymaster/ExportResult$1;

    #@2
    invoke-direct {v0}, Landroid/security/keymaster/ExportResult$1;-><init>()V

    #@5
    sput-object v0, Landroid/security/keymaster/ExportResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/security/keymaster/ExportResult;->resultCode:I

    #@9
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/security/keymaster/ExportResult;->exportData:[B

    #@f
    .line 41
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
    iget v0, p0, Landroid/security/keymaster/ExportResult;->resultCode:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 54
    iget-object v0, p0, Landroid/security/keymaster/ExportResult;->exportData:[B

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@a
    .line 52
    return-void
.end method
