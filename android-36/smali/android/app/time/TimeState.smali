.class public final Landroid/app/time/TimeState;
.super Ljava/lang/Object;
.source "TimeState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mUnixEpochTime:Landroid/app/time/UnixEpochTime;

.field private final blacklist mUserShouldConfirmTime:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeState;
    .registers 1

    invoke-static {p0}, Landroid/app/time/TimeState;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeState;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/app/time/TimeState$1;

    invoke-direct {v0}, Landroid/app/time/TimeState$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/time/UnixEpochTime;Z)V
    .registers 4
    .param p1, "unixEpochTime"    # Landroid/app/time/UnixEpochTime;
    .param p2, "userShouldConfirmTime"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/UnixEpochTime;

    iput-object v0, p0, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 61
    iput-boolean p2, p0, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    .line 62
    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeState;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 65
    const/4 v0, 0x0

    const-class v1, Landroid/app/time/UnixEpochTime;

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/UnixEpochTime;

    .line 66
    .local v0, "unixEpochTime":Landroid/app/time/UnixEpochTime;
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 67
    .local v1, "userShouldConfirmId":Z
    new-instance v2, Landroid/app/time/TimeState;

    invoke-direct {v2, v0, v1}, Landroid/app/time/TimeState;-><init>(Landroid/app/time/UnixEpochTime;Z)V

    return-object v2
.end method

.method public static blacklist parseCommandLineArgs(Landroid/os/ShellCommand;)Landroid/app/time/TimeState;
    .registers 10
    .param p0, "cmd"    # Landroid/os/ShellCommand;

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "elapsedRealtimeMillis":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 81
    .local v1, "unixEpochTimeMillis":Ljava/lang/Long;
    const/4 v2, 0x0

    .line 83
    .local v2, "userShouldConfirmTime":Ljava/lang/Boolean;
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_75

    .line 84
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_aa

    :cond_11
    goto :goto_30

    :sswitch_12
    const-string v3, "--user_should_confirm_time"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x2

    goto :goto_31

    :sswitch_1c
    const-string v3, "--unix_epoch_time"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    goto :goto_31

    :sswitch_26
    const-string v3, "--elapsed_realtime"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    goto :goto_31

    :goto_30
    const/4 v3, -0x1

    :goto_31
    packed-switch v3, :pswitch_data_b8

    .line 98
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

    .line 94
    :pswitch_4d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 95
    goto :goto_74

    .line 90
    :pswitch_5a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 91
    goto :goto_74

    .line 86
    :pswitch_67
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 87
    nop

    .line 100
    :goto_74
    goto :goto_3

    .line 103
    :cond_75
    if-eqz v0, :cond_a2

    .line 106
    if-eqz v1, :cond_9a

    .line 109
    if-eqz v2, :cond_92

    .line 113
    new-instance v3, Landroid/app/time/UnixEpochTime;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 114
    .local v3, "unixEpochTime":Landroid/app/time/UnixEpochTime;
    new-instance v5, Landroid/app/time/TimeState;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {v5, v3, v6}, Landroid/app/time/TimeState;-><init>(Landroid/app/time/UnixEpochTime;Z)V

    return-object v5

    .line 110
    .end local v3    # "unixEpochTime":Landroid/app/time/UnixEpochTime;
    :cond_92
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "No userShouldConfirmTime specified."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_9a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "No unixEpochTimeMillis specified."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    :cond_a2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "No elapsedRealtimeMillis specified."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_aa
    .sparse-switch
        0x2e13e6e -> :sswitch_26
        0x18745a3a -> :sswitch_1c
        0x27929724 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_67
        :pswitch_5a
        :pswitch_4d
    .end packed-switch
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 119
    const-string v0, "TimeState options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v0, "  --elapsed_realtime <elapsed realtime millis>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string v0, "  --unix_epoch_time <Unix epoch time millis>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v0, "  --user_should_confirm_time {true|false}"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/app/time/TimeState;

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

    .line 125
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 143
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 144
    return v0

    .line 146
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 149
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/time/TimeState;

    .line 150
    .local v2, "that":Landroid/app/time/TimeState;
    iget-object v3, p0, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    iget-object v4, v2, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-boolean v3, p0, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    iget-boolean v4, v2, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    .line 147
    .end local v2    # "that":Landroid/app/time/TimeState;
    :cond_28
    :goto_28
    return v1
.end method

.method public whitelist getUnixEpochTime()Landroid/app/time/UnixEpochTime;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    return-object v0
.end method

.method public whitelist getUserShouldConfirmTime()Z
    .registers 2

    .line 138
    iget-boolean v0, p0, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 156
    iget-object v0, p0, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    iget-boolean v1, p0, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeState{mUnixEpochTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserShouldConfirmTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 72
    iget-object v0, p0, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    iget-boolean v0, p0, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 74
    return-void
.end method
