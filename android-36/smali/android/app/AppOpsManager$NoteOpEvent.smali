.class public final Landroid/app/AppOpsManager$NoteOpEvent;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoteOpEvent"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDuration:J

.field private blacklist mNoteTime:J

.field private blacklist mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 1

    iget-object p0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProxy(Landroid/app/AppOpsManager$NoteOpEvent;Landroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4109
    new-instance v0, Landroid/app/AppOpsManager$NoteOpEvent$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$NoteOpEvent$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$NoteOpEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 15
    .param p1, "noteTime"    # J
    .param p3, "duration"    # J
    .param p5, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 4027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4028
    iput-wide p1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    .line 4029
    const-class v0, Landroid/annotation/IntRange;

    iget-wide v2, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    const-string v4, "from"

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 4032
    move-wide v0, p3

    iput-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 4033
    const-class v2, Landroid/annotation/IntRange;

    iget-wide v4, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    const-string v6, "from"

    const-wide/16 v7, -0x1

    const/4 v3, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 4036
    move-object v2, p5

    iput-object v2, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 4039
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/AppOpsManager$NoteOpEvent;)V
    .registers 8
    .param p1, "original"    # Landroid/app/AppOpsManager$NoteOpEvent;

    .line 3994
    iget-wide v1, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    iget-wide v3, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 3995
    iget-object v0, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v0, :cond_10

    new-instance v0, Landroid/app/AppOpsManager$OpEventProxyInfo;

    iget-object v5, p1, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-direct {v0, v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    move-object v5, v0

    .line 3994
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 3996
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 24
    .param p1, "in"    # Landroid/os/Parcel;

    .line 4086
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4090
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 4091
    .local v1, "flg":B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 4092
    .local v2, "noteTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 4093
    .local v4, "duration":J
    and-int/lit8 v6, v1, 0x4

    if-nez v6, :cond_19

    const/4 v6, 0x0

    move-object/from16 v7, p1

    goto :goto_23

    :cond_19
    sget-object v6, Landroid/app/AppOpsManager$OpEventProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 4095
    .local v6, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :goto_23
    iput-wide v2, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    .line 4096
    const-class v8, Landroid/annotation/IntRange;

    iget-wide v10, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    const-string v12, "from"

    const-wide/16 v13, 0x0

    const/4 v9, 0x0

    invoke-static/range {v8 .. v14}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 4099
    iput-wide v4, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 4100
    const-class v15, Landroid/annotation/IntRange;

    iget-wide v8, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    const-string v19, "from"

    const-wide/16 v20, -0x1

    const/16 v16, 0x0

    move-wide/from16 v17, v8

    invoke-static/range {v15 .. v21}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 4103
    iput-object v6, v0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 4106
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 4081
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 4054
    iget-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    return-wide v0
.end method

.method public blacklist getNoteTime()J
    .registers 3

    .line 4046
    iget-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    return-wide v0
.end method

.method public blacklist getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 2

    .line 4062
    iget-object v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object v0
.end method

.method public blacklist reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V
    .registers 16
    .param p1, "noteTime"    # J
    .param p3, "duration"    # J
    .param p5, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            "Landroid/util/Pools$Pool<",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            ">;)V"
        }
    .end annotation

    .line 3978
    .local p6, "proxyPool":Landroid/util/Pools$Pool;, "Landroid/util/Pools$Pool<Landroid/app/AppOpsManager$OpEventProxyInfo;>;"
    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    .line 3979
    const-wide v6, 0x7fffffffffffffffL

    const-string v8, "duration"

    const-wide/16 v4, -0x1

    move-wide v2, p3

    .end local p3    # "duration":J
    .local v2, "duration":J
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide p3

    iput-wide p3, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    .line 3982
    iget-object p3, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz p3, :cond_1f

    .line 3983
    iget-object p3, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-interface {p6, p3}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 3985
    :cond_1f
    iput-object p5, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 3986
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4071
    const/4 v0, 0x0

    .line 4072
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 4073
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 4074
    iget-wide v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mNoteTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 4075
    iget-wide v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 4076
    iget-object v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/app/AppOpsManager$NoteOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4077
    :cond_1e
    return-void
.end method
