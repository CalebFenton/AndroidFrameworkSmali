.class public final Landroid/app/timedetector/TimeSuggestionHelper;
.super Ljava/lang/Object;
.source "TimeSuggestionHelper.java"


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

.field private final blacklist mHelpedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist mUnixEpochTime:Landroid/app/time/UnixEpochTime;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Landroid/app/time/UnixEpochTime;)V
    .registers 4
    .param p2, "unixEpochTime"    # Landroid/app/time/UnixEpochTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/app/time/UnixEpochTime;",
            ")V"
        }
    .end annotation

    .line 59
    .local p1, "helpedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mHelpedClass:Ljava/lang/Class;

    .line 61
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/UnixEpochTime;

    iput-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 62
    return-void
.end method

.method public static blacklist handleCreateFromParcel(Ljava/lang/Class;Landroid/os/Parcel;)Landroid/app/timedetector/TimeSuggestionHelper;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/app/timedetector/TimeSuggestionHelper;"
        }
    .end annotation

    .line 148
    .local p0, "helpedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/app/time/UnixEpochTime;

    .line 149
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/UnixEpochTime;

    .line 150
    .local v0, "unixEpochTime":Landroid/app/time/UnixEpochTime;
    new-instance v2, Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-direct {v2, p0, v0}, Landroid/app/timedetector/TimeSuggestionHelper;-><init>(Ljava/lang/Class;Landroid/app/time/UnixEpochTime;)V

    .line 152
    .local v2, "suggestionHelper":Landroid/app/timedetector/TimeSuggestionHelper;
    const-class v3, Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v2, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    .line 153
    return-object v2
.end method

.method public static blacklist handleParseCommandLineArg(Ljava/lang/Class;Landroid/os/ShellCommand;)Landroid/app/timedetector/TimeSuggestionHelper;
    .registers 10
    .param p1, "cmd"    # Landroid/os/ShellCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/ShellCommand;",
            ")",
            "Landroid/app/timedetector/TimeSuggestionHelper;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 166
    .local p0, "helpedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 167
    .local v0, "elapsedRealtimeMillis":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 169
    .local v1, "unixEpochTimeMillis":Ljava/lang/Long;
    :goto_2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_67

    .line 170
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_94

    :cond_10
    goto :goto_2f

    :sswitch_11
    const-string v2, "--unix_epoch_time"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x2

    goto :goto_30

    :sswitch_1b
    const-string v2, "--elapsed_realtime"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_30

    :sswitch_25
    const-string v2, "--reference_time"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    goto :goto_30

    :goto_2f
    const/4 v2, -0x1

    :goto_30
    packed-switch v2, :pswitch_data_a2

    .line 181
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :pswitch_4c
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 178
    goto :goto_66

    .line 173
    :pswitch_59
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 174
    nop

    .line 183
    :goto_66
    goto :goto_2

    .line 186
    :cond_67
    if-eqz v0, :cond_8b

    .line 189
    if-eqz v1, :cond_83

    .line 193
    new-instance v2, Landroid/app/time/UnixEpochTime;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 194
    .local v2, "timeSignal":Landroid/app/time/UnixEpochTime;
    new-instance v4, Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-direct {v4, p0, v2}, Landroid/app/timedetector/TimeSuggestionHelper;-><init>(Ljava/lang/Class;Landroid/app/time/UnixEpochTime;)V

    .line 195
    .local v4, "suggestionHelper":Landroid/app/timedetector/TimeSuggestionHelper;
    const-string v5, "Command line injection"

    invoke-virtual {v4, v5}, Landroid/app/timedetector/TimeSuggestionHelper;->addDebugInfo(Ljava/lang/String;)V

    .line 196
    return-object v4

    .line 190
    .end local v2    # "timeSignal":Landroid/app/time/UnixEpochTime;
    .end local v4    # "suggestionHelper":Landroid/app/timedetector/TimeSuggestionHelper;
    :cond_83
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "No unixEpochTimeMillis specified."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_8b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "No referenceTimeMillis specified."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_94
    .sparse-switch
        0xf650e1 -> :sswitch_25
        0x2e13e6e -> :sswitch_1b
        0x18745a3a -> :sswitch_11
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_59
        :pswitch_59
        :pswitch_4c
    .end packed-switch
.end method

.method public static blacklist handlePrintCommandLineOpts(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 202
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "%s suggestion options:\n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 203
    const-string v0, "  --elapsed_realtime <elapsed realtime millis> - the elapsed realtime millis when unix epoch time was read"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    const-string v0, "  --unix_epoch_time <Unix epoch time millis>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for more information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    return-void
.end method


# virtual methods
.method public blacklist addDebugInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "debugInfo"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    .line 86
    :cond_b
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
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

    .line 104
    .local p1, "debugInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    .line 107
    :cond_f
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    return-void
.end method

.method public varargs blacklist addDebugInfo([Ljava/lang/String;)V
    .registers 3
    .param p1, "debugInfos"    # [Ljava/lang/String;

    .line 95
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/timedetector/TimeSuggestionHelper;->addDebugInfo(Ljava/util/List;)V

    .line 96
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    if-ne p0, p1, :cond_4

    .line 116
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_4
    if-eqz p1, :cond_19

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_19

    .line 121
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/timedetector/TimeSuggestionHelper;

    .line 122
    .local v0, "that":Landroid/app/timedetector/TimeSuggestionHelper;
    invoke-virtual {p0, v0}, Landroid/app/timedetector/TimeSuggestionHelper;->handleEquals(Landroid/app/timedetector/TimeSuggestionHelper;)Z

    move-result v1

    return v1

    .line 119
    .end local v0    # "that":Landroid/app/timedetector/TimeSuggestionHelper;
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0
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

    .line 73
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 73
    :goto_f
    return-object v0
.end method

.method public blacklist getUnixEpochTime()Landroid/app/time/UnixEpochTime;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    return-object v0
.end method

.method public blacklist handleEquals(Landroid/app/timedetector/TimeSuggestionHelper;)Z
    .registers 4
    .param p1, "o"    # Landroid/app/timedetector/TimeSuggestionHelper;

    .line 127
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mHelpedClass:Ljava/lang/Class;

    iget-object v1, p1, Landroid/app/timedetector/TimeSuggestionHelper;->mHelpedClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    iget-object v1, p1, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 128
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 127
    :goto_17
    return v0
.end method

.method public blacklist handleToString()Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mHelpedClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{mUnixEpochTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist handleWriteToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 158
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 159
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 160
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
