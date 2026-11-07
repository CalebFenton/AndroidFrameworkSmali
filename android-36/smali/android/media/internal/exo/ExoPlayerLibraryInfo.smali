.class public final Landroid/media/internal/exo/ExoPlayerLibraryInfo;
.super Ljava/lang/Object;
.source "ExoPlayerLibraryInfo.java"


# static fields
.field private static final blacklist registeredModules:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist registeredModulesString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/internal/exo/ExoPlayerLibraryInfo;->registeredModules:Ljava/util/HashSet;

    .line 53
    const-string v0, "goog.exo.core"

    sput-object v0, Landroid/media/internal/exo/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized blacklist registerModule(Ljava/lang/String;)V
    .registers 4

    const-class v0, Landroid/media/internal/exo/ExoPlayerLibraryInfo;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Landroid/media/internal/exo/ExoPlayerLibraryInfo;->registeredModules:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/media/internal/exo/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroid/media/internal/exo/ExoPlayerLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_24

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_28

    .line 71
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    :goto_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_24

    throw p0
.end method
