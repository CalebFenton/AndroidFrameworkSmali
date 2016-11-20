.class final Ljava/lang/DexCache;
.super Ljava/lang/Object;
.source "DexCache.java"


# instance fields
.field private volatile dex:Lcom/android/dex/Dex;

.field private dexFile:J

.field location:Ljava/lang/String;

.field private numResolvedFields:I

.field private numResolvedMethods:I

.field private numResolvedTypes:I

.field private numStrings:I

.field private resolvedFields:J

.field private resolvedMethods:J

.field private resolvedTypes:J

.field private strings:J


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private native getDexNative()Lcom/android/dex/Dex;
.end method


# virtual methods
.method getDex()Lcom/android/dex/Dex;
    .locals 2

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;

    #@2
    .line 99
    .local v0, "result":Lcom/android/dex/Dex;
    if-nez v0, :cond_1

    #@4
    .line 100
    monitor-enter p0

    #@5
    .line 101
    :try_start_0
    iget-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;

    #@7
    .line 102
    if-nez v0, :cond_0

    #@9
    .line 103
    invoke-direct {p0}, Ljava/lang/DexCache;->getDexNative()Lcom/android/dex/Dex;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 107
    :cond_1
    return-object v0

    #@11
    .line 100
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method

.method native getResolvedString(I)Ljava/lang/String;
.end method

.method native getResolvedType(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method native setResolvedString(ILjava/lang/String;)V
.end method

.method native setResolvedType(ILjava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method
