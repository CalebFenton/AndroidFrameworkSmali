.class public Lcom/android/commands/hid/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/hid/Event$Builder;,
        Lcom/android/commands/hid/Event$Reader;
    }
.end annotation


# static fields
.field public static final COMMAND_DELAY:Ljava/lang/String; = "delay"

.field public static final COMMAND_REGISTER:Ljava/lang/String; = "register"

.field public static final COMMAND_REPORT:Ljava/lang/String; = "report"

.field private static final TAG:Ljava/lang/String; = "HidEvent"


# instance fields
.field private mCommand:Ljava/lang/String;

.field private mDescriptor:[B

.field private mDuration:I

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mPid:I

.field private mReport:[B

.field private mVid:I


# direct methods
.method static synthetic -get0(Lcom/android/commands/hid/Event;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mCommand:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/commands/hid/Event;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mDescriptor:[B

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/commands/hid/Event;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/commands/hid/Event;->mDuration:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/commands/hid/Event;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/commands/hid/Event;->mId:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/commands/hid/Event;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mReport:[B

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/commands/hid/Event;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/commands/hid/Event;->mCommand:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/commands/hid/Event;[B)[B
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/commands/hid/Event;->mDescriptor:[B

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/commands/hid/Event;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/commands/hid/Event;->mDuration:I

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/commands/hid/Event;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/commands/hid/Event;->mId:I

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/commands/hid/Event;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/commands/hid/Event;->mName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Lcom/android/commands/hid/Event;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/commands/hid/Event;->mPid:I

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/commands/hid/Event;[B)[B
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/commands/hid/Event;->mReport:[B

    #@2
    return-object p1
.end method

.method static synthetic -set7(Lcom/android/commands/hid/Event;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/commands/hid/Event;->mVid:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/commands/hid/Event;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static error(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/android/commands/hid/Event;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@4
    .line 244
    return-void
.end method

.method private static error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 249
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5
    .line 250
    const-string/jumbo v0, "HidEvent"

    #@8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 251
    if-eqz p1, :cond_0

    #@d
    .line 252
    const-string/jumbo v0, "HidEvent"

    #@10
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 248
    :cond_0
    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mCommand:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescriptor()[B
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mDescriptor:[B

    #@2
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    #@0
    .prologue
    .line 73
    iget v0, p0, Lcom/android/commands/hid/Event;->mDuration:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 45
    iget v0, p0, Lcom/android/commands/hid/Event;->mId:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProductId()I
    .locals 1

    #@0
    .prologue
    .line 65
    iget v0, p0, Lcom/android/commands/hid/Event;->mPid:I

    #@2
    return v0
.end method

.method public getReport()[B
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/commands/hid/Event;->mReport:[B

    #@2
    return-object v0
.end method

.method public getVendorId()I
    .locals 1

    #@0
    .prologue
    .line 61
    iget v0, p0, Lcom/android/commands/hid/Event;->mVid:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Event{id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/commands/hid/Event;->mId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 78
    const-string/jumbo v1, ", command="

    #@15
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 78
    iget-object v1, p0, Lcom/android/commands/hid/Event;->mCommand:Ljava/lang/String;

    #@1b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 79
    const-string/jumbo v1, ", name="

    #@26
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 79
    iget-object v1, p0, Lcom/android/commands/hid/Event;->mName:Ljava/lang/String;

    #@2c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 80
    const-string/jumbo v1, ", descriptor="

    #@37
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 80
    iget-object v1, p0, Lcom/android/commands/hid/Event;->mDescriptor:[B

    #@3d
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 81
    const-string/jumbo v1, ", vid="

    #@48
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 81
    iget v1, p0, Lcom/android/commands/hid/Event;->mVid:I

    #@4e
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 82
    const-string/jumbo v1, ", pid="

    #@55
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 82
    iget v1, p0, Lcom/android/commands/hid/Event;->mPid:I

    #@5b
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 83
    const-string/jumbo v1, ", report="

    #@62
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    .line 83
    iget-object v1, p0, Lcom/android/commands/hid/Event;->mReport:[B

    #@68
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    .line 84
    const-string/jumbo v1, ", duration="

    #@73
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    .line 84
    iget v1, p0, Lcom/android/commands/hid/Event;->mDuration:I

    #@79
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    .line 85
    const-string/jumbo v1, "}"

    #@80
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    return-object v0
.end method
