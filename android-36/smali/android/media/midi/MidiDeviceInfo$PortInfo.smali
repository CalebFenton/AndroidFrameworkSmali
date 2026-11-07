.class public final Landroid/media/midi/MidiDeviceInfo$PortInfo;
.super Ljava/lang/Object;
.source "MidiDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PortInfo"
.end annotation


# static fields
.field public static final whitelist TYPE_INPUT:I = 0x1

.field public static final whitelist TYPE_OUTPUT:I = 0x2


# instance fields
.field private final greylist-max-o mName:Ljava/lang/String;

.field private final greylist-max-o mPortNumber:I

.field private final greylist-max-o mPortType:I


# direct methods
.method constructor greylist-max-o <init>(IILjava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "portNumber"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput p1, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortType:I

    .line 270
    iput p2, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortNumber:I

    .line 271
    if-nez p3, :cond_c

    const-string v0, ""

    goto :goto_d

    :cond_c
    move-object v0, p3

    :goto_d
    iput-object v0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mName:Ljava/lang/String;

    .line 272
    return-void
.end method


# virtual methods
.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPortNumber()I
    .registers 2

    .line 287
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortNumber:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 279
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortType:I

    return v0
.end method
