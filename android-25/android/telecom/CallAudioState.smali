.class public final Landroid/telecom/CallAudioState;
.super Ljava/lang/Object;
.source "CallAudioState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallAudioState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/CallAudioState;",
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
    .line 169
    new-instance v0, Landroid/telecom/CallAudioState$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/CallAudioState$1;-><init>()V

    #@5
    .line 168
    sput-object v0, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/AudioState;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    invoke-virtual {p1}, Landroid/telecom/AudioState;->isMuted()Z

    #@6
    move-result v0

    #@7
    iput-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    #@9
    .line 89
    invoke-virtual {p1}, Landroid/telecom/AudioState;->getRoute()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telecom/CallAudioState;->route:I

    #@f
    .line 90
    invoke-virtual {p1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    #@15
    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/telecom/CallAudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    #@6
    move-result v0

    #@7
    iput-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    #@9
    .line 81
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telecom/CallAudioState;->route:I

    #@f
    .line 82
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    #@15
    .line 79
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "muted"    # Z
    .param p2, "route"    # I
    .param p3, "supportedRouteMask"    # I

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    iput-boolean p1, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    #@5
    .line 74
    iput p2, p0, Landroid/telecom/CallAudioState;->route:I

    #@7
    .line 75
    iput p3, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    #@9
    .line 72
    return-void
.end method

.method public static audioRouteToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "route"    # I

    #@0
    .prologue
    .line 144
    if-eqz p0, :cond_0

    #@2
    and-int/lit8 v1, p0, -0x10

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 145
    :cond_0
    const-string/jumbo v1, "UNKNOWN"

    #@9
    return-object v1

    #@a
    .line 148
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@f
    .line 149
    .local v0, "buffer":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p0, 0x1

    #@11
    const/4 v2, 0x1

    #@12
    if-ne v1, v2, :cond_2

    #@14
    .line 150
    const-string/jumbo v1, "EARPIECE"

    #@17
    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@1a
    .line 152
    :cond_2
    and-int/lit8 v1, p0, 0x2

    #@1c
    const/4 v2, 0x2

    #@1d
    if-ne v1, v2, :cond_3

    #@1f
    .line 153
    const-string/jumbo v1, "BLUETOOTH"

    #@22
    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@25
    .line 155
    :cond_3
    and-int/lit8 v1, p0, 0x4

    #@27
    const/4 v2, 0x4

    #@28
    if-ne v1, v2, :cond_4

    #@2a
    .line 156
    const-string/jumbo v1, "WIRED_HEADSET"

    #@2d
    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@30
    .line 158
    :cond_4
    and-int/lit8 v1, p0, 0x8

    #@32
    const/16 v2, 0x8

    #@34
    if-ne v1, v2, :cond_5

    #@36
    .line 159
    const-string/jumbo v1, "SPEAKER"

    #@39
    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@3c
    .line 162
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
    .line 204
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 205
    const-string/jumbo v0, ", "

    #@9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c
    .line 207
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 203
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 190
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
    .line 95
    if-nez p1, :cond_0

    #@3
    .line 96
    return v1

    #@4
    .line 98
    :cond_0
    instance-of v2, p1, Landroid/telecom/CallAudioState;

    #@6
    if-nez v2, :cond_1

    #@8
    .line 99
    return v1

    #@9
    :cond_1
    move-object v0, p1

    #@a
    .line 101
    check-cast v0, Landroid/telecom/CallAudioState;

    #@c
    .line 102
    .local v0, "state":Landroid/telecom/CallAudioState;
    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->isMuted()Z

    #@f
    move-result v2

    #@10
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->isMuted()Z

    #@13
    move-result v3

    #@14
    if-ne v2, v3, :cond_2

    #@16
    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->getRoute()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    #@1d
    move-result v3

    #@1e
    if-ne v2, v3, :cond_2

    #@20
    .line 103
    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    #@23
    move-result v2

    #@24
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    #@27
    move-result v3

    #@28
    if-ne v2, v3, :cond_2

    #@2a
    const/4 v1, 0x1

    #@2b
    .line 102
    :cond_2
    return v1
.end method

.method public getRoute()I
    .locals 1

    #@0
    .prologue
    .line 126
    iget v0, p0, Landroid/telecom/CallAudioState;->route:I

    #@2
    return v0
.end method

.method public getSupportedRouteMask()I
    .locals 1

    #@0
    .prologue
    .line 133
    iget v0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    #@2
    return v0
.end method

.method public isMuted()Z
    .locals 1

    #@0
    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 108
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    .line 109
    const-string/jumbo v1, "[AudioState isMuted: %b, route: %s, supportedRouteMask: %s]"

    #@5
    .line 108
    const/4 v2, 0x3

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    .line 110
    iget-boolean v3, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    #@a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    aput-object v3, v2, v4

    #@11
    .line 111
    iget v3, p0, Landroid/telecom/CallAudioState;->route:I

    #@13
    invoke-static {v3}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    const/4 v4, 0x1

    #@18
    aput-object v3, v2, v4

    #@1a
    .line 112
    iget v3, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    #@1c
    invoke-static {v3}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    const/4 v4, 0x2

    #@21
    aput-object v3, v2, v4

    #@23
    .line 108
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
    .line 198
    iget-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

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
    .line 199
    iget v0, p0, Landroid/telecom/CallAudioState;->route:I

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 200
    iget v0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 197
    return-void

    #@14
    .line 198
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method
