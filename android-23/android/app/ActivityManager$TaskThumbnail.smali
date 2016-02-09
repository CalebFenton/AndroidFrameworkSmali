.class public Landroid/app/ActivityManager$TaskThumbnail;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskThumbnail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$TaskThumbnail$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$TaskThumbnail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mainThumbnail:Landroid/graphics/Bitmap;

.field public thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1378
    new-instance v0, Landroid/app/ActivityManager$TaskThumbnail$1;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$TaskThumbnail$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/ActivityManager$TaskThumbnail;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1336
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1388
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskThumbnail;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 1387
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$TaskThumbnail;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskThumbnail;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1344
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1345
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 1347
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1367
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/graphics/Bitmap;

    #@f
    iput-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    #@11
    .line 1371
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 1372
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    #@1f
    iput-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@21
    .line 1365
    :goto_1
    return-void

    #@22
    .line 1369
    :cond_0
    iput-object v1, p0, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    #@24
    goto :goto_0

    #@25
    .line 1374
    :cond_1
    iput-object v1, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@27
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1351
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1352
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 1353
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    #@b
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 1357
    :goto_0
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1358
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1359
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@17
    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 1350
    :goto_1
    return-void

    #@1b
    .line 1355
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    goto :goto_0

    #@1f
    .line 1361
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    goto :goto_1
.end method
