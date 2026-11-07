.class public final Landroid/app/timedetector/TelephonyTimeSuggestion;
.super Ljava/lang/Object;
.source "TelephonyTimeSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timedetector/TelephonyTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDebugInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSlotIndex:I

.field private final blacklist mUnixEpochTime:Landroid/app/time/UnixEpochTime;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 1

    invoke-static {p0}, Landroid/app/timedetector/TelephonyTimeSuggestion;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Landroid/app/timedetector/TelephonyTimeSuggestion$1;

    invoke-direct {v0}, Landroid/app/timedetector/TelephonyTimeSuggestion$1;-><init>()V

    sput-object v0, Landroid/app/timedetector/TelephonyTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->-$$Nest$fgetmSlotIndex(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    .line 75
    invoke-static {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->-$$Nest$fgetmUnixEpochTime(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Landroid/app/time/UnixEpochTime;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 76
    invoke-static {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->-$$Nest$fgetmDebugInfo(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->-$$Nest$fgetmDebugInfo(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;Landroid/app/timedetector/TelephonyTimeSuggestion-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;-><init>(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)V

    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 6
    .param p0, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, "slotIndex":I
    const-class v1, Landroid/app/time/UnixEpochTime;

    .line 82
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/time/UnixEpochTime;

    .line 83
    .local v1, "unixEpochTime":Landroid/app/time/UnixEpochTime;
    new-instance v3, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    invoke-direct {v3, v0}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;-><init>(I)V

    .line 84
    invoke-virtual {v3, v1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->setUnixEpochTime(Landroid/app/time/UnixEpochTime;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->build()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v3

    .line 87
    .local v3, "suggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    const-class v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 89
    .local v2, "debugInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_25

    .line 90
    invoke-virtual {v3, v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->addDebugInfo(Ljava/util/List;)V

    .line 92
    :cond_25
    return-object v3
.end method

.method public static blacklist parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 10
    .param p0, "cmd"    # Landroid/os/ShellCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "slotIndex":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 100
    .local v1, "elapsedRealtimeMillis":Ljava/lang/Long;
    const/4 v2, 0x0

    .line 102
    .local v2, "unixEpochTimeMillis":Ljava/lang/Long;
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_7f

    .line 103
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_c2

    :cond_11
    goto :goto_3a

    :sswitch_12
    const-string v3, "--slot_index"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    goto :goto_3b

    :sswitch_1c
    const-string v3, "--unix_epoch_time"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x3

    goto :goto_3b

    :sswitch_26
    const-string v3, "--elapsed_realtime"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x2

    goto :goto_3b

    :sswitch_30
    const-string v3, "--reference_time"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    goto :goto_3b

    :goto_3a
    const/4 v3, -0x1

    :goto_3b
    packed-switch v3, :pswitch_data_d4

    .line 118
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :pswitch_57
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 115
    goto :goto_7e

    .line 110
    :pswitch_64
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 111
    goto :goto_7e

    .line 105
    :pswitch_71
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 106
    nop

    .line 120
    :goto_7e
    goto :goto_3

    .line 123
    :cond_7f
    if-eqz v0, :cond_ba

    .line 126
    if-eqz v1, :cond_b2

    .line 129
    if-eqz v2, :cond_aa

    .line 133
    new-instance v3, Landroid/app/time/UnixEpochTime;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 134
    .local v3, "timeSignal":Landroid/app/time/UnixEpochTime;
    new-instance v5, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;-><init>(I)V

    .line 135
    invoke-virtual {v5, v3}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->setUnixEpochTime(Landroid/app/time/UnixEpochTime;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    move-result-object v5

    .line 136
    const-string v6, "Command line injection"

    invoke-virtual {v5, v6}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    move-result-object v5

    .line 137
    .local v5, "builder":Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
    invoke-virtual {v5}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->build()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v6

    return-object v6

    .line 130
    .end local v3    # "timeSignal":Landroid/app/time/UnixEpochTime;
    .end local v5    # "builder":Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
    :cond_aa
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "No unixEpochTimeMillis specified."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_b2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "No elapsedRealtimeMillis specified."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_ba
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "No slotIndex specified."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_c2
    .sparse-switch
        0xf650e1 -> :sswitch_30
        0x2e13e6e -> :sswitch_26
        0x18745a3a -> :sswitch_1c
        0x7b56fcf1 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_71
        :pswitch_64
        :pswitch_64
        :pswitch_57
    .end packed-switch
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 142
    const-string v0, "Telephony suggestion options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    const-string v0, "  --slot_index <number>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    const-string v0, "  --elapsed_realtime <elapsed realtime millis>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    const-string v0, "  --unix_epoch_time <Unix epoch time millis>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/app/timedetector/TelephonyTimeSuggestion;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for more information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    return-void
.end method


# virtual methods
.method public blacklist addDebugInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "debugInfo"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    .line 201
    :cond_b
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public blacklist addDebugInfo(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p1, "debugInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    .line 213
    :cond_f
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 218
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 219
    return v0

    .line 221
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 224
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 225
    .local v2, "that":Landroid/app/timedetector/TelephonyTimeSuggestion;
    iget v3, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    iget v4, v2, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    iget-object v4, v2, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 226
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    .line 225
    :goto_27
    return v0

    .line 222
    .end local v2    # "that":Landroid/app/timedetector/TelephonyTimeSuggestion;
    :cond_28
    :goto_28
    return v1
.end method

.method public blacklist getDebugInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 188
    :goto_f
    return-object v0
.end method

.method public blacklist getSlotIndex()I
    .registers 2

    .line 168
    iget v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    return v0
.end method

.method public blacklist getUnixEpochTime()Landroid/app/time/UnixEpochTime;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 231
    iget v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyTimeSuggestion{mSlotIndex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnixEpochTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 157
    iget v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 159
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 160
    return-void
.end method
