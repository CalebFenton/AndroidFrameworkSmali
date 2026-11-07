.class public final Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
.super Ljava/lang/Object;
.source "ManualTimeZoneSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timezonedetector/ManualTimeZoneSuggestion;",
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

.field private final blacklist mZoneId:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .registers 1

    invoke-static {p0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion$1;

    invoke-direct {v0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion$1;-><init>()V

    sput-object v0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "zoneId"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "zoneId":Ljava/lang/String;
    new-instance v1, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    invoke-direct {v1, v0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "suggestion":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 69
    .local v2, "debugInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object v2, v1, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    .line 70
    return-object v1
.end method

.method public static blacklist parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .registers 6
    .param p0, "cmd"    # Landroid/os/ShellCommand;

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "zoneId":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_3d

    .line 138
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_4c

    :cond_f
    goto :goto_1a

    :pswitch_10
    const-string v1, "--zone_id"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_1b

    :goto_1a
    const/4 v1, -0x1

    :goto_1b
    packed-switch v1, :pswitch_data_52

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :pswitch_37
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 141
    nop

    .line 146
    goto :goto_1

    .line 148
    :cond_3d
    new-instance v1, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    invoke-direct {v1, v0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "suggestion":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    const-string v3, "Command line injection"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 150
    return-object v1

    :pswitch_data_4c
    .packed-switch 0x4bfc04ee
        :pswitch_10
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_37
    .end packed-switch
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 155
    const-string v0, "Manual suggestion options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    const-string v0, "  --zone_id <Olson ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

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

    .line 159
    return-void
.end method


# virtual methods
.method public varargs blacklist addDebugInfo([Ljava/lang/String;)V
    .registers 4
    .param p1, "debugInfos"    # [Ljava/lang/String;

    .line 101
    iget-object v0, p0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    .line 104
    :cond_b
    iget-object v0, p0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 109
    if-ne p0, p1, :cond_4

    .line 110
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 116
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    .line 117
    .local v0, "that":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    iget-object v1, p0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 113
    .end local v0    # "that":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
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

    .line 91
    iget-object v0, p0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 91
    :goto_f
    return-object v0
.end method

.method public blacklist getZoneId()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManualTimeZoneSuggestion{mZoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mDebugInfo:Ljava/util/ArrayList;

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
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    iget-object v0, p0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 82
    return-void
.end method
