.class final Lcom/android/server/tv/TvInputManagerService$TvInputState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TvInputState"
.end annotation


# instance fields
.field private info:Landroid/media/tv/TvInputInfo;

.field private state:I


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    #@2
    return p1
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1903
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    #@6
    .line 1898
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "info: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "; state: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
