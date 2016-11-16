.class public Landroid/media/audiopolicy/AudioMix;
.super Ljava/lang/Object;
.source "AudioMix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMix$Builder;
    }
.end annotation


# static fields
.field private static final CALLBACK_FLAGS_ALL:I = 0x1

.field public static final CALLBACK_FLAG_NOTIFY_ACTIVITY:I = 0x1

.field public static final MIX_STATE_DISABLED:I = -0x1

.field public static final MIX_STATE_IDLE:I = 0x0

.field public static final MIX_STATE_MIXING:I = 0x1

.field public static final MIX_TYPE_INVALID:I = -0x1

.field public static final MIX_TYPE_PLAYERS:I = 0x0

.field public static final MIX_TYPE_RECORDERS:I = 0x1

.field public static final ROUTE_FLAG_LOOP_BACK:I = 0x2

.field public static final ROUTE_FLAG_RENDER:I = 0x1

.field private static final ROUTE_FLAG_SUPPORTED:I = 0x3


# instance fields
.field mCallbackFlags:I

.field mDeviceAddress:Ljava/lang/String;

.field final mDeviceSystemType:I

.field private mFormat:Landroid/media/AudioFormat;

.field mMixState:I

.field private mMixType:I

.field private mRouteFlags:I

.field private mRule:Landroid/media/audiopolicy/AudioMixingRule;


# direct methods
.method private constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;)V
    .locals 1
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "routeFlags"    # I
    .param p4, "callbackFlags"    # I
    .param p5, "deviceType"    # I
    .param p6, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 39
    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    #@6
    .line 42
    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    #@8
    .line 54
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@a
    .line 55
    iput-object p2, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    #@c
    .line 56
    iput p3, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    #@e
    .line 57
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    #@14
    .line 58
    iput p4, p0, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    #@16
    .line 59
    iput p5, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceSystemType:I

    #@18
    .line 60
    if-nez p6, :cond_0

    #@1a
    new-instance p6, Ljava/lang/String;

    #@1c
    .end local p6    # "deviceAddress":Ljava/lang/String;
    const-string/jumbo v0, ""

    #@1f
    invoke-direct {p6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@22
    :cond_0
    iput-object p6, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    #@24
    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/media/audiopolicy/AudioMix;)V
    .locals 0
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "routeFlags"    # I
    .param p4, "callbackFlags"    # I
    .param p5, "deviceType"    # I
    .param p6, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method getFormat()Landroid/media/AudioFormat;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    #@2
    return-object v0
.end method

.method public getMixState()I
    .locals 1

    #@0
    .prologue
    .line 134
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    #@2
    return v0
.end method

.method public getMixType()I
    .locals 1

    #@0
    .prologue
    .line 152
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    #@2
    return v0
.end method

.method public getRegistration()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getRouteFlags()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    #@2
    return v0
.end method

.method getRule()Landroid/media/audiopolicy/AudioMixingRule;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 167
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget-object v1, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    iget v1, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    iget-object v1, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-object v1, v0, v2

    #@1f
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@22
    move-result v0

    #@23
    return v0
.end method

.method setRegistration(Ljava/lang/String;)V
    .locals 0
    .param p1, "regId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 156
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    #@2
    .line 155
    return-void
.end method
