.class public Landroid/app/ProfilerInfo;
.super Ljava/lang/Object;
.source "ProfilerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CLOCK_TYPE_DEFAULT:I = 0x0

.field public static final blacklist CLOCK_TYPE_DUAL:I = 0x110

.field public static final blacklist CLOCK_TYPE_THREAD_CPU:I = 0x100

.field public static final blacklist CLOCK_TYPE_WALL:I = 0x10

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ProfilerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist OUTPUT_VERSION_DEFAULT:I = 0x1

.field public static final blacklist PROFILE_TYPE_LOW_OVERHEAD:I = 0x1

.field public static final blacklist PROFILE_TYPE_REGULAR:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ProfilerInfo"

.field public static final blacklist TRACE_FORMAT_VERSION_SHIFT:I = 0x1


# instance fields
.field public final greylist-max-o agent:Ljava/lang/String;

.field public final greylist-max-o attachAgentDuringBind:Z

.field public final greylist-max-o autoStopProfiler:Z

.field public final blacklist clockType:I

.field public greylist-max-o profileFd:Landroid/os/ParcelFileDescriptor;

.field public final greylist-max-o profileFile:Ljava/lang/String;

.field public final blacklist profilerOutputVersion:I

.field public final greylist-max-o samplingInterval:I

.field public final greylist-max-o streamingOutput:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 228
    new-instance v0, Landroid/app/ProfilerInfo$1;

    invoke-direct {v0}, Landroid/app/ProfilerInfo$1;-><init>()V

    sput-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/ProfilerInfo;)V
    .registers 3
    .param p1, "in"    # Landroid/app/ProfilerInfo;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 118
    iget v0, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 119
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 120
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 121
    iget-object v0, p1, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 122
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 123
    iget v0, p1, Landroid/app/ProfilerInfo;->clockType:I

    iput v0, p0, Landroid/app/ProfilerInfo;->clockType:I

    .line 124
    iget v0, p1, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    iput v0, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    .line 125
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    iput-boolean v1, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProfilerInfo;->clockType:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    .line 251
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ProfilerInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ProfilerInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "interval"    # I
    .param p4, "autoStop"    # Z
    .param p5, "streaming"    # Z
    .param p6, "agent"    # Ljava/lang/String;
    .param p7, "attachAgentDuringBind"    # Z
    .param p8, "clockType"    # I
    .param p9, "profilerOutputVersion"    # I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 106
    iput p3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 107
    iput-boolean p4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 108
    iput-boolean p5, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 109
    iput p8, p0, Landroid/app/ProfilerInfo;->clockType:I

    .line 110
    iput-object p6, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 111
    iput-boolean p7, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 112
    iput p9, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    .line 113
    return-void
.end method

.method public static blacklist getClockTypeFromString(Ljava/lang/String;)I
    .registers 2
    .param p0, "type"    # Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "thread-cpu"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 135
    const/16 v0, 0x100

    return v0

    .line 136
    :cond_c
    const-string/jumbo v0, "wall"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 137
    const/16 v0, 0x10

    return v0

    .line 138
    :cond_18
    const-string v0, "dual"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 139
    const/16 v0, 0x110

    return v0

    .line 141
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getFlagsForOutputVersion(I)I
    .registers 3
    .param p0, "version"    # I

    .line 152
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    .line 153
    :cond_6
    const/4 p0, 0x1

    .line 158
    :cond_7
    add-int/lit8 v1, p0, -0x1

    shl-int/lit8 v0, v1, 0x1

    return v0
.end method


# virtual methods
.method public greylist-max-o closeFd()V
    .registers 4

    .line 175
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_15

    .line 177
    :try_start_4
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 180
    goto :goto_12

    .line 178
    :catch_a
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ProfilerInfo"

    const-string v2, "Failure closing profile fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 183
    :cond_15
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    return v0

    .line 190
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 214
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 215
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 216
    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_20

    .line 217
    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 219
    :cond_20
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 220
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 221
    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 222
    const-wide v2, 0x10900000006L

    iget-object v4, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 223
    const-wide v2, 0x10500000007L

    iget v4, p0, Landroid/app/ProfilerInfo;->clockType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 224
    const-wide v2, 0x10500000008L

    iget v4, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 225
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 226
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 255
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 256
    return v0

    .line 258
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4a

    .line 261
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/ProfilerInfo;

    .line 263
    .local v2, "other":Landroid/app/ProfilerInfo;
    iget-object v3, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-boolean v3, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iget-boolean v4, v2, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    if-ne v3, v4, :cond_48

    iget v3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iget v4, v2, Landroid/app/ProfilerInfo;->samplingInterval:I

    if-ne v3, v4, :cond_48

    iget-boolean v3, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iget-boolean v4, v2, Landroid/app/ProfilerInfo;->streamingOutput:Z

    if-ne v3, v4, :cond_48

    iget-object v3, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 266
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget v3, p0, Landroid/app/ProfilerInfo;->clockType:I

    iget v4, v2, Landroid/app/ProfilerInfo;->clockType:I

    if-ne v3, v4, :cond_48

    iget v3, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    iget v4, v2, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    if-ne v3, v4, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    .line 263
    :goto_49
    return v0

    .line 259
    .end local v2    # "other":Landroid/app/ProfilerInfo;
    :cond_4a
    :goto_4a
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 273
    const/16 v0, 0x11

    .line 274
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 275
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    add-int/2addr v0, v2

    .line 276
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    add-int/2addr v1, v2

    .line 277
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    add-int/2addr v0, v2

    .line 278
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 279
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ProfilerInfo;->clockType:I

    add-int/2addr v0, v2

    .line 280
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    add-int/2addr v1, v2

    .line 281
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public greylist-max-o setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;
    .registers 13
    .param p1, "agent"    # Ljava/lang/String;
    .param p2, "attachAgentDuringBind"    # Z

    .line 166
    new-instance v0, Landroid/app/ProfilerInfo;

    iget-object v1, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget v3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iget-boolean v4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iget-boolean v5, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iget v8, p0, Landroid/app/ProfilerInfo;->clockType:I

    iget v9, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    move-object v6, p1

    move v7, p2

    .end local p1    # "agent":Ljava/lang/String;
    .end local p2    # "attachAgentDuringBind":Z
    .local v6, "agent":Ljava/lang/String;
    .local v7, "attachAgentDuringBind":Z
    invoke-direct/range {v0 .. v9}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 196
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_13

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 201
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    :goto_17
    iget v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 208
    iget v0, p0, Landroid/app/ProfilerInfo;->clockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    return-void
.end method
