.class public final Landroid/media/session/MediaSession$QueueItem;
.super Ljava/lang/Object;
.source "MediaSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueueItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSession$QueueItem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_ID:I = -0x1


# instance fields
.field private final mDescription:Landroid/media/MediaDescription;

.field private final mId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1123
    new-instance v0, Landroid/media/session/MediaSession$QueueItem$1;

    #@2
    invoke-direct {v0}, Landroid/media/session/MediaSession$QueueItem$1;-><init>()V

    #@5
    sput-object v0, Landroid/media/session/MediaSession$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1066
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaDescription;J)V
    .locals 2
    .param p1, "description"    # Landroid/media/MediaDescription;
    .param p2, "id"    # J

    #@0
    .prologue
    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1083
    if-nez p1, :cond_0

    #@5
    .line 1084
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Description cannot be null."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1086
    :cond_0
    const-wide/16 v0, -0x1

    #@10
    cmp-long v0, p2, v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 1087
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "Id cannot be QueueItem.UNKNOWN_ID"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 1089
    :cond_1
    iput-object p1, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    #@1f
    .line 1090
    iput-wide p2, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    #@21
    .line 1082
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1094
    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/media/MediaDescription;

    #@b
    iput-object v0, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    #@d
    .line 1095
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    #@13
    .line 1093
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/session/MediaSession$QueueItem;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession$QueueItem;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1120
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDescription()Landroid/media/MediaDescription;
    .locals 1

    #@0
    .prologue
    .line 1102
    iget-object v0, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    #@2
    return-object v0
.end method

.method public getQueueId()J
    .locals 2

    #@0
    .prologue
    .line 1109
    iget-wide v0, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    #@2
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1138
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
    .line 1139
    iget-object v1, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    #@e
    .line 1138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 1140
    const-string/jumbo v1, ", Id="

    #@15
    .line 1138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 1140
    iget-wide v2, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    #@1b
    .line 1138
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 1140
    const-string/jumbo v1, " }"

    #@22
    .line 1138
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
    .line 1114
    iget-object v0, p0, Landroid/media/session/MediaSession$QueueItem;->mDescription:Landroid/media/MediaDescription;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 1115
    iget-wide v0, p0, Landroid/media/session/MediaSession$QueueItem;->mId:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 1113
    return-void
.end method
