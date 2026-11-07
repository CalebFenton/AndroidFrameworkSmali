.class Lsun/nio/fs/AbstractWatchKey$Event;
.super Ljava/lang/Object;
.source "AbstractWatchKey.java"

# interfaces
.implements Ljava/nio/file/WatchEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/AbstractWatchKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/nio/file/WatchEvent<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private blacklist count:I

.field private final blacklist kind:Ljava/nio/file/WatchEvent$Kind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/WatchEvent$Kind<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchEvent$Kind<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Lsun/nio/fs/AbstractWatchKey$Event;, "Lsun/nio/fs/AbstractWatchKey$Event<TT;>;"
    .local p1, "type":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<TT;>;"
    .local p2, "context":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lsun/nio/fs/AbstractWatchKey$Event;->kind:Ljava/nio/file/WatchEvent$Kind;

    .line 199
    iput-object p2, p0, Lsun/nio/fs/AbstractWatchKey$Event;->context:Ljava/lang/Object;

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Lsun/nio/fs/AbstractWatchKey$Event;->count:I

    .line 201
    return-void
.end method


# virtual methods
.method public whitelist test-api context()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lsun/nio/fs/AbstractWatchKey$Event;, "Lsun/nio/fs/AbstractWatchKey$Event<TT;>;"
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey$Event;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api count()I
    .registers 2

    .line 215
    .local p0, "this":Lsun/nio/fs/AbstractWatchKey$Event;, "Lsun/nio/fs/AbstractWatchKey$Event<TT;>;"
    iget v0, p0, Lsun/nio/fs/AbstractWatchKey$Event;->count:I

    return v0
.end method

.method blacklist increment()V
    .registers 2

    .line 220
    .local p0, "this":Lsun/nio/fs/AbstractWatchKey$Event;, "Lsun/nio/fs/AbstractWatchKey$Event<TT;>;"
    iget v0, p0, Lsun/nio/fs/AbstractWatchKey$Event;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/nio/fs/AbstractWatchKey$Event;->count:I

    .line 221
    return-void
.end method

.method public whitelist test-api kind()Ljava/nio/file/WatchEvent$Kind;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/nio/file/WatchEvent$Kind<",
            "TT;>;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lsun/nio/fs/AbstractWatchKey$Event;, "Lsun/nio/fs/AbstractWatchKey$Event<TT;>;"
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey$Event;->kind:Ljava/nio/file/WatchEvent$Kind;

    return-object v0
.end method
