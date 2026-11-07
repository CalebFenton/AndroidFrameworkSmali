.class public final Landroid/nfc/T4tNdefNfceeCcFileInfo;
.super Ljava/lang/Object;
.source "T4tNdefNfceeCcFileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/T4tNdefNfceeCcFileInfo$Version;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/T4tNdefNfceeCcFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist VERSION_2_0:I = 0x20

.field public static final whitelist VERSION_3_0:I = 0x30


# instance fields
.field private blacklist mCcLength:I

.field private blacklist mFileId:I

.field private blacklist mIsReadAllowed:Z

.field private blacklist mIsWriteAllowed:Z

.field private blacklist mMaxSize:I

.field private blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Landroid/nfc/T4tNdefNfceeCcFileInfo$1;

    invoke-direct {v0}, Landroid/nfc/T4tNdefNfceeCcFileInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIZZ)V
    .registers 7
    .param p1, "cclen"    # I
    .param p2, "version"    # I
    .param p3, "ndefFileId"    # I
    .param p4, "ndefMaxSize"    # I
    .param p5, "isReadAllowed"    # Z
    .param p6, "isWriteAllowed"    # Z

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mCcLength:I

    .line 74
    iput p2, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mVersion:I

    .line 75
    iput p3, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mFileId:I

    .line 76
    iput p4, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mMaxSize:I

    .line 77
    iput-boolean p5, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mIsReadAllowed:Z

    .line 78
    iput-boolean p6, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mIsWriteAllowed:Z

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCcFileLength()I
    .registers 2

    .line 98
    iget v0, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mCcLength:I

    return v0
.end method

.method public whitelist getFileId()I
    .registers 2

    .line 143
    iget v0, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mFileId:I

    return v0
.end method

.method public whitelist getMaxSize()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mMaxSize:I

    return v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 132
    iget v0, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mVersion:I

    return v0
.end method

.method public whitelist isReadAllowed()Z
    .registers 2

    .line 162
    iget-boolean v0, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mIsReadAllowed:Z

    return v0
.end method

.method public whitelist isWriteAllowed()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mIsWriteAllowed:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 83
    iget v0, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mCcLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mFileId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mMaxSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-boolean v0, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mIsReadAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 88
    iget-boolean v0, p0, Landroid/nfc/T4tNdefNfceeCcFileInfo;->mIsWriteAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 89
    return-void
.end method
