.class public Landroid/net/NetworkConfig;
.super Ljava/lang/Object;
.source "NetworkConfig.java"


# instance fields
.field public dependencyMet:Z

.field public name:Ljava/lang/String;

.field public priority:I

.field public radio:I

.field public restoreTime:I

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "init"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    const-string/jumbo v1, ","

    #@6
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 66
    .local v0, "fragments":[Ljava/lang/String;
    const/4 v1, 0x0

    #@b
    aget-object v1, v0, v1

    #@d
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    #@19
    .line 67
    const/4 v1, 0x1

    #@1a
    aget-object v1, v0, v1

    #@1c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v1

    #@20
    iput v1, p0, Landroid/net/NetworkConfig;->type:I

    #@22
    .line 68
    const/4 v1, 0x2

    #@23
    aget-object v1, v0, v1

    #@25
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@28
    move-result v1

    #@29
    iput v1, p0, Landroid/net/NetworkConfig;->radio:I

    #@2b
    .line 69
    const/4 v1, 0x3

    #@2c
    aget-object v1, v0, v1

    #@2e
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@31
    move-result v1

    #@32
    iput v1, p0, Landroid/net/NetworkConfig;->priority:I

    #@34
    .line 70
    const/4 v1, 0x4

    #@35
    aget-object v1, v0, v1

    #@37
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3a
    move-result v1

    #@3b
    iput v1, p0, Landroid/net/NetworkConfig;->restoreTime:I

    #@3d
    .line 71
    const/4 v1, 0x5

    #@3e
    aget-object v1, v0, v1

    #@40
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@43
    move-result v1

    #@44
    iput-boolean v1, p0, Landroid/net/NetworkConfig;->dependencyMet:Z

    #@46
    .line 64
    return-void
.end method


# virtual methods
.method public isDefault()Z
    .locals 2

    #@0
    .prologue
    .line 78
    iget v0, p0, Landroid/net/NetworkConfig;->type:I

    #@2
    iget v1, p0, Landroid/net/NetworkConfig;->radio:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method
