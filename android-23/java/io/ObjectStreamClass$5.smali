.class final Ljava/io/ObjectStreamClass$5;
.super Ljava/lang/ThreadLocal;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectStreamClass;->getCache()Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/WeakHashMap",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Ljava/io/ObjectStreamClass;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1103
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1104
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$5;->initialValue()Ljava/util/WeakHashMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public initialValue()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1105
    new-instance v0, Ljava/util/WeakHashMap;

    #@2
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@5
    return-object v0
.end method
