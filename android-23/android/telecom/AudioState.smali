.class public Landroid/telecom/AudioState;
.super Ljava/lang/Object;
.source "AudioState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/AudioState$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/AudioState;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROUTE_ALL:I = 0xf

.field public static final ROUTE_BLUETOOTH:I = 0x2

.field public static final ROUTE_EARPIECE:I = 0x1

.field public static final ROUTE_SPEAKER:I = 0x8

.field public static final ROUTE_WIRED_HEADSET:I = 0x4

.field public static final ROUTE_WIRED_OR_EARPIECE:I = 0x5


# instance fields
.field private final isMuted:Z

.field private final route:I

.field private final supportedRouteMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 133
    new-instance v0, Landroid/telecom/AudioState$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/AudioState$1;-><init>()V

    #@5
    .line 132
    sput-object v0, Landroid/telecom/AudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/AudioState;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    invoke-virtual {p1}, Landroid/telecom/AudioState;->isMuted()Z

    #@6
    move-result v0

    #@7
    iput-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    #@9
    .line 68
    invoke-virtual {p1}, Landroid/telecom/AudioState;->getRoute()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telecom/AudioState;->route:I

    #@f
    .line 69
    invoke-virtual {p1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    #@15
    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/telecom/CallAudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    #@6
    move-result v0

    #@7
    iput-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    #@9
    .line 74
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telecom/AudioState;->route:I

    #@f
    .line 75
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    #@15
    .line 72
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "muted"    # Z
    .param p2, "route"    # I
    .param p3, "supportedRouteMask"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-boolean p1, p0, Landroid/telecom/AudioState;->isMuted:Z

    #@5
    .line 62
    iput p2, p0, Landroid/telecom/AudioState;->route:I

    #@7
    .line 63
    iput p3, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    #@9
    .line 60
    return-void
.end method

.method public static audioRouteToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "route"    # I

    #@0
    .prologue
    .line 101
    if-eqz p0, :cond_0

    #@2
    and-int/lit8 v1, p0, -0x10

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 102
    :cond_0
    const-string/jumbo v1, "UNKNOWN"

    #@9
    return-object v1

    #@a
    .line 105
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@f
    .line 106
    .local v0, "buffer":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p0, 0x1

    #@11
    const/4 v2, 0x1

    #@12
    if-ne v1, v2, :cond_2

    #@14
    .line 107
    const-string/jumbo v1, "EARPIECE"

    #@17
    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@1a
    .line 109
    :cond_2
    and-int/lit8 v1, p0, 0x2

    #@1c
    const/4 v2, 0x2

    #@1d
    if-ne v1, v2, :cond_3

    #@1f
    .line 110
    const-string/jumbo v1, "BLUETOOTH"

    #@22
    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@25
    .line 112
    :cond_3
    and-int/lit8 v1, p0, 0x4

    #@27
    const/4 v2, 0x4

    #@28
    if-ne v1, v2, :cond_4

    #@2a
    .line 113
    const-string/jumbo v1, "WIRED_HEADSET"

    #@2d
    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@30
    .line 115
    :cond_4
    and-int/lit8 v1, p0, 0x8

    #@32
    const/16 v2, 0x8

    #@34
    if-ne v1, v2, :cond_5

    #@36
    .line 116
    const-string/jumbo v1, "SPEAKER"

    #@39
    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@3c
    .line 119
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    return-object v1
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 124
    const-string/jumbo v0, ", "

    #@9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c
    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 122
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 154
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 80
    if-nez p1, :cond_0

    #@3
    .line 81
    return v1

    #@4
    .line 83
    :cond_0
    instance-of v2, p1, Landroid/telecom/AudioState;

    #@6
    if-nez v2, :cond_1

    #@8
    .line 84
    return v1

    #@9
    :cond_1
    move-object v0, p1

    #@a
    .line 86
    check-cast v0, Landroid/telecom/AudioState;

    #@c
    .line 87
    .local v0, "state":Landroid/telecom/AudioState;
    invoke-virtual {p0}, Landroid/telecom/AudioState;->isMuted()Z

    #@f
    move-result v2

    #@10
    invoke-virtual {v0}, Landroid/telecom/AudioState;->isMuted()Z

    #@13
    move-result v3

    #@14
    if-ne v2, v3, :cond_2

    #@16
    invoke-virtual {p0}, Landroid/telecom/AudioState;->getRoute()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v0}, Landroid/telecom/AudioState;->getRoute()I

    #@1d
    move-result v3

    #@1e
    if-ne v2, v3, :cond_2

    #@20
    .line 88
    invoke-virtual {p0}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    #@23
    move-result v2

    #@24
    invoke-virtual {v0}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    #@27
    move-result v3

    #@28
    if-ne v2, v3, :cond_2

    #@2a
    const/4 v1, 0x1

    #@2b
    .line 87
    :cond_2
    return v1
.end method

.method public getRoute()I
    .locals 1

    #@0
    .prologue
    .line 178
    iget v0, p0, Landroid/telecom/AudioState;->route:I

    #@2
    return v0
.end method

.method public getSupportedRouteMask()I
    .locals 1

    #@0
    .prologue
    .line 185
    iget v0, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    #@2
    return v0
.end method

.method public isMuted()Z
    .locals 1

    #@0
    .prologue
    .line 171
    iget-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 93
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    .line 94
    const-string/jumbo v1, "[AudioState isMuted: %b, route: %s, supportedRouteMask: %s]"

    #@5
    .line 93
    const/4 v2, 0x3

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    .line 95
    iget-boolean v3, p0, Landroid/telecom/AudioState;->isMuted:Z

    #@a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    aput-object v3, v2, v4

    #@11
    .line 96
    iget v3, p0, Landroid/telecom/AudioState;->route:I

    #@13
    invoke-static {v3}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    const/4 v4, 0x1

    #@18
    aput-object v3, v2, v4

    #@1a
    .line 97
    iget v3, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    #@1c
    invoke-static {v3}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    const/4 v4, 0x2

    #@21
    aput-object v3, v2, v4

    #@23
    .line 93
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 162
    iget-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    int-to-byte v0, v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@9
    .line 163
    iget v0, p0, Landroid/telecom/AudioState;->route:I

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 164
    iget v0, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 161
    return-void

    #@14
    .line 162
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method
