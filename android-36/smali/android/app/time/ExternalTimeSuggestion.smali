.class public final Landroid/app/time/ExternalTimeSuggestion;
.super Ljava/lang/Object;
.source "ExternalTimeSuggestion.java"

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
            "Landroid/app/time/ExternalTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Landroid/app/time/ExternalTimeSuggestion$1;

    invoke-direct {v0}, Landroid/app/time/ExternalTimeSuggestion$1;-><init>()V

    sput-object v0, Landroid/app/time/ExternalTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JJ)V
    .registers 8
    .param p1, "elapsedRealtimeMillis"    # J
    .param p3, "suggestionMillis"    # J

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/app/timedetector/TimeSuggestionHelper;

    new-instance v1, Landroid/app/time/UnixEpochTime;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    const-class v2, Landroid/app/time/ExternalTimeSuggestion;

    invoke-direct {v0, v2, v1}, Landroid/app/timedetector/TimeSuggestionHelper;-><init>(Ljava/lang/Class;Landroid/app/time/UnixEpochTime;)V

    iput-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    .line 100
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/timedetector/TimeSuggestionHelper;)V
    .registers 3
    .param p1, "helper"    # Landroid/app/timedetector/TimeSuggestionHelper;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/TimeSuggestionHelper;

    iput-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    .line 104
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/timedetector/TimeSuggestionHelper;Landroid/app/time/ExternalTimeSuggestion-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/time/ExternalTimeSuggestion;-><init>(Landroid/app/timedetector/TimeSuggestionHelper;)V

    return-void
.end method

.method public static blacklist parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/time/ExternalTimeSuggestion;
    .registers 3
    .param p0, "cmd"    # Landroid/os/ShellCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 166
    new-instance v0, Landroid/app/time/ExternalTimeSuggestion;

    .line 167
    const-class v1, Landroid/app/time/ExternalTimeSuggestion;

    invoke-static {v1, p0}, Landroid/app/timedetector/TimeSuggestionHelper;->handleParseCommandLineArg(Ljava/lang/Class;Landroid/os/ShellCommand;)Landroid/app/timedetector/TimeSuggestionHelper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/time/ExternalTimeSuggestion;-><init>(Landroid/app/timedetector/TimeSuggestionHelper;)V

    .line 166
    return-object v0
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 172
    const-string v0, "External"

    const-class v1, Landroid/app/time/ExternalTimeSuggestion;

    invoke-static {p0, v0, v1}, Landroid/app/timedetector/TimeSuggestionHelper;->handlePrintCommandLineOpts(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 174
    return-void
.end method


# virtual methods
.method public varargs whitelist addDebugInfo([Ljava/lang/String;)V
    .registers 3
    .param p1, "debugInfos"    # [Ljava/lang/String;

    .line 138
    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0, p1}, Landroid/app/timedetector/TimeSuggestionHelper;->addDebugInfo([Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 143
    if-ne p0, p1, :cond_4

    .line 144
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 149
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;

    .line 150
    .local v0, "that":Landroid/app/time/ExternalTimeSuggestion;
    iget-object v1, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    iget-object v2, v0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v1, v2}, Landroid/app/timedetector/TimeSuggestionHelper;->handleEquals(Landroid/app/timedetector/TimeSuggestionHelper;)Z

    move-result v1

    return v1

    .line 147
    .end local v0    # "that":Landroid/app/time/ExternalTimeSuggestion;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDebugInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->getDebugInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnixEpochTime()Landroid/app/time/UnixEpochTime;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0}, Landroid/app/timedetector/TimeSuggestionHelper;->handleToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-virtual {v0, p1, p2}, Landroid/app/timedetector/TimeSuggestionHelper;->handleWriteToParcel(Landroid/os/Parcel;I)V

    .line 114
    return-void
.end method
