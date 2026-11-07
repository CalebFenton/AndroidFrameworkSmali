.class Ljava/lang/ClassValue$Entry;
.super Ljava/lang/ref/WeakReference;
.source "ClassValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ClassValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/ClassValue$Version<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field static final blacklist DEAD_ENTRY:Ljava/lang/ClassValue$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ClassValue$Entry<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 326
    const-class v0, Ljava/lang/ClassValue;

    .line 362
    new-instance v0, Ljava/lang/ClassValue$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/lang/ClassValue$Entry;-><init>(Ljava/lang/ClassValue$Version;Ljava/lang/Object;)V

    sput-object v0, Ljava/lang/ClassValue$Entry;->DEAD_ENTRY:Ljava/lang/ClassValue$Entry;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/ClassValue$Version;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassValue$Version<",
            "TT;>;)V"
        }
    .end annotation

    .line 335
    .local p0, "this":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    .local p1, "version":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 336
    iput-object p0, p0, Ljava/lang/ClassValue$Entry;->value:Ljava/lang/Object;

    .line 337
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/ClassValue$Version;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassValue$Version<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 329
    .local p0, "this":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    .local p1, "version":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 330
    iput-object p2, p0, Ljava/lang/ClassValue$Entry;->value:Ljava/lang/Object;

    .line 331
    return-void
.end method

.method private blacklist assertNotPromise()V
    .registers 1

    .line 332
    .local p0, "this":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    return-void
.end method


# virtual methods
.method blacklist classValueOrNull()Ljava/lang/ClassValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ClassValue<",
            "TT;>;"
        }
    .end annotation

    .line 344
    .local p0, "this":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    invoke-virtual {p0}, Ljava/lang/ClassValue$Entry;->version()Ljava/lang/ClassValue$Version;

    move-result-object v0

    .line 345
    .local v0, "v":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Ljava/lang/ClassValue$Version;->classValue()Ljava/lang/ClassValue;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method blacklist isLive()Z
    .registers 4

    .line 348
    .local p0, "this":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    invoke-virtual {p0}, Ljava/lang/ClassValue$Entry;->version()Ljava/lang/ClassValue$Version;

    move-result-object v0

    .line 349
    .local v0, "v":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 350
    :cond_8
    invoke-virtual {v0}, Ljava/lang/ClassValue$Version;->isLive()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    return v1

    .line 351
    :cond_10
    invoke-virtual {p0}, Ljava/lang/ClassValue$Entry;->clear()V

    .line 352
    return v1
.end method

.method blacklist isPromise()Z
    .registers 2

    .line 341
    .local p0, "this":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassValue$Entry;->value:Ljava/lang/Object;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist refreshVersion(Ljava/lang/ClassValue$Version;)Ljava/lang/ClassValue$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassValue$Version<",
            "TT;>;)",
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;"
        }
    .end annotation

    .line 355
    .local p0, "this":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    .local p1, "v2":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    invoke-direct {p0}, Ljava/lang/ClassValue$Entry;->assertNotPromise()V

    .line 357
    new-instance v0, Ljava/lang/ClassValue$Entry;

    iget-object v1, p0, Ljava/lang/ClassValue$Entry;->value:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Ljava/lang/ClassValue$Entry;-><init>(Ljava/lang/ClassValue$Version;Ljava/lang/Object;)V

    .line 358
    .local v0, "e2":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    invoke-virtual {p0}, Ljava/lang/ClassValue$Entry;->clear()V

    .line 360
    return-object v0
.end method

.method blacklist value()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 340
    .local p0, "this":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    invoke-direct {p0}, Ljava/lang/ClassValue$Entry;->assertNotPromise()V

    iget-object v0, p0, Ljava/lang/ClassValue$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist version()Ljava/lang/ClassValue$Version;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ClassValue$Version<",
            "TT;>;"
        }
    .end annotation

    .line 342
    .local p0, "this":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    invoke-virtual {p0}, Ljava/lang/ClassValue$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassValue$Version;

    return-object v0
.end method
