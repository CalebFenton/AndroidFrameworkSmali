.class public Landroid/os/NullVibrator;
.super Landroid/os/Vibrator;
.source "NullVibrator.java"


# static fields
.field private static final sInstance:Landroid/os/NullVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 27
    new-instance v0, Landroid/os/NullVibrator;

    #@2
    invoke-direct {v0}, Landroid/os/NullVibrator;-><init>()V

    #@5
    sput-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    #@7
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/os/NullVibrator;
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    #@2
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    #@0
    .prologue
    .line 60
    return-void
.end method

.method public hasVibrator()Z
    .locals 1

    #@0
    .prologue
    .line 38
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 45
    return-void
.end method

.method public vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 54
    array-length v0, p3

    #@1
    if-lt p4, v0, :cond_0

    #@3
    .line 55
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@5
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@8
    throw v0

    #@9
    .line 53
    :cond_0
    return-void
.end method
