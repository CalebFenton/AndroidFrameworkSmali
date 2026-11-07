.class public final Landroid/app/timedetector/ManualTimeSuggestion;
.super Ljava/lang/Object;
.source "ManualTimeSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timedetector/ManualTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Landroid/app/timedetector/ManualTimeSuggestion$1;

    invoke-direct {v0}, Landroid/app/timedetector/ManualTimeSuggestion$1;-><init>()V

    sput-object v0, Landroid/app/timedetector/ManualTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/time/UnixEpochTime;)V
    .registers 4
    .param p1, "unixEpochTime"    # Landroid/app/time/UnixEpochTime;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/app/timedetector/TimeSuggestionHelper;

    const-class v1, Landroid/app/timedetector/ManualTimeSuggestion;

    invoke-direct {v0, v1, p1}, Landroid/app/timedetector/TimeSuggestionHelper;-><init>(Ljava/lang/Class;Landroid/app/time/UnixEpochTime;)V

    iput-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    .line 56
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/timedetector/TimeSuggestionHelper;)V
    .registers 3
    .param p1, "helper"    # Landroid/app/timedetector/TimeSuggestionHelper;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/TimeSuggestionHelper;

    iput-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/timedetector/TimeSuggestionHelper;Landroid/app/timedetector/ManualTimeSuggestion-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/timedetector/ManualTimeSuggestion;-><init>(Landroid/app/timedetector/TimeSuggestionHelper;)V

    return-void
.end method

.method public static blacklist parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timedetector/ManualTimeSuggestion;
    .registers 3
    .param p0, "cmd"    # Landroid/os/ShellCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 116
    new-instance v0, Landroid/app/timedetector/ManualTimeSuggestion;

    .line 117
    const-class v1, Landroid/app/timedetector/ManualTimeSuggestion;

    invoke-static {v1, p0}, Landroid/app/timedetector/TimeSuggestionHelper;->handleParseCommandLineArg(Ljava/lang/Class;Landroid/os/ShellCommand;)Landroid/app/timedetector/TimeSuggestionHelper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/timedetector/ManualTimeSuggestion;-><init>(Landroid/app/timedetector/TimeSuggestionHelper;)V

    .line 116
    return-object v0
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 122
    const-string v0, "Manual"

    const-class v1, Landroid/app/timedetector/ManualTimeSuggestion;

    invoke-static {p0, v0, v1}, Landroid/app/timedetector/TimeSuggestionHelper;->handlePrintCommandLineOpts(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 123
    return-void
.end method


# virtual methods
.method public varargs blacklist addDebugInfo([Ljava/lang/String;)V
    .registers 3
    .param p1, "debugInfos"    # [Ljava/lang/String;

    .line 88
    iget-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0, p1}, Landroid/app/timedetector/TimeSuggestionHelper;->addDebugInfo([Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    if-ne p0, p1, :cond_4

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 99
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/timedetector/ManualTimeSuggestion;

    .line 100
    .local v0, "that":Landroid/app/timedetector/ManualTimeSuggestion;
    iget-object v1, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    iget-object v2, v0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v1, v2}, Landroid/app/timedetector/TimeSuggestionHelper;->handleEquals(Landroid/app/timedetector/TimeSuggestionHelper;)Z

    move-result v1

    return v1

    .line 97
    .end local v0    # "that":Landroid/app/timedetector/ManualTimeSuggestion;
    :cond_1d
    :goto_1d
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

    .line 79
    iget-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->getDebugInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnixEpochTime()Landroid/app/time/UnixEpochTime;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->handleToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 69
    iget-object v0, p0, Landroid/app/timedetector/ManualTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0, p1, p2}, Landroid/app/timedetector/TimeSuggestionHelper;->handleWriteToParcel(Landroid/os/Parcel;I)V

    .line 70
    return-void
.end method
