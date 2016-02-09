.class public Landroid/os/StrictMode$Span;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Span"
.end annotation


# instance fields
.field private final mContainerState:Landroid/os/StrictMode$ThreadSpanState;

.field private mCreateMillis:J

.field private mName:Ljava/lang/String;

.field private mNext:Landroid/os/StrictMode$Span;

.field private mPrev:Landroid/os/StrictMode$Span;


# direct methods
.method static synthetic -get0(Landroid/os/StrictMode$Span;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/os/StrictMode$Span;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/os/StrictMode$Span;->mCreateMillis:J

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Landroid/os/StrictMode$Span;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    #@2
    return-object p1
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1984
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    #@6
    .line 1983
    return-void
.end method

.method constructor <init>(Landroid/os/StrictMode$ThreadSpanState;)V
    .locals 0
    .param p1, "threadState"    # Landroid/os/StrictMode$ThreadSpanState;

    #@0
    .prologue
    .line 1978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1979
    iput-object p1, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    #@5
    .line 1978
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    #@0
    .prologue
    .line 1998
    iget-object v0, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    #@2
    .line 1999
    .local v0, "state":Landroid/os/StrictMode$ThreadSpanState;
    monitor-enter v0

    #@3
    .line 2000
    :try_start_0
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    monitor-exit v0

    #@8
    .line 2002
    return-void

    #@9
    .line 2006
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 2007
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    #@f
    iget-object v2, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    #@11
    iput-object v2, v1, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    #@13
    .line 2009
    :cond_1
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 2010
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    #@19
    iget-object v2, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    #@1b
    iput-object v2, v1, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    #@1d
    .line 2012
    :cond_2
    iget-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    #@1f
    if-ne v1, p0, :cond_3

    #@21
    .line 2013
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    #@23
    iput-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    #@25
    .line 2016
    :cond_3
    iget v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    #@27
    add-int/lit8 v1, v1, -0x1

    #@29
    iput v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    #@2b
    .line 2018
    invoke-static {}, Landroid/os/StrictMode;->-get1()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_4

    #@31
    const-string/jumbo v1, "StrictMode"

    #@34
    new-instance v2, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v3, "Span finished="

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    iget-object v3, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    const-string/jumbo v3, "; size="

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    iget v3, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 2020
    :cond_4
    const-wide/16 v2, -0x1

    #@5c
    iput-wide v2, p0, Landroid/os/StrictMode$Span;->mCreateMillis:J

    #@5e
    .line 2021
    const/4 v1, 0x0

    #@5f
    iput-object v1, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    #@61
    .line 2022
    const/4 v1, 0x0

    #@62
    iput-object v1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    #@64
    .line 2023
    const/4 v1, 0x0

    #@65
    iput-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    #@67
    .line 2027
    iget v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    #@69
    const/4 v2, 0x5

    #@6a
    if-ge v1, v2, :cond_5

    #@6c
    .line 2028
    iget-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    #@6e
    iput-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    #@70
    .line 2029
    iput-object p0, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    #@72
    .line 2030
    iget v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    #@74
    add-int/lit8 v1, v1, 0x1

    #@76
    iput v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@78
    :cond_5
    monitor-exit v0

    #@79
    .line 1997
    return-void

    #@7a
    .line 1999
    :catchall_0
    move-exception v1

    #@7b
    monitor-exit v0

    #@7c
    throw v1
.end method
