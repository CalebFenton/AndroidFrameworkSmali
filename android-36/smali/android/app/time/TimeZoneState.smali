.class public final Landroid/app/time/TimeZoneState;
.super Ljava/lang/Object;
.source "TimeZoneState.java"

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
            "Landroid/app/time/TimeZoneState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mUserShouldConfirmId:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneState;
    .registers 1

    invoke-static {p0}, Landroid/app/time/TimeZoneState;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneState;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/app/time/TimeZoneState$1;

    invoke-direct {v0}, Landroid/app/time/TimeZoneState$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeZoneState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "userShouldConfirmId"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    .line 61
    iput-boolean p2, p0, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

    .line 62
    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneState;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-virtual {p0}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "zoneId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 67
    .local v1, "userShouldConfirmId":Z
    new-instance v2, Landroid/app/time/TimeZoneState;

    invoke-direct {v2, v0, v1}, Landroid/app/time/TimeZoneState;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method public static blacklist parseCommandLineArgs(Landroid/os/ShellCommand;)Landroid/app/time/TimeZoneState;
    .registers 7
    .param p0, "cmd"    # Landroid/os/ShellCommand;

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "zoneIdString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 82
    .local v1, "userShouldConfirmId":Ljava/lang/Boolean;
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_55

    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_74

    :cond_10
    goto :goto_25

    :sswitch_11
    const-string v2, "--zone_id"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    goto :goto_26

    :sswitch_1b
    const-string v2, "--user_should_confirm_id"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_26

    :goto_25
    const/4 v2, -0x1

    :goto_26
    packed-switch v2, :pswitch_data_7e

    .line 93
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

    .line 89
    :pswitch_42
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 90
    goto :goto_54

    .line 85
    :pswitch_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 86
    nop

    .line 95
    :goto_54
    goto :goto_2

    .line 97
    :cond_55
    if-eqz v0, :cond_6b

    .line 100
    if-eqz v1, :cond_63

    .line 103
    new-instance v2, Landroid/app/time/TimeZoneState;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v2, v0, v4}, Landroid/app/time/TimeZoneState;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 101
    :cond_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "No userShouldConfirmId specified."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_6b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "No zoneId specified."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_74
    .sparse-switch
        -0x768084ce -> :sswitch_1b
        0x4bfc04ee -> :sswitch_11
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_42
    .end packed-switch
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 108
    const-string v0, "TimeZoneState options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v0, "  --zone_id {<Olson ID>}"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v0, "  --user_should_confirm_id {true|false}"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/app/time/TimeZoneState;

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

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 132
    return v0

    .line 134
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 137
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/time/TimeZoneState;

    .line 138
    .local v2, "that":Landroid/app/time/TimeZoneState;
    iget-object v3, p0, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-boolean v3, p0, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

    iget-boolean v4, v2, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    .line 135
    .end local v2    # "that":Landroid/app/time/TimeZoneState;
    :cond_28
    :goto_28
    return v1
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserShouldConfirmId()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 144
    iget-object v0, p0, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

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

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneState{mZoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserShouldConfirmId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

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
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Landroid/app/time/TimeZoneState;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 73
    iget-boolean v0, p0, Landroid/app/time/TimeZoneState;->mUserShouldConfirmId:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 74
    return-void
.end method
