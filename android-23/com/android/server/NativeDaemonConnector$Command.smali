.class public Lcom/android/server/NativeDaemonConnector$Command;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# instance fields
.field private mArguments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCmd:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 502
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    #@9
    .line 505
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;

    #@b
    .line 506
    const/4 v1, 0x0

    #@c
    array-length v2, p2

    #@d
    :goto_0
    if-ge v1, v2, :cond_0

    #@f
    aget-object v0, p2, v1

    #@11
    .line 507
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@14
    .line 506
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 504
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method public appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 513
    return-object p0
.end method
