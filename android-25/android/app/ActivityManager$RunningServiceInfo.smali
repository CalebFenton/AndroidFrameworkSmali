.class public Landroid/app/ActivityManager$RunningServiceInfo;
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
    name = "RunningServiceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$RunningServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_FOREGROUND:I = 0x2

.field public static final FLAG_PERSISTENT_PROCESS:I = 0x8

.field public static final FLAG_STARTED:I = 0x1

.field public static final FLAG_SYSTEM_PROCESS:I = 0x4


# instance fields
.field public activeSince:J

.field public clientCount:I

.field public clientLabel:I

.field public clientPackage:Ljava/lang/String;

.field public crashCount:I

.field public flags:I

.field public foreground:Z

.field public lastActivityTime:J

.field public pid:I

.field public process:Ljava/lang/String;

.field public restarting:J

.field public service:Landroid/content/ComponentName;

.field public started:Z

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2216
    new-instance v0, Landroid/app/ActivityManager$RunningServiceInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$RunningServiceInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/ActivityManager$RunningServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 2071
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2226
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningServiceInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 2225
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$RunningServiceInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 2179
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2200
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    #@8
    .line 2201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v0

    #@c
    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    #@e
    .line 2202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    #@14
    .line 2203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    #@1a
    .line 2204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    move v0, v1

    #@21
    :goto_0
    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    #@23
    .line 2205
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@26
    move-result-wide v4

    #@27
    iput-wide v4, p0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    #@29
    .line 2206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    :goto_1
    iput-boolean v1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    #@31
    .line 2207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    #@37
    .line 2208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    #@3d
    .line 2209
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@40
    move-result-wide v0

    #@41
    iput-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    #@43
    .line 2210
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@46
    move-result-wide v0

    #@47
    iput-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    #@49
    .line 2211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v0

    #@4d
    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@4f
    .line 2212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    #@55
    .line 2213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v0

    #@59
    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    #@5b
    .line 2199
    return-void

    #@5c
    :cond_0
    move v0, v2

    #@5d
    .line 2204
    goto :goto_0

    #@5e
    :cond_1
    move v1, v2

    #@5f
    .line 2206
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2183
    iget-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    #@4
    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@7
    .line 2184
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 2185
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 2186
    iget-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 2187
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    move v0, v1

    #@1b
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 2188
    iget-wide v4, p0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    #@20
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@23
    .line 2189
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    #@25
    if-eqz v0, :cond_1

    #@27
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 2190
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    #@2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 2191
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    #@31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 2192
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    #@36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@39
    .line 2193
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    #@3b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@3e
    .line 2194
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    #@40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 2195
    iget-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    #@45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@48
    .line 2196
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    #@4a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 2182
    return-void

    #@4e
    :cond_0
    move v0, v2

    #@4f
    .line 2187
    goto :goto_0

    #@50
    :cond_1
    move v1, v2

    #@51
    .line 2189
    goto :goto_1
.end method
