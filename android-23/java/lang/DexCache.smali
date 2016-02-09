.class final Ljava/lang/DexCache;
.super Ljava/lang/Object;
.source "DexCache.java"


# instance fields
.field private volatile dex:Lcom/android/dex/Dex;

.field private dexFile:J

.field location:Ljava/lang/String;

.field private resolvedFields:Ljava/lang/Object;

.field resolvedMethods:Ljava/lang/Object;

.field resolvedTypes:[Ljava/lang/Class;

.field strings:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 75
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
    .line 78
    iget-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;

    #@2
    .line 79
    .local v0, "result":Lcom/android/dex/Dex;
    if-nez v0, :cond_1

    #@4
    .line 80
    monitor-enter p0

    #@5
    .line 81
    :try_start_0
    iget-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;

    #@7
    .line 82
    if-nez v0, :cond_0

    #@9
    .line 83
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
    .line 87
    :cond_1
    return-object v0

    #@11
    .line 80
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
