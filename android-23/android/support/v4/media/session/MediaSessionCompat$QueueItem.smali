.class public final Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueueItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_ID:I = -0x1


# instance fields
.field private final mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field private final mId:J

.field private mItem:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 871
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$1;

    #@2
    invoke-direct {v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$1;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 772
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 807
    sget-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;

    #@b
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    #@d
    .line 808
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mId:J

    #@13
    .line 806
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V
    .locals 2
    .param p1, "description"    # Landroid/support/v4/media/MediaDescriptionCompat;
    .param p2, "id"    # J

    #@0
    .prologue
    .line 791
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Ljava/lang/Object;Landroid/support/v4/media/MediaDescriptionCompat;J)V

    #@4
    .line 790
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Landroid/support/v4/media/MediaDescriptionCompat;J)V
    .locals 3
    .param p1, "queueItem"    # Ljava/lang/Object;
    .param p2, "description"    # Landroid/support/v4/media/MediaDescriptionCompat;
    .param p3, "id"    # J

    #@0
    .prologue
    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 795
    if-nez p2, :cond_0

    #@5
    .line 796
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Description cannot be null."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 798
    :cond_0
    const-wide/16 v0, -0x1

    #@10
    cmp-long v0, p3, v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 799
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "Id cannot be QueueItem.UNKNOWN_ID"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 801
    :cond_1
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    #@1f
    .line 802
    iput-wide p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mId:J

    #@21
    .line 803
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mItem:Ljava/lang/Object;

    #@23
    .line 794
    return-void
.end method

.method public static obtain(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    .locals 5
    .param p0, "queueItem"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 863
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$QueueItem;->getDescription(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    .line 864
    .local v1, "descriptionObj":Ljava/lang/Object;
    invoke-static {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->fromMediaDescription(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;

    #@7
    move-result-object v0

    #@8
    .line 866
    .local v0, "description":Landroid/support/v4/media/MediaDescriptionCompat;
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$QueueItem;->getQueueId(Ljava/lang/Object;)J

    #@b
    move-result-wide v2

    #@c
    .line 867
    .local v2, "id":J
    new-instance v4, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    #@e
    invoke-direct {v4, p0, v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Ljava/lang/Object;Landroid/support/v4/media/MediaDescriptionCompat;J)V

    #@11
    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 833
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDescription()Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 1

    #@0
    .prologue
    .line 815
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    #@2
    return-object v0
.end method

.method public getQueueId()J
    .locals 2

    #@0
    .prologue
    .line 822
    iget-wide v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mId:J

    #@2
    return-wide v0
.end method

.method public getQueueItem()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 847
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mItem:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v1, 0x15

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 848
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mItem:Ljava/lang/Object;

    #@c
    return-object v0

    #@d
    .line 850
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    #@f
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaDescription()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 851
    iget-wide v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mId:J

    #@15
    .line 850
    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21$QueueItem;->createItem(Ljava/lang/Object;J)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mItem:Ljava/lang/Object;

    #@1b
    .line 852
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mItem:Ljava/lang/Object;

    #@1d
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "MediaSession.QueueItem {Description="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 887
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    #@e
    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 888
    const-string/jumbo v1, ", Id="

    #@15
    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 888
    iget-wide v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mId:J

    #@1b
    .line 886
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 888
    const-string/jumbo v1, " }"

    #@22
    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 827
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 828
    iget-wide v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mId:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 826
    return-void
.end method
