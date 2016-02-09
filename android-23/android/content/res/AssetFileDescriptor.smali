.class public Landroid/content/res/AssetFileDescriptor;
.super Ljava/lang/Object;
.source "AssetFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;,
        Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;,
        Landroid/content/res/AssetFileDescriptor$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_LENGTH:J = -0x1L


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mFd:Landroid/os/ParcelFileDescriptor;

.field private final mLength:J

.field private final mStartOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 370
    new-instance v0, Landroid/content/res/AssetFileDescriptor$1;

    #@2
    invoke-direct {v0}, Landroid/content/res/AssetFileDescriptor$1;-><init>()V

    #@5
    .line 369
    sput-object v0, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 359
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    #@b
    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    #@d
    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    #@13
    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    #@19
    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    #@25
    .line 358
    :goto_0
    return-void

    #@26
    .line 365
    :cond_0
    const/4 v0, 0x0

    #@27
    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    #@29
    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;JJ)V
    .locals 8
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "startOffset"    # J
    .param p4, "length"    # J

    #@0
    .prologue
    .line 59
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-wide v2, p2

    #@4
    move-wide v4, p4

    #@5
    invoke-direct/range {v0 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    #@8
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V
    .locals 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "startOffset"    # J
    .param p4, "length"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 75
    if-nez p1, :cond_0

    #@7
    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "fd must not be null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 78
    :cond_0
    cmp-long v0, p4, v2

    #@12
    if-gez v0, :cond_1

    #@14
    cmp-long v0, p2, v2

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    .line 80
    const-string/jumbo v1, "startOffset must be 0 when using UNKNOWN_LENGTH"

    #@1d
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 82
    :cond_1
    iput-object p1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    #@23
    .line 83
    iput-wide p2, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    #@25
    .line 84
    iput-wide p4, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    #@27
    .line 85
    iput-object p6, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    #@29
    .line 74
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    #@2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    #@5
    .line 155
    return-void
.end method

.method public createInputStream()Ljava/io/FileInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 169
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    #@a
    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    #@c
    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@f
    return-object v0

    #@10
    .line 171
    :cond_0
    new-instance v0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;

    #@12
    invoke-direct {v0, p0}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    #@15
    return-object v0
.end method

.method public createOutputStream()Ljava/io/FileOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 184
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    #@a
    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    #@c
    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@f
    return-object v0

    #@10
    .line 186
    :cond_0
    new-instance v0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;

    #@12
    invoke-direct {v0, p0}, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    #@15
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    #@2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDeclaredLength()J
    .locals 2

    #@0
    .prologue
    .line 148
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    #@2
    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    #@2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLength()J
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 132
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    #@4
    cmp-long v2, v2, v4

    #@6
    if-ltz v2, :cond_0

    #@8
    .line 133
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    #@a
    return-wide v2

    #@b
    .line 135
    :cond_0
    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    #@d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    #@10
    move-result-wide v0

    #@11
    .line 136
    .local v0, "len":J
    cmp-long v2, v0, v4

    #@13
    if-ltz v2, :cond_1

    #@15
    .end local v0    # "len":J
    :goto_0
    return-wide v0

    #@16
    .restart local v0    # "len":J
    :cond_1
    const-wide/16 v0, -0x1

    #@18
    goto :goto_0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    #@2
    return-object v0
.end method

.method public getStartOffset()J
    .locals 2

    #@0
    .prologue
    .line 109
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    #@2
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{AssetFileDescriptor: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 192
    const-string/jumbo v1, " start="

    #@15
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 192
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    #@1b
    .line 191
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 192
    const-string/jumbo v1, " len="

    #@22
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 192
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    #@28
    .line 191
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 192
    const-string/jumbo v1, "}"

    #@2f
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 348
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 349
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 350
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 351
    const/4 v0, 0x1

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 352
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1c
    .line 346
    :goto_0
    return-void

    #@1d
    .line 354
    :cond_0
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    goto :goto_0
.end method
