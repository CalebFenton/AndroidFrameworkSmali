.class final Ljava/util/concurrent/ThreadLocalRandom$1;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 1

    #@0
    .prologue
    .line 1034
    const-string/jumbo v0, "java.util.secureRandomSeed"

    #@3
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1033
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$1;->run()Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
