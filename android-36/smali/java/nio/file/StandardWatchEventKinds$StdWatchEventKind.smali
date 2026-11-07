.class Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;
.super Ljava/lang/Object;
.source "StandardWatchEventKinds.java"

# interfaces
.implements Ljava/nio/file/WatchEvent$Kind;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/StandardWatchEventKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StdWatchEventKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/nio/file/WatchEvent$Kind<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o name:Ljava/lang/String;

.field private final greylist-max-o type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;, "Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;->name:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;->type:Ljava/lang/Class;

    .line 89
    return-void
.end method


# virtual methods
.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 90
    .local p0, "this":Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;, "Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind<TT;>;"
    iget-object v0, p0, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 92
    .local p0, "this":Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;, "Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind<TT;>;"
    iget-object v0, p0, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api type()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;, "Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind<TT;>;"
    iget-object v0, p0, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;->type:Ljava/lang/Class;

    return-object v0
.end method
