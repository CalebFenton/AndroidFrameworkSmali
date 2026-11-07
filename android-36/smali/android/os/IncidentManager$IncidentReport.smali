.class public Landroid/os/IncidentManager$IncidentReport;
.super Ljava/lang/Object;
.source "IncidentManager.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncidentReport"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/IncidentManager$IncidentReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mPrivacyPolicy:I

.field private final blacklist mTimestampNs:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 372
    new-instance v0, Landroid/os/IncidentManager$IncidentReport$1;

    invoke-direct {v0}, Landroid/os/IncidentManager$IncidentReport$1;-><init>()V

    sput-object v0, Landroid/os/IncidentManager$IncidentReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/IncidentManager$IncidentReport;->mTimestampNs:J

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/IncidentManager$IncidentReport;->mPrivacyPolicy:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 300
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_23

    .line 302
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 304
    :goto_23
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 311
    :try_start_0
    iget-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_c

    .line 312
    iget-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 316
    :cond_c
    goto :goto_e

    .line 315
    :catch_d
    move-exception v0

    .line 317
    :goto_e
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 352
    iget-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_6

    .line 343
    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_6
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public whitelist getPrivacyPolicy()J
    .registers 3

    .line 335
    iget v0, p0, Landroid/os/IncidentManager$IncidentReport;->mPrivacyPolicy:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getTimestamp()J
    .registers 5

    .line 324
    iget-wide v0, p0, Landroid/os/IncidentManager$IncidentReport;->mTimestampNs:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 359
    iget-wide v0, p0, Landroid/os/IncidentManager$IncidentReport;->mTimestampNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 360
    iget v0, p0, Landroid/os/IncidentManager$IncidentReport;->mPrivacyPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_18

    .line 362
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c

    .line 365
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    :goto_1c
    return-void
.end method
