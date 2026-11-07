.class public final Ljava/nio/file/StandardWatchEventKinds;
.super Ljava/lang/Object;
.source "StandardWatchEventKinds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;
    }
.end annotation


# static fields
.field public static final whitelist test-api ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/WatchEvent$Kind<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/WatchEvent$Kind<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/WatchEvent$Kind<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api OVERFLOW:Ljava/nio/file/WatchEvent$Kind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/WatchEvent$Kind<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 47
    new-instance v0, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;

    const-string v1, "OVERFLOW"

    const-class v2, Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    .line 58
    new-instance v0, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;

    const-string v1, "ENTRY_CREATE"

    const-class v2, Ljava/nio/file/Path;

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    .line 69
    new-instance v0, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;

    const-string v1, "ENTRY_DELETE"

    const-class v2, Ljava/nio/file/Path;

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    .line 80
    new-instance v0, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;

    const-string v1, "ENTRY_MODIFY"

    const-class v2, Ljava/nio/file/Path;

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
