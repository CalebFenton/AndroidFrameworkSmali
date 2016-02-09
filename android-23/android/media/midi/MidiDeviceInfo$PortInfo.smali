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
.field public static final TYPE_INPUT:I = 0x1

.field public static final TYPE_OUTPUT:I = 0x2


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPortNumber:I

.field private final mPortType:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "portNumber"    # I
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 155
    iput p1, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortType:I

    #@5
    .line 156
    iput p2, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortNumber:I

    #@7
    .line 157
    if-nez p3, :cond_0

    #@9
    const-string/jumbo p3, ""

    #@c
    .end local p3    # "name":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mName:Ljava/lang/String;

    #@e
    .line 154
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPortNumber()I
    .locals 1

    #@0
    .prologue
    .line 173
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortNumber:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 165
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortType:I

    #@2
    return v0
.end method
