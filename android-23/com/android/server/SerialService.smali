.class public Lcom/android/server/SerialService;
.super Landroid/hardware/ISerialManager$Stub;
.source "SerialService.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSerialPorts:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Landroid/hardware/ISerialManager$Stub;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lcom/android/server/SerialService;->mContext:Landroid/content/Context;

    #@5
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v0

    #@9
    .line 34
    const v1, 0x107001b

    #@c
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/server/SerialService;->mSerialPorts:[Ljava/lang/String;

    #@12
    .line 31
    return-void
.end method

.method private native native_open(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method


# virtual methods
.method public getSerialPorts()[Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 38
    iget-object v4, p0, Lcom/android/server/SerialService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.SERIAL_PORT"

    #@5
    const/4 v6, 0x0

    #@6
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 40
    new-instance v2, Ljava/util/ArrayList;

    #@b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@e
    .line 41
    .local v2, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/SerialService;->mSerialPorts:[Ljava/lang/String;

    #@11
    array-length v4, v4

    #@12
    if-ge v0, v4, :cond_1

    #@14
    .line 42
    iget-object v4, p0, Lcom/android/server/SerialService;->mSerialPorts:[Ljava/lang/String;

    #@16
    aget-object v1, v4, v0

    #@18
    .line 43
    .local v1, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    #@1a
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1d
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_0

    #@23
    .line 44
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 47
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v4

    #@2d
    new-array v3, v4, [Ljava/lang/String;

    #@2f
    .line 48
    .local v3, "result":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@32
    .line 49
    return-object v3
.end method

.method public openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/server/SerialService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.SERIAL_PORT"

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 54
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/SerialService;->mSerialPorts:[Ljava/lang/String;

    #@c
    array-length v1, v1

    #@d
    if-ge v0, v1, :cond_1

    #@f
    .line 55
    iget-object v1, p0, Lcom/android/server/SerialService;->mSerialPorts:[Ljava/lang/String;

    #@11
    aget-object v1, v1, v0

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/SerialService;->native_open(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 59
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "Invalid serial port "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1
.end method
